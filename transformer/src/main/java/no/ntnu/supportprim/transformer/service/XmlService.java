package no.ntnu.supportprim.transformer.service;

import no.ntnu.supportprim.transformer.controller.TransformerController;
import no.ntnu.supportprim.transformer.util.*;
import org.json.JSONObject;
import org.json.XML;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;

import javax.tools.DocumentationTool;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author: Amar Jaiswal
 */
@Service
public class XmlService {
    private static final Logger LOG = LoggerFactory.getLogger(TransformerController.class);

    public JSONObject transformXmlToJson(String payloadJson) {
        String xml = payloadJson;
        JSONObject transformedJson = XML.toJSONObject(xml);
        LOG.debug("Transformed json: "+transformedJson);
        return transformedJson;
    }

    public String transformXmlToXml(String sourceXml, String xsltFileName) throws Exception {
        // Document sourceXml = XmlUtil.getDocument(payloadXml);
        // testResourceFile(xsltFileName);

        LOG.info(FileOperation.getWorkingDirPath());

        File xsltFile = new File("./resources/"+xsltFileName);
        if (!xsltFile.exists())
            xsltFile = new ClassPathResource(xsltFileName).getFile();

        LOG.debug("sourceXml: " + sourceXml);

        Document transformedXml = TransformXmlWithXslt.transformXml( sourceXml, xsltFile);

        return XmlUtil.xmlToString(transformedXml);
    }

    /*
    private void testResourceFile(String xsltFileName) { //throws IOException {
        File resource = null;
        String text = null;
        try {
            resource = new ClassPathResource(xsltFileName).getFile();
            text = new String(Files.readAllBytes(resource.toPath()));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println(text);
        }
    }
    */
}
