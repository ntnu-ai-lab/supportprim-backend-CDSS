package no.ntnu.supportprim.security.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.config.annotation.SecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * @author: Amar Jaiswal
 */
public class JwtTokenFilterConfigurer extends SecurityConfigurerAdapter<DefaultSecurityFilterChain, HttpSecurity> {

    private static final Logger LOG = LoggerFactory.getLogger(JwtTokenFilterConfigurer.class);

    private JwtTokenProvider jwtTokenProvider;

    public JwtTokenFilterConfigurer(JwtTokenProvider jwtTokenProvider) {
        LOG.debug("In the constructor with JwtTokenProvider as an argument");
        this.jwtTokenProvider = jwtTokenProvider;
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        LOG.trace("Configuring the JwtTokenFilterConfigurer which extends SecurityConfigurerAdapter");

        LOG.debug("Creating an instance of our JWT token filter based on the jwt token provider: " + jwtTokenProvider.getClass());
        JwtTokenFilter customFilter = new JwtTokenFilter(jwtTokenProvider);

        LOG.debug("Adding our JWT token filter in the SpringFramework sequential filter chain before "
                + UsernamePasswordAuthenticationFilter.class.getName());
        http.addFilterBefore(customFilter, UsernamePasswordAuthenticationFilter.class);
        LOG.trace("The JWT token filter added in the filter chain before "
                + UsernamePasswordAuthenticationFilter.class.getName() + "successfully");
    }
}
