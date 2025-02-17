package no.ntnu.supportprim.transformer.util;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;

/**
 * @author: Amar Jaiswal
 */
public class Mapper {
    private static final Logger LOG = LoggerFactory.getLogger(Mapper.class);
    public static final String EMPTY_STRING = "";
    public static final String LEVEL_SEPARATOR = "$";

    private HashMap<String, String> myKeyValues = null;

    private HashMap<String, List<String>> myValues = null;

    // Used for constructing the path to the key in the json object
    private Stack<String> keyPath = null;
    private List<String> mList = new LinkedList<String>();

    private List<String> kList = new LinkedList<String>();

    /**
     * Read and get Map of All keyValues which has Values in it from input JSON
     * String. *
     *
     * // @param JSON data to read from JSON String
     *
     * @return HasMap of key-Value available in JSON Strin or return null
     * @throwsException
     */
    public Map<String, List<String>> getJsonKeysWithValue(String jsonData) throws Exception {

        myValues = new HashMap<String, List<String>>();

        // Used for constructing the path to the key in the json object
        keyPath = new Stack<String>();
        mList = new LinkedList<String>();

        Map<String, List<String>> keyValue = new HashMap<String, List<String>>();

        JSONObject json = new JSONObject(jsonData);

        getJsonValueListNonEmpty(json, false);

        Iterator<Map.Entry<String, List<String>>> keyIterator = myValues.entrySet().iterator();

        Iterator<List<String>> valueIterator = myValues.values().iterator();

        while (keyIterator.hasNext()) {
            Map.Entry<String, List<String>> ikey = keyIterator.next();
            String key = ikey.getKey();
            List<String> val = valueIterator.next();

            mList = new LinkedList<String>();
            if ((!val.isEmpty()) && val.size() > 0) {

                keyValue.put(key, val);
            }
        }
        return keyValue;
    }

    /**
     * Read and get Value Map of the provided key from input JSON String Recursively
     *
     * //@param JSONObject
     *
     * @return nothing but updates static hash map of of key-Values
     */

    private void getJsonValueListNonEmpty(JSONObject json, boolean isArray) {
        // Recursive function that goes through a json object and stores its key and values in the map

        Iterator<?> jsonKeys = json.keys();
        LOG.trace("All the json keys: "+json.keys());

        if (!isArray) {
            List<String> vList = new LinkedList<String>();
        }

        List<String> vList = new LinkedList<String>();

        while (jsonKeys.hasNext()) {

            String jsonKey = (String) jsonKeys.next();
            LOG.trace("Main key is "+jsonKey);

            try {

                // check if the value pointed by the key is an array
                if (json.optJSONArray(jsonKey) != null) {
                    JSONArray jArray = json.getJSONArray(jsonKey);

                    mList = new LinkedList<String>();

                    for (int i = 0; i < jArray.length(); i++) {

                        keyPath.push(jsonKey);

                        // recursion
                        getJsonValueListNonEmpty(jArray.getJSONObject(i),false);

                        LOG.trace("For loop List is :" + jArray.getJSONObject(i));
                    }
                } else {

                    vList = new LinkedList<String>();
                    keyPath.push(jsonKey);

                    // recursion
                    getJsonValueListNonEmpty(json.getJSONObject(jsonKey), false);

                    LOG.trace( "List is :" + json.getJSONObject(jsonKey));
                }
            } catch (JSONException e) {

                LOG.debug("In the catch block");

                // Build the path to the key
                String key = EMPTY_STRING;

                for (String subKey : keyPath) {
                    key += subKey + LEVEL_SEPARATOR;
                    LOG.trace("sub_key"+subKey+"and "+keyPath.toString());
                }

                LOG.trace("Before SubString "+key);
                key = key.substring(0, key.length() - 1);
                LOG.trace(key+": "+json.getString(jsonKey));

                // TBD
                keyPath.pop();

                if (isArray) {
                    // check whether the value of the key is empty
                    if (!json.get(jsonKey).toString().isEmpty())
                        mList.add(json.get(jsonKey).toString());
                    myValues.put(key, mList);
                    LOG.trace("key is : " + key + " m-VALUES are: " + mList.toString());
                } else {

                    if (!json.get(jsonKey).toString().isEmpty())
                        vList.add(json.get(jsonKey).toString());

                    if (myValues.containsKey(key)) {
                        LinkedList<String> tempList = (LinkedList<String>) myValues.get(key);
                        if (!vList.isEmpty())
                            tempList.add(vList.toString());

                        myValues.put(key, tempList);
                        LOG.trace("key is : " + key + " v-VALUES are: " + mList.toString());
                    } else
                        myValues.put(key, vList);
                }
            }
        }

        if (keyPath.size() > 0) {
            LOG.trace("Pop the keyPath");
            keyPath.pop();
        }
    }

    public static void main(String[] args) throws Exception {
        JSONObject jsonObject = new JSONObject(SampleJsonTemplates.sourceJson);

        Mapper mapper = new Mapper();

        mapper.getJsonKeysWithValue(jsonObject.toString());
    }
}
