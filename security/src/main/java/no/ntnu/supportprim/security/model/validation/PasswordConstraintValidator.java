package no.ntnu.supportprim.security.model.validation;

import org.passay.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * This class validates a given password extended from javax.validation.
 * @author: Amar Jaiswal
 */
public class PasswordConstraintValidator implements ConstraintValidator<ValidPassword, String> {

    private static final Logger LOG = LoggerFactory.getLogger(PasswordConstraintValidator.class);

    @Override
    public void initialize(ValidPassword arg0) {
    }

    @Override
    public boolean isValid(String password, ConstraintValidatorContext context) {

        LOG.debug("Creating an instance of PasswordValidation using:"+ PasswordValidator.class.getName());
        PasswordValidator validator = new PasswordValidator(Arrays.asList(

                // at least 8 characters
                new LengthRule(8, 30),

                // at least one upper-case character
                new CharacterRule(EnglishCharacterData.UpperCase, 1),

                // at least one lower-case character
                new CharacterRule(EnglishCharacterData.LowerCase, 1),

                // at least one digit character
                new CharacterRule(EnglishCharacterData.Digit, 1),

                // at least one symbol (special character)
                new CharacterRule(EnglishCharacterData.Special, 1),

                // no whitespace
                new WhitespaceRule()
        ));

        LOG.trace("Validating the password using an instance of PasswordData:"+ PasswordData.class.getName());
        RuleResult result = validator.validate(new PasswordData(password));

        if (result.isValid()) {
            LOG.debug("The password is Valid");
            return true;
        }

        List<String> messages = validator.getMessages(result);

        String messageTemplate = messages.stream()
                .collect(Collectors.joining(","));

        LOG.error("The password is InValid, due to: "+messageTemplate);

        LOG.trace("Building the context.buildConstraintViolationWithTemplate for "+messageTemplate);
        context.buildConstraintViolationWithTemplate(messageTemplate)
                .addConstraintViolation()
                .disableDefaultConstraintViolation();

        LOG.trace("The password was InValid, thus returning false");

        return false;
    }
}