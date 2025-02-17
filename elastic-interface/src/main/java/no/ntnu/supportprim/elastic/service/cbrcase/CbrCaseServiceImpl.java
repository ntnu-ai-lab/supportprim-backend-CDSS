package no.ntnu.supportprim.elastic.service.cbrcase;

import no.ntnu.supportprim.elastic.model.CbrCase;
import no.ntnu.supportprim.elastic.repository.CbrCaseRepository;
import no.ntnu.supportprim.elastic.service.cbrcase.CbrCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@Service
public class CbrCaseServiceImpl implements CbrCaseService {
    // The dao repository will use the Elastic-Search-Repository to perform the database operations.
    @Autowired
    private CbrCaseRepository cbrCaseDao;

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patient.PatientService#savePatients(java.util.List)
     */
    @Override
    public void saveCbrCases(List<CbrCase> cbrCases) {
        cbrCaseDao.saveAll(cbrCases);
    }

    /* (non-Javadoc)
     * @see no.ntnu.supportprim.elastic.service.patient.PatientService#findAllPatients()
     */
    @Override
    public Iterable<CbrCase> findAllCbrCases() {
        return cbrCaseDao.findAll();
    }

   // /* (non-Javadoc)
   //  * @see no.ntnu.supportprim.elastic.service.patient.PatientService#findByBirthyearJournalidProjectid
   //  */
   // @Override
   // public List<Patient> findByBirthYearAndJournalIdAndProjectId(Integer birthYear, Integer journalId, String projectId) {
   //     return patientDao.findByBirthYearAndJournalIdAndProjectId( birthYear, journalId, projectId);
   // }
}
