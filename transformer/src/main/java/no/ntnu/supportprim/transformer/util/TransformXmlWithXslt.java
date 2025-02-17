package no.ntnu.supportprim.transformer.util;

import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.StringReader;

/**
 * @author: Amar Jaiswal
 */
public class TransformXmlWithXslt {

    private static Document document;
    public static void main(String[] args) throws Exception {
        //File xml = new File("transformer/src/main/resources/xml_xslt/sample.xml");
        //File xsl = new File("transformer/src/main/resources/xml_xslt/sample.xslt");

        File xml = new File("transformer/src/main/resources/xml_xslt/infopad_sample.xml");
        File xsl = new File("transformer/src/main/resources/xml_xslt/infopad_sample.xslt");

        Document resultXml = transformXml(xml, xsl);
        XmlUtil.prettyPrint(resultXml);
    }


    public static Document transformXml(String xml, String xsl) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

        DocumentBuilder builder = factory.newDocumentBuilder();
        document = builder.parse(new InputSource(new StringReader(xml)));

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        transformerFactory.setAttribute("indent-number", new Integer(2));

        StreamSource xslt = new StreamSource(xsl);
        Transformer transformer = transformerFactory.newTransformer(xslt);

        DOMSource xmlSource = new DOMSource(document);
        DOMResult result = new DOMResult();
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");

        transformer.transform(xmlSource, result);

        return (Document)result.getNode();
    }

    public static Document transformXml(String xmlString, File xsltFile) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

        DocumentBuilder builder = factory.newDocumentBuilder();
        document = XmlUtil.getDocument(xmlString);

        //document = builder.parse(new InputSource(new StringReader(xmlString)));

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        transformerFactory.setAttribute("indent-number", new Integer(2));

        StreamSource xslt = new StreamSource(xsltFile);
        Transformer transformer = transformerFactory.newTransformer(xslt);

        DOMSource xmlSource = new DOMSource(document);
        DOMResult result = new DOMResult();
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");

        transformer.transform(xmlSource, result);

        return (Document)result.getNode();
    }

    private static Document transformXml(File xml, File xsl) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

        DocumentBuilder builder = factory.newDocumentBuilder();
        document = builder.parse(xml);

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        transformerFactory.setAttribute("indent-number", new Integer(2));

        StreamSource xslt = new StreamSource(xsl);
        Transformer transformer = transformerFactory.newTransformer(xslt);

        DOMSource xmlSource = new DOMSource(document);
        DOMResult result = new DOMResult();
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");

        transformer.transform(xmlSource, result);

        return (Document)result.getNode();
    }
}