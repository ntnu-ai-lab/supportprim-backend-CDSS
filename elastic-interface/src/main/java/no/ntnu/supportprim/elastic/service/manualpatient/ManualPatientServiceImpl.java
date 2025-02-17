package no.ntnu.supportprim.elastic.service.manualpatient;

import no.ntnu.supportprim.elastic.common.Constants;
import no.ntnu.supportprim.elastic.model.ManualPatient;
import no.ntnu.supportprim.elastic.model.ManualPatientTrace;
import no.ntnu.supportprim.elastic.repository.ManualPatientRepository;
import no.ntnu.supportprim.elastic.repository.ManualPatientTraceRepository;
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
public class ManualPatientServiceImpl implements ManualPatientService{

    // The dao repository will use the Elastic-Search-Repository to perform the database operations.
    @Autowired
    private ManualPatientRepository manualPatientDao;

    @Autowired
    private ManualPatientTraceRepository manualPatientTraceDao;

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.manualpatient.ManualPatientService#saveManualPatient(java.util.List)
     */
    @Override
    public ManualPatient saveManualPatient(ManualPatient patient) {
        patient.setDateUpdated(OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN)));

        ManualPatientTrace manualPatientTrace = new ManualPatientTrace(
                patient.getPatientId(),
                patient.getClinicId(),
                patient.getStatus(),
                patient.getSimilarPatients(),
                patient.getPatientDetails());

        manualPatientTraceDao.save(manualPatientTrace);

        return manualPatientDao.save(patient);
    }


    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.manualpatient.ManualPatientService#saveManualPatient(java.util.List)
     */
    @Override
    public ManualPatient updateManualPatient(ManualPatient patient) {
        patient.setDateUpdated(OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN)));

        ManualPatientTrace manualPatientTrace = new ManualPatientTrace(
                patient.getPatientId(),
                patient.getClinicId(),
                patient.getStatus(),
                patient.getSimilarPatients(),
                patient.getPatientDetails());

        manualPatientTraceDao.save(manualPatientTrace);

        return manualPatientDao.save(patient);
    }



    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.manualpatient.ManualPatientService#saveManualPatients(java.util.List)
     */
    @Override
    public Iterable<ManualPatient> saveManualPatients(List<ManualPatient> manualPatients) {
        List<ManualPatientTrace> manualPatientTraces = new ArrayList<>();
        for (ManualPatient patient: manualPatients) {
            patient.setDateUpdated(OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN)));
            ManualPatientTrace manualPatientTrace = new ManualPatientTrace(
                    patient.getPatientId(),
                    patient.getClinicId(),
                    patient.getStatus(),
                    patient.getSimilarPatients(),
                    patient.getPatientDetails());
            manualPatientTraces.add(manualPatientTrace);
        }

        manualPatientTraceDao.saveAll(manualPatientTraces);

        return manualPatientDao.saveAll(manualPatients);
    }

    // /* (non-Javadoc)
    //  * @see no.ntnu.supportprim.elastic.service.manualpatient.ManualPatientService#findByPatientId
    //  */
    @Override
    public ManualPatient findByPatientId(String patientId) {
        return manualPatientDao.findByPatientId( patientId);
    }

    // /* (non-Javadoc)
    //  * @see no.ntnu.supportprim.elastic.service.manualpatient.ManualPatientService#findByClinicId
    //  */
    @Override
    public List<ManualPatient> findByClinicId(String clinicID) {
        return manualPatientDao.findByClinicId( clinicID);
    }

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.manualpatient.ManualPatientService#findAllManualPatients()
     */
    @Override
    public Iterable<ManualPatient> findAllManualPatients() {
        return manualPatientDao.findAll();
    }
}
