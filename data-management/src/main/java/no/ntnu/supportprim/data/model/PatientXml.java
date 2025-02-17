package no.ntnu.supportprim.data.model;

import io.swagger.annotations.ApiModelProperty;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import no.ntnu.supportprim.data.common.Constants;

import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashMap;
import java.util.UUID;

/**
 * @author: Amar Jaiswal
 */

@Getter
@Setter
@ToString(callSuper=true, includeFieldNames=true)
public class PatientXml {

    // Caution with date pattern
    // https://stackoverflow.com/questions/42961507/java-time-format-datetimeparseexception-text-2016-08-30t061817698-0600-cou/42962101

    @ApiModelProperty(position = 0)
    @Setter(AccessLevel.PUBLIC)
    private String patientId;

    @ApiModelProperty(position = 1)
    @Setter(AccessLevel.PUBLIC)
    private String clinicId;

    private String dateCreated = OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN));

    @Setter(AccessLevel.PUBLIC)
    private String patientXml;

    public PatientXml(){}
}
