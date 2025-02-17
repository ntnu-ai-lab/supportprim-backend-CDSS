package no.ntnu.supportprim.security.service;

import no.ntnu.supportprim.security.controller.exception.CustomException;
import no.ntnu.supportprim.security.model.User;
import no.ntnu.supportprim.security.repository.UserRepository;
import no.ntnu.supportprim.security.security.JwtTokenProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

import static no.ntnu.supportprim.security.common.ValidationConstants.*;
import static no.ntnu.supportprim.security.common.HttpResponseCodes.*;

/**
 * @author: Amar Jaiswal
 */
@Service
public class UserService {

    private static final Logger LOG = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Autowired(required = false)
    private AuthenticationManager authenticationManager;


    public String signin(String username, String password) {

        LOG.info("Trying to Sign-In the user with the username:" + username);

        try {
            LOG.debug("Trying to Authenticate the user");
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
            LOG.debug("The user is Authenticated");

            LOG.debug("Creating JWT token for the user");
            String jwtToken = jwtTokenProvider.createToken(username, userRepository.findByUsername(username).getRoles());
            LOG.debug("The JWT token for the user is created successfully");

            LOG.info("The user is Signed In successfully");
            return jwtToken;

        } catch (AuthenticationException e) {
            LOG.error("AuthenticationException occurred for the username:" + username
                    + ". Probable root cause could be: " + INVALID_USERNAME_OR_PASSWORD);
            throw new CustomException(INVALID_USERNAME_OR_PASSWORD, HttpStatus.UNPROCESSABLE_ENTITY);
        }
    }

    public String signup(User user) {

        LOG.info("Trying to Sign-Up a user with user details as:" + user.toString());

        if (null == userRepository.findByUsername(user.getUsername())) {
            LOG.debug("Creating a random id for the user");
            user.setId(UUID.randomUUID().toString());

            LOG.debug("Encoding the password supplied by the user");
            user.setPassword(passwordEncoder.encode(user.getPassword()));

            LOG.info("Trying to save the user in the repository: " + userRepository.getEntityClass().getName());
            userRepository.save(user);
            LOG.info("The user seems to be successfully saved in the repository: " + userRepository.getEntityClass().getName());

            LOG.debug("Creating JWT token for the user");
            String jwtToken = jwtTokenProvider.createToken(user.getUsername(), user.getRoles());
            LOG.debug("The JWT token for the user is created successfully");

            LOG.info("The user is Signed Up successfully");
            return jwtToken;

        } else {
            LOG.warn(USERNAME_ALREADY_EXISTS);
            throw new CustomException(USERNAME_ALREADY_EXISTS, HttpStatus.UNPROCESSABLE_ENTITY);
        }
    }

    public void delete(String username) {
        LOG.info("Trying to Delete a user from the repository with the username: " + username);
        userRepository.deleteByUsername(username);
        LOG.info("the user is deleted form the repository: " + userRepository.getEntityClass().getName());
        LOG.debug("No exception occurred in the process of deletion, thus we assume that the user is removed from the repository");
    }

    public User search(String username) {
        LOG.info("Trying to Search a user in the repository with the username: " + username);
        User user = userRepository.findByUsername(username);

        if (null == user) {
            LOG.error(NOT_FOUND_404 + " in the repository: " + userRepository.getEntityClass().getName());
            throw new CustomException(NOT_FOUND_404, HttpStatus.NOT_FOUND);
        }

        LOG.debug("The user details for the searched username is: " + user.toString());

        LOG.info("A user is found in the repository for the given username");
        return user;
    }

    public User whoami(HttpServletRequest httpServletRequest) {
        LOG.info("Trying to serve the http request for who-am-I?");

        LOG.debug("Extracting the username from the JWT token");
        String usrname = jwtTokenProvider.getUsername(jwtTokenProvider.resolveToken(httpServletRequest));
        LOG.debug("The username from the JWT token is: " + usrname);

        LOG.info("Trying to Search a user in the repository with the username: " + usrname);
        User user = userRepository.findByUsername(usrname);

        if (null == user) {
            LOG.error(NOT_FOUND_404 + " in the repository: " + userRepository.getEntityClass().getName());
        }

        LOG.debug("The details of the current user is: " + user.toString());

        LOG.info("We have found who you are!");
        return user;
    }

    public String refresh(String username) {
        LOG.info("Trying to serve the http request to Refresh the page");

        LOG.debug("Creating JWT token for the user");
        String jwtToken = jwtTokenProvider.createToken(username, userRepository.findByUsername(username).getRoles());
        LOG.debug("The JWT token for the user is created successfully");

        LOG.info("The page is successfully Refreshed");

        return jwtToken;
    }
}
