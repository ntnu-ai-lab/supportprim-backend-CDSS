package no.ntnu.supportprim.data.controller;

import no.ntnu.supportprim.data.service.MappingService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: Amar Jaiswal
 */
@RestController
@RequestMapping("/mapping")
public class MappingController {
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private MappingService mappingService;

    @GetMapping("/")
    public String health() {
        return "I am Ok!";
    }
}
