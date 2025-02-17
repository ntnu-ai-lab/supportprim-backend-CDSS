package no.ntnu.supportprim.cbr.controller;

import io.swagger.annotations.ApiOperation;
import no.ntnu.supportprim.cbr.model.ManualPatient;
import no.ntnu.supportprim.cbr.model.Patient;
import no.ntnu.supportprim.cbr.model.RetrievalResult;
import no.ntnu.supportprim.cbr.service.CbrService;
import no.ntnu.supportprim.cbr.service.PatientDataService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.List;

import static no.ntnu.supportprim.cbr.common.ApiConstant.*;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("patient")
@CrossOrigin(allowCredentials="true")
public class PatientDataController {

    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private PatientDataService patientDataService;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${data.management.get.patient.url}")
    private String dataManagementGetPatientUrl;

    @Value("${data.management.get.patient.by.pid.url}") // data.management.get.patient.by.pid.url = http://data-management/patient/getPatientById?
    private String dataManagementGetPatientByIdUrl;

    @Value("${elastic.get.patients.by.clinic.id.url}") // elastic.get.patients.by.clinic.id.url = http://elastic-interface/patients/getPatientsByClinicId?
    private String esGetPatientsByClinicIdUrl;

    @Value("${data.management.get.all.patient.url}")
    private String dataManagementGetAllPatientUrl;


    @Value("${elastic.get.manualpatient.by.clinic.id.url}") // elastic.get.manualpatient.by.clinic.id.url
    private String esGetManualPatientByClinicIdUrl;

    @Value("${data.management.get.manualpatient.by.pid.url}") // data.management.get.manualpatient.by.pid.url = http://data-management/patient/getManualPatientById?
    private String dataManagementGetManualPatientByIdUrl;

    @RequestMapping(method = RequestMethod.GET, path="/getPatient")
    @ApiOperation(value = "${PatientController.getPatient}",//
            notes = "This API needs Infopad's medicalOffice ID along with patient's journal ID and year of birth"
    )
    public  Patient getPatient(
            @RequestParam(value = CLINIC_ID_KEY, required = true) String clinicId,
            @RequestParam(value = JOURNAL_ID, required = true) Integer journalId,
            @RequestParam(value = BIRTH_YEAR, required = true) Integer birthYear
    ){
        log.info("Fetching a patient from data-management service.");

        String requestUrl = dataManagementGetPatientUrl
                + CLINIC_ID_KEY + EQUAL_TO + clinicId
                + addParam(JOURNAL_ID, journalId.toString())
                + addParam(BIRTH_YEAR, birthYear.toString());

        log.info("request URI: "+requestUrl);
        Patient patient = restTemplate.getForObject(requestUrl, Patient.class);

        log.debug("Patient form data-management service is : "+patient);
        log.info("Fetched a patient from data-management service.");

        return patient;
    }

    @GetMapping(value = "/getPatientById")
    @ApiOperation(value = "${PatientController.getPatientById}",//
            notes = "This API needs patientId"
    )
    public  Patient getPatientById(@RequestParam(value = PATIENT_ID, required = true) String patientId){

        log.info("Fetching a patient from data-management service.");

        String requestUrl = dataManagementGetPatientByIdUrl + PATIENT_ID + EQUAL_TO + patientId;

        log.info("request URI: "+requestUrl);
        Patient patient = restTemplate.getForObject(requestUrl, Patient.class);
        log.debug("Patient form data-management service is : "+patient);
        log.info("Fetched a patient from data-management service.");

        return patient;
    }

    @GetMapping(value = "/getPatientByClinicId")
    @ApiOperation(value = "${PatientController.getPatientByClinicId}", //
            notes = "This API needs clinicId"
    )
    public List getPatientsByClinicId(@RequestParam(value = CLINIC_ID, required = false) String clinicId){

        log.info("Fetching all patients from elastic service.");

        String requestUrl = esGetPatientsByClinicIdUrl + CLINIC_ID + EQUAL_TO + clinicId;

        log.info("request URI: "+requestUrl);
        List<Patient> patients = restTemplate.getForObject(requestUrl, List.class);
        log.debug("Patients form elastic service are : "+patients);
        log.info("Fetched all patients from elastic service.");

        return patients;
    }

    @PostMapping(value = "/savePatient")
    @ApiOperation(value = "${PatientController.savePatient}",//
            notes = "This API needs patient json."
    )
    public Patient savePatient(@RequestBody Patient patient){

        log.info("Saving the Patient Data!");
        patient = patientDataService.savePatient(patient);
        log.debug("Saved patient data is : "+ patient);
        return patient;
    }



    @GetMapping(value = "/getManualPatientById")
    @ApiOperation(value = "${PatientController.getManualPatientById}",//
            notes = "This API needs patientId"
    )
    public  String getManualPatientById(@RequestParam(value = PATIENT_ID, required = false) String patientId){

        log.info("Fetching a patient from data-management service.");

        String requestUrl = dataManagementGetManualPatientByIdUrl + PATIENT_ID + EQUAL_TO + patientId;

        log.info("request URI: "+requestUrl);
        String patient = restTemplate.getForObject(requestUrl, String.class);
        log.debug("Patient form data-management service is : "+patient);
        log.info("Fetched a patient from data-management service.");

        return patient;
    }

    @GetMapping(value = "/getManualPatientByClinicId")
    @ApiOperation(value = "${PatientController.getManualPatientByClinicId}", //
            notes = "This API needs clinicId"
    )
    public List getManualPatientByClinicId(@RequestParam(value = CLINIC_ID, required = false) String clinicId){

        log.info("Fetching all patients from elastic service.");

        String requestUrl = esGetManualPatientByClinicIdUrl + CLINIC_ID + EQUAL_TO + clinicId;

        log.info("request URI: "+requestUrl);
        List patients = restTemplate.getForObject(requestUrl, List.class);
        log.debug("Patients form elastic service are : "+patients);
        log.info("Fetched all patients from elastic service.");

        return patients;
    }

    @PostMapping(value = "/saveManualPatient")
    @ApiOperation(value = "${PatientController.saveManualPatient}",//
            notes = "This API needs ManualPatient json."
    )
    public  ManualPatient saveManualPatient(@RequestBody ManualPatient manualPatient){

        log.info("Saving the Patient Data!");
        manualPatient = patientDataService.saveManualPatient(manualPatient);
        log.debug("Saved patient data is : "+ manualPatient);
        return manualPatient;
    }

    @RequestMapping(method = RequestMethod.GET, path="/getAllPatients")
    @ApiOperation(value = "${PatientController.getAllPatients}",//
            notes = "Caution: It may take more than 20 minutes.\n    " +
                    "This API only needs Infopad's project ID and will return all the patients registered under the project ID"
    )
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
        return PARAM_SEPARATOR + key + EQUAL_TO + value;
    }

    private String generatePatientId(String clinicId, String projectId, String journalId, String birthYear) {
        return clinicId +"-"+ projectId +"-"+ journalId +"-"+ birthYear;
    }
}
