package no.ntnu.supportprim.security.model.data;


import io.swagger.annotations.ApiModelProperty;
import no.ntnu.supportprim.security.model.Role;
import no.ntnu.supportprim.security.model.validation.ValidPassword;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.constraints.Email;
import java.util.Set;

import static no.ntnu.supportprim.security.common.Constants.*;

/**
 * @author: Amar Jaiswal
 */
public class UserSignupData {

    private static final Logger LOG = LoggerFactory.getLogger(UserSignupData.class);
    @ApiModelProperty(position = POSITION_3)
    Set<Role> roles;
    @ApiModelProperty(position = POSITION_0)
    private String username;
    @ApiModelProperty(position = POSITION_1)
    @Email(message = INVALID_EMAIL)
    private String email;
    @ApiModelProperty(position = POSITION_2)
    @ValidPassword(message = INVALID_PASSWORD)
    private String password;

    public String getUsername() {
        LOG.trace("username:" + username);
        return username;
    }

    public void setUsername(String username) {
        LOG.trace("username:" + username);
        this.username = username;
    }

    public String getEmail() {
        LOG.trace("email:" + email);
        return email;
    }

    public void setEmail(String email) {
        LOG.trace("email:" + email);
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Role> getRoles() {
        LOG.trace("roles:" + roles);
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        LOG.trace("roles:" + roles);
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "UserSignupData{" +
                "username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", roles=" + roles +
                '}';
    }
}
