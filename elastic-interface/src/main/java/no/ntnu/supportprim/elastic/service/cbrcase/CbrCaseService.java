package no.ntnu.supportprim.elastic.service.cbrcase;

import no.ntnu.supportprim.elastic.model.CbrCase;
import no.ntnu.supportprim.elastic.model.Patient;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
public interface CbrCaseService {
    /**
     * Method to save the collection of SupportPrim patient data in the database.
     * @param cbrCases
     */
    public void saveCbrCases(List<CbrCase> cbrCases);

    /**
     * Method to fetch all SupportPrim patient data from the database.
     * @return
     */
    public Iterable<CbrCase> findAllCbrCases();

    ///**
    // * Method to fetch the SupportPrim patient data on the basis of birthYear, journalId, and projectId.
    // * @param birthYear
    // * @param journalId
    // * @param projectId
    // * @return
    // */
    //public List<Patient> findByBirthYearAndJournalIdAndProjectId(Integer birthYear, Integer journalId, String projectId);
}
