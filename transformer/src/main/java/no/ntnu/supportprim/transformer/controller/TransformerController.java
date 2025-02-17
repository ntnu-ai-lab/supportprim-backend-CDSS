package no.ntnu.supportprim.transformer.controller;

import io.swagger.annotations.*;
import io.swagger.models.Xml;
import no.ntnu.supportprim.transformer.service.JsonService;
import no.ntnu.supportprim.transformer.service.MappingService;
import no.ntnu.supportprim.transformer.service.XmlService;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * @author: Amar Jaiswal
 */

@RestController
@RequestMapping("/transform")
//@Api(tags = "json-to-json")
public class TransformerController {

    private static final Logger LOG = LoggerFactory.getLogger(TransformerController.class);

    @Autowired
    private JsonService jsonService;

    @Autowired
    private XmlService xmlService;

    @Autowired
    private MappingService mappingService;


    @PostMapping("/jsonToJson")
    @ApiOperation(value = "${TransformerController.transformJsonToJson}",
        notes = "Sample payload json :---> {'source': {'first_name': 'amar','last_name': 'jaiswal','address'" +
                ": {'home': '99B','street': 'ntnu'}},'target': " +
                "{'first': '<<first_name>>','last': '<<last_name>>','home': " +
                "'<<address$home>>','street': '<<address$street>>'}}. In the target the values are the source keys " +
                "separated by dollar, '$', sign, while leading chars with 2 less-than sign ad trailing chars with 2" +
                " greater-than sign.")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK_200", response = JSONObject.class),
            @ApiResponse(code = 401, message = "UNAUTHORIZED_401"),
            @ApiResponse(code = 403, message = "FORBIDDEN_403"),
            @ApiResponse(code = 404, message = "NOT_FOUND_404"),
            @ApiResponse(code = 500, message = "INTERNAL_SERVER_ERROR_500")})
    public ResponseEntity<?> transformJsonToJson( @RequestBody String payloadJson) throws Exception {
        JSONObject transformedJson = jsonService.transformJsonToJson(payloadJson);
        return ResponseEntity.ok().body(transformedJson.toString());
    }



    @PostMapping("/jsonToCbrCase")
    @ApiOperation(value = "${TransformerController.transformJsonToCbr}",
            notes = "Sample payload json :---> {'first_name': 'amar','last_name': 'jaiswal','address'" +
                    ": {'home': '99B','street': 'ntnu'}}")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK_200", response = JSONObject.class),
            @ApiResponse(code = 401, message = "UNAUTHORIZED_401"),
            @ApiResponse(code = 403, message = "FORBIDDEN_403"),
            @ApiResponse(code = 404, message = "NOT_FOUND_404"),
            @ApiResponse(code = 500, message = "INTERNAL_SERVER_ERROR_500")})
    public ResponseEntity<?> transformJsonToCbr( @RequestBody String payloadJson) throws Exception {
        JSONObject transformedJson = jsonService.transformJsonToCbr(payloadJson);
        return ResponseEntity.ok().body(transformedJson.toString());
    }


    @PostMapping("/xmlToJson")
    @ApiOperation(value = "${TransformerController.transformXmlToJson}")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK_200", response = JSONObject.class),
            @ApiResponse(code = 401, message = "UNAUTHORIZED_401"),
            @ApiResponse(code = 403, message = "FORBIDDEN_403"),
            @ApiResponse(code = 404, message = "NOT_FOUND_404"),
            @ApiResponse(code = 500, message = "INTERNAL_SERVER_ERROR_500")})
    public ResponseEntity<?> transformXmlToJson( @RequestBody String payloadJson) throws Exception {
        JSONObject transformedJson = xmlService.transformXmlToJson(payloadJson);
        return ResponseEntity.ok().body(transformedJson.toString());
    }


    @PostMapping(value = "/xmlToXml", produces = {"application/json","application/xml"}, consumes = "application/xml")
    @ApiOperation(value = "${TransformerController.transformXmlToXml}")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK_200"),
            @ApiResponse(code = 401, message = "UNAUTHORIZED_401"),
            @ApiResponse(code = 403, message = "FORBIDDEN_403"),
            @ApiResponse(code = 404, message = "NOT_FOUND_404"),
            @ApiResponse(code = 500, message = "INTERNAL_SERVER_ERROR_500")})
    public ResponseEntity<?> transformXmlToXml(
            @RequestParam(value = "xsltFileName", defaultValue = "infopad_to_ism_transformer.xslt") String xsltFileName,
            @RequestBody String payloadXml
    ) throws Exception {
        LOG.info("Delegating call to XmlService to transform given xml to the desired xml based on the xslt file.");
        String xml = xmlService.transformXmlToXml(payloadXml, xsltFileName);
        return ResponseEntity.ok().body(xml);
    }
}
