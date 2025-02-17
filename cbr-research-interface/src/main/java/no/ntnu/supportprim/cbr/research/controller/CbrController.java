package no.ntnu.supportprim.cbr.research.controller;

import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("/cbr")
public class CbrController {

    private final Log logger = LogFactory.getLog(getClass());

    @Autowired
    private RestTemplate restTemplate;

    @Value("${cbr.service.url}")
    private String cbrServiceUrl;

    @RequestMapping("/concepts")
    @ApiOperation(value = "${CbrController.getConcepts}")
    public  List<String> getConcepts(){

        logger.info("Featching the concepts from CBR service");

        List<String> concepts = restTemplate.getForObject(cbrServiceUrl+"/concepts", List.class);

        logger.info("Concepts in the CBR service are : "+concepts);

    return concepts;
    }
}
