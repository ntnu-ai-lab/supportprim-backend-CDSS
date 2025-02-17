package no.ntnu.supportprim.cbr.research.controller;

import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("")
public class PatientDataController {

    private final Log logger = LogFactory.getLog(getClass());

    private static final String PARAM_SEPARATOR = "&";
    public static final String EQUAL_TO = "=";
    public static final String CLINIC_ID = "clinicId";
    public static final String CLINIC_PASSWORD = "clinicPassword";
    public static final String PROJECT_ID = "projectid";
    public static final String JOURNAL_ID = "journalId";
    public static final String BIRTH_YEAR = "birthYear";

    @Autowired
    private RestTemplate restTemplate;

    @Value("${data.management.service.url}")
    private String dataManagementServiceUrl;

    @Value("datamgmt.getpatient.sub.url")
    private String DatamgmtGetpatientSubUrl;

    @RequestMapping("/patient")
    @ApiOperation(value = "${PatientController.getPatient}",//
            notes = "This API needs Infopad's project ID along with patient's journal ID and year of birth"
    )
    public  String getPatientForm(
            @RequestParam(value = CLINIC_ID, required = true) String clinicId,
            @RequestParam(value = CLINIC_PASSWORD, required = true) String clinicPassword,
            @RequestParam(value = PROJECT_ID, required = true) String projectId,
            @RequestParam(value = JOURNAL_ID, required = true) String journalId,
            @RequestParam(value = BIRTH_YEAR, required = true) String birthYear
    ){

        logger.info("Fetching a patient from data-management service.");

        String requestUrl = dataManagementServiceUrl + DatamgmtGetpatientSubUrl
                + addParam(CLINIC_ID, clinicId)
                + addParam(CLINIC_PASSWORD, clinicPassword)
                + addParam(PROJECT_ID, projectId)
                + addParam(JOURNAL_ID, journalId)
                + addParam(BIRTH_YEAR, birthYear);

        String patientForm = restTemplate.getForObject(requestUrl, String.class);

        logger.info("Patient form data-management service is : "+patientForm);

        return patientForm;
    }

    private String addParam(String key, String value){
        return PARAM_SEPARATOR+key+ EQUAL_TO +value;
    }

    private String generatePatientId(String clinicId, String projectId, String journalId, String birthYear) {
        return clinicId +"-"+ projectId +"-"+ journalId +"-"+ birthYear;
    }
}
