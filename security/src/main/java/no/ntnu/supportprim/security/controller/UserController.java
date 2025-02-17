package no.ntnu.supportprim.security.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import no.ntnu.supportprim.security.model.User;
import no.ntnu.supportprim.security.model.data.UserResponseData;
import no.ntnu.supportprim.security.model.data.UserSignupData;
import no.ntnu.supportprim.security.service.UserService;
import no.ntnu.supportprim.security.service.ValidationService;
import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import static no.ntnu.supportprim.security.common.ApiResponseAnnotations.*;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("/supportprim")
@Api(tags = "users")
public class UserController {

    private static final Logger LOG = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private ValidationService validationService;

    @Autowired
    private ModelMapper modelMapper;

    @PostMapping("/signin")
    @ApiOperation(value = "${LoginController.signin}")
    @ApiResponseForSignin
    public String login(@ApiParam("Username") @RequestParam String username,
                        @ApiParam("Password") @RequestParam String password) {
        LOG.info("Processing the Sign-IN user request for the user: " + username);
        return userService.signin(username, password);
    }

    @PostMapping("/signup")
    @ApiOperation(value = "${LoginController.signup}")
    @ApiResponseForSignup
    public String signup(@ApiParam("Signup User") @RequestBody UserSignupData user) throws BindException {
        LOG.info("Processing the Sign-UP user request for the username: " + user.toString());
        LOG.debug("Validating the user with username:" + user.getUsername());
        validationService.validate(user);
        LOG.info("Validation of user with username:" + user.toString() + " is Successful");
        return userService.signup(modelMapper.map(user, User.class));
    }

    @DeleteMapping(value = "/{username}")
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @ApiOperation(value = "${LoginController.delete}")
    @ApiResponseForDelete
    public String delete(@ApiParam("Username") @PathVariable String username) {
        LOG.info("Processing the Delete user request for the username: " + username);
        userService.delete(username);
        LOG.info("Deletion of user with username:" + username + " is Successful");
        return username;
    }

    @GetMapping(value = "/{username}")
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @ApiOperation(value = "${LoginController.search}", response = UserResponseData.class)
    @ApiResponseForSearch
    public UserResponseData search(@ApiParam("Username") @PathVariable String username) {
        LOG.info("Processing the Search request for the username: " + username);
        return modelMapper.map(userService.search(username), UserResponseData.class);
    }


    @GetMapping(value = "/whoami")
    //@PreAuthorize( "hasRole('ROLE_ADMIN') or hasRole('ROLE_GUEST')")
    @PreAuthorize("isAuthenticated()")
    @ApiOperation(value = "${LoginController.whoami}", response = UserResponseData.class)
    @ApiResponseForWhoami
    public UserResponseData whoami(HttpServletRequest httpServletRequest) {
        LOG.info("Processing the Who-Am-I request for the current User");
        return modelMapper.map(userService.whoami(httpServletRequest), UserResponseData.class);
    }

    @GetMapping("/refresh")
    @ApiOperation(value = "${LoginController.refresh}")
    //@PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_GUEST')")
    @PreAuthorize("isAuthenticated()")
    public String refresh(HttpServletRequest httpServletRequest) {
        LOG.info("Processing the Refresh page request for the current User");
        return userService.refresh(httpServletRequest.getRemoteUser());
    }
}
