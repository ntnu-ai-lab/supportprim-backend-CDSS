package no.ntnu.supportprim.security.security;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import no.ntnu.supportprim.security.controller.exception.CustomException;
import no.ntnu.supportprim.security.model.Role;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.util.Base64;
import java.util.Date;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;

import static no.ntnu.supportprim.security.common.HttpResponseCodes.*;
import static no.ntnu.supportprim.security.common.SecurityConstants.*;

/**
 * @author: Amar Jaiswal
 */

@Component
public class JwtTokenProvider {

    private static final Logger LOG = LoggerFactory.getLogger(JwtTokenProvider.class);

    /**
     * THIS IS NOT A SECURE PRACTICE! For simplicity, we are storing a static key here.
     * Ideally, in a microservices environment, this key would be kept on a config-server.
     */
    @Value("${security.jwt.token.secret-key-string}")
    private String secretKeyString;

    private String secretKey;

    @Value("${security.jwt.token.expire-length}")
    private long validityInMilliseconds; // 3600000 1h

    @Autowired
    private UserDetailsImpl userDetailsImpl;

    @PostConstruct
    protected void init() {
        LOG.debug("Initializing the secretKey using encoder:" + Base64.getEncoder().getClass().getName());
        secretKey = Base64.getEncoder().encodeToString(secretKeyString.getBytes());
    }

    public String createToken(String username, Set<Role> roles) {
        LOG.debug("Proceeding to create token for the the username:" + username + ", with the given roles:" + roles);

        LOG.trace("Creating an instance of: " + Claims.class.getName());
        Claims claims = Jwts.claims().setSubject(username);

        LOG.info("Granting the Authority for the user");
        LOG.debug("Authorization is based of implementation of " + SimpleGrantedAuthority.class.getName());
        claims.put(JWT_CLAIM_AUTH_KEY, roles.stream().map(
                s -> new SimpleGrantedAuthority(s.getAuthority())).filter(Objects::nonNull).collect(Collectors.toList()));

        Date now = new Date();
        Date validity = new Date(now.getTime() + validityInMilliseconds);
        LOG.info("The validity of the current JWT token starts from: " + validity.toString());

        LOG.debug("Returning the JWT string.");
        return Jwts.builder()//
                .setClaims(claims)//
                .setIssuedAt(now)//
                .setExpiration(validity)//
                .signWith(SignatureAlgorithm.HS256, secretKey)//
                .compact();
    }

    public Authentication getAuthentication(String token) {
        LOG.debug("Get the Authentication object based on the given token");
        UserDetails userDetails = userDetailsImpl.loadUserByUsername(getUsername(token));

        LOG.debug("Creating a new AuthenticationToken based on user details and authorities");
        return new UsernamePasswordAuthenticationToken(userDetails, "", userDetails.getAuthorities());
    }

    public String getUsername(String token) {
        LOG.trace("Get the username for the given token");
        return Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().getSubject();
    }

    public String resolveToken(HttpServletRequest httpServletRequest) {
        LOG.debug("Resolve the supplied token in the http request header's " +
                "key as Authorization and the value starting with Bearer");
        String bearerToken = httpServletRequest.getHeader(AUTHORIZATION);

        LOG.trace("Check if the Bearer token is NULL or mis-constructed");
        if (bearerToken != null && bearerToken.startsWith(BEARER_WITH_A_SPACE)) {
            LOG.debug("The Bearer token is not NULL and correctly constructed");
            return bearerToken.substring(INDEX_TO_SPLIT_BEARER_WITH_A_SPACE);
        }

        LOG.error("The Bearer token is either NULL or in-correctly constructed, thus returning as null");
        return null;
    }

    public boolean validateToken(String token) {
        LOG.debug("Proceed to validate the supplied token");
        try {
            Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token);
            LOG.debug("The supplied JWT token is valid");
            return true;
        } catch (JwtException | IllegalArgumentException e) {
            LOG.error("A JwtException or an IllegalArgumentException occurred." +
                    " The supplied JWT token seems to be invalid with the probable root cause as: "
                    + INTERNAL_SERVER_ERROR_500);
            throw new CustomException(INTERNAL_SERVER_ERROR_500, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
