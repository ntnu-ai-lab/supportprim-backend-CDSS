package no.ntnu.supportprim.elastic.service.patient;

import no.ntnu.supportprim.elastic.common.Constants;
import no.ntnu.supportprim.elastic.model.Patient;
import no.ntnu.supportprim.elastic.model.PatientTrace;
import no.ntnu.supportprim.elastic.repository.PatientRepository;
import no.ntnu.supportprim.elastic.repository.PatientTraceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@Service
public class PatientServiceImpl implements PatientService {

    // The dao repository will use the Elastic-Search-Repository to perform the database operations.
    @Autowired
    private PatientRepository patientDao;

    @Autowired
    private PatientTraceRepository patientTraceDao;

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patient.PatientService#savePatient(java.util.List)
     */
    @Override
    public Patient savePatient(Patient patientData) {

        Patient patient = new Patient();

        patient.setPatientId(patientData.getPatientId());
        patient.setClinicId(patientData.getClinicId());
        patient.setPatientDetails(patientData.getPatientDetails());

        if (null != patientData.getId()) {
            patient.setId(patientData.getId());
            patient.setDateCreated(patientData.getDateCreated());
            patient.setStatus(patientData.getStatus());
            patient.setSimilarPatients(patientData.getSimilarPatients());
        }

        savePatientTrace(patient);

        return patientDao.save(patient);
    }

    private void savePatientTrace(Patient patient){
        PatientTrace patientTrace = new PatientTrace(
                patient.getPatientId(),
                patient.getClinicId(),
                patient.getStatus(),
                patient.getSimilarPatients(),
                patient.getPatientDetails());

        patientTraceDao.save(patientTrace);
    }


    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patient.PatientService#savePatient(java.util.List)
     */
    @Override
    public Patient updatePatient(Patient patient) {
        patient.setDateUpdated(OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN)));

        PatientTrace patientTrace = new PatientTrace(
                patient.getPatientId(),
                patient.getClinicId(),
                patient.getStatus(),
                patient.getSimilarPatients(),
                patient.getPatientDetails());

        patientTraceDao.save(patientTrace);

        return patientDao.save(patient);
    }



    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patient.PatientService#savePatients(java.util.List)
     */
    @Override
    public Iterable<Patient> savePatients(List<Patient> patients) {
        List<PatientTrace> patientTraces = new ArrayList<>();
        for (Patient patient: patients) {
            patient.setDateUpdated(OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN)));
            PatientTrace patientTrace = new PatientTrace(
                    patient.getPatientId(),
                    patient.getClinicId(),
                    patient.getStatus(),
                    patient.getSimilarPatients(),
                    patient.getPatientDetails());
            patientTraces.add(patientTrace);
        }

        patientTraceDao.saveAll(patientTraces);

        return patientDao.saveAll(patients);
    }

    // /* (non-Javadoc)
    //  * @see no.ntnu.supportprim.elastic.service.patient.PatientService#findByPatientId
    //  */
    @Override
    public Patient findByPatientId(String patientId) {
        return patientDao.findByPatientId( patientId);
    }

    // /* (non-Javadoc)
    //  * @see no.ntnu.supportprim.elastic.service.patient.PatientService#findByClinicId
    //  */
    @Override
    public List<Patient> findByClinicId(String clinicID) {
        return patientDao.findByClinicId( clinicID);
    }

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patient.PatientService#findAllPatients()
     */
    @Override
    public Iterable<Patient> findAllPatients() {
        return patientDao.findAll();
    }
}
