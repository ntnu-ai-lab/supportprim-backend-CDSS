package no.ntnu.supportprim.cbr.controller;

import io.swagger.annotations.ApiOperation;
import no.ntnu.supportprim.cbr.model.*;
import no.ntnu.supportprim.cbr.service.CbrService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("/cbr")
@CrossOrigin(allowCredentials="true")
public class CbrController {
    public static final String APPLICATION_JSON = "application/json";
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private CbrService cbrService;


    @RequestMapping(method = RequestMethod.GET, path="/cbrDetails")
    @ApiOperation(value = "${CbrController.getCbrDetails}")
    public CbrDetails getCbrDetails() {

        log.info("Get CBR Details!");
        CbrDetails cbrDetails = cbrService.getCbrDetails();
        return cbrDetails;
    }


    @ApiOperation(value = "${CbrController.getCaseStructure}")
    @RequestMapping(method = RequestMethod.GET, path="/caseStructure")
    public CaseStructure getCaseStructure(
            @RequestParam( value = "concept", defaultValue = "patient", required = true) String concept,
            @RequestParam(value = "similarityFunction", defaultValue = "ism_knowledge_based", required = true) String similarityFunction) {
        log.info("Get Case Structure!");
        CaseStructure caseStructure = cbrService.getCaseStructure(concept, similarityFunction);
        return caseStructure;
    }

    @ApiOperation(value = "${CbrController.retrieveSimilarCases}",
            notes = "No attribute with empty value should be send to the service, if the value is special value, " +
                    "_unknown_, then remove the attribute from the body.\n\n" +
                    "{\n" +
                    "  \"activity_1\": \"slightly reduced\",\n" +
                    "  \"age_1\": \"22\",\n" +
                    "  \"bmi_1\": \"27.64\",\n" +
                    "  \"body_main_1\": \"hip\",\n" +
                    "  \"como_count_1\": \"1 comorbidity\",\n" +
                    "  \"education_1\": \"high school\",\n" +
                    "  \"employ_1\": \"working or other\",\n" +
                    "  \"eq5d_care_1\": \"no problem\",\n" +
                    "  \"eq5d_depr_1\": \"not\",\n" +
                    "  \"eq5d_walk_1\": \"slight problem\",\n" +
                    "  \"fear_1\": \"10\",\n" +
                    "  \"gender_1\": \"female\",\n" +
                    "  \"hscl_score_1\": \"1.5\",\n" +
                    "  \"mskhq_pa_1\": \"4 days\",\n" +
                    "  \"mskhq_q7_1\": \"not at all\",\n" +
                    "  \"mskt_risk_1\": \"medium risk\",\n" +
                    "  \"oreb_q10_1\": \"2\",\n" +
                    "  \"oreb_q7_1\": \"5\",\n" +
                    "  \"pain_continuous_1\": \"no\",\n" +
                    "  \"pain_duration_1\": \"GT 12m\",\n" +
                    "  \"pain_lweek_1\": \"2\",\n" +
                    "  \"painsite_number_1\": \"4\",\n" +
                    "  \"pseq_1\": \"12\",\n" +
                    "  \"qol15D_q14_vital_1\": \"healthy and energetic\",\n" +
                    "  \"qol15D_q5_sleep_1\": \"slight problem\",\n" +
                    "  \"smoking_1\": \"0\",\n" +
                    "  \"walk_aid_1\": \"no walkaid\",\n" +
                    "  \"work_ability_1\": 10" +
                    "\n}")
    @RequestMapping(method = RequestMethod.POST, path="/retrieveSimilarCases")
    public RetrievalResult retrieveSimilarCases(
            @RequestParam( value = "concept", defaultValue = "patient", required = true) String concept,
            @RequestParam( value = "casebase", defaultValue = "cb_all", required = true) String casebase,
            @RequestParam(value = "similarityFunction", defaultValue = "ism_knowledge_based", required = true) String similarityFunction,
            @RequestParam(value = "k", required = false, defaultValue = "5") int k,
            @RequestBody(required = true) Map<String, Object> attributeKeyValueMap
        ) {
        log.info("Retrieve similar cases!");
        RetrievalResult retrievalResult = cbrService.retrieveSimilarCases(concept, casebase, similarityFunction, attributeKeyValueMap, k);
        log.debug("Retrieved similar cases are : "+ retrievalResult.toString());
        return retrievalResult;
    }

    @ApiOperation(value = "${CbrController.retrieveSimilarCasesWithContent}",
            notes = "No attribute with empty value should be send to the service, if the value is special value, " +
                    "_unknown_, then remove the attribute from the body.\n\n" +
                    "{\n" +
                    "  \"activity_1\": \"slightly reduced\",\n" +
                    "  \"age_1\": \"22\",\n" +
                    "  \"bmi_1\": \"27.64\",\n" +
                    "  \"body_main_1\": \"hip\",\n" +
                    "  \"como_count_1\": \"1 comorbidity\",\n" +
                    "  \"education_1\": \"high school\",\n" +
                    "  \"employ_1\": \"working or other\",\n" +
                    "  \"eq5d_care_1\": \"no problem\",\n" +
                    "  \"eq5d_depr_1\": \"not\",\n" +
                    "  \"eq5d_walk_1\": \"slight problem\",\n" +
                    "  \"fear_1\": \"10\",\n" +
                    "  \"gender_1\": \"female\",\n" +
                    "  \"hscl_score_1\": \"1.5\",\n" +
                    "  \"mskhq_pa_1\": \"4 days\",\n" +
                    "  \"mskhq_q7_1\": \"not at all\",\n" +
                    "  \"mskt_risk_1\": \"medium risk\",\n" +
                    "  \"oreb_q10_1\": \"2\",\n" +
                    "  \"oreb_q7_1\": \"5\",\n" +
                    "  \"pain_continuous_1\": \"no\",\n" +
                    "  \"pain_duration_1\": \"GT 12m\",\n" +
                    "  \"pain_lweek_1\": \"2\",\n" +
                    "  \"painsite_number_1\": \"4\",\n" +
                    "  \"pseq_1\": \"12\",\n" +
                    "  \"qol15D_q14_vital_1\": \"healthy and energetic\",\n" +
                    "  \"qol15D_q5_sleep_1\": \"slight problem\",\n" +
                    "  \"smoking_1\": \"0\",\n" +
                    "  \"walk_aid_1\": \"no walkaid\",\n" +
                    "  \"work_ability_1\": 10" +
                    "\n}")
    @RequestMapping(method = RequestMethod.POST, path="/retrieveSimilarCasesWithContent")
    public SimilarCasesWithContent retrieveSimilarCasesWithContent(
            @RequestParam( value = "concept", defaultValue = "patient", required = true) String concept,
            @RequestParam( value = "casebase", defaultValue = "cb_all", required = true) String casebase,
            @RequestParam(value = "similarityFunction", defaultValue = "ism_knowledge_based", required = true) String similarityFunction,
            @RequestParam(value = "k", required = false, defaultValue = "5") int k,
            @RequestBody(required = true) Map<String, Object> attributeKeyValueMap
    ) {
        log.info("Retrieve similar cases!");
        SimilarCasesWithContent similarCasesWithContent = cbrService.retrieveSimilarCasesWithContent(concept, casebase, similarityFunction, attributeKeyValueMap, k);
        log.debug("Retrieved similar cases are : "+ similarCasesWithContent.toString());
        return similarCasesWithContent;
    }

/*    @ApiOperation(value = "${CbrController.retrieveSimilarCasesByCaseId}")
    @RequestMapping(method = RequestMethod.GET, path="/retrieveSimilarCasesByCaseId")
    public RetrievalResult retrieveSimilarCasesByCaseId(
            @RequestParam( value = "concept", required = true) String concept,
            @RequestParam( value = "casebase", required = true) String casebase,
            @RequestParam(value = "similarityFunction", defaultValue = "knowledge_based", required = true) String similarityFunction,
            @RequestParam(value = "caseId") String caseId,
            @RequestParam(value = "k", required = false, defaultValue = "5") int k
    ) {
        log.info("Retrieve similar cases!");
        RetrievalResult retrievalResult = cbrService.retrieveSimilarCasesByCaseId(concept, casebase, similarityFunction, caseId, k);
        log.debug("Retrieved similar cases are : "+ retrievalResult.toString());
        return retrievalResult;
    }*/


    @ApiOperation(value = "${CbrController.retainJsonAsCase}",
            notes = "{\n" +
                    "  \"caseID\": \"patientAmar\",\n" +
                    "  \"activity_1\": \"slightly reduced\",\n" +
                    "  \"age_1\": \"22\",\n" +
                    "  \"bmi_1\": \"27.64\",\n" +
                    "  \"body_main_1\": \"hip\",\n" +
                    "  \"como_count_1\": \"1 comorbidity\",\n" +
                    "  \"education_1\": \"high school\",\n" +
                    "  \"employ_1\": \"working or other\",\n" +
                    "  \"eq5d_care_1\": \"no problem\",\n" +
                    "  \"eq5d_depr_1\": \"not\",\n" +
                    "  \"eq5d_walk_1\": \"slight problem\",\n" +
                    "  \"fear_1\": \"10\",\n" +
                    "  \"gender_1\": \"female\",\n" +
                    "  \"hscl_score_1\": \"1.5\",\n" +
                    "  \"mskhq_pa_1\": \"4 days\",\n" +
                    "  \"mskhq_q7_1\": \"not at all\",\n" +
                    "  \"mskt_risk_1\": \"medium risk\",\n" +
                    "  \"oreb_q10_1\": \"2\",\n" +
                    "  \"oreb_q7_1\": \"5\",\n" +
                    "  \"pain_continuous_1\": \"no\",\n" +
                    "  \"pain_duration_1\": \"GT 12m\",\n" +
                    "  \"pain_lweek_1\": \"2\",\n" +
                    "  \"painsite_number_1\": \"4\",\n" +
                    "  \"pseq_1\": \"12\",\n" +
                    "  \"qol15D_q14_vital_1\": \"healthy and energetic\",\n" +
                    "  \"qol15D_q5_sleep_1\": \"slight problem\",\n" +
                    "  \"smoking_1\": \"0\",\n" +
                    "  \"walk_aid_1\": \"no walkaid\",\n" +
                    "  \"work_ability_1\": 10" +
                    "\n}")
    @RequestMapping(method = RequestMethod.PUT, path="/retainJsonAsCase")
    public Boolean retainJsonAsCase(
            @RequestParam( value = "concept", defaultValue = "patient",  required = true) String concept,
            @RequestParam( value = "casebase",defaultValue = "cb_all",  required = true) String casebase,
            @RequestParam(value = "caseId") String caseId,
            @RequestBody(required = true) String caseJson
    ) {
        log.info("Retain the case!");
        Boolean isCaseAdded = cbrService.retainJsonAsCase(concept, casebase, caseId, caseJson);
        log.debug("Is the json retained as case? : "+ isCaseAdded);
        return isCaseAdded;
    }


    @ApiOperation(value = "${CbrController.getCaseById}")
    @RequestMapping(method = RequestMethod.GET, path="/getCaseById")
    public CbrCase getCaseById(
            @RequestParam( value = "concept", defaultValue = "patient",  required = true) String concept,
            @RequestParam( value = "casebase", defaultValue = "cb_all",  required = true) String casebase,
            @RequestParam( value = "caseId", defaultValue = "patient0",  required = true) String caseId
    ) {
        log.info("Retrieve a case by its ID!");
        CbrCase cbrCase = cbrService.getCaseById(concept, casebase, caseId);
        log.debug("The retrieved case by its Id is : "+ cbrCase);
        return cbrCase;
    }

/*    @RequestMapping("/concepts")
    @ApiOperation(value = "${CbrController.getConcepts}")
    public  List<String> getConcepts(){

        logger.info("Featching the concepts from CBR service");

        List<String> concepts = restTemplate.getForObject(cbrServiceUrl+"/concepts", List.class);

        logger.info("Concepts in the CBR service are : "+concepts);

        return concepts;
    }

    @RequestMapping("/concepts")
    @ApiOperation(value = "${CbrController.getConcepts}")
    public  List<String> getConcepts(){

        logger.info("Featching the concepts from CBR service");

        List<String> concepts = restTemplate.getForObject(cbrServiceUrl+"/concepts", List.class);

        logger.info("Concepts in the CBR service are : "+concepts);

        return concepts;
    }

    @RequestMapping("/concepts")
    @ApiOperation(value = "${CbrController.getConcepts}")
    public  List<String> getConcepts(){

        logger.info("Featching the concepts from CBR service");

        List<String> concepts = restTemplate.getForObject(cbrServiceUrl+"/concepts", List.class);

        logger.info("Concepts in the CBR service are : "+concepts);

        return concepts;
    }*/
}

/*
"/concepts/{conceptID}/casebases/{casebaseID}/amalgamationFunctions/{amalgamationFunctionID}"
        "/retrievalByMultipleAttributes"*/




