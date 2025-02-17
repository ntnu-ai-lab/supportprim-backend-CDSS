package no.ntnu.supportprim.transformer.service;

import no.ntnu.supportprim.transformer.controller.TransformerController;
import no.ntnu.supportprim.transformer.util.*;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author: Amar Jaiswal
 */
@Service
public class JsonService {
    private static final Logger LOG = LoggerFactory.getLogger(TransformerController.class);

    public JSONObject transformJsonToJson(String payloadJson) throws Exception {
        JSONObject json = new JSONObject(payloadJson);
        JSONObject source = json.getJSONObject("source");
        JSONObject target = json.getJSONObject("target");
        JSONObject transformedJson = transformJsonToJson( source, target);
        LOG.debug("Transformed json: "+transformedJson);
        return transformedJson;
    }

    public JSONObject transformJsonToCbr(String payloadJson) throws Exception {
        JSONObject sourceJson = new JSONObject(payloadJson);

        JSONObject targetJson = FileOperation.createJsonFromFileName("./resources/infopad_to_cbr_json_template.json");

        LOG.debug("sourceJson: " + sourceJson);
        LOG.debug("targetJson: " + targetJson);

        JSONObject transformedJson = transformJsonToJson(sourceJson, targetJson);

        LOG.debug("Transformed json: "+transformedJson);
        return transformedJson;
    }

    private JSONObject transformJsonToJson(JSONObject sourceJson, JSONObject targetJson) throws Exception {

        Mapper mapper = new Mapper();

        Map<String, List<String>> sourceMap = mapper.getJsonKeysWithValue(sourceJson.toString());
        Map<String, List<String>> targetMap = mapper.getJsonKeysWithValue(targetJson.toString());

        LOG.trace(sourceMap.toString());
        LOG.trace(targetMap.toString());

        for (String tempKey : targetMap.keySet()){

            String oldVal = targetMap.get(tempKey).get(0);

            if (oldVal.startsWith("<<") && oldVal.endsWith(">>")) {
                String sourceKey = Utils.removeLeadingAndTrailing(oldVal, Delimiter.KEY_START, Delimiter.KEY_END);

                LOG.debug("tempKey: " + tempKey);

                String sourceVal = sourceMap.get(sourceKey).get(0);

                LOG.debug("sourceKey: " + tempKey);
                LOG.debug("sourceVal: " + sourceVal);

                SearchAndUpdate.updateKeyForOldWithNewValue(targetJson, tempKey, oldVal, sourceVal);

            } else if (oldVal.startsWith("$") && oldVal.endsWith("$")){

                String val = Utils.removeLeadingAndTrailing(oldVal, Delimiter.STATIC_VALUE_START, Delimiter.STATIC_VALUE_END);

                List<String> valList = new ArrayList<>();
                valList.add(val);
                targetMap.put(tempKey, valList);
            }
        }

        LOG.info(targetJson.toString());

        return targetJson;
    }
}
