package no.ntnu.supportprim.data.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import no.ntnu.supportprim.data.common.Constants;
import no.ntnu.supportprim.data.model.*;
import no.ntnu.supportprim.data.service.mapping.MappingUtils;
import no.ntnu.supportprim.data.service.mapping.NumberExtractor;
import no.ntnu.supportprim.data.util.PatientIdGenerator;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.constraints.NotNull;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

/**
 * @author: Amar Jaiswal
 */
@Service
public class PatientDataService {
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private LcaService lcaService;

    @Autowired
    private InfopadService infopadService;

    @Autowired
    private ElasticService elasticService;

    @Autowired
    private TransformerService transformerService;

    public Patient getPatient(@NotNull String clinicId, @NotNull Integer journalId, @NotNull Integer birthYear)
            throws JsonProcessingException {

        String patientId = PatientIdGenerator.generatePid( clinicId, journalId.toString(), birthYear.toString());

        Patient patientResponse = elasticService.getPatientByPid(patientId);

        if (null == patientResponse)
            patientResponse = getFetchPatientDetails(clinicId, journalId, birthYear, patientId);

        return patientResponse;
    }

    private Patient getFetchPatientDetails(String clinicId, Integer journalId, Integer birthYear, String patientId) throws JsonProcessingException {
        Patient patientResponse;
        log.info("Delegating get patient call to InfopadService.");
        String patientXml = infopadService.getPatient(clinicId, journalId, birthYear);
        log.debug("Infopad's raw patient XML : \n\n" + patientXml + "\n\n");

        // Save the original patient form xml data to the DB
        log.info("Persisting raw patient XML in ES !!! ");
        PatientXml patientXmlResponse = elasticService.savePatientXmlToDb(clinicId, patientId, patientXml);
        log.debug("Persisted raw patient XML in ES : \n\n" + patientXmlResponse + "\n\n");

        log.info("Transforming raw patient XML to SupportPrim XML !!! ");
        String transformedPatientXml = transformerService.transformXmlToXml(patientXml);
        log.debug("Transformed raw patient XML to SupportPrim XML : \n\n" + transformedPatientXml + "\n\n");

        log.info("Transforming new patient XML to json !!! ");
        String transformedJson = transformerService.transformXmlToJson(transformedPatientXml);
        log.debug("Transformed new patient XML to json : \n\n" + transformedJson + "\n\n");

        PatientJson patientJson = new PatientJson();
        patientJson.setClinicId(clinicId);
        patientJson.setPatientId(patientId);

        Map<String, LinkedHashMap> map = new ObjectMapper().readValue(transformedJson, LinkedHashMap.class);
        TreeMap patientDetails = new TreeMap(map.get("patientDetails"));

        MappingUtils.cleanDataforNumbers(patientDetails, patientDetails);
        patientDetails.put("patient_id", patientId);

        if(patientDetails.containsKey("medic_number_1"))
            patientDetails.put("medic_number_1", patientDetails.get("medic_number_1").toString());
        if(patientDetails.containsKey("medic_number_3"))
            patientDetails.put("medic_number_3", patientDetails.get("medic_number_3").toString());

        if(patientDetails.containsKey("pseq_q1_w2"))
            patientDetails.put("pseq_q1_w2", patientDetails.get("pseq_q1_w2").toString());
        if(patientDetails.containsKey("pseq_q2_w2"))
            patientDetails.put("pseq_q2_w2", patientDetails.get("pseq_q2_w2").toString());

        if(patientDetails.containsKey("body_map_1") && patientDetails.get("body_map_1").equals(""))
                patientDetails.remove("body_map_1");
        if(patientDetails.containsKey("body_map_3") && patientDetails.get("body_map_3").equals(""))
                patientDetails.remove("body_map_3");

        patientJson.setPatientJson(patientDetails);

        // Save the original patient json to the DB
        log.info("Persisting transformed patient json in ES !!! ");
        PatientJson patientJsonEsResponse = elasticService.savePatientJsonToDb(patientJson);
        log.debug("Persisted transformed patient json in ES : \n\n" + patientJsonEsResponse + "\n\n");

        if (patientDetails.containsKey("clinic_name") && patientDetails.containsKey("journal_id") && patientDetails.containsKey("birth_year")) {
            if (
                    patientDetails.get("clinic_name").equals("") || patientDetails.get("journal_id").equals("") || patientDetails.get("birth_year").equals("")
            )
                return null;
        }

        Patient patient = new Patient();
        patient.setId(null);
        patient.setClinicId(clinicId);
        patient.setPatientId(patientId);
        patient.setDateCreated(OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN)));
        patient.setStatus(null);
        patient.setSimilarPatients(null);

        log.info("Translating patient json data for SupportPrim !!!");
        TreeMap mappedPatientDetails = MappingUtils.mapPatientDetails(patientDetails);
        log.debug("Translated patient json data for SupportPrim : \n\n" + mappedPatientDetails + "\n\n");

        try {
            computeLcaClasses(mappedPatientDetails);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        patient.setPatientDetails(mappedPatientDetails);

        log.info("Persisting transformed and translated patient data in ES !!!");
        patientResponse = elasticService.savePatientToDb(patient);
        log.debug("Persisted transformed and translated patient data in ES : \n\n" + patientResponse + "\n\n");

        return patientResponse;
    }

    private void computeLcaClasses(TreeMap mappedPatientDetails) throws JsonProcessingException {

        LcaVariables lcaVariables = new LcaVariables();

        boolean lcaFlag = populateLcaVariables(lcaVariables, mappedPatientDetails);

        if (lcaFlag){
            int lcaClass = lcaService.getLcaClass(lcaVariables);
            mappedPatientDetails.put("phenotype_lca_1", lcaClass);
        } else
            mappedPatientDetails.put("phenotype_lca_1", -1);
    }

    private boolean populateLcaVariables(LcaVariables lcaVariables, TreeMap mappedPatientDetails) {
        boolean isValid = true;
        if (mappedPatientDetails.containsKey("age_1")) {
            int age = NumberExtractor.getInt(mappedPatientDetails.get("age_1").toString());
            if ( (0<= age) && (age<=150)) {
                if (age < 30)
                    lcaVariables.setAge("LT_30");
                else if ((30 <= age) && (age < 40))
                    lcaVariables.setAge("30-39");
                else if ((40 <= age) && (age < 49))
                    lcaVariables.setAge("40-49");
                else if ((30 <= age) && (age < 59))
                    lcaVariables.setAge("50-59");
                else if (60 <= age)
                    lcaVariables.setAge("MT_60");
                else {
                    return false;
                }
            } else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("gender_1")) {
            String gender = mappedPatientDetails.get("gender_1").toString();

            if ( gender.equals("female") || gender.equals("male"))
                lcaVariables.setGender(gender);
            else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("bmi_1")) {
            float bmi = NumberExtractor.getFloat(mappedPatientDetails.get("bmi_1").toString());

            if (17.0f<= bmi) {
                if (bmi <= 25)
                    lcaVariables.setBmi("normal");
                else if (bmi <= 30)
                    lcaVariables.setBmi("overweight");
                else
                    lcaVariables.setBmi("obese");
            } else
                return false;
        } else
            return false;


        if (mappedPatientDetails.containsKey("education_1")) {
            String edu = mappedPatientDetails.get("education_1").toString();

            if ( edu.equals("primary school")
                    || edu.equals("high school")
                    || edu.equals("up to 4 years higher education")
                    || edu.equals("more than 4 years higher education")
                    || edu.equals("other")) {
                if (edu.equals("primary school")
                        || edu.equals("high school")
                        || edu.equals("other"))
                    lcaVariables.setEdu("highSchool");
                else if (edu.equals("up to 4 years higher education"))
                    lcaVariables.setEdu("upTo4YearsHE");
                else
                    lcaVariables.setEdu("moreThan4YearsHE");
            }
            else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("pain_continuous_1")) {
            String pain = mappedPatientDetails.get("pain_continuous_1").toString();

            if ( pain.equals("no") || pain.equals("yes"))
                lcaVariables.setPainContinuous(pain);
            else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("pain_duration_1")) {
            String painDuration = mappedPatientDetails.get("pain_duration_1").toString();

            if ( painDuration.equals("less than 1 month")
                    || painDuration.equals("1 to 3 months")
                    || painDuration.equals("3 to 6 months")
                    || painDuration.equals("6 to 12 months")
                    || painDuration.equals("more than 12 months")) {
                if (painDuration.equals("less than 1 month")
                        || painDuration.equals("1 to 3 months"))
                    lcaVariables.setPainDuration(1);
                else if (painDuration.equals("3 to 6 months")
                        || painDuration.equals("6 to 12 months"))
                    lcaVariables.setPainDuration(2);
                else
                    lcaVariables.setPainDuration(3);
            }
            else
                return false;
        } else
            return false;

        //great problems
        //moderate problems
        //severe problems
        //sleep normally
        //slight problem
        if (mappedPatientDetails.containsKey("qol15d_q5_sleep_1")) {
            String sleep = mappedPatientDetails.get("qol15d_q5_sleep_1").toString();

            if ( sleep.equals("sleep normally")
                    || sleep.equals("slight problem")
                    || sleep.equals("moderate problems")
                    || sleep.equals("great problems")
                    || sleep.equals("severe problems")) {
                if (sleep.equals("sleep normally"))
                    lcaVariables.setSleep(0);
                else if (sleep.equals("slight problem"))
                    lcaVariables.setSleep(1);
                else if (sleep.equals("moderate problems"))
                    lcaVariables.setSleep(2);
                else if (sleep.equals("great problems")
                        || sleep.equals("severe problems"))
                    lcaVariables.setSleep(3);
            }
            else
                return false;
        } else
            return false;


        //not reduced
        //quite reduced
        //slightly reduced
        //very reduced
        if (mappedPatientDetails.containsKey("activity_1")) {
            String activity = mappedPatientDetails.get("activity_1").toString();
            if (       activity.equals("not reduced")
                    || activity.equals("slightly reduced")
                    || activity.equals("quite reduced")
                    || activity.equals("very reduced")) {
                if (activity.equals("not reduced"))
                    lcaVariables.setActivity(1);
                else if (activity.equals("slightly reduced"))
                    lcaVariables.setActivity(2);
                else if (activity.equals("quite reduced"))
                    lcaVariables.setActivity(3);
                else
                    lcaVariables.setActivity(4);
            }
            else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("pain_last_week_1")) {
            int pain = NumberExtractor.getInt(mappedPatientDetails.get("pain_last_week_1").toString());
            if ((0<= pain) && (pain<=10)) {
                lcaVariables.setPainLastWeek(pain);
            } else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("painsite_number_1")) {
            int painSite = NumberExtractor.getInt(mappedPatientDetails.get("painsite_number_1").toString());
            if ((0<= painSite) && (painSite<=10)) {
                lcaVariables.setPainSiteCount(painSite);
            } else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("oreb_q7_1")) {
            int value = NumberExtractor.getInt(mappedPatientDetails.get("oreb_q7_1").toString());
            if ((0<= value) && (value<=10)) {
                lcaVariables.setOrebQ7(value);
            } else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("pseq_score_1")) {
            int value = NumberExtractor.getInt(mappedPatientDetails.get("pseq_score_1").toString());
            if ((0<= value) && (value<=12)) {
                int rValue = 12 - value;
                lcaVariables.setPseq(rValue);
            } else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("hscl_score_1")) {
            double value = NumberExtractor.getFloat(mappedPatientDetails.get("hscl_score_1").toString());
            if ((0.0f<= value) && (value<=4.0)) {
                lcaVariables.setHsclMean(value);
            } else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("oreb_q10_1")) {
            int value = NumberExtractor.getInt(mappedPatientDetails.get("oreb_q10_1").toString());
            if ((0<= value) && (value<=10)) {
                lcaVariables.setOrebQ10(value);
            } else
                return false;
        } else
            return false;

        if (mappedPatientDetails.containsKey("work_ability_1")) {
            int value = NumberExtractor.getInt(mappedPatientDetails.get("work_ability_1").toString());
            if ((0<= value) && (value<=10)) {
                int rValue = 10 - value;
                lcaVariables.setWorkAbility(rValue);
            } else
                return false;
        } else
            return false;

        return isValid;
    }


    public String getAllPatients(String clinicId, String clinicPassword, Integer projectId) throws JsonProcessingException {

        log.info("Delegating get patient call to InfopadService.");
        String allPatientXmls = infopadService.getAllPatients(clinicId, clinicPassword, projectId);

        String adminId = clinicId + "-" + projectId.toString();

        // Save the original patient forms data to the DB
        elasticService.savePatientXmlToDb("", adminId, allPatientXmls);

        return allPatientXmls;
    }

    public Patient getPatientById(String patientId) throws JsonProcessingException {
        // get the patient data from the DB
        Patient patient = elasticService.getPatientByPid(patientId);

        return patient;
    }

    public Patient savePatient(Patient patient) throws JsonProcessingException {
        // save the patient data into the DB
        Patient patientData = elasticService.savePatientToDb(patient);
        return patientData;
    }

    public String getManualPatientById(String patientId) throws JsonProcessingException {
        // get the patient data from the DB
        String patientData = elasticService.getManualPatientById(patientId);

        return patientData;
    }

    public ManualPatient saveManualPatient(ManualPatient manualPatient) throws JsonProcessingException {
        // save the patient data into the DB
        ManualPatient patientData = elasticService.saveManualPatientToDb(manualPatient);
        return patientData;
    }

}
