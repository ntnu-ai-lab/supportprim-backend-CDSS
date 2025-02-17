package no.ntnu.supportprim.security.model;

import org.springframework.security.core.GrantedAuthority;

/**
 * The role GUEST has the least privileges. The role ADMIN and DEV has most privileges.
 * The elements of this enum are arranged in the increasing order with respect to their privileges.
 *
 * @author: Amar Jaiswal
 */
public enum Role implements GrantedAuthority {

    ROLE_GUEST, ROLE_PHYSIO, ROLE_RESEARCHER, ROLE_DEV, ROLE_ADMIN;

    public String getAuthority() {
        return name();
    }
}
