package no.ntnu.mycbr.rest.controller;

import io.swagger.annotations.ApiOperation;
import no.ntnu.mycbr.core.ICaseBase;
import no.ntnu.mycbr.core.Project;
import no.ntnu.mycbr.core.casebase.Instance;
import no.ntnu.mycbr.core.model.Concept;
import no.ntnu.mycbr.rest.CbrService;
import no.ntnu.mycbr.rest.common.ApiResponseAnnotations.ApiResponsesDefault;
import no.ntnu.mycbr.rest.controller.helper.Case;
import no.ntnu.mycbr.rest.controller.helper.Query;
import no.ntnu.mycbr.rest.controller.service.CaseService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

import static no.ntnu.mycbr.rest.common.ApiOperationConstants.*;
import static no.ntnu.mycbr.rest.common.ApiPathConstants.*;
import static no.ntnu.mycbr.rest.utils.QueryUtils.getFullResult;

@RestController
public class CaseController {
    private static final String CASES_BY_PATTERN = "/casesByPattern";
    private final Log logger = LogFactory.getLog(getClass());
    @Autowired
    private CaseService instanceService;

    //Get one instance
    @ApiOperation(value = GET_CASE_BY_CASE_ID, nickname = GET_CASE_BY_CASE_ID)
    @RequestMapping(method = RequestMethod.GET, value = PATH_CONCEPT_CASEBASE_CASE_ID,
            headers = ACCEPT_APPLICATION_JSON)
    @ApiResponsesDefault
    public Map<String, String> getInstance(
            @PathVariable(value = CONCEPT_ID) String conceptID,
            @PathVariable(value = CASEBASE_ID) String casebaseID,
            @PathVariable(value = CASE_ID) String caseID) {

        Project p = CbrService.getProject();

        if (!p.getCaseBases().containsKey(casebaseID))
            return null;

        Instance instance = p.getInstance(caseID);

        Case queriedCase = new Case(instance.getName(), conceptID);

        return queriedCase.getCase();
    }

    //Get multiple cases by case IDs
    @ApiOperation(value = GET_CASES_BY_CASE_IDS, nickname = GET_CASES_BY_CASE_IDS)
    @RequestMapping(method = RequestMethod.POST, value = PATH_CONCEPT_ID + "/getCasesByCaseIDs",
            headers = ACCEPT_APPLICATION_JSON)
    @ApiResponsesDefault
    public List<Map<String, String>> getCasesByCaseIDs(
            @PathVariable(value = CONCEPT_ID) String conceptID,
            @RequestBody(required = true) Set<String> caseIDs) {

        List<Map<String, String>> cases = new LinkedList<Map<String, String>>();

        Project project = CbrService.getProject();

        for (String caseID : caseIDs) {
            Case caze = new Case(project.getInstance(caseID).getName(), conceptID);
            cases.add(caze.getCase());
        }

        return cases;
    }

    //Delete one instance
    @ApiOperation(value = DELETE_CASE_BY_CASE_ID, nickname = DELETE_CASE_BY_CASE_ID)
    @RequestMapping(method = RequestMethod.DELETE, value = PATH_CONCEPT_CASEBASE_CASE_ID,
            headers = ACCEPT_APPLICATION_JSON)
    @ApiResponsesDefault
    public boolean deleteInstance(
            @PathVariable(value = CONCEPT_ID) String conceptID,
            @PathVariable(value = CASEBASE_ID) String casebaseID,
            @PathVariable(value = CASE_ID) String caseID) {
        Project p = CbrService.getProject();
        if (!p.getCaseBases().containsKey(casebaseID))
            return false;
        ICaseBase cb = p.getCaseBases().get(casebaseID);
        if (cb.containsCase(casebaseID) == null)
            return false;
        p.getCaseBases().get(casebaseID).removeCase(caseID);
        return true;
    }

    // Get all instances in case base of a concept
    @ApiOperation(value = GET_ALL_CASES, nickname = GET_ALL_CASES)
    @RequestMapping(method = RequestMethod.GET, value = PATH_CONCEPT_CASES, headers = ACCEPT_APPLICATION_JSON)
    @ApiResponsesDefault
    public List<Map<String, String>> getAllInstances(
            @PathVariable(value = CONCEPT_ID) String conceptID) {

        Project p = CbrService.getProject();

	/*Query query = new Query(conceptID);

        System.out.println("p get all instances size: "+p.getAllInstances().size());
        //System.out.println("is getallcases"+App.getProject().getSuperConcept().getAllInstances().size());
        //System.out.println("is getallcases"+App.getProject().getSuperConcept().getAllInstances().size());
        List<Instance> instances = new ArrayList<>();
        for(ICaseBase iCaseBase : p.getCaseBases().values()){
            logger.info("casebase has "+iCaseBase.getCases().size()+" cases ");
            instances.addAll(iCaseBase.getCases());
        }*/
        Collection<Instance> instances = p.getAllInstances();
        List<Map<String, String>> ret = new LinkedList<>();
        for (Instance instance : instances) {
            if (instance.getConcept().getName().contentEquals(conceptID))
                ret.add(new Case(instance.getName(), conceptID).getCase());
        }
        return ret;
    }

    // Get all instances of a concept
    @ApiOperation(value = GET_ALL_CASES_FROM_CASEBASE, nickname = GET_ALL_CASES_FROM_CASEBASE)
    @RequestMapping(method = RequestMethod.GET, value = PATH_CONCEPT_CASEBASE_CASES,
            headers = ACCEPT_APPLICATION_JSON)
    @ApiResponsesDefault
    public List<LinkedHashMap<String, String>> getAllInstancesInCaseBase(
            @PathVariable(value = CONCEPT_ID) String conceptID,
            @PathVariable(value = CASEBASE_ID) String casebaseID) {

        Query query = new Query(casebaseID, conceptID);
        //TODO: filter to one type of concept
        List<LinkedHashMap<String, String>> cases = getFullResult(query, conceptID);
        return cases;
    }


    //Delete all instances
    @ApiOperation(value = DELETE_ALL_CASES, nickname = DELETE_ALL_CASES)
    @RequestMapping(method = RequestMethod.DELETE, value = PATH_CONCEPT_CASEBASE_CASES)
    @ApiResponsesDefault
    public boolean deleteInstances(
            @PathVariable(value = CONCEPT) String conceptID,
            @PathVariable(value = CASEBASE_ID) String casebaseID) {

        Project p = CbrService.getProject();
        if (!p.getCaseBases().containsKey(casebaseID))
            return false;
        Collection<Instance> collection = p.getCaseBases().get(casebaseID).getCases();
        for (Instance i : collection) {
            collection.remove(i);
        }

        return true;
    }


    //Delete instances according to pattern
    @ApiOperation(value = DELETE_ALL_CASES_IN_CASEBASE_USING_PATTERN, nickname = DELETE_ALL_CASES_IN_CASEBASE_USING_PATTERN)
    @RequestMapping(method = RequestMethod.DELETE, value = PATH_CONCEPT_CASEBASE_CASES + CASES_BY_PATTERN)
    @ApiResponsesDefault
    public boolean deleteInstancePattern(
            @PathVariable(value = CONCEPT_ID) String conceptID,
            @PathVariable(value = CASEBASE_ID) String caseBase,
            @RequestParam(value = "pattern", defaultValue = "*") String pattern) {

        Project p = CbrService.getProject();
        if (!p.getCaseBases().containsKey(caseBase))
            return false;
        if (pattern.contentEquals("*")) {//this means delete all
            Collection<Instance> collection = p.getCaseBases().get(caseBase).getCases();
            Iterator<Instance> it = collection.iterator();
            while (it.hasNext()) {
                p.removeCase(it.next().getName());
            }
            p.save();
        } else {
            Collection<Instance> collection = p.getCaseBases().get(caseBase).getCases();
            for (Instance i : collection) {
                collection.remove(i);
            }

        }
        return true;
    }

    /*
    Add instances
    input should be:
    {cases:
    [
    {id:"caseid0",otherattribute:value,..}
    {id:"caseid1",otherattribute:value,..}
    ]
    }
     */
    @ApiOperation(value = ADD_MULTIPLE_CASES_USING_JSON, nickname = ADD_MULTIPLE_CASES_USING_JSON)
    @RequestMapping(method = RequestMethod.POST, value = PATH_CONCEPT_CASEBASE_CASES,
            headers = ACCEPT_APPLICATION_JSON)
    @ApiResponsesDefault
    public ArrayList<String> addInstancesJSON(
            @PathVariable(value = CONCEPT_ID) String conceptID,
            @PathVariable(value = CASEBASE_ID) String casebaseID,
            @RequestBody(required = true) JSONObject json) {

        Project p = CbrService.getProject();
        if (!p.getCaseBases().containsKey(casebaseID)) {
            return new ArrayList<>();
        }
        Concept c = (Concept) p.getSubConcepts().get(conceptID);

        JSONArray newCases = (JSONArray) json.get(CASES);

        return instanceService.addInstances(c, casebaseID, newCases);
    }

    @ApiOperation(value = ADD_CASE_USING_JSON, nickname = ADD_CASE_USING_JSON)
    @RequestMapping(method = RequestMethod.PUT, value = PATH_CONCEPT_CASEBASE_CASE_ID,
            headers = ACCEPT_APPLICATION_JSON)
    @ApiResponsesDefault
    public boolean addInstanceJSON(
            @PathVariable(value = CONCEPT_ID) String conceptID,
            @PathVariable(value = CASEBASE_ID) String casebaseID,
            @PathVariable(value = CASE_ID) String caseID,
            @RequestBody(required = true) JSONObject json) {

        Project p = CbrService.getProject();
        if (!p.getCaseBases().containsKey(casebaseID)) {
            return false;
        }
        ICaseBase cb = p.getCaseBases().get(casebaseID);
        Concept c = (Concept) p.getSubConcepts().get(conceptID);

        return null != instanceService.addInstance(c, cb, caseID, json);
    }
}
