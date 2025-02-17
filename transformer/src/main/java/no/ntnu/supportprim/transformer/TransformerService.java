package no.ntnu.supportprim.transformer;

import no.ntnu.supportprim.transformer.controller.TransformerController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * @author: Amar Jaiswal
 */
@SpringBootApplication
public class TransformerService {
    private static final Logger LOG = LoggerFactory.getLogger(TransformerController.class);

    @LoadBalanced
    @Bean
    public RestTemplate getRestTemplate(RestTemplateBuilder builder) {
        LOG.info("Creating an instance of Rest Template for internal services.");
        return builder.build();
    }

    public static void main(String[] args) {
        LOG.info("Starting TransformerApplication spring boot application");
        SpringApplication.run(TransformerService.class, args);
        LOG.info("TransformerApplication application has been started Successfully");
    }
}
