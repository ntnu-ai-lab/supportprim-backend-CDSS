package no.ntnu.supportprim.cbr.service;

import no.ntnu.supportprim.cbr.model.*;
import no.ntnu.supportprim.cbr.util.HttpHeaderGenerator;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.client.RestTemplate;

import javax.swing.plaf.TableHeaderUI;
import java.util.*;

/**
 * @author: Amar Jaiswal
 */
@Service
public class CbrService {
    public static final String PATH_SEPARATOR = "/";
    public static final String CASEBASES = "casebases";
    public static final String AMALGAMATION_FUNCTIONS = "amalgamationFunctions";
    public static final String CONCEPTS = "concepts";
    public static final String GET_ACTIVE_ATTRIBUTES = "getActiveAttributes";
    public static final String ATTRIBUTES = "attributes";
    public static final String RETRIEVAL_BY_MULTIPLE_ATTRIBUTES = "retrievalByMultipleAttributes";
    public static final String RETRIEVAL_BY_MULTIPLE_ATTRIBUTES_WITH_CONTENT = "retrievalByMultipleAttributesWithContent";
    public static final String RETRIEVAL_BY_CASE_ID = "retrievalByCaseID";
    public static final String CASES = "cases";
    public static final String K_VALUE = "k=";
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private RestTemplate restTemplate;

    @Value("${cbr.service.url}")
    private String cbrServiceUrl;

    @Value("${cbr.service.get.concepts.url}")
    private String cbrServiceGetConceptsUrl;

    public CbrDetails getCbrDetails() {
        log.info("Fetching the concepts from CBR service");

        List<String> concepts = restTemplate.getForObject(cbrServiceUrl + PATH_SEPARATOR + CONCEPTS, List.class);
        log.info("Concepts in the CBR service are : " + concepts);
        String concept = concepts.get(0);

        List<String> casebases = restTemplate.getForObject(cbrServiceUrl + PATH_SEPARATOR + CASEBASES, List.class);
        log.info("casebases in the CBR service are : " + casebases);

        List<String> similarityFunctions = restTemplate.getForObject(cbrServiceGetConceptsUrl
                        + PATH_SEPARATOR + concept + PATH_SEPARATOR + AMALGAMATION_FUNCTIONS, List.class);
        log.info("similarityFunctions in the CBR service are : " + similarityFunctions);

        CbrDetails cbrDetails = new CbrDetails(concept, casebases, similarityFunctions);

        log.info("The current CBR details are : " + cbrDetails.toString());

        return cbrDetails;
    }


    public CaseStructure getCaseStructure(String concept, String similarityFunction) {
        /*
            "/concepts/{conceptID}/amalgamationFunctions/{amalgamationFunctionID}/getActiveAttributes"
            "/concepts/{conceptID}/attributes"
        */
        log.info("Fetching the Attributes from CBR service");

        Map<String, Object> activeAttributeMap = restTemplate.getForObject(cbrServiceGetConceptsUrl
                        + PATH_SEPARATOR + concept
                        + PATH_SEPARATOR + AMALGAMATION_FUNCTIONS
                        + PATH_SEPARATOR + similarityFunction
                        + PATH_SEPARATOR + GET_ACTIVE_ATTRIBUTES
                , Map.class);
        log.debug("Active attributes are : " + activeAttributeMap);

        Map<String, Object> allAttributeMap = restTemplate.getForObject(cbrServiceGetConceptsUrl
                        + PATH_SEPARATOR + concept
                        + PATH_SEPARATOR + ATTRIBUTES
                , Map.class);
        log.debug("All attributes are : " + allAttributeMap);

        List<String> allAttributes = new ArrayList<String>(allAttributeMap.keySet());

        CaseStructure caseStructure = new CaseStructure(activeAttributeMap, allAttributes);

        log.debug("The current CBR's case structure is : " + caseStructure.toString());

        return caseStructure;
    }


    /**
     * callType: POST
     * callUrl: /concepts/{conceptID}/casebases/{casebaseID}/amalgamationFunctions/{amalgamationFunctionID}/retrievalByMultipleAttributes
     * callReturn: application/json
     * @param concept
     * @param casebase
     * @param similarityFunction
     * @param attributeKeyValueMap
     * @param k
     * @return
     */
    public RetrievalResult retrieveSimilarCases(String concept, String casebase, String similarityFunction, Map<String, Object> attributeKeyValueMap, int k) {

        log.info("Retrieving similar cases from the CBR service");

        String postUrl = cbrServiceGetConceptsUrl + PATH_SEPARATOR + concept
                + PATH_SEPARATOR + CASEBASES + PATH_SEPARATOR + casebase
                + PATH_SEPARATOR + AMALGAMATION_FUNCTIONS + PATH_SEPARATOR + similarityFunction
                + PATH_SEPARATOR + RETRIEVAL_BY_MULTIPLE_ATTRIBUTES
                + "?" + K_VALUE + k;
        Map<String, Object> retrievalMap = restTemplate.postForObject(postUrl, attributeKeyValueMap, Map.class);

        log.debug("Retrieval result map is : " + retrievalMap);

        RetrievalResult retrievalResult = new RetrievalResult(retrievalMap);

        log.debug("The retrieved result is : " + retrievalResult.toString());

        return retrievalResult;
    }

    /**
     * callType: POST
     * callUrl: /concepts/{conceptID}/casebases/{casebaseID}/amalgamationFunctions/{amalgamationFunctionID}/retrievalByMultipleAttributesWithContent
     * callReturn: application/json
     * @param concept
     * @param casebase
     * @param similarityFunction
     * @param attributeKeyValueMap
     * @param k
     * @return
     */
    public SimilarCasesWithContent retrieveSimilarCasesWithContent(String concept, String casebase, String similarityFunction, Map<String, Object> attributeKeyValueMap, int k) {

        log.info("Retrieving similar cases from the CBR service with content");

        String postUrl = cbrServiceGetConceptsUrl + PATH_SEPARATOR + concept
                + PATH_SEPARATOR + CASEBASES + PATH_SEPARATOR + casebase
                + PATH_SEPARATOR + AMALGAMATION_FUNCTIONS + PATH_SEPARATOR + similarityFunction
                + PATH_SEPARATOR + RETRIEVAL_BY_MULTIPLE_ATTRIBUTES_WITH_CONTENT
                + "?" + K_VALUE + k;

        List<LinkedHashMap<String, String>> retrievalMap = restTemplate.postForObject(postUrl, attributeKeyValueMap, List.class);

        log.debug("Retrieval result map is : " + retrievalMap);

        SimilarCasesWithContent similarCasesWithContent = new SimilarCasesWithContent(retrievalMap);

        log.debug("The retrieved result is : " + similarCasesWithContent.toString());

        return similarCasesWithContent;
    }

    /**
     * callType: GET
     * callUrl: /concepts/patient/casebases/casebase/amalgamationFunctions/knowledge_based/retrievalByCaseID?caseID=patient0&k=5
     * callReturn: application/json
     * @param concept
     * @param casebase
     * @param similarityFunction
     * @param caseId,
     * @param k
     * @return
     */
    public RetrievalResult retrieveSimilarCasesByCaseId(String concept, String casebase, String similarityFunction, String caseId, int k) {

        log.info("Retrieving similar cases from the CBR service by caseId");

        String getUrl = cbrServiceGetConceptsUrl + PATH_SEPARATOR + concept
                + PATH_SEPARATOR + CASEBASES + PATH_SEPARATOR + casebase
                + PATH_SEPARATOR + AMALGAMATION_FUNCTIONS + PATH_SEPARATOR + similarityFunction
                + PATH_SEPARATOR + RETRIEVAL_BY_CASE_ID
                + "?caseID=" + caseId
                + "&"+ K_VALUE + k;

        Map<String, Object> retrievalMap = restTemplate.getForObject(getUrl, Map.class);

        log.debug("Retrieval map by caseId is : " + retrievalMap);

        RetrievalResult retrievalResult = new RetrievalResult(retrievalMap);

        log.debug("The retrieval result is : " + retrievalResult.toString());

        return retrievalResult;
    }

    /**
     * callType: PUT
     * callUrl: /concepts/{conceptID}/casebases/{casebaseID}/cases/{caseID}
     * callReturn: application/json
     * @param concept
     * @param casebase
     * @param caseId,
     * @return
     */
    public Boolean retainJsonAsCase(String concept, String casebase, String caseId, String caseJson) {
        Boolean isCaseRetained = false;
        log.info("Retain the json as a case in the case base");

        String putUrl = cbrServiceGetConceptsUrl + PATH_SEPARATOR + concept
                + PATH_SEPARATOR + CASEBASES + PATH_SEPARATOR + casebase
                + PATH_SEPARATOR + CASES + PATH_SEPARATOR + caseId;

        HttpEntity<String> payload = new HttpEntity<String>(caseJson, HttpHeaderGenerator.getHeaders());
        log.debug("mycbr-service url for retaining a new case: " + putUrl);
        log.debug("The payload of the url is :" + payload);

        restTemplate.put(putUrl, payload);

        CbrCase cbrCase = getCaseById(concept, casebase, caseId);

        if (null != cbrCase){
            isCaseRetained = cbrCase.getCbrCase().containsValue(caseId);
            log.info("The case is retained in the case base!");
        }

        return isCaseRetained;
    }


    /**
     * callType: GET
     * callUrl: /concepts/{conceptId}/casebases/{casebaseId}/cases/{caseId}
     * callReturn: application/json
     * @param concept
     * @param casebase
     * @param caseId,
     * @return
     */
    public CbrCase getCaseById(String concept, String casebase, String caseId) {

        log.info("Retrieve a case by its ID");

        String getUrl = cbrServiceGetConceptsUrl + PATH_SEPARATOR + concept
                + PATH_SEPARATOR + CASEBASES + PATH_SEPARATOR + casebase
                + PATH_SEPARATOR + CASES + PATH_SEPARATOR + caseId;

        Map<String, String> caze = restTemplate.getForObject(getUrl, Map.class);

        log.debug("Retrieved map by caseId is : " + caze);

        CbrCase cbrCase = new CbrCase(caze);

        log.debug("The retrieved case by Id is : " + cbrCase.toString());

        return cbrCase;
    }
}