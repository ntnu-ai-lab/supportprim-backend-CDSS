package no.ntnu.supportprim.transformer.samplecode;

import org.json.JSONObject;

import java.util.Iterator;

/**
 * @author: Amar Jaiswal
 */
public class SampleTester {
    public static void main(String[] args) {
        JSONObject jsonObject = new JSONObject(SampleJsonTemplates.sourceJson);

        Iterator iterator = jsonObject.keySet().iterator();

        while( iterator.hasNext()){
            System.out.println(iterator.next());
        }

    }
}
