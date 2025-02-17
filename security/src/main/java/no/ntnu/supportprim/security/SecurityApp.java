package no.ntnu.supportprim.security;

import no.ntnu.supportprim.security.service.UserService;
import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

/**
 * @author: Amar Jaiswal
 */
@SpringBootApplication
public class SecurityApp {

    private static final Logger LOG = LoggerFactory.getLogger(SecurityApp.class);

    @Autowired
    UserService userService;

    public static void main(String[] args) {
        LOG.info("Starting the SupportPrim security spring boot application");
        SpringApplication.run(SecurityApp.class, args);
        LOG.info("SupportPrim Security application has started Successfully");
    }

    @Bean
    public ModelMapper modelMapper() {
        LOG.info("Create an instance of " + ModelMapper.class.getName());
        return new ModelMapper();
    }
}
