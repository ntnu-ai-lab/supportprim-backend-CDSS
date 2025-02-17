package no.ntnu.supportprim.data.controller;

import no.ntnu.supportprim.data.service.InfopadService;
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
@RequestMapping("/infopad")
public class InfopadController {
    private final Log log = LogFactory.getLog(getClass());

    @Autowired
    private InfopadService infopadService;

    @GetMapping("/")
    public String health() {
        return "I am Ok!";
    }

}
