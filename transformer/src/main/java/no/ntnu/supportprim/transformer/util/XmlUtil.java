package no.ntnu.supportprim.transformer.util;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.*;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/**
 * ref: https://howtodoinjava.com/xml/xpath-attribute-evaluate/
 * @author: Amar Jaiswal
 */

public class XmlUtil {
    public static void main(String[] args) throws Exception {
        //Get DOM Node for XML
        final String xmlStr = SampleEmployeeXml.xmlString;
        Document document = getDocument(xmlStr);

        String xpathExpression = "";

        /*******Get attribute values using xpath******/

        //Get all employee ids
        xpathExpression = "/employees/employee/@id";
        System.out.println(evaluateXPath(document, xpathExpression));

        //Get all employee ids in HR department
        xpathExpression = "/employees/employee[department/name='HR']/@id";
        System.out.println(evaluateXPath(document, xpathExpression));

        //Get employee id of 'Alex'
        xpathExpression = "/employees/employee[firstName='Alex']/@id";
        System.out.println(evaluateXPath(document, xpathExpression));

        //Get employee ids greater than 5
        xpathExpression = "/employees/employee/@id[. > 5]";
        System.out.println(evaluateXPath(document, xpathExpression));

        //Get employee whose id contains 1
        xpathExpression = "/employees/employee[contains(@id,'1')]/firstName/text()";
        System.out.println(evaluateXPath(document, xpathExpression));

        //Get employee whose id contains 1
        xpathExpression = "descendant-or-self::*[contains(@id,'1')]/firstName/text()";
        System.out.println(evaluateXPath(document, xpathExpression));
    }

    public static List<String> evaluateXPath(Document document, String xpathExpression) throws Exception {
        // Create XPathFactory object
        XPathFactory xpathFactory = XPathFactory.newInstance();

        // Create XPath object
        XPath xpath = xpathFactory.newXPath();

        List<String> values = new ArrayList<>();
        try {
            // Create XPathExpression object
            XPathExpression expr = xpath.compile(xpathExpression);

            // Evaluate expression result on XML document
            NodeList nodes = (NodeList) expr.evaluate(document, XPathConstants.NODESET);

            for (int i = 0; i < nodes.getLength(); i++) {
                values.add(nodes.item(i).getNodeValue());
            }

        } catch (XPathExpressionException e) {
            e.printStackTrace();
        }
        return values;
    }

    public static Document getDocument(String xmlStr) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(new InputSource(new StringReader(xmlStr)));
        return doc;
    }

    public static String xmlToString(Document doc) {
        TransformerFactory tf = TransformerFactory.newInstance();
        Transformer transformer;
        try {
            transformer = tf.newTransformer();
            // below code to remove XML declaration
            // transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
            StringWriter writer = new StringWriter();
            transformer.transform(new DOMSource(doc), new StreamResult(writer));
            String output = writer.getBuffer().toString();
            return output;
        } catch (TransformerException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static final void prettyPrint(Document xml) throws Exception {
        Transformer tf = TransformerFactory.newInstance().newTransformer();
        tf.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
        tf.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
        tf.setOutputProperty(OutputKeys.INDENT, "yes");
        Writer out = new StringWriter();
        tf.transform(new DOMSource(xml), new StreamResult(out));
        System.out.println(out.toString());
    }

    /**
     * This interface is only for testing! It contains an escaped sample xml for employees root node.
     */
    private interface SampleEmployeeXml {
        String xmlString = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<employees>\r\n    " +
                "<employee id=\"1\">\r\n        <firstName>Lokesh</firstName>\r\n        " +
                "<lastName>Gupta</lastName>\r\n        <department>\r\n            " +
                "<id>101</id>\r\n            <name>IT</name>\r\n        </department>\r\n    " +
                "</employee>\r\n    <employee id=\"2\">\r\n        <firstName>Brian</firstName>\r\n        " +
                "<lastName>Schultz</lastName>\r\n        <department>\r\n            <id>102</id>\r\n            " +
                "<name>HR</name>\r\n        </department>\r\n    </employee>\r\n    <employee id=\"3\">\r\n        " +
                "<firstName>Alex</firstName>\r\n        <lastName>Kolenchisky</lastName>\r\n        <department>\r\n            " +
                "<id>103</id>\r\n            <name>FINANCE</name>\r\n        </department>\r\n    </employee>\r\n    " +
                "<employee id=\"4\">\r\n        <firstName>Amit</firstName>\r\n        <lastName>Jain</lastName>\r\n        " +
                "<department>\r\n            <id>104</id>\r\n            <name>HR</name>\r\n        </department>\r\n    </employee>\r\n    <employee id=\"5\">\r\n        <firstName>David</firstName>\r\n        <lastName>Beckham</lastName>\r\n        <department>\r\n            <id>105</id>\r\n            <name>DEVOPS</name>\r\n        </department>\r\n    </employee>\r\n    <employee id=\"6\">\r\n        <firstName>Virat</firstName>\r\n        <lastName>Kohli</lastName>\r\n        <department>\r\n            <id>106</id>\r\n            <name>DEVOPS</name>\r\n        </department>\r\n    </employee>\r\n    <employee id=\"7\">\r\n        <firstName>John</firstName>\r\n        <lastName>Wick</lastName>\r\n        <department>\r\n            <id>107</id>\r\n            <name>IT</name>\r\n        </department>\r\n    </employee>\r\n    <employee id=\"8\">\r\n        <firstName>Mike</firstName>\r\n        <lastName>Anderson</lastName>\r\n        <department>\r\n            <id>108</id>\r\n            <name>HR</name>\r\n        </department>\r\n    </employee>\r\n    <employee id=\"9\">\r\n        <firstName>Bob</firstName>\r\n        <lastName>Sponge</lastName>\r\n        <department>\r\n            <id>109</id>\r\n            <name>FINANCE</name>\r\n        </department>\r\n    </employee>\r\n    <employee id=\"10\">\r\n        <firstName>Gary</firstName>\r\n        <lastName>Kasporov</lastName>\r\n        <department>\r\n            <id>110</id>\r\n            <name>IT</name>\r\n        </department>\r\n    </employee>\r\n</employees>";
    }
}