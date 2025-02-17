package no.ntnu.supportprim.security.service;

import no.ntnu.supportprim.security.service.ValidationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.SmartValidator;

import static no.ntnu.supportprim.security.common.Constants.*;

/**
 * @author: Amar Jaiswal
 */
@Component
public class ValidationServiceImpl implements ValidationService {

    private static final Logger LOG = LoggerFactory.getLogger(ValidationServiceImpl.class);

    @Autowired
    SmartValidator validator;

    @Override
    public void validate(Object request) throws org.springframework.validation.BindException {

        LOG.debug("Trying to validate the request");

        Errors errors = new BeanPropertyBindingResult(request, REQUEST);

        validator.validate(request, errors);

        if (errors.hasErrors()) {
            LOG.error("An error has occurred with the message: " + errors.getAllErrors().toString());
            throw new org.springframework.validation.BindException((BindingResult) errors);
        }

        LOG.debug("The validation is successful!");
    }
}
