package no.ntnu.supportprim.security.controller.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;

/**
 * @author: Amar Jaiswal
 */
public class CustomException extends RuntimeException {

    private static final Logger LOG = LoggerFactory.getLogger(CustomException.class);

    private final String message;
    private final HttpStatus httpStatus;

    public CustomException(String message, HttpStatus httpStatus) {
        LOG.error("Creating a custom exception with http-status:" + httpStatus + ", and message: " + message);
        this.message = message;
        this.httpStatus = httpStatus;
    }

    @Override
    public String getMessage() {
        LOG.trace("http-status:" + httpStatus);
        return message;
    }

    public HttpStatus getHttpStatus() {
        LOG.trace("http-status:" + httpStatus);
        return httpStatus;
    }
}
