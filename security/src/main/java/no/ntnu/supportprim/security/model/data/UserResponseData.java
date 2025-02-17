package no.ntnu.supportprim.security.model.data;

import io.swagger.annotations.ApiModelProperty;
import no.ntnu.supportprim.security.model.Role;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Set;

import static no.ntnu.supportprim.security.common.Constants.*;

/**
 * @author: Amar Jaiswal
 */
public class UserResponseData {

    private static final Logger LOG = LoggerFactory.getLogger(UserResponseData.class);

    @ApiModelProperty(position = POSITION_0)
    private String id;

    @ApiModelProperty(position = POSITION_1)
    private String username;

    @ApiModelProperty(position = POSITION_2)
    private String email;

    @ApiModelProperty(position = POSITION_3)
    Set<Role> roles;

    public String getId() {
        LOG.trace("id:"+id);
        return id;
    }

    public void setId(String id) {
        LOG.trace("id:"+id);
        this.id = id;
    }

    public String getUsername() {
        LOG.trace("username:"+username);
        return username;
    }

    public void setUsername(String username) {
        LOG.trace("username:"+username);
        this.username = username;
    }

    public String getEmail() {
        LOG.trace("email:"+email);
        return email;
    }

    public void setEmail(String email) {
        LOG.trace("email:"+email);
        this.email = email;
    }

    public Set<Role> getRoles() {
        LOG.trace("roles:"+roles);
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        LOG.trace("roles:"+roles);
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "UserResponseData{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", roles=" + roles +
                '}';
    }
}