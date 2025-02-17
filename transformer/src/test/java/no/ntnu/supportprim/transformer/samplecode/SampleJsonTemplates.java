package no.ntnu.supportprim.transformer.samplecode;

/**
 * @author: Amar Jaiswal
 */
public interface SampleJsonTemplates {
    String sourceJson = "{\"source_json\": {\"first_name\": \"amar \",\"last_name\": \"jaiswal\",\"address\": {\"home\": \"99B\",\"street\": \"ntnu\"}}}";

    String transformerJson = "{\"transformer_json\": {\"first\": \"<<sourc_json.first_name>>\",\"last\": \"<<sourc_json.last_name>>\",\"home\": \"<<sourc_json.address.home>>\",\"street\": \"<<sourc_json.address.street>>\"}}";
}
