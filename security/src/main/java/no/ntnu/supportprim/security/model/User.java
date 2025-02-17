package no.ntnu.supportprim.security.model;

import no.ntnu.supportprim.security.model.validation.ValidPassword;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.stereotype.Component;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.Set;

import static no.ntnu.supportprim.security.common.ElasticConstants.*;

/**
 * @author: Amar Jaiswal
 */
@Component
@Document(indexName = ES_USER_INDEX)
public class User {

    private static final Logger LOG = LoggerFactory.getLogger(User.class);

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String id;

    @NotBlank
    @Size(min = 4, max = 255, message = "Minimum username length: 4 characters")
    private String username;

    @NotBlank
    @Size(max = 50)
    @Email
    private String email;

    private Set<Role> roles;

    @NotBlank
    @Size(max = 120)
    @ValidPassword
    private String password;

    // Default constructor
    public User() {

        LOG.debug("In the default constructor");
    }

    public User(String username, String email, String password) {
        LOG.debug("In constructor of User(username:" + username + ", email:" + email + ")");
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public String getId() {
        LOG.debug("In getID: id: (" + id + ")");
        return id;
    }

    public void setId(String id) {
        LOG.debug("In setID: id: (" + id + ")");
        this.id = id;
    }

    public String getUsername() {
        LOG.debug("In getUsername: username: (" + username + ")");
        return username;
    }

    public void setUsername(String username) {
        LOG.debug("In setUsername: username: (" + username + ")");
        this.username = username;
    }

    public String getEmail() {
        LOG.debug("In setUsername: email: (" + email + ")");
        return email;
    }

    public void setEmail(String email) {
        LOG.debug("In setUsername: email: (" + email + ")");
        this.email = email;
    }

    public Set<Role> getRoles() {
        LOG.debug("In setUsername: roles: (" + roles + ")");
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        LOG.debug("In setUsername: roles: (" + roles + ")");
        this.roles = roles;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        LOG.debug("In toString()");
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", roles=" + roles +
                '}';
    }
}

/*
{
          "id" : null,
          "username" : "amar",
          "email" : "amar.dev@aj.com",
          "roles" : [
            {
              "id" : "0",
              "name" : "ROLE_GUEST"
            },
            {
              "id" : "3",
              "name" : "ROLE_DEV"
            },
            {
              "id" : "2",
              "name" : "ROLE_RESEARCHER"
            },
            {
              "id" : "1",
              "name" : "ROLE_PHYSIO"
            },
            {
              "id" : "4",
              "name" : "ROLE_ADMIN"
            }
          ],
          "password" : "$2a$10$QAFTtgiDbh6CJBfvbkLDgu8KV94h7uNg2CXYUxeQIqopIizfn4gWm"
        }
 */

