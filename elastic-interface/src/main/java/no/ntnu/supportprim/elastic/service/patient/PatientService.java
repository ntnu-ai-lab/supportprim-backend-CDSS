package no.ntnu.supportprim.elastic.service.patient;

import no.ntnu.supportprim.elastic.model.Patient;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
public interface PatientService {

    /**
     * Method to fetch a patient from the database.
     * @return
     */
    public Patient findByPatientId(String patientId);

    /**
     * Method to fetch a patients from the database by the a clinicId.
     * @return
     */
    public List<Patient> findByClinicId(String clinicId);

    /**
     * Method to fetch all patients from the database.
     * @return
     */
    public Iterable<Patient> findAllPatients();

    /**
     * Method to save a SupportPrim patient data in the database.
     * @param patient
     * @return
     */
    public Patient savePatient(Patient patient);

    /**
     * Method to update a Patient data in the database.
     * @param patient
     * @return
     */
    public Patient updatePatient(Patient patient);

    /**
     * Method to save the collection of SupportPrim patient data in the database.
     * @param patients
     * @return
     */
    public Iterable<Patient> savePatients(List<Patient> patients);
}
