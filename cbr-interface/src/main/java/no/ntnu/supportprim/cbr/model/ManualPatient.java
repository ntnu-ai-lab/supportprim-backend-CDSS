package no.ntnu.supportprim.cbr.model;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.LinkedHashMap;

// import lombok.NoArgsConstructor;

/**
 * @author: Amar Jaiswal
 */

@Getter
@Setter
@ToString(callSuper=true, includeFieldNames=true)
// @NoArgsConstructor
public class ManualPatient {
    private String id;

    @ApiModelProperty(position = 0)
    private String patientId;

    @ApiModelProperty(position = 1)
    private String clinicId;

    private String dateCreated;
    private String dateUpdated;
    private String status;
    private LinkedHashMap similarPatients;
    private LinkedHashMap patientDetails;

    public ManualPatient(){}
}
