package no.ntnu.supportprim.data.controller;

import io.swagger.annotations.ApiOperation;

import no.ntnu.supportprim.data.model.ManualPatient;
import no.ntnu.supportprim.data.model.Patient;
import no.ntnu.supportprim.data.service.PatientDataService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.fasterxml.jackson.core.JsonProcessingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static no.ntnu.supportprim.data.common.ApiConstant.*;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("/patient")
public class PatientController {
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private PatientDataService patientDataService;

    @GetMapping("/")
    public String health() {
        return "I am Ok!";
    }


    @GetMapping(value = "/getPatient")
    @ApiOperation(value = "${PatientController.getPatient}",//
            notes = "This API needs Infopad's clinicId, projectId, journalId, and birthYear of a patient."
    )
    public Patient getPatient(
            @RequestParam(value = CLINIC_ID, required = true) String clinicId,
            @RequestParam(value = JOURNAL_ID, required = true) Integer journalId,
            @RequestParam(value = BIRTH_YEAR, required = true) Integer birthYear
    ) throws JsonProcessingException {

        log.info("Fetching the patient data");
        Patient patient = patientDataService.getPatient(clinicId, journalId, birthYear);
        return patient;
    }

    @GetMapping(value = "/getPatientById")
    @ApiOperation(value = "${PatientController.getPatientById}",//
            notes = "This API needs a patientId."
    )
    public Patient getPatientById(
            @RequestParam(value = PATIENT_ID, required = true) String patientId
    ) throws JsonProcessingException {

        log.info("Fetching the patient data");
        Patient patient = patientDataService.getPatientById(patientId);
        return patient;
    }

    @PostMapping(value= "/savePatient")
    @ApiOperation(value = "${PatientController.savePatient}",//
            notes = "This API needs a Patient json."
    )
    public Patient savePatient(@RequestBody Patient patient) throws JsonProcessingException {

        log.info("Saving the patient data to DB");
        patient = patientDataService.savePatient(patient);
        return patient;
    }

    //----------------------------------------------------------------------------------------------------------

    // Temporary method to get patient data directly form Elasticsearch
    @GetMapping(value = "/getManualPatientById")
    @ApiOperation(value = "${PatientController.getManualPatientById}",//
            notes = "This API needs a patientId."
    )
    public String getManualPatientById(
            @RequestParam(value = PATIENT_ID, required = true) String patientId
    ) throws JsonProcessingException {

        log.info("Fetching the patient data");
        String patient = patientDataService.getManualPatientById(patientId);
        return patient;
    }

    // Temporary method to save patient data directly to Elasticsearch
    @PostMapping(value= "/saveManualPatient")
    @ApiOperation(value = "${PatientController.saveManualPatient}",//
            notes = "This API needs a ManualPatient json."
    )
    public ManualPatient saveManualPatient(@RequestBody ManualPatient manualPatient) throws JsonProcessingException {

        log.info("Saving the patient data to DB");
        manualPatient = patientDataService.saveManualPatient(manualPatient);
        return manualPatient;
    }

    @GetMapping(value = "/fetchAllPatients")
    @ApiOperation(value = "${PatientController.fetchAllPatients}")
    public String fetchAllPatients(
            @RequestParam(value = CLINIC_ID, required = true) String clinicId,
            @RequestParam(value = CLINIC_PASSWORD, required = true) String clinicPassword,
            @RequestParam(value = PROJECT_ID, required = true) Integer projectId
    ) throws JsonProcessingException {

        log.info("Fetching the patient data");
        String patient = patientDataService.getAllPatients(clinicId, clinicPassword, projectId);
        return patient;
    }
}
