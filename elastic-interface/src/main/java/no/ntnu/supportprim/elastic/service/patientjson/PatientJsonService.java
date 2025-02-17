package no.ntnu.supportprim.elastic.service.patientjson;

import no.ntnu.supportprim.elastic.model.PatientJson;
import no.ntnu.supportprim.elastic.model.PatientXml;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
public interface PatientJsonService {

    /**
     * Method to save an Infopad patient json data in the database.
     * @param patientJson
     */
    public PatientJson savePatientJson(PatientJson patientJson);

    /**
     * Method to save the collection of SupportPrim patient data in the database.
     * @param patientJsons
     */
    public void savePatientJsons(List<PatientJson> patientJsons);

    /**
     * Method to fetch all patient jsons from the database.
     * @return
     */
    public Iterable<PatientJson> findAllPatientJsons();

    ///**
    // * Method to fetch the SupportPrim patient data on the basis of birthYear, journalId, and projectId.
    // * @param birthYear
    // * @param journalId
    // * @param projectId
    // * @return
    // */
    //public List<PatientJson> findByBirthYearAndJournalIdAndProjectId(Integer birthYear, Integer journalId, String projectId);
}
