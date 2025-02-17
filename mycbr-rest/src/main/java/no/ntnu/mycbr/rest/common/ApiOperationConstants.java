package no.ntnu.mycbr.rest.common;

/**
 * This class defines all constants that will be used in ApiOperation annotation
 * including CRUD (create, read, update, and delete) operations supported by the myCBR-rest service.
 * <br>
 * <br> <b> Note: </b> 
 * <ul>
 * <li> ADD : add a new ID </li>
 * <li> CREATE : create an instance and then add </li>
 * <li> GET : get/read the resource </li>
 * <li> UPDATE : update a resource </li>
 * <li> DELETE_<...>_ID : Delete an ID </li>
 * <li> DELETE_<...> : Delete the instance </li>
 * </ul>
 * @author Amar Jaiswal
 * @since Dec 2, 2019
 */
public interface ApiOperationConstants {

    // API operations for ProjectController
    String SAVE_PROJECT_AS = "saveProjectAs";


    // API operations for AttributeController
    String 
    GET_ACTIVE_ATTRIBUTES = "getActiveAttributes",
    ADD_ATTRIBUTE_BY_ID    = "addAttributeByID",
    GET_ATTRIBUTE_BY_ID    = "getAttributeByID",
    GET_ALL_ATTRIBUTES 	   = "getAllAttributes",
    UPDATE_ATTRIBUTE_ID    = "updateAttributeID",	// To be implemented.
    DELETE_ATTRIBUTE_BY_ID = "deleteAttributeByID",
    DELETE_ALL_ATTRIBUTES  = "deleteAllAttributes",

    GET_ALL_ATTRIBUTE_SIMILARITY_FUNCTION_IDS 	= "getAllAttributeSimilarityFunctionIDs",
    GET_ATTRIBUTE_ACTIVE_SIMILARITY_FUNCTIONS 	= "getAttributeActiveSimilarityFunctions",
    GET_ALL_ATTRIBUTE_SIMILARITY_FUNCTIONS 	= "getAllAttributeSimilarityFunctions",
    ADD_ATTRIBUTE_SIMILARITY_FUNCTION 	 	= "addAttributeSimilarityFunction",
    UPDATE_ATTRIBUTE_SIMILARITY_FUNCTION 	= "updateAttributeSimilarityFunction", // To be implemented.
    DELETE_ALL_ATTRIBUTE_SIMILARITY_FUNCTIONS 	= "deleteAllAttributeSimilarityFunctions";
    
    
    // API operations for ConceptController
    String 
    ADD_CONCEPT_ID 	 = "addConceptID",
    GET_CONCEPT_BY_ID 	 = "getConceptByID",	// To be implemented.
    GET_All_CONCEPTS 	 = "getAllConcepts",
    UPDATE_CONCEPT_ID 	 = "updateConceptID",	// To be implemented.
    DELETE_CONCEPT_BY_ID = "deleteConceptByID",
    DELETE_ALL_CONCEPTS  = "deleteAllConcepts",
    
    ADD_AMALGAMATION_FUNCTION		= "addAmalgamationFunction",
    ADD_NEURAL_AMALGAMATION_FUNCTION 	= "addNeuralAmalgamationFunction",
    GET_AMALGAMATION_FUNCTION_BY_ID 	= "getAmalgamationFunctionByID", // To be implemented
    GET_ALL_AMALGAMATION_FUNCTIONS 	= "getAllAmalgamationFunctions",
    DELETE_AMALGAMATION_FUNCTION 	= "deleteAmalgamationFunction",
    DELETE_ALL_AMALGAMATION_FUNCTIONS 	= "deleteAllAmalgamationFunctions";


    // API operations for SimilarityController
    String
    GET_GLOBAL_SIM	 	    = "getGlobalSimilarity",
    GET_ALL_GLOBAL_SIMS	 	= "getAllGlobalSimilarities",
    ADD_GLOBAL_SIM		    = "addGlobalSimilarity",
    DELETE_GLOBAL_SIM	 	= "deleteGlobalSimilarity",
    DELETE_ALL_GLOBAL_SIMS	= "deleteAllGlobalSimilarities",

    GET_LOCAL_SIM	 	    = "getLocalSimilarity",
    GET_ALL_LOCAL_SIMS	 	= "getAllLocalSimilarities",
    ADD_LOCAL_SIM		    = "addLocalSimilarity",
    DELETE_LOCAL_SIM	 	= "getLocalSimilarity",
    DELETE_ALL_LOCAL_SIMS	= "getAllLocalSimilarities",

    COPY_PASTE_GLOBAL_SIM	= "copyPasteGlobalSim";

    
    // API operations for CaseController
    String
    ADD_MULTIPLE_CASES_USING_JSON = "addMultipleCasesUsingJSON",
    ADD_CASE_USING_JSON = "addCaseUsingJSON",
    
    GET_CASE_BY_CASE_ID = "getCaseByCaseID",
    GET_CASES_BY_CASE_IDS = "getCasesByCaseIDs",
    GET_ALL_CASES  = "getAllCases",
    GET_ALL_CASES_FROM_CASEBASE = "getAllCasesFromCaseBase",
    
    DELETE_CASE_BY_CASE_ID = "deleteCaseByCaseID",
    DELETE_ALL_CASES  = "deleteAllCases",
    DELETE_ALL_CASES_IN_CASEBASE_USING_PATTERN = "deleteAllCasesInCaseBaseUsingPattern";
    
    
    // API operations for RetrievalController
    String
    GET_SIMILAR_CASES = "getSimilarCases",
    GET_SIMILAR_CASES_WITH_CONTENT = "getSimilarCasesWithContent",
    
    GET_SIMILAR_CASES_BY_CASE_ID = "getSimilarCasesByCaseID",
    GET_SIMILAR_CASES_BY_MULTIPLE_CASE_IDS = "getSimilarCasesByMultipleCaseIDs",
    GET_SIMILAR_CASES_BY_CASE_ID_WITH_CONTENT = "getSimilarCasesByCaseIDWithContent",
    
    GET_SIMILAR_CASES_BY_ATTRIBUTE = "getSimilarCasesByAttribute",
    GET_SIMILAR_CASES_BY_MULTIPLE_ATTRIBUTES = "getSimilarCasesByMultipleAttributes",
    GET_SIMILAR_CASES_BY_MULTIPLE_ATTRIBUTES_WITH_CONTENT = "getSimilarCasesByMultipleAttributesWithContent",
    
    GET_CASE_BASE_SELF_SIMILARITY = "getCaseBaseSelfSimilarity";
    
    
    // API operations for EphemeralController
    String
    GET_SIMILAR_CASES_FROM_EPHEMERAL_CASE_BASE = "getSimilarCasesFromEphemeralCaseBase",
    GET_SIMILAR_CASES_FROM_EPHEMERAL_CASE_BASE_WITH_CONTENT = "getSimilarCasesFromEphemeralCaseBaseWithContent",
    GET_EPHEMERAL_CASE_BASE_SELF_SIMILARITY = "getEphemeralCaseBaseSelfSimilarity";
    
    // Used as json keys for ephemeral operations
    String EPHEMERAL_CASE_IDS = "ephemeralCaseIDs";
    String QUERY_CASE_IDS = "queryCaseIDs";
    
    // API operations for CaseBaseController
    String 
    ADD_CASEBASE_ID 	= "addCaseBaseID",
    GET_CASEBASE_IDS	= "getCaseBaseIDs",
    UPDATE_CASEBASE_ID 	= "updateCaseBasesID",	// To be implemented.
    DELETE_CASEBASE_ID 	= "deleteCaseBaseID";

    
    // API operations for AnalyticsController 
    String
    DETAILED_CASE_COMPARISION = "DetailedCaseComparison",
    LOCAL_SIM_COMPARISION = "LocalSimComparison",
    GLOBAL_WEIGHTS = "GlobalWeights";
}
