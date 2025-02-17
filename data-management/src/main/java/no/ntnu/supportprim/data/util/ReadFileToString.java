package no.ntnu.supportprim.data.util;

import org.springframework.core.io.ClassPathResource;
import org.springframework.util.FileCopyUtils;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * @author: Amar Jaiswal
 */
public class ReadFileToString {

    public static String getFileContent(String fileName) {
        String data = ""; //"/cbr_case_mapping.json";
        ClassPathResource cpr = new ClassPathResource("/"+fileName);
        try {
            byte[] bdata = FileCopyUtils.copyToByteArray(cpr.getInputStream());
            data = new String(bdata, StandardCharsets.UTF_8);
        } catch (
                IOException e) {
            System.out.println(e);
        }
        return data;
    }
}
