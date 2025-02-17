package no.ntnu.supportprim.cbr.research;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class CbrResearchInterfaceApp {

    private final static Log LOGGER = LogFactory.getLog(CbrResearchInterfaceApp.class);

    @Bean
    @LoadBalanced
    public RestTemplate getRestTemplate() {
        LOGGER.info("Creating an instance of Rest Template.");
        return new RestTemplate();
    }

    public static void main(String[] args) {
        LOGGER.info("Starting the Interface Spring Boot service");
    	SpringApplication.run(CbrResearchInterfaceApp.class, args);
    }
}
