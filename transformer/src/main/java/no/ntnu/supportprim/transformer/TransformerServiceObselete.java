/*
package no.ntnu.supportprim.transformer;

import no.ntnu.supportprim.transformer.util.*;
import org.json.JSONObject;
import org.json.XML;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.*;

*/
/**
 * @author: Amar Jaiswal
 *//*

@Service
public class TransformerService {

    private static final Logger LOG = LoggerFactory.getLogger(TransformerService.class);

    public JSONObject transformJsonToJson(JSONObject sourceJson, JSONObject targetJson) throws Exception {

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


    public JSONObject transformXmlToJson(String xml) {
        JSONObject json = XML.toJSONObject(xml);
        return json;
    }


    public JSONObject transformJsonToCbr(JSONObject sourceJson) throws Exception {

        JSONObject targetJson = FileOperation.createJsonFromFileName("infopad_to_cbr_json_template.json");

        LOG.debug("sourceJson: " + sourceJson);
        LOG.debug("targetJson: " + targetJson);

        return transformJsonToJson(sourceJson, targetJson);
    }
}
*/
