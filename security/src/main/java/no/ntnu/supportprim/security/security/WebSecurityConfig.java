package no.ntnu.supportprim.security.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import static no.ntnu.supportprim.security.common.SecurityConstants.*;

/**
 * @author: Amar Jaiswal
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private static final Logger LOG = LoggerFactory.getLogger(WebSecurityConfig.class);

    @Value("${b-crypt-password-encoder.strength}")
    private int passwordStrength;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        LOG.info("Configuring the HttpSecurity");

        LOG.debug("Disabling the CSRF");
        // Disable CSRF (cross site request forgery)
        http.csrf().disable();
        LOG.trace("CSRF is disabled");

        LOG.debug("Configuring the service to be state-less via http session management");
        // No session will be created or used by spring security
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        LOG.trace("The session is configured to be state-less");

        LOG.debug("Creating the antMatchers for various Authorizations");
        // Entry points
        http.authorizeRequests()//
                .antMatchers("/supportprim/signin").permitAll()//
                .antMatchers("/supportprim/signup").permitAll()//
                .antMatchers("/h2-console/**/**").permitAll()
                // Disallow everything else..
                .anyRequest().authenticated();
        LOG.trace("Authorization configuration based on antMatchers for prior authenticated users is configured");

        LOG.trace("Configuring the exception handling, when a user tries to access a resource without legitimate permissions");
        // If a user try to access a resource without having enough permissions
        http.exceptionHandling().accessDeniedPage(ACCESS_DENIED_PAGE);

        LOG.trace("Applying the JWT token filter configurer");
        // Apply JWT
        http.apply(new JwtTokenFilterConfigurer(jwtTokenProvider));

        LOG.debug("Enabling this REST API to be accessible from a browser");
        // Optional, to test the API from a browser
        http.httpBasic();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {

        LOG.info("Configuring the WebSecurity");

        LOG.info("Allowing the Swagger to be accessed without authentication");
        // Allow swagger to be accessed without authentication
        web.ignoring().antMatchers("/v2/api-docs")//
                .antMatchers("/swagger-resources/**")//
                .antMatchers("/swagger-ui.html")//
                .antMatchers("/configuration/**")//
                .antMatchers("/webjars/**")//
                .antMatchers("/public")

                // Un-secure H2 Database (for testing purposes, H2 console shouldn't be unprotected in production)
                .and()
                .ignoring()
                .antMatchers("/h2-console/**/**")
        ;

        LOG.info("WebSecurity configured");
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        LOG.trace("Get the password encoder for the given strength");
        return new BCryptPasswordEncoder(passwordStrength);
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        LOG.trace("Get the authentication bean manager of this service");
        return super.authenticationManagerBean();
    }
}
