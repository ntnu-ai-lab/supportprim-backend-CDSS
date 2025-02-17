package no.ntnu.supportprim.elastic.model;

import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashMap;
import java.util.UUID;

import lombok.*;
import org.springframework.data.annotation.Id;

import io.swagger.annotations.ApiModelProperty;
import org.springframework.data.elasticsearch.annotations.DateFormat;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;
import org.springframework.stereotype.Component;

// import lombok.NoArgsConstructor;

import no.ntnu.supportprim.elastic.common.Constants;

/**
 * @author: Amar Jaiswal
 */
@Component
@Document(indexName = "#{@environment.getProperty('elasticsearch.index.infopad.patient.xml')}") // infopad_patient_xmls - name must be lower case
@Getter
@Setter
@ToString(callSuper=true, includeFieldNames=true)
// @NoArgsConstructor
public class PatientXml {

    // Caution with date pattern
    // https://stackoverflow.com/questions/42961507/java-time-format-datetimeparseexception-text-2016-08-30t061817698-0600-cou/42962101

    @Id
    private String id = UUID.randomUUID().toString();

    @ApiModelProperty(position = 0)
    private String patientId;

    @ApiModelProperty(position = 1)
    private String clinicId;

    @Field(type = FieldType.Date, format = DateFormat.custom, pattern = Constants.DATE_PATTERN)
    private String dateCreated = OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN));

    @Field(type = FieldType.Date, format = DateFormat.custom, pattern = Constants.DATE_PATTERN)
    @Setter(AccessLevel.PUBLIC)
    private String dateUpdated = OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN));

    private String patientXml;

    public PatientXml(){}
}
