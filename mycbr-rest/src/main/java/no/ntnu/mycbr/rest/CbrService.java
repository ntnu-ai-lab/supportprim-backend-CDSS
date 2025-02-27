package no.ntnu.mycbr.rest;

import no.ntnu.mycbr.core.Project;
import no.ntnu.mycbr.rest.cbr.CBREngine;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.io.File;

/**
 * Hello world!
 */
@SpringBootApplication
@EnableSwagger2
public class CbrService {

    private static final Log logger = LogFactory.getLog(CbrService.class);
    private static CBREngine engine;
    private static Project project;

    public static Project getProject() {
        if (project == null) {
            startCBR();
        }
        return project;
    }

    public static void main(String[] args) {
        System.out.println("\n Starting the myCBR");
        startCBR();
        SpringApplication.run(CbrService.class, args);
    }

    public static void startCBR() {
        engine = new CBREngine();
        String userDefinedProjectFile = System.getProperty("MYCBR.PROJECT.FILE");

        logger.info("Present working directory : " + new File("").getAbsolutePath());

        logger.info("The myCBR project file : " + userDefinedProjectFile);

        if (userDefinedProjectFile != null && userDefinedProjectFile.length() > 0) {

            logger.info("\n\n ******************* Loading the myCBR project from : " + userDefinedProjectFile
                    + " ********************\n");

            File projectFile = new File(userDefinedProjectFile);

            if (projectFile.exists())
                project = engine.createProjectFromPRJ(userDefinedProjectFile);
            else
                logger.error("\n The myCBR project file : " + userDefinedProjectFile
                        + " Does not exist ???? \n");

        } else {
            logger.warn("\n ******************* Creating an empty project ??? ********************\n");
            project = engine.createEmptyCBRProject();
        }

    }

}
