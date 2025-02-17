package no.ntnu.supportprim.data.controller;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import no.ntnu.supportprim.data.service.TransformerService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("/transformer")
public class TransformController {
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private TransformerService transformerService;

    @GetMapping("/")
    public String health() {
        return "I am Ok!";
    }

    @PostMapping("/jsonToJson")
    @ApiOperation(value = "${TransformerController.transformJsonToJson}",
            notes = "Sample payload json :---> {'source': {'first_name': 'amar','last_name': 'jaiswal','address'" +
                    ": {'home': '99B','street': 'ntnu'}},'target': " +
                    "{'first': '<<first_name>>','last': '<<last_name>>','home': " +
                    "'<<address$home>>','street': '<<address$street>>'}}. In the target the values are the source keys " +
                    "separated by dollar, '$', sign, while leading chars with 2 less-than sign ad trailing chars with 2" +
                    " greater-than sign.")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK_200", response = String.class),
            @ApiResponse(code = 401, message = "UNAUTHORIZED_401"),
            @ApiResponse(code = 403, message = "FORBIDDEN_403"),
            @ApiResponse(code = 404, message = "NOT_FOUND_404"),
            @ApiResponse(code = 500, message = "INTERNAL_SERVER_ERROR_500")})
    public ResponseEntity<?> transformJsonToJson(@RequestBody String payloadJson) throws Exception {
        String response = transformerService.transformJsonToJson(payloadJson);
        return ResponseEntity.ok().body(response);
    }


    @PostMapping("/xmlToJson")
    @ApiOperation(value = "${TransformerController.transformXmlToJson}")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK_200", response = String.class),
            @ApiResponse(code = 401, message = "UNAUTHORIZED_401"),
            @ApiResponse(code = 403, message = "FORBIDDEN_403"),
            @ApiResponse(code = 404, message = "NOT_FOUND_404"),
            @ApiResponse(code = 500, message = "INTERNAL_SERVER_ERROR_500")})
    public ResponseEntity<?> transformXmlToJson( @RequestBody String payloadJson) throws Exception {
        String response = transformerService.transformXmlToJson(payloadJson);
        return ResponseEntity.ok().body(response);
    }


    @PostMapping("/jsonToCbrCase")
    @ApiOperation(value = "${TransformerController.transformJsonToCbr}",
            notes = "Sample payload json :---> {'first_name': 'amar','last_name': 'jaiswal','address'" +
                    ": {'home': '99B','street': 'ntnu'}}")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK_200", response = String.class),
            @ApiResponse(code = 401, message = "UNAUTHORIZED_401"),
            @ApiResponse(code = 403, message = "FORBIDDEN_403"),
            @ApiResponse(code = 404, message = "NOT_FOUND_404"),
            @ApiResponse(code = 500, message = "INTERNAL_SERVER_ERROR_500")})
    public ResponseEntity<?> transformJsonToCbr( @RequestBody String payloadJson) throws Exception {
        String response = transformerService.transformJsonToCbr(payloadJson);
        return ResponseEntity.ok().body(response);
    }
}
