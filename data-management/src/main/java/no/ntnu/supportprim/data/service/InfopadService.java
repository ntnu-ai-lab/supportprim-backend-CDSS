package no.ntnu.supportprim.data.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.validation.constraints.NotNull;

import static no.ntnu.supportprim.data.common.ApiConstant.*;

/**
 * @author: Amar Jaiswal
 */
@Service
public class InfopadService {
    private final Log log = LogFactory.getLog(getClass());

    public static final String USERNAME = "username";
    public static final String PASSWORD = "password";

    @Autowired
    private ElasticService elasticService;

    //@Qualifier("getRestTemplate")
    @Autowired
    private RestTemplate restTemplate;

    @Value("${infopad.interface.url}")
    private String infopadInterfaceUrl;

    @Value("${infopad.get.patient}")
    private String infopadGetPatient;

    @Value("${infopad.get.all.patients}")
    private String infopadGetAllPatient;

    // infopad.patient.form.url = http://localhost:8088/infopad/getPatient?birthYear=1980&journalId=1001
    public String getPatient(@NotNull String clinicId, @NotNull Integer journalId, @NotNull  Integer birthYear) throws JsonProcessingException {
        String requestUrl = infopadInterfaceUrl + infopadGetPatient
                + CLINIC_ID + EQUAL_TO + clinicId
                + addParam(JOURNAL_ID, journalId.toString())
                + addParam(BIRTH_YEAR, birthYear.toString());

        log.info("request URI: "+requestUrl);
        String patientForm = restTemplate.getForObject(requestUrl, String.class);

        log.debug("Patient form xml from Infopad server is : " + patientForm);

        return patientForm;
    }

    public String getAllPatients(String clinicId, String clinicPassword, Integer projectId) {
        String requestUrl = infopadInterfaceUrl + infopadGetAllPatient
                + CLINIC_ID + EQUAL_TO + clinicId
                + addParam(CLINIC_PASSWORD, clinicPassword)
                + addParam(PROJECT_ID, projectId.toString());

        log.info("request URI: "+requestUrl);
        String patientForm = restTemplate.getForObject(requestUrl, String.class);

        log.debug("Patient form xmls from Infopad server is : " + patientForm);

        return patientForm;
    }

    private String addParam(@NotNull String key, @NotNull String value) {
        return PARAM_SEPARATOR + key + EQUAL_TO + value;
    }
}
