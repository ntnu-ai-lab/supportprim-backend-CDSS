package no.ntnu.supportprim.elastic;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

/**
 * @author Amar Jaiswal
 */
@SpringBootApplication
@EnableEurekaClient
public class ElasticService {

    public static void main(String[] args) {
        SpringApplication.run(ElasticService.class, args);
    }

}
