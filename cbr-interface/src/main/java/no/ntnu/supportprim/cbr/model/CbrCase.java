package no.ntnu.supportprim.cbr.model;

import java.util.Map;

/**
 * @author: Amar Jaiswal
 */
public class CbrCase {
    Map<String, String> cbrCase;

    public CbrCase(){};

    public CbrCase(Map<String, String> cbrCase) {
        this.cbrCase = cbrCase;
    }

    public Map<String, String> getCbrCase() {
        return cbrCase;
    }

    public void setCbrCase(Map<String, String> cbrCase) {
        this.cbrCase = cbrCase;
    }

    @Override
    public String toString() {
        return "CbrCase{" +
                "cbrCase=" + cbrCase +
                '}';
    }
}
