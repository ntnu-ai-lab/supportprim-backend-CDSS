package no.ntnu.supportprim.cbr;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class SupportPrimService {

    private final static Log LOG = LogFactory.getLog(SupportPrimService.class);

    @LoadBalanced
    @Bean
    public RestTemplate getRestTemplate(RestTemplateBuilder builder) {
        LOG.info("Creating an instance of Rest Template for internal services.");
        return builder.build();
    }

    public static void main(String[] args) {
        LOG.info("Starting the Interface Spring Boot service");
    	SpringApplication.run(SupportPrimService.class, args);
    }
}
