package no.ntnu.supportprim.data.model;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Id;

import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashMap;
import java.util.TreeMap;

/**
 * @author: Amar Jaiswal
 */
@Getter
@Setter
@ToString(callSuper=true, includeFieldNames=true)
// @NoArgsConstructor
public class Patient {

    private String id;

    @ApiModelProperty(position = 0)
    private String patientId;

    @ApiModelProperty(position = 1)
    private String clinicId;

    private String dateCreated;
    private String dateUpdated;

    private String status;

    private LinkedHashMap similarPatients;

    private TreeMap patientDetails;

    public Patient(){}
}
