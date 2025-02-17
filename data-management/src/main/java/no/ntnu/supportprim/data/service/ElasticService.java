package no.ntnu.supportprim.data.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import no.ntnu.supportprim.data.model.ManualPatient;
import no.ntnu.supportprim.data.model.Patient;
import no.ntnu.supportprim.data.model.PatientJson;
import no.ntnu.supportprim.data.model.PatientXml;
import no.ntnu.supportprim.data.util.HttpHeaderGenerator;
import no.ntnu.supportprim.data.util.JsonUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.validation.constraints.NotNull;

import static no.ntnu.supportprim.data.common.ApiConstant.*;

/**
 * @author: Amar Jaiswal
 */
@Service
public class ElasticService {

    private final Log log = LogFactory.getLog(getClass());

    @Qualifier("getRestTemplate")
    @Autowired
    private RestTemplate restTemplate;

    @Value("${elastic.get.patient.base.url}")
    private String elasticGetPatientBaseUrl;
    @Value("${elastic.save.patient.base.url}")
    private String elasticSavePatientBaseUrl;

    @Value("${elastic.get.manualpatient.base.url}")
    private String elasticGetManualPatientBaseUrl;
    @Value("${elastic.save.manualpatient.base.url}")
    private String elasticSaveManualPatientBaseUrl;

    @Value("${elastic.save.patient.json.base.url}")
    private String elasticSavePatientJsonBaseUrl;
    @Value("${elastic.save.patient.xml.base.url}")
    private String elasticSavePatientXmlBaseUrl;

    @Value("${elastic.save.cbrcase.base.url}")
    private String elasticSaveCbrCaseBaseUrl;

    /**
     * Get Patient from ElasticSearch DB
     * @param patientId
     * @return
     * @throws JsonProcessingException
     */
    public Patient getPatientByPid(String patientId) throws JsonProcessingException {
        log.info("Getting patient from the data base");

        Patient patient = null;

        try {
            log.info("Elastic-Service base URL: " + elasticGetPatientBaseUrl);
            String requestUrl = elasticGetPatientBaseUrl + PATIENT_ID + EQUAL_TO + patientId;
            log.info("Elastic-Service complete URL: " + requestUrl);
            patient = restTemplate.getForObject(requestUrl, Patient.class);
            log.debug("Response from the elastic-service : " + patient);

        } catch (Exception ex) {
            ex.printStackTrace();
            patient = null;
        }
        return patient;
    }

    /**
     * Save Patient to ElasticSearch DB
     * @param patient
     * @return
     * @throws JsonProcessingException
     */
    public Patient savePatientToDb(Patient patient) throws JsonProcessingException {
        log.info("Saving Patient json in the data base");

        try {
            //PatientJson patient = new PatientJson(patientId, patientJson);
            String payload = JsonUtil.getJsonFromObject(patient);

            HttpHeaders headers = HttpHeaderGenerator.getHeaders();

            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Elastic-Service base URL: " + elasticSavePatientBaseUrl);
            log.debug("The post body for Elastic-Service is:" + payload);
            patient = restTemplate.postForObject(elasticSavePatientBaseUrl, request, Patient.class);
            log.debug("Response from the elastic-service : " + patient);

        } catch (Exception ex) {
            ex.printStackTrace();
            patient = null;
        }
        return patient;
    }


    //------------------------------------------------------------------------------------

    /** Save the patient form xml to elastic db
     *
     * @param clinicId
     * @param patientId
     * @param xml
     * @return
     * @throws JsonProcessingException
     */
    public PatientXml savePatientXmlToDb(@NotNull String clinicId, @NotNull String patientId, @NotNull String xml) throws JsonProcessingException {
        log.info("Saving patient form xml in the data base");

        PatientXml elasticSaveResponse = null;

        try {
            PatientXml patientXml = new PatientXml();
            patientXml.setPatientId(patientId);
            patientXml.setClinicId(clinicId);
            patientXml.setPatientXml(xml);

            String payload = JsonUtil.getJsonFromObject(patientXml);

            HttpHeaders headers = HttpHeaderGenerator.getHeaders();

            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Elastic-Service base URL: " + elasticSavePatientXmlBaseUrl);
            log.debug("The post body for Elastic-Service is:" + payload);
            elasticSaveResponse = restTemplate.postForObject(elasticSavePatientXmlBaseUrl, request, PatientXml.class);
            log.debug("Response from the elastic-service : " + elasticSaveResponse);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return elasticSaveResponse;
    }

    /** Need to implement
     *
     * @param patientJson
     * @return
     * @throws JsonProcessingException
     */
    public PatientJson savePatientJsonToDb(PatientJson patientJson) throws JsonProcessingException {
        log.info("Saving patient json in the data base");
        try {
            String payload = JsonUtil.getJsonFromObject(patientJson);

            HttpHeaders headers = HttpHeaderGenerator.getHeaders();
            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Elastic-Service base URL: " + elasticSavePatientJsonBaseUrl);
            log.debug("The post body for Elastic-Service is:" + payload);
            patientJson = restTemplate.postForObject(elasticSavePatientJsonBaseUrl, request, PatientJson.class);
            log.debug("Response from the elastic-service : " + patientJson);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return patientJson;
    }

    /** Need to implement
     *
     * @param patientId
     * @param patient
     * @return
     * @throws JsonProcessingException
     */
    /*public String savePatientToDb(String patientId, String patient) throws JsonProcessingException {
        log.info("Saving patient in the data base");

        String elasticSaveResponse = "null";

        try {
            PatientXml patientXml = new PatientXml(patientId, patient);
            String payload = JsonUtil.getJsonFromObject(patientXml);

            HttpHeaders headers = HttpHeaderGenerator.getHeaders();

            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Elastic-Service base URL: " + elasticSavePatientBaseUrl);
            log.debug("The post body for Elastic-Service is:" + payload);
            elasticSaveResponse = restTemplate.postForObject(elasticSavePatientBaseUrl, request, String.class);
            log.debug("Response from the elastic-service : " + elasticSaveResponse);

        } catch (Exception ex) {
            elasticSaveResponse = ex.toString();
            ex.printStackTrace();
        }
        return elasticSaveResponse;
    }
    */


    /** Need to implement
     *
     * @param patientId
     * @param cbrCase
     * @return
     * @throws JsonProcessingException
     */
    /*public String saveCbrCaseToDb(String patientId, String cbrCase) throws JsonProcessingException {
        log.info("Saving cbr case in the data base");

        String elasticSaveResponse = "null";

        try {
            PatientXml patientXml = new PatientXml(patientId, cbrCase);
            String payload = JsonUtil.getJsonFromObject(patientXml);

            HttpHeaders headers = HttpHeaderGenerator.getHeaders();

            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Elastic-Service base URL: " + elasticSaveCbrCaseBaseUrl);
            log.debug("The post body for Elastic-Service is:" + payload);
            elasticSaveResponse = restTemplate.postForObject(elasticSaveCbrCaseBaseUrl, request, String.class);
            log.debug("Response from the elastic-service : " + elasticSaveResponse);

        } catch (Exception ex) {
            elasticSaveResponse = ex.toString();
            ex.printStackTrace();
        }
        return elasticSaveResponse;
    }*/

    /**
     * Get manualPatient from ElasticSearch DB
     * @param patientId
     * @return
     * @throws JsonProcessingException
     */
    public String getManualPatientById(String patientId) throws JsonProcessingException {
        log.info("Getting patient from the data base");

        String elasticGetResponse = "null";

        try {
            log.info("Elastic-Service base URL: " + elasticGetManualPatientBaseUrl);
            String requestUrl = elasticGetManualPatientBaseUrl + PATIENT_ID + EQUAL_TO + patientId;
            log.info("Elastic-Service complete URL: " + requestUrl);
            elasticGetResponse = restTemplate.getForObject(requestUrl, String.class);
            log.debug("Response from the elastic-service : " + elasticGetResponse);

        } catch (Exception ex) {
            elasticGetResponse = ex.toString();
            ex.printStackTrace();
        }
        return elasticGetResponse;
    }

    /**
     * Save manualPatient to ElasticSearch DB
     * @param manualPatient
     * @return
     * @throws JsonProcessingException
     */
    public ManualPatient saveManualPatientToDb(ManualPatient manualPatient) throws JsonProcessingException {
        log.info("Saving ManualPatient json in the data base");

        try {
            //PatientJson patient = new PatientJson(patientId, patientJson);
            String payload = JsonUtil.getJsonFromObject(manualPatient);

            HttpHeaders headers = HttpHeaderGenerator.getHeaders();

            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Elastic-Service base URL: " + elasticSaveManualPatientBaseUrl);
            log.debug("The post body for Elastic-Service is:" + payload);
            manualPatient = restTemplate.postForObject(elasticSaveManualPatientBaseUrl, request, ManualPatient.class);
            log.debug("Response from the elastic-service : " + manualPatient);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return manualPatient;
    }
}
