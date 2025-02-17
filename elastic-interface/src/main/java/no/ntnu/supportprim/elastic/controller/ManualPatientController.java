package no.ntnu.supportprim.elastic.controller;

import no.ntnu.supportprim.elastic.model.ManualPatient;
import no.ntnu.supportprim.elastic.service.manualpatient.ManualPatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping(value = "/manualpatients")
public class ManualPatientController {

    @Autowired
    ManualPatientService manualPatientService;

    /**
     * Method to get a patients from the database.
     * @param patientId
     * @return
     */
    @GetMapping(value= "/getManualPatientById")
    public ManualPatient  getManualPatientByPid(@RequestParam String patientId) {
        return manualPatientService.findByPatientId(patientId);
    }

    /**
     * Method to get a patients from the database by clinician ID.
     * @param clinicId
     * @return
     */
    @GetMapping(value= "/getManualPatientByClinicId")
    public List<ManualPatient>  getManualPatientByClinicId(@RequestParam String clinicId) {
        return manualPatientService.findByClinicId(clinicId);
    }

    /**
     * Method to get a patients from the database.
     * @param patient
     * @return
     */
    @PostMapping(value= "/saveManualPatient")
    public ManualPatient saveManualPatient(@RequestBody ManualPatient patient) {
        return manualPatientService.saveManualPatient(patient);
    }
}
