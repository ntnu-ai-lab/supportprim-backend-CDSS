package no.ntnu.supportprim.cbr.model;

import java.util.Map;

/**
 * @author: Amar Jaiswal
 */
public class RetrievalResult {
    Map<String, Object> retrievalResult;

    public RetrievalResult(){}

    public RetrievalResult(Map<String, Object> retrievalResult) {
        this.retrievalResult = retrievalResult;
    }

    public Map<String, Object> getRetrievalResult() {
        return retrievalResult;
    }

    public void setRetrievalResult(Map<String, Object> retrievalResult) {
        this.retrievalResult = retrievalResult;
    }

    @Override
    public String toString() {
        return "RetrievalResult{" +
                "retrievalResult=" + retrievalResult +
                '}';
    }
}
