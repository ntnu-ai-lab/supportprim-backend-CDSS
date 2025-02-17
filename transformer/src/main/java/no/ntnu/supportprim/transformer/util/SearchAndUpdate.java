package no.ntnu.supportprim.transformer.util;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Iterator;

public class SearchAndUpdate {

	private final static Logger LOG = LoggerFactory.getLogger(SearchAndUpdate.class);
	public static final String KEY_PATH_SPLITTER = "\\$";

	/**
	 * Search for the given $ separated key and update the provided value on the
	 * fly and return the status as boolean.
	 *
	 * // @param JSONObject
	 * //@param key
	 * //           for search
	 * //@param newValue
	 *  //          for update
	 *
	 * //@return boolean true/false
	 * //@throws Exception
	 */

	public static boolean updateKeyForOldWithNewValue(JSONObject jsonObj,
													  String key, String oldVal, String valueNew) throws Exception {

		String[] keyMain = key.split(KEY_PATH_SPLITTER);

		boolean isUpdated = false;

		for (int i = 0; i < keyMain.length; i++) {
			LOG.trace("38 : key:"+key+", old"+oldVal+", new:"+valueNew+" --- "+jsonObj.toString());
			try {
				
				searchKeyAndUpdate(jsonObj, keyMain[i], oldVal, valueNew);
				isUpdated = true;
			} catch (Exception e) {
				isUpdated = false;
			}
		}

		return isUpdated;
	}

	private static void searchKeyAndUpdate(JSONObject jsonData, String mykey,
			String oldValue, String newValue) throws Exception {
		LOG.trace("53 : myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());
		// We need to know keys of JSONObject
		Iterator<String> iterator = jsonData.keys();

		while (iterator.hasNext()) {
			String key = (String) iterator.next();
			LOG.trace("59 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());

			// if object is just string we change value in key
			if ((jsonData.optJSONArray(key) == null) && (jsonData.optJSONObject(key) == null)) {
				LOG.trace("63 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());

				if ((key.equals(mykey))) {
					LOG.trace("66 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());

					String currentVal = jsonData.getString(key);
					if (currentVal.equals(oldValue)) {
						LOG.trace("70 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());
						jsonData.put(key, newValue);
					}
				}
			}

			// if it's JSONObject
			if (jsonData.optJSONObject(key) != null) {
				LOG.trace("78 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());
				searchKeyAndUpdate(jsonData.getJSONObject(key), mykey, oldValue, newValue);
			}

			// if it's JsonArray
			if (jsonData.optJSONArray(key) != null) {
				LOG.trace("84 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());
				JSONArray jArray = jsonData.getJSONArray(key);

				for (int i = 0; i < jArray.length(); i++) {
					LOG.trace("88 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());
					searchKeyAndUpdate(jArray.getJSONObject(i), mykey, oldValue, newValue);
				}
			}
			LOG.trace("92 : key:"+key+", myKey:"+mykey+", old"+oldValue+", new:"+newValue+" --- "+jsonData.toString());
		}
	}
}
