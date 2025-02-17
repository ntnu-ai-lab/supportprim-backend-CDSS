package no.ntnu.supportprim.data.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import no.ntnu.supportprim.data.model.LcaVariables;
import no.ntnu.supportprim.data.util.HttpHeaderGenerator;
import no.ntnu.supportprim.data.util.JsonUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.validation.constraints.NotNull;
import java.util.Map;

/**
 * @author: Amar Jaiswal
 */
@Service
public class LcaService {
    private final Log log = LogFactory.getLog(getClass());

    //@Qualifier("getRestTemplate")
    @Autowired
    private RestTemplate restTemplate;

    @Value("${lca.calculator.post.url}")
    private String lcaCalculatorUrl = "http://lca-calculator/lca/getLcaClass?StandardIntercept=true";

    public int getLcaClass(@NotNull LcaVariables lcaVariables) throws JsonProcessingException {
        int lcaClass = 0;

        String requestUrl = lcaCalculatorUrl;

        String payload = JsonUtil.getJsonFromObject(lcaVariables);

        HttpHeaders headers = HttpHeaderGenerator.getHeaders();

        HttpEntity<String> request = new HttpEntity<String>(payload, headers);

        log.info("LCA-Calculator base URL: " + requestUrl);
        log.info("The post body for lca calculation is:" + payload);
        Map  lcaResponse = restTemplate.postForObject(requestUrl, request, Map.class);
        log.debug("Response from the lca-calculator : " + lcaResponse);

        if (lcaResponse.containsKey("lcaClass")){
            lcaClass = (int)lcaResponse.get("lcaClass");
        }

        return lcaClass;
    }
}
