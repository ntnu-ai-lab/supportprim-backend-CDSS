package no.ntnu.supportprim.security.controller.exception;

import no.ntnu.supportprim.security.common.ApiResponseAnnotations;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static no.ntnu.supportprim.security.common.HttpResponseCodes.*;

/**
 * @author: Amar Jaiswal
 */
@RestControllerAdvice
public class GlobalExceptionHandlerController {

    private static final Logger LOG = LoggerFactory.getLogger(GlobalExceptionHandlerController.class);

    @ExceptionHandler(CustomException.class)
    public void handleCustomException(HttpServletResponse httpServletResponse, CustomException ce) throws IOException {
        LOG.error("CustomException occurred with message:" + ce.getMessage());
        httpServletResponse.sendError(ce.getHttpStatus().value(), ce.getMessage());
    }

    @ExceptionHandler(AccessDeniedException.class)
    public void handleAccessDeniedException(HttpServletResponse httpServletResponse) throws IOException {
        LOG.error("AccessDeniedException occurred with message:" + FORBIDDEN_403);
        httpServletResponse.sendError(HttpStatus.FORBIDDEN.value(), FORBIDDEN_403);
    }

    @ExceptionHandler(Exception.class)
    public void handleException(HttpServletResponse httpServletResponse) throws IOException {
        LOG.error("Exception occurred with message:" + BAD_REQUEST_400);
        httpServletResponse.sendError(HttpStatus.BAD_REQUEST.value(), BAD_REQUEST_400);
    }
}

