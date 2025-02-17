package no.ntnu.supportprim.cbr.model;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
public class CbrDetails {

    //"/concepts/{conceptID}/casebases/{casebaseID}/amalgamationFunctions/{amalgamationFunctionID}"

    String concept;
    List<String> casebases;
    List<String> similarityFunctions;

    public CbrDetails(){}

    public CbrDetails(String concept, List<String> casebases, List<String> similarityFunctions) {
        this.concept = concept;
        this.casebases = casebases;
        this.similarityFunctions = similarityFunctions;
    }

    public String getConcept() {
        return concept;
    }

    public void setConcept(String concept) {
        this.concept = concept;
    }

    public List<String> getCasebases() {
        return casebases;
    }

    public void setCasebases(List<String> casebases) {
        this.casebases = casebases;
    }

    public List<String> getSimilarityFunctions() {
        return similarityFunctions;
    }

    public void setSimilarityFunctions(List<String> similarityFunctions) {
        this.similarityFunctions = similarityFunctions;
    }

    @Override
    public String toString() {
        return "CbrDetails{" +
                "concept='" + concept + '\'' +
                ", casebases=" + casebases +
                ", similarityFunctions=" + similarityFunctions +
                '}';
    }
}
