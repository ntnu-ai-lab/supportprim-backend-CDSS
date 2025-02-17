package no.ntnu.supportprim.cbr.config;

import com.google.common.base.Predicates;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Tag;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.Optional;

/**
 * @author: Amar Jaiswal
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {

    private static final Logger LOG = LoggerFactory.getLogger(SwaggerConfig.class);

    @Bean
    public Docket api() {

        LOG.debug("Creating the instance of Docket");

        return new Docket(DocumentationType.SWAGGER_2)//
                .select()//
                .apis(RequestHandlerSelectors.any())//
                .paths(Predicates.not(PathSelectors.regex("/error")))//
                .build()//
                .apiInfo(metadata())//
                .useDefaultResponseMessages(false)//
                .genericModelSubstitutes(Optional.class);
    }


    private ApiInfo metadata() {

        LOG.debug("Creating the instance of ApiInfoBuilder");

        return new ApiInfoBuilder()//
                .title("CBR Interface based on spring boot module")//
                .description(
                        "This module is client specific. It abstracts the internal implementation and API call need " +
                                "to be served for a specific requirement and client" +
                                "")//
                .version("0.1")//
                .build();
    }
}
