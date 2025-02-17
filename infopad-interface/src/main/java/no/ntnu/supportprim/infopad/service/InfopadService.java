package no.ntnu.supportprim.infopad.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.w3c.dom.Document;

import java.time.Duration;
import java.time.Instant;

import static no.ntnu.supportprim.infopad.common.ApiConstant.*;

import no.ntnu.supportprim.infopad.util.XmlUtil;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * @author: Amar Jaiswal
 */
@Service
public class InfopadService {
    private final Log log = LogFactory.getLog(getClass());

    @Qualifier("getExternalRestTemplate")
    @Autowired
    private RestTemplate externalRestTemplate;

    // infopad.form.base.url =          https://www.infopad.no/admin/api/form?
    // infopad.form.url =               https://www.infopad.no/admin/api/form?username=support32&password=sup32
    // infopad.patient.form.url =       https://www.infopad.no/admin/api/form?username=support32&password=sup32&projectid=249961487&journalId=1001&birthYear=1980
    // infopad.patient.form.url.full =  https://www.infopad.no/admin/api/form?username=support32&password=sup32&projectid=249961487&journalId=1001&birthYear=1980&unlimitedRecords=1
    // https://www.infopad.no/admin/api/form?username=support32&password=sup32&projectid=249961487&officeName=support10&journalId=2&birthYear=1965&unlimitedRecords=1
    @Value("${infopad.form.base.url}")
    private String infopadFormBaseUrl;

    public String getPatientForm(String adminId, String adminPassword, Integer projectId, String clinicId, Integer journalId, Integer birthYear) throws Exception {
        Instant start = Instant.now();

        String forms = getPatientXml(adminId, adminPassword, projectId, clinicId, journalId, birthYear);

        Instant end = Instant.now();
        Duration timeElapsed = Duration.between(start, end);

        log.info("\n\n Total time elapsed : "+ timeElapsed.toMillis() +" ms\n");

        return forms;
    }

    public String getPatientXml(String clinicId, String clinicPassword, Integer projectId) throws Exception {
        Instant start = Instant.now();

        String forms = getPatientXml(clinicId, clinicPassword, projectId, null, null, null);

        Instant end = Instant.now();
        Duration timeElapsed = Duration.between(start, end);

        log.info("\n\n Total time elapsed : "+ timeElapsed.toMillis() +"\n");

        return forms;
    }

    // https://www.infopad.no/admin/api/form?username=support32&password=sup32&projectid=249961487&journalId=1001&birthYear=1980&unlimitedRecords=1
    private String getPatientXml(String username, String password, Integer projectId, String clinicId, Integer journalId, Integer birthYear) throws Exception {
        boolean flagFullRecord = false;
        String infopadGetPatientUrl = infopadFormBaseUrl;

        if (null !=clinicId && null != journalId && null != birthYear){
            infopadGetPatientUrl = infopadFormBaseUrl
                    + INFOPAD_USERNAME + EQUAL_TO + username
                    + addParam(INFOPAD_PASSWORD, password)
                    + addParam(INFOPAD_PROJECT_ID, projectId.toString())
                    + addParam(INFOPAD_MEDICAL_OFFICE, clinicId)
                    + addParam(INFOPAD_JOURNAL_ID, journalId.toString())
                    + addParam(INFOPAD_BIRTH_YEAR, birthYear.toString())
                    + addParam(INFOPAD_UNLIMITED_RECORDS, "1");
            flagFullRecord = true;
        }
        else if (null != journalId && null != birthYear){
            infopadGetPatientUrl = infopadFormBaseUrl
                    + INFOPAD_USERNAME + EQUAL_TO + username
                    + addParam(INFOPAD_PASSWORD, password)
                    + addParam(INFOPAD_PROJECT_ID, projectId.toString())
                    + addParam(INFOPAD_JOURNAL_ID, journalId.toString())
                    + addParam(INFOPAD_BIRTH_YEAR, birthYear.toString())
                    + addParam(INFOPAD_UNLIMITED_RECORDS, "1");
            flagFullRecord = true;
        } else {
            infopadGetPatientUrl = infopadFormBaseUrl
                    + INFOPAD_USERNAME + EQUAL_TO + username
                    + addParam(INFOPAD_PASSWORD, password)
                    + addParam(INFOPAD_PROJECT_ID, projectId.toString());
        }

        log.info("Fetching the patient form from Infopad server");

        log.info("First request URI: "+infopadGetPatientUrl);

        String patientForm = getPatientFromInfopad(infopadGetPatientUrl);
        Document xml = XmlUtil.getDocument(patientForm);

        if (false == flagFullRecord) {
            String startingId = getStartingId(xml);
            int totalForms = getTotalForms(xml);
            int pendingForms = totalForms - 25;

            log.info("Total forms: " + totalForms);

            while (pendingForms > 0) {

                log.info("Pending forms: " + pendingForms);

                String pendingFormUrl = infopadGetPatientUrl
                        + addParam("startingId", startingId);

                log.info("Next request URI: " + pendingFormUrl);

                String pendingPatientForm = getPatientFromInfopad(pendingFormUrl);

                Document newXml = XmlUtil.getDocument(pendingPatientForm);

                xml = appendDocument(newXml, xml);

                startingId = getStartingId(newXml);
                int newTotalForms = getTotalForms(newXml);
                pendingForms = newTotalForms - 25;
            }
        }

        String completePatientForm = XmlUtil.xmlToString(xml);

        log.debug("Complete patient forms from Infopad server are : " + completePatientForm);

        return completePatientForm;
    }

    private Document appendDocument(Document source, Document target) throws Exception {
        //XmlUtil.prettyPrint(target);

        NodeList nodeList = source.getElementsByTagName("form");

        int len = nodeList.getLength();

        for( int i=1; i<len; i++) {
            Element element = (Element) nodeList.item(i);

            // Imports a node from another document to this document, without altering
            // or removing the source node from the original document
            Node copiedNode = target.importNode(element, true);

            // Adds the node to the end of the list of children of this node
            target.getDocumentElement().appendChild(copiedNode);
        }
        return target;
    }

    private int getTotalForms(Document patientForm) throws Exception {
        int totalForms = new Integer(XmlUtil.evaluateXPath(patientForm, "/forms/@totalforms").get(0));
        return totalForms;
    }

    private String getPatientFromInfopad(String infopadGetPatientUrl) {
        return externalRestTemplate.getForObject(infopadGetPatientUrl, String.class);
    }

    private String getStartingId(Document patientForm) throws Exception {
        String startId = XmlUtil.evaluateXPath(patientForm, "/forms/@lastid").get(0);
        return startId;
    }

    private String addParam(String key, String value) {
        return PARAM_SEPARATOR + key + EQUAL_TO + value;
    }

}
