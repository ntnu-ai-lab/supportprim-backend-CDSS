package no.ntnu.supportprim.infopad;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import javax.net.ssl.SSLContext;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;

@SpringBootApplication
@EnableDiscoveryClient
public class InfopadInterfaceApp {
    private final static Log LOG = LogFactory.getLog(InfopadInterfaceApp.class);

    // Not needed: ref: "I had the same problem and i fixed it by removing @LoadBalanced from the bean"
    // https://stackoverflow.com/questions/41052630/spring-cloud-and-eureka-java-lang-illegalstateexception-no-instances-available/61491619#61491619
    //@LoadBalanced
    @Bean
    public RestTemplate getExternalRestTemplate(RestTemplateBuilder builder) {
        LOG.info("Creating an instance of Rest Template for external APIs.");
        return builder.build();
    }

    public static void main(String[] args) {
        LOG.info("Starting the Interface Spring Boot service");
        SpringApplication.run(InfopadInterfaceApp.class, args);
    }
}
