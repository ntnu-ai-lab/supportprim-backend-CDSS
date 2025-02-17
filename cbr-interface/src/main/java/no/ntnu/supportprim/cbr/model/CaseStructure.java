package no.ntnu.supportprim.cbr.model;

import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author: Amar Jaiswal
 */
@Getter
@Setter
public class CaseStructure {

    Map<String, Object> activeAttributesWithWeights;
    List<String> allAttributes;

    public CaseStructure(Map<String, Object> activeAttributesWithWeights, List<String> allAttributes) {
        this.activeAttributesWithWeights = activeAttributesWithWeights;
        this.allAttributes = allAttributes;
    }

    @Override
    public String toString() {
        return "CaseStructure{" +
                "activeAttributesWithWeights=" + activeAttributesWithWeights +
                ", allAttributes=" + allAttributes +
                '}';
    }
}
