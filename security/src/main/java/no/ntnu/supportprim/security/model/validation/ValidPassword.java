package no.ntnu.supportprim.security.model.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

import static no.ntnu.supportprim.security.common.ValidationConstants.*;

/**
 * User defined annotation for a password
 *
 * @author: Amar Jaiswal
 */
@Documented
@Constraint(validatedBy = PasswordConstraintValidator.class)
@Target({ElementType.FIELD, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidPassword {

    String message() default INVALID_PASSWORD;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}