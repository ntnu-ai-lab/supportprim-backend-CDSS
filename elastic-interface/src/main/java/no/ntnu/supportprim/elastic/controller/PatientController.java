package no.ntnu.supportprim.elastic.controller;

import no.ntnu.supportprim.elastic.model.Patient;
import no.ntnu.supportprim.elastic.service.patient.PatientService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping(value= "/patients")
public class PatientController {
    private static final Logger LOG = LoggerFactory.getLogger(PatientController.class);
    @Autowired
    PatientService patientService;

    /**
     * Method to get a patients from the database.
     * @param patientId
     * @return
     */
    @GetMapping(value= "/getPatientById")
    public Patient getPatientByPid(@RequestParam String patientId) {
        return patientService.findByPatientId(patientId);
    }

    /**
     * Method to get a patients from the database by clinician ID.
     * @param clinicId
     * @return
     */
    @GetMapping(value= "/getPatientsByClinicId")
    public List<Patient>  getPatientsByClinicId(@RequestParam String clinicId) {
        return patientService.findByClinicId(clinicId);
    }

    /**
     * Method to get a patients from the database.
     * @param patient
     * @return
     */
    @PostMapping(value= "/savePatient")
    public Patient savePatient(@RequestBody Patient patient) {
        LOG.debug("Patient to be saved is :\n\n" + patient.toString() + "\n\n");

        LOG.info("Saving the patient in ES !!!");
        patient = patientService.savePatient(patient);
        LOG.info("Patient is saved in the ES.");

        LOG.debug("Saved patient in ES :\n\n" + patient + "\n\n");

        return patient;
    }
}
