package no.ntnu.supportprim.security.config;

import org.elasticsearch.client.RestHighLevelClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.RestClients;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

/**
 * @author: Amar Jaiswal
 */
@Configuration
@EnableElasticsearchRepositories(basePackages = "no.ntnu.supportprim")
public class ElasticConfig {

    private static final Logger LOG = LoggerFactory.getLogger(ElasticConfig.class);

    @Value("${elasticsearch.host.1}")
    private String elasticHost1;
    @Value("${elasticsearch.host.2}")
    private String elasticHost2;

    @Bean
    public RestHighLevelClient client() {
        LOG.trace("Creating the Elasticsearch ClientConfiguration with: " + elasticHost1);
        ClientConfiguration clientConfiguration = ClientConfiguration.builder()
                .connectedTo(elasticHost1, elasticHost2) // "localhost:9200", "localhost:9201"
                .build();
        LOG.trace("Created the Elasticsearch ClientConfiguration with: " + elasticHost1);

        LOG.trace("Creating the Elasticsearch RestHighLevelClient");
        RestHighLevelClient restHighLevelClient = RestClients.create(clientConfiguration).rest();
        LOG.debug("Created the Elasticsearch RestHighLevelClient");

        return restHighLevelClient;
    }
}
