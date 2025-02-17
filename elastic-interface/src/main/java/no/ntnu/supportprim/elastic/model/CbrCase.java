package no.ntnu.supportprim.elastic.model;

import io.swagger.annotations.ApiModelProperty;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.stereotype.Component;

/**
 * @author: Amar Jaiswal
 */
@Component
@Document(indexName = "cbr_cases")
public class CbrCase {

    @ApiModelProperty(position = 0)
    private String id;

    private String caze;

    public CbrCase(){}

    public CbrCase(String id, String cbrCase) {
        this.id = id;
        this.caze = cbrCase;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCaze() {
        return caze;
    }

    public void setCaze(String cbrCase) {
        this.caze = cbrCase;
    }

    @Override
    public String toString() {
        return "CbrCase{" +
                "id='" + id + '\'' +
                "cbrCase='" + caze + '\'' +
                '}';
    }
}
