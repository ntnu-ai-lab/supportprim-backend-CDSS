package no.ntnu.supportprim.transformer.util;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;

/**
 * @author: Amar Jaiswal
 */
public class FileOperation {
    private final static Logger LOG = LoggerFactory.getLogger(FileOperation.class);

    private static String absoluteFilePath = getWorkingDirPath();

    public static JSONObject createJsonFromFileName(String fileName){
        JSONObject json = new JSONObject();
        try {
            File file = new File(fileName);
            String jsonString = readFile(file);
            json = new JSONObject(jsonString);
        } catch (NullPointerException npe) {
            LOG.error("IO Exception occurred while reading "+fileName );
        }
        return json;
    }

    public static String readFile(File filename) {
        String result = null;
        LOG.debug("Reading file "+filename);
        File ff = filename;

        try {
            if (!(ff.exists()) && (ff.isFile())) throw new IOException();

            BufferedReader br = new BufferedReader(new FileReader(filename));
            StringBuilder sb = new StringBuilder();
            String line = br.readLine();
            while (line != null) {
                sb.append(line);
                line = br.readLine();
            }
            result = sb.toString();
        } catch (FileNotFoundException e) {
            LOG.error("File not found  "+filename );
            e.printStackTrace();
        } catch (IOException e) {
            LOG.error("IO Exception occurred while reading "+filename );
            e.printStackTrace();
        }
        return result;
    }

    public static String getWorkingDirPath() {
        File f = new File("");
        LOG.info("The current directory path is : "+f.getAbsolutePath());
        return f.getAbsolutePath();
    }
}
