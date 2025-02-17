package no.ntnu.supportprim.security.security;

import no.ntnu.supportprim.security.model.User;
import no.ntnu.supportprim.security.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * @author: Amar Jaiswal
 */
@Service
public class UserDetailsImpl implements UserDetailsService {

    private static final Logger LOG = LoggerFactory.getLogger(UserDetailsImpl.class);

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        LOG.debug("Loading the an user from the repository for the supplied username:" + username);

        final User user = userRepository.findByUsername(username);

        if (user == null) {
            LOG.error("No user found in the repository with the username:" + username);
            throw new UsernameNotFoundException("User '" + username + "' not found");
        }

        LOG.debug("An user is found in the repository for the given username. User details are: " + user.toString());
        return org.springframework.security.core.userdetails.User//
                .withUsername(username)//
                .password(user.getPassword())//
                .authorities(user.getRoles())//
                .accountExpired(false)//
                .accountLocked(false)//
                .credentialsExpired(false)//
                .disabled(false)//
                .build();
    }
}
