package no.ntnu.supportprim.elastic.service.patientjson;

import no.ntnu.supportprim.elastic.model.PatientJson;
import no.ntnu.supportprim.elastic.model.PatientXml;
import no.ntnu.supportprim.elastic.repository.PatientJsonRepository;
import no.ntnu.supportprim.elastic.service.patientjson.PatientJsonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@Service
public class PatientJsonServiceImpl implements PatientJsonService {
    // The dao repository will use the Elastic-Search-Repository to perform the database operations.
    @Autowired
    private PatientJsonRepository patientJsonDao;

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patientJson.PatientJsonService#savePatientJson(java.util.List)
     */
    @Override
    public PatientJson savePatientJson(PatientJson patientJson) {
        return patientJsonDao.save(patientJson);
    }


    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patientjson.PatientJsonService#savePatientJsons(java.util.List)
     */
    @Override
    public void savePatientJsons(List<PatientJson> patientJsons) {
        patientJsonDao.saveAll(patientJsons);
    }

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patientjson.PatientJsonService#findAllPatientJsons()
     */
    @Override
    public Iterable<PatientJson> findAllPatientJsons() {
        return patientJsonDao.findAll();
    }

   // /* (non-Javadoc)
   //  * @see no.ntnu.supportprim.elastic.service.patient.PatientService#findByBirthyearJournalidProjectid
   //  */
   // @Override
   // public List<Patient> findByBirthYearAndJournalIdAndProjectId(Integer birthYear, Integer journalId, String projectId) {
   //     return patientDao.findByBirthYearAndJournalIdAndProjectId( birthYear, journalId, projectId);
   // }
}
