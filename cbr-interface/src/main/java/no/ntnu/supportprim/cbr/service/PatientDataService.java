package no.ntnu.supportprim.cbr.service;

import no.ntnu.supportprim.cbr.model.ManualPatient;
import no.ntnu.supportprim.cbr.model.Patient;
import no.ntnu.supportprim.cbr.util.HttpHeaderGenerator;
import no.ntnu.supportprim.cbr.util.JsonUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 * @author: Amar Jaiswal
 */
@Service
public class PatientDataService {
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private RestTemplate restTemplate;

    @Value("${data.management.save.manualpatient.url}")
    private String dataManagementSaveManualPatientUrl;

    @Value("${data.management.save.patient.url}")
    private String dataManagementSavePatientUrl;

    public Patient savePatient(Patient patient){
        log.info("Saving ManualPatient json in the data base");

        try {
            String payload = JsonUtil.getJsonFromObject(patient);
            HttpHeaders headers = HttpHeaderGenerator.getHeaders();

            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Data management base URL: " + dataManagementSavePatientUrl);
            log.debug("The post body for DataManagement-Service is:" + payload);
            patient = restTemplate.postForObject(dataManagementSavePatientUrl, request, Patient.class);
            log.debug("Response from the DataManagement-service : " + patient);

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return patient;
    }

    public  ManualPatient saveManualPatient(ManualPatient manualPatient){
        log.info("Saving ManualPatient json in the data base");

        try {
            String payload = JsonUtil.getJsonFromObject(manualPatient);
            HttpHeaders headers = HttpHeaderGenerator.getHeaders();

            HttpEntity<String> request = new HttpEntity<String>(payload, headers);

            log.info("Data management base URL: " + dataManagementSaveManualPatientUrl);
            log.debug("The post body for DataManagement-Service is:" + payload);
            manualPatient = restTemplate.postForObject(dataManagementSaveManualPatientUrl, request, ManualPatient.class);
            log.debug("Response from the DataManagement-service : " + manualPatient);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return manualPatient;
    }
}
