package no.ntnu.supportprim.cbr.research.model;

import java.util.LinkedList;
import java.util.List;

/**
 * @author: Amar Jaiswal
 */
public class Concepts {

    List<String> concepts = new LinkedList<>();

    public List<String> getConcepts() {
        return concepts;
    }

    public void setConcepts(List<String> concepts) {
        this.concepts = concepts;
    }
}
