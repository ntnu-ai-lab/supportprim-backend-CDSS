package no.ntnu.supportprim.elastic.model;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import no.ntnu.supportprim.elastic.common.Constants;
import no.ntnu.supportprim.elastic.common.PatientStatus;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.DateFormat;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;
import org.springframework.stereotype.Component;

import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;

// import lombok.NoArgsConstructor;

/**
 * @author: Amar Jaiswal
 */
@Component
@Document(indexName = "#{@environment.getProperty('elasticsearch.index.patient.trace')}") //"patient_traces") // name must be lower case
@Getter
//@Setter
@ToString(callSuper=true, includeFieldNames=true)
// @NoArgsConstructor
public class PatientTrace {

    // Caution with date pattern
    // https://stackoverflow.com/questions/42961507/java-time-format-datetimeparseexception-text-2016-08-30t061817698-0600-cou/42962101

    @Id
    @Setter(AccessLevel.PUBLIC)
    private String id = UUID.randomUUID().toString();

    @ApiModelProperty(position = 0)
    private String patientId;

    @ApiModelProperty(position = 1)
    private String clinicId;

    @Field(type = FieldType.Date, format = DateFormat.custom, pattern = Constants.DATE_PATTERN)
    private String date = OffsetDateTime.now().format(DateTimeFormatter.ofPattern(Constants.DATE_PATTERN));

    @Field(type = FieldType.Keyword)
    private String status = PatientStatus.INITIAL.name();

    private LinkedHashMap similarPatients = new LinkedHashMap();

    private TreeMap patientDetails;

    public PatientTrace(){}

    public PatientTrace(String patientId, String clinicId, String status, LinkedHashMap similarPatients, TreeMap patientDetails) {
        this.patientId = patientId;
        this.clinicId = clinicId;
        this.status = status;
        this.similarPatients = similarPatients;
        this.patientDetails = patientDetails;
    }
}
