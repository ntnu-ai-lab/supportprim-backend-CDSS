package no.ntnu.supportprim.cbr.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.LinkedHashMap;
import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
public class SimilarCasesWithContent {
    List<LinkedHashMap<String, String>> similarCasesWithContent;

    public SimilarCasesWithContent(List<LinkedHashMap<String, String>> similarCasesWithContent) {
        this.similarCasesWithContent = similarCasesWithContent;
    }
}
