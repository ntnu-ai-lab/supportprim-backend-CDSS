package no.ntnu.supportprim.infopad.model;

import io.swagger.annotations.ApiModelProperty;

/**
 * @author: Amar Jaiswal
 */

public class PatientXml {

    @ApiModelProperty(position = 0)
    private String id;

    private String xml;

    public PatientXml(){}

    public PatientXml(String id, String xml) {
        this.id = id;
        this.xml = xml;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getXml() {
        return xml;
    }

    public void setXml(String xml) {
        this.xml = xml;
    }

    @Override
    public String toString() {
        return "PatientXml{" +
                "id='" + id + '\'' +
                "xml='" + xml + '\'' +
                '}';
    }
}
