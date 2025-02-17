package no.ntnu.mycbr.rest.controller;

import io.swagger.annotations.ApiOperation;
import no.ntnu.mycbr.rest.common.ApiResponseAnnotations;
import no.ntnu.mycbr.rest.controller.service.ProjectService;
import no.ntnu.mycbr.rest.controller.service.SimilarityService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static no.ntnu.mycbr.rest.common.ApiOperationConstants.COPY_PASTE_GLOBAL_SIM;
import static no.ntnu.mycbr.rest.common.ApiPathConstants.*;
import static no.ntnu.mycbr.rest.common.ApiOperationConstants.*;

/**
 * This controller class is responsible for handling requests at project level for
 * This class only delegates the calls to respective service classes to handle it.
 * @author Amar Jaiswal
 * @since 07 May 2020
 */
@RestController

public class ProjectController {
    private final Log logger = LogFactory.getLog(getClass());

    @Autowired
    private ProjectService projectService;

    /**
     * Save the current project to a new myCBR project file
     * @return boolean
     */
    @ApiOperation(value = SAVE_PROJECT_AS, nickname = SAVE_PROJECT_AS)
    //@RequestMapping(method = RequestMethod.GET, path="project/saveAs", produces = APPLICATION_JSON)
    @RequestMapping(method = RequestMethod.GET, path=PATH_PROJECT_SAVE_AS, produces = APPLICATION_JSON)
    @ApiResponseAnnotations.ApiResponsesDefault
    public boolean saveProjectAs(
            @RequestParam(value=PROJECT_NAME, required = true, defaultValue = COPIED_PROJECT) String projectName
    ) {

        return projectService.saveProjectAs(projectName);
    }
}

