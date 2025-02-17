package no.ntnu.supportprim.infopad.controller;

import io.swagger.annotations.ApiOperation;
import no.ntnu.supportprim.infopad.service.InfopadService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static no.ntnu.supportprim.infopad.common.ApiConstant.*;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("/infopad")
public class InfopadController {
    private static final Log LOG = LogFactory.getLog(InfopadController.class.getName());

    @Autowired
    private InfopadService infopadService;

    @GetMapping("/")
    public String health() {
        return "I am Ok!";
    }

    @RequestMapping(method = RequestMethod.GET, path="/getPatient")
    @ApiOperation(value = "${InfopadController.getPatient}",//
            notes = "This API needs Infopad's project ID along with patient's journal ID and year of birth"
    )
    public String getPatientForm(
            @RequestParam(value = CLINIC_ID, required = true) String clinicId,
            @RequestParam(value = JOURNAL_ID, required = true) Integer journalId,
            @RequestParam(value = BIRTH_YEAR, required = true) Integer birthYear
    ) throws Exception {

        LOG.info("Delegating call to InfopadService to get patient data.");

        String patientForm = infopadService.getPatientForm(
                "support32",
                "sup32",
                249961487,
                clinicId,
                journalId,
                birthYear);

        LOG.debug("Patient data from InfopadService is : " + patientForm);

        return patientForm;
    }

    @Deprecated
    @RequestMapping(method = RequestMethod.GET, path="/getAllPatients")
    @ApiOperation(value = "${InfopadController.getAllPatients}",//
            notes = "This API needs Infopad's project ID"
    )
    public String getAllPatientForms(
            @RequestParam(value = CLINIC_ID, required = true) String clinicId,
            @RequestParam(value = CLINIC_PASSWORD, required = true) String clinicPassword,
            @RequestParam(value = PROJECT_ID, required = true) Integer projectId
    ) throws Exception {
        String patientForms = "";
        LOG.info("Delegating call to InfopadService to get all patient data.");
        //patientForms = infopadService.getPatientXml(clinicId, clinicPassword, projectId);
        LOG.debug("All patients data from InfopadService is : " + patientForms);
        LOG.info("Fetching all patients data from InfopadService is NOT supported !!!");

        return patientForms;
    }
}
