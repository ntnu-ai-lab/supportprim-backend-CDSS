package no.ntnu.supportprim.transformer.samplecode;

import no.ntnu.supportprim.transformer.util.Delimiter;
import no.ntnu.supportprim.transformer.util.FileOperation;
import no.ntnu.supportprim.transformer.util.SearchAndUpdate;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

/**
 * @author: Amar Jaiswal
 */
public class Mapper {

    private final static Logger LOG = LoggerFactory.getLogger(Mapper.class);


    /**
     * Read and get Value Map of the provided key from input JSON String
     * Recursively
     *
     * //@param JsonObject
     *
     * @return nothing but updates static hash map of of key-Values
     * //@throws JsonException
     */

    private static void getJingJSONValueList(JSONObject json, boolean isArray) throws JSONException {
        // Recursive function that goes through a json object and stores
        // its key and values in the hashmap
        Iterator<?> json_keys = json.keys();
        // Iterator<?> json_valuess = json.getString(key);
        LOG.debug("122 : list size is :" +mList.size());
        if (!isArray) {
            List<String> vList = new LinkedList<String>();
        }
        List<String> vList = new LinkedList<String>();
        LOG.debug("127 : input JSON is "+json.toString());
        while (json_keys.hasNext()) {

            String json_key = (String) json_keys.next();
            LOG.debug("131 : Main key is "+json_key);
            try {

                if (json.optJSONArray(json_key) != null) {
                    JSONArray jArray = json.getJSONArray(json_key);
                    mList = new LinkedList<String>();

                    for (int i = 0; i < jArray.length(); i++) {

                        keyPath.push(json_key);

                        getJingJSONValueList(jArray.getJSONObject(i), false);
//                        LOG.debug(
//                         " For loop List is :"+getJingJSONValueList(jArray.getJSONObject(i).toString()));
                    }
                } else {
                    vList = new LinkedList<String>();
                    keyPath.push(json_key);
                    getJingJSONValueList(json.getJSONObject(json_key), false);
                    // System.out.println(
                    // "List is :"+getJingJSONValueList(json.getJsonObject(json_key)));
                }
            } catch (JSONException e) {
                // Build the path to the key
                String key = "";
                for (String sub_key : keyPath) {
                    key += sub_key + "$";
                    //LOG.error("sub_key"+sub_key+"and "+key_path.toString());
                }
                //LOG.error("Before SubString "+key);
                key = key.substring(0, key.length() - 1);

                LOG.error("70 : "+key+": "+json.getString(json_key));

                keyPath.pop();

                if (isArray) {
                    mList.add(json.get(json_key).toString());
                    myValues.put(key, mList);
                    LOG.error( "170 : key is :"+key+" "+"M-VALUES are: "+mList.toString());
                } else {
                    vList.add(json.get(json_key).toString());
                    if (myValues.containsKey(key)) {
                        LinkedList<String> tList = new LinkedList<String>();
                        tList = (LinkedList<String>) myValues.get(key);
                        tList.add(vList.toString());
                        myValues.put(key, tList);
                        // System.out.println( "key is :"+key
                        // +" "+"v-VALUES are: "+tList.toString());
                    } else
                        myValues.put(key, vList);

                }

            }
        }

        if (keyPath.size() > 0) {
            keyPath.pop();
        }

    }


    /**
     * Read and get Value Map of the provided key from input JSON String
     * Recursively
     *
     * //@param JSONObject
     *
     * @return nothing but updates static hash map of of key-Values
     * //@throws JsonException
     */

    private static void getJingJSONValueListNonEmpty(JSONObject json,
                                                     boolean isArray) throws JSONException {
        // Recursive function that goes through a json object and stores
        // its key and values in the hashmap
        Iterator<?> json_keys = json.keys();
        // Iterator<?> json_valuess = json.getString(key);
        // System.out.println("list size is :" +mList.size());
        if (!isArray) {
            List<String> vList = new LinkedList<String>();
        }
        List<String> vList = new LinkedList<String>();
        // System.out.println("input JSON is "+json.toString());
        while (json_keys.hasNext()) {

            String json_key = (String) json_keys.next();
            // System.out.println("Main key is "+json_key);
            try {

                if (json.optJSONArray(json_key) != null) {
                    JSONArray jArray = json.getJSONArray(json_key);
                    mList = new LinkedList<String>();

                    for (int i = 0; i < jArray.length(); i++) {

                        keyPath.push(json_key);

                        getJingJSONValueListNonEmpty(jArray.getJSONObject(i),
                                false);
                        // System.out.println(
                        // " For loop List is :"+getJingJSONValueList(jArray.getJsonObject(i)));
                    }
                } else {
                    vList = new LinkedList<String>();
                    keyPath.push(json_key);
                    getJingJSONValueListNonEmpty(json.getJSONObject(json_key),
                            false);
                    // System.out.println(
                    // "List is :"+getJingJSONValueList(json.getJsonObject(json_key)));
                }
            } catch (JSONException e) {
                // Build the path to the key
                String key = "";
                for (String sub_key : keyPath) {
                    key += sub_key + "$";
                    // System.out.println("sub_key"+sub_key+"and "+key_path.toString());
                }
                // System.out.println("Before SubString "+key);
                key = key.substring(0, key.length() - 1);

                // System.out.println(key+": "+json.getString(json_key));

                keyPath.pop();

                if (isArray) {
                    if (!json.get(json_key).toString().isEmpty())
                        mList.add(json.get(json_key).toString());
                    myValues.put(key, mList);
                    // System.out.println( "key is :"+key
                    // +" "+"M-VALUES are: "+mList.toString());
                } else {
                    if (!json.get(json_key).toString().isEmpty())
                        vList.add(json.get(json_key).toString());
                    if (myValues.containsKey(key)) {
                        LinkedList<String> tList = new LinkedList<String>();
                        tList = (LinkedList<String>) myValues.get(key);
                        if (!vList.isEmpty())
                            tList.add(vList.toString());

                        myValues.put(key, tList);
                        // System.out.println( "key is :"+key
                        // +" "+"v-VALUES are: "+tList.toString());
                    } else
                        myValues.put(key, vList);

                }

            }
        }

        if (keyPath.size() > 0) {
            keyPath.pop();
        }
    }


    // private static FileOperation fops = new FileOperation();
    // My stored keys and values from the json object
    private static HashMap<String, String> myKeyValues = null;

    // Used for constructing the path to the key in the json object
    private static Stack<String> key_path = null;

    private static HashMap<String, List<String>> myValues = null;

    // Used for constructing the path to the key in the json object
    private static Stack<String> keyPath = null;
    private static List<String> mList = new LinkedList<String>();
    // public static String getJingJsonKeyPathMap(File JingJSONtemplate, String
    // key2Map) throws Exception { }
    private static List<String> kList = new LinkedList<String>();


    public static String getPath(){
        Path currentRelativePath = Paths.get("");
        String s = currentRelativePath.toAbsolutePath().toString();
        System.out.println("Current relative path is: " + s);
        return s;
    }

    /**
     * Read and get Map of All keyValues which has Values in it from input JSON
     * String. *
     *
     * // @param JSON
     *            data , to read from JSON String
     *
     * @return HasMap of key-Value available in JSON Strin or return null
     * @throwsException
     */

    public static HashMap<String, List<String>> getJsonAllKeysWithValue(
            String jsonString) throws Exception {

        myValues = null;
        myValues = new HashMap<String, List<String>>();
        // Used for constructing the path to the key in the json object
        keyPath = new Stack<String>();
//		List<String> Values = new LinkedList<String>();
        mList = new LinkedList<String>();
        HashMap<String, List<String>> keyValue = new HashMap<String, List<String>>();

        JSONObject json = new JSONObject(jsonString);

        getJingJSONValueListNonEmpty(json, false);
        Iterator<Map.Entry<String, List<String>>> keyIterator = myValues
                .entrySet().iterator();

        // System.out.println("myValues "+myValues.toString());

        Iterator<List<String>> valueIterator = myValues.values().iterator();

        while (keyIterator.hasNext()) {
            Map.Entry<String, List<String>> ikey = keyIterator.next();
            String mykey = ikey.getKey();
            // System.out.println("key is :"+mykey);
            List<String> jingValue = valueIterator.next();

            mList = new LinkedList<String>();
            if ((!jingValue.isEmpty()) && jingValue.size() > 0) {

                keyValue.put(mykey, jingValue);
                // System.out.println("\nKey Values are "+keyValue.toString());
            }
        }

        return keyValue;
    }

    public static void main(String[] args) throws Exception {
        File templateJsonFile = new File("./mappning-service/src/main/resources/template.json");
        File sourceJsonFile = new File("./mappning-service/src/main/resources/source.json");

        String templateJsonString = FileOperation.readFile(templateJsonFile);
        String sourceJsonString = FileOperation.readFile(sourceJsonFile);

        JSONObject templateJson = new JSONObject(templateJsonString);
        JSONObject sourceJson = new JSONObject(sourceJsonString);

        System.out.println(templateJsonString);
        System.out.println(sourceJsonString);

        Map<String, List<String>> sourceMap = getJsonAllKeysWithValue(sourceJsonString);
        Map<String, List<String>> tempMap = getJsonAllKeysWithValue(templateJsonString);

        LOG.info(sourceMap.toString());
        LOG.info(tempMap.toString());

        for (String tempKey : tempMap.keySet()){

            System.out.println(tempMap.get(tempKey).get(0));

            String oldVal = tempMap.get(tempKey).get(0);

            if (oldVal.startsWith("<<") && oldVal.endsWith(">>")) {
                String sourceKey = removeLeadingAndTrailing(oldVal, Delimiter.KEY_START, Delimiter.KEY_END);

                LOG.warn("tempKey: " + tempKey);

                String sourceVal = sourceMap.get(sourceKey).get(0);

                LOG.info("\n\nsourceKey: " + tempKey + "\nsourceVal: " + sourceVal);

                SearchAndUpdate.updateKeyForOldWithNewValue(templateJson, tempKey, oldVal, sourceVal);

            } else if (oldVal.startsWith("$") && oldVal.endsWith("$")){

                String val = removeLeadingAndTrailing(oldVal, Delimiter.STATIC_VALUE_START, Delimiter.STATIC_VALUE_END);

                List<String> valList = new ArrayList<>();
                valList.add(val);
                tempMap.put(tempKey, valList);
            }
        }

        LOG.info("\n\n");
        LOG.info(templateJson.toString());
    }

    public static String removeLeadingAndTrailing(String str, String leading, String trailing){
        String trimmedString = str;
        trimmedString = trimmedString.replaceFirst(leading, "");
        StringBuffer stringBuffer = new StringBuffer(trimmedString);
        trimmedString = stringBuffer.reverse().toString();
        trimmedString = trimmedString.replaceFirst(trailing, "");
        return trimmedString;
    }
}
