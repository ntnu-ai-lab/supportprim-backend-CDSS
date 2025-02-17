package no.ntnu.supportprim.security.security;

import no.ntnu.supportprim.security.controller.exception.CustomException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * The JwtTokenFilter extends OncePerRequestFilter, as there is a database call. Thus, no need to do this more than once.
 *
 * @author: Amar Jaiswal
 */
public class JwtTokenFilter extends OncePerRequestFilter {

    private static final Logger LOG = LoggerFactory.getLogger(JwtTokenFilter.class);

    private JwtTokenProvider jwtTokenProvider;

    public JwtTokenFilter(JwtTokenProvider jwtTokenProvider) {
        LOG.debug("In the constructor with JwtTokenProvider as an argument");
        this.jwtTokenProvider = jwtTokenProvider;
    }

    @Override
    protected void doFilterInternal(
            HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain)
            throws ServletException, IOException {

        LOG.debug("Trying to resolve the JWT token");
        String token = jwtTokenProvider.resolveToken(httpServletRequest);

        try {
            LOG.trace("Checking if the JWT token is null or invalid");
            if (token != null && jwtTokenProvider.validateToken(token)) {
                LOG.debug("The JWT token is valid");

                LOG.trace("Get the auth from the JWT token");
                Authentication auth = jwtTokenProvider.getAuthentication(token);

                LOG.trace("Setting the auth for the SecurityContextHolder");
                SecurityContextHolder.getContext().setAuthentication(auth);
                LOG.debug("Authentication is set to in the SecurityContextHolder successfully");
            }
        } catch (CustomException ex) {

            LOG.info("Catching the CustomException while authenticating" +
                            "This is very important, since it guarantees that the user is NOT authenticated at all!");
            LOG.error("Authentication failed with a CustomException, the message is: " + ex.getMessage());

            LOG.warn("Clearing the context from SecurityContextHolder");
            SecurityContextHolder.clearContext();
            LOG.info("The context from SecurityContextHolder is cleared");

            LOG.warn("Sending the error response to the httpServletResponse");
            httpServletResponse.sendError(ex.getHttpStatus().value(), ex.getMessage());

            LOG.info("Returning after catching the CustomException while Authenticating");
            return;
        }

        LOG.info("Proceeding to execute other filters, in the SpringBootFramework filter chaining process");
        filterChain.doFilter(httpServletRequest, httpServletResponse);
        LOG.trace("After invocation of filter chaining");
    }
}
