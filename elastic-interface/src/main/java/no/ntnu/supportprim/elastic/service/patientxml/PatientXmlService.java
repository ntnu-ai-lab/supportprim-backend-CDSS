package no.ntnu.supportprim.elastic.service.patientxml;

import no.ntnu.supportprim.elastic.model.PatientXml;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
public interface PatientXmlService {

    /**
     * Method to save an Infopad patient xml data in the database.
     * @param patientXml
     */
    public PatientXml savePatientXml(PatientXml patientXml);

    /**
     * Method to save the collection of Infopad xml patient data in the database.
     * @param patientXmls
     */
    public Iterable<PatientXml> savePatientXmls(List<PatientXml> patientXmls);

    /**
     * Method to fetch all Infopad xml patient data from the database.
     * @return
     */
    public Iterable<PatientXml> findAllPatientXmls();

   ///**
   // * Method to fetch the Infopad xml patient data on the basis of birthYear, journalId, and projectId.
   // * @param xml
   // * @return
   // */
    //public List<PatientXml> findByBirthYearAndJournalIdAndProjectId(Integer birthYear, Integer journalId, String projectId);
}
