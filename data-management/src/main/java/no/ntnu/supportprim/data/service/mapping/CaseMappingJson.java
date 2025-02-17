package no.ntnu.supportprim.data.service.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import no.ntnu.supportprim.data.util.ReadFileToString;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.core.io.ClassPathResource;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.stream.Collectors;

/**
 * @author: Amar Jaiswal
 */
public class CaseMappingJson {

    public static TreeMap getCaseMappingJson(){
        ObjectMapper mapper = new ObjectMapper();
        TreeMap<String, Map<String, String>> mappingTree = null;

        try {
            //File file = new File("./resources/cbr_case_mapping.json");
            //File file = new ClassPathResource("cbr_case_mapping.json").getFile();
            //File file = new File("data-management/src/main/resources/cbr_case_mapping.json");
            //String fileContent = new String(Files.readAllBytes(Paths.get(file.getAbsolutePath())));

            //File file = ResourceUtils.getFile("classpath:config/cbr_case_mapping.json");

            //Read File Content
            //String fileContent = new String(Files.readAllBytes(file.toPath()));

            String fileContent = ReadFileToString.getFileContent("cbr_case_mapping.json");

            mappingTree = mapper.readValue(fileContent, TreeMap.class);

        } catch (IOException e) {
            e.printStackTrace();
        }

        return mappingTree;
    }

    public static String getWorkingDirPath() {
        File f = new File("");
        System.out.println("The current directory path is : "+f.getAbsolutePath());
        return f.getAbsolutePath();
    }

    public static void main(String[] args) throws IOException {

        String data = ReadFileToString.getFileContent("cbr_case_mapping.json");
        System.out.println((data));

        System.out.println(getCaseMappingJson());

        TreeMap<String, Map<String, String>> variableMap = CaseMappingJson.getCaseMappingJson();

        Set<String> varSet = variableMap.keySet();

        for ( String var: varSet){
            Map<String, String> valueMap = variableMap.get(var);

            if (valueMap.containsKey("Svært redusert"))
                System.out.println(valueMap.get("Svært redusert"));
        }

        if (variableMap.containsKey("qol15D_q14_vital_1"))
            System.out.println("qol15D_q14_vital_1");
            System.out.println(variableMap.get("qol15D_q14_vital_1"));

    }
}
