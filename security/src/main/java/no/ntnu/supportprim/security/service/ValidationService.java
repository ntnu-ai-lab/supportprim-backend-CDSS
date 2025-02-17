package no.ntnu.supportprim.security.service;

import org.springframework.validation.BindException;

/**
 * @author: Amar Jaiswal
 */
public interface ValidationService {
    public void validate(Object request) throws BindException;
}
