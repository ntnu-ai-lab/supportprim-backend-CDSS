package no.ntnu.supportprim.cbr.controller;

import io.swagger.annotations.ApiOperation;
import no.ntnu.supportprim.cbr.model.CaseStructure;
import no.ntnu.supportprim.cbr.model.CbrCase;
import no.ntnu.supportprim.cbr.model.CbrDetails;
import no.ntnu.supportprim.cbr.model.RetrievalResult;
import no.ntnu.supportprim.cbr.service.CbrService;
import no.ntnu.supportprim.cbr.util.FileOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import static no.ntnu.supportprim.cbr.common.ApiConstant.*;

/**
 * @author: Amar Jaiswal
 */
@RestController
//@RequestMapping("sandbox")
@CrossOrigin(allowCredentials="true")
public class SandboxController {

    private final Log log = LogFactory.getLog(getClass());

    @Value("${data.management.get.patient.url}")
    private String dataManagementGetPatientUrl;

    @Value("${data.management.get.all.patient.url}")
    private String dataManagementGetAllPatientUrl;

    @Autowired
    private RestTemplate restTemplate;

    @Autowired
    private CbrService cbrService;


    //@RequestMapping(method = RequestMethod.GET, path="/getPatient")
    //@ApiOperation(value = "${SandboxController.getPatient}",//
    //        notes = "This API needs Infopad's project ID along with patient's journal ID and year of birth"
    //)
    public  String getPatient(
            @RequestParam(value = CLINIC_ID_KEY, required = false) String clinicId,
            @RequestParam(value = CLINIC_PASSWORD_KEY, required = false) String clinicPassword,
            @RequestParam(value = PROJECT_ID, defaultValue = "249961487", required = true) Integer projectId,
            @RequestParam(value = JOURNAL_ID, required = true) Integer journalId,
            @RequestParam(value = BIRTH_YEAR, required = true) Integer birthYear
    ) throws InterruptedException, IOException {

        if (null == clinicId || clinicId.isEmpty()) clinicId = CLINIC_ID_VAL;
        if (null == clinicPassword || clinicPassword.isEmpty()) clinicPassword = CLINIC_PASSWORD_VAL;

        log.info("Fetching a sample patient.");

        String requestUrl = dataManagementGetPatientUrl
                + CLINIC_ID_KEY + EQUAL_TO + clinicId
                + addParam(CLINIC_PASSWORD_KEY, clinicPassword)
                + addParam(PROJECT_ID, projectId.toString())
                + addParam(JOURNAL_ID, journalId.toString())
                + addParam(BIRTH_YEAR, birthYear.toString());

        log.info("request URL: "+requestUrl);
        //String patient = restTemplate.getForObject(requestUrl, String.class);

        JSONObject jsonObject = FileOperation.createJsonFromFileName("./resources/sample/samplePatient.json");

        String patient = jsonObject.toString();

        Thread.sleep(6*1000);

        log.debug("Patient form data-management service is : "+patient);
        log.info("Fetched the sample patient.");

        return patient;
    }

    //@RequestMapping(method = RequestMethod.GET, path="/getAllPatients")
    //@ApiOperation(value = "${SandboxController.getAllPatients}",//
    //        notes = "Caution: It may take more than 20 minutes.\n    " +
    //                "This API only needs Infopad's project ID and will return all the patients registered under the project ID"
    //)
    public  String getAllPatients(
            @RequestParam(value = CLINIC_ID_KEY, required = false) String clinicId,
            @RequestParam(value = CLINIC_PASSWORD_KEY, required = false) String clinicPassword,
            @RequestParam(value = PROJECT_ID, defaultValue = "249961487", required = true) Integer projectId
    ){
        if (null == clinicId || clinicId.isEmpty()) clinicId = CLINIC_ID_VAL;
        if (null == clinicPassword || clinicPassword.isEmpty()) clinicPassword = CLINIC_PASSWORD_VAL;

        log.info("Fetching all patients from data-management service.");

        String requestUrl = dataManagementGetAllPatientUrl
                + CLINIC_ID_KEY + EQUAL_TO + clinicId
                + addParam(CLINIC_PASSWORD_KEY, clinicPassword)
                + addParam(PROJECT_ID, projectId.toString());

        log.info("request URI: "+requestUrl);
        String patients = restTemplate.getForObject(requestUrl, String.class);

        log.debug("All patients form data-management service is : "+patients);
        log.info("Fetched all patients from data-management service.");

        return patients;
    }

    private String addParam(String key, String value){
        return PARAM_SEPARATOR+key+ EQUAL_TO +value;
    }

    private String generatePatientId(String clinicId, String projectId, String journalId, String birthYear) {
        return clinicId +"-"+ projectId +"-"+ journalId +"-"+ birthYear;
    }


    //@RequestMapping(method = RequestMethod.GET, path="/cbrDetails")
    //@ApiOperation(value = "${SandboxController.getCbrDetails}")
    public CbrDetails getCbrDetails() {

        log.info("Get CBR Details!");
        CbrDetails cbrDetails = cbrService.getCbrDetails();
        return cbrDetails;
    }


    //@ApiOperation(value = "${SandboxController.getCaseStructure}")
    //@RequestMapping(method = RequestMethod.GET, path="/caseStructure")
    public CaseStructure getCaseStructure(
            @RequestParam( value = "concept", required = true) String concept,
            @RequestParam(value = "similarityFunction", required = true) String similarityFunction) {
        log.info("Get Case Structure!");
        CaseStructure caseStructure = cbrService.getCaseStructure(concept, similarityFunction);
        return caseStructure;
    }

    //@ApiOperation(value = "${SandboxController.retrieveSimilarCases}",
    //        notes = "No attribute with empty value should be send to the service, if the value is special value, " +
    //                "_unknown_, then remove the attribute from the body.\n\n" +
    //                "{\n" +
    //                "  \"activity_1\": \"Not reduced\",\n" +
    //                "  \"age\": \"51\",\n" +
    //                "  \"body_main\": \"Widespread\",\n" +
    //                "  \"education\": \"More than 4 years higher education\",\n" +
    //                "  \"eq5d_depr_1\": \"slightly\",\n" +
    //                "  \"fear_1\": \"5\",\n" +
    //                "  \"gender\": \"female\",\n" +
    //                "  \"hscl10_mean_1\": \"2.5\",\n" +
    //                "  \"lca\": \"Class 2\",\n" +
    //                "  \"oreb_q10_1\": \"5\",\n" +
    //                "  \"pain_continuous_1\": \"No : off and on\",\n" +
    //                "  \"pain_duration_1\": \"GT 1 year\",\n" +
    //                "  \"pain_lweek_1\": \"3\",\n" +
    //                "  \"painsite_1\": \"5\",\n" +
    //                "  \"pseq_1\": \"11\",\n" +
    //                "  \"sleep15D_1\": \"great problems\",\n" +
    //                "  \"smoking\": \"No\",\n" +
    //                "  \"vital15D_1\": \"very weary\",\n" +
    //                "  \"work_ability_1\": \"1\"" +
    //                "\n}")
    //@RequestMapping(method = RequestMethod.POST, path="/retrieveSimilarCases")
    public RetrievalResult retrieveSimilarCases(
            @RequestParam( value = "concept", defaultValue = "patient", required = true) String concept,
            @RequestParam( value = "casebase", defaultValue = "casebase", required = true) String casebase,
            @RequestParam(value = "similarityFunction", defaultValue = "knowledge_based", required = true) String similarityFunction,
            @RequestParam(value = "k", required = false, defaultValue = "5") int k,
            @RequestBody(required = true) Map<String, Object> attributeKeyValueMap
    ) {
        log.info("Retrieve similar cases!");
        RetrievalResult retrievalResult = cbrService.retrieveSimilarCases(concept, casebase, similarityFunction, attributeKeyValueMap, k);
        log.debug("Retrieved similar cases are : "+ retrievalResult.toString());
        return retrievalResult;
    }

/*    @ApiOperation(value = "${SandboxController.retrieveSimilarCasesByCaseId}")
    @RequestMapping(method = RequestMethod.GET, path="/retrieveSimilarCasesByCaseId")
    public RetrievalResult retrieveSimilarCasesByCaseId(
            @RequestParam( value = "concept", required = true) String concept,
            @RequestParam( value = "casebase", required = true) String casebase,
            @RequestParam(value = "similarityFunction", required = true) String similarityFunction,
            @RequestParam(value = "caseId") String caseId,
            @RequestParam(value = "k", required = false, defaultValue = "5") int k
    ) {
        log.info("Retrieve similar cases!");
        RetrievalResult retrievalResult = cbrService.retrieveSimilarCasesByCaseId(concept, casebase, similarityFunction, caseId, k);
        log.debug("Retrieved similar cases are : "+ retrievalResult.toString());
        return retrievalResult;
    }*/


    //@ApiOperation(value = "${SandboxController.retainJsonAsCase}",
    //        notes = "{\n" +
    //                "  \"caseID\": \"patientAmar\",\n" +
    //                "  \"activity_1\": \"Not reduced\",\n" +
    //                "  \"age\": \"51\",\n" +
    //                "  \"body_main\": \"Widespread\",\n" +
    //                "  \"education\": \"More than 4 years higher education\",\n" +
    //                "  \"eq5d_depr_1\": \"slightly\",\n" +
    //                "  \"fear_1\": \"5\",\n" +
    //                "  \"gender\": \"female\",\n" +
    //                "  \"hscl10_mean_1\": \"2.5\",\n" +
    //                "  \"lca\": \"Class 2\",\n" +
    //                "  \"oreb_q10_1\": \"5\",\n" +
    //                "  \"pain_continuous_1\": \"No : off and on\",\n" +
    //                "  \"pain_duration_1\": \"GT 1 year\",\n" +
    //                "  \"pain_lweek_1\": \"3\",\n" +
    //                "  \"painsite_1\": \"5\",\n" +
    //                "  \"pseq_1\": \"11\",\n" +
    //                "  \"sleep15D_1\": \"great problems\",\n" +
    //                "  \"smoking\": \"No\",\n" +
    //                "  \"vital15D_1\": \"very weary\",\n" +
    //                "  \"work_ability_1\": \"1\"" +
    //                "\n}")
    //@RequestMapping(method = RequestMethod.PUT, path="/retainJsonAsCase")
    public Boolean retainJsonAsCase(
            @RequestParam( value = "concept", defaultValue = "patient",  required = true) String concept,
            @RequestParam( value = "casebase",defaultValue = "casebase",  required = true) String casebase,
            @RequestParam(value = "caseId") String caseId,
            @RequestBody(required = true) String caseJson
    ) {
        log.info("Retain the case!");
        Boolean isCaseAdded = cbrService.retainJsonAsCase(concept, casebase, caseId, caseJson);
        log.debug("Is the json retained as case? : "+ isCaseAdded);
        return isCaseAdded;
    }


    //@ApiOperation(value = "${SandboxController.getCaseById}")
    //@RequestMapping(method = RequestMethod.GET, path="/getCaseById")
    public CbrCase getCaseById(
            @RequestParam( value = "concept", defaultValue = "patient",  required = true) String concept,
            @RequestParam( value = "casebase",defaultValue = "casebase",  required = true) String casebase,
            @RequestParam(value = "caseId") String caseId
    ) {
        log.info("Retrieve a case by its ID!");
        CbrCase cbrCase = cbrService.getCaseById(concept, casebase, caseId);
        log.debug("The retrieved case by its Id is : "+ cbrCase);
        return cbrCase;
    }
}
