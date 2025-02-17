package no.ntnu.supportprim.security.common;

import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

import static no.ntnu.supportprim.security.common.HttpResponseCodes.*;

/**
 * This class provides the REST API response annotations, which binds multiple response codes together.
 *
 * @author Amar Jaiswal
 */
public final class ApiResponseAnnotations {

    /**
     * The ApiResponseDefault is a default REST API response annotation.
     */
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = OK_200),
            @ApiResponse(code = 401, message = UNAUTHORIZED_401),
            @ApiResponse(code = 403, message = FORBIDDEN_403),
            @ApiResponse(code = 404, message = NOT_FOUND_404),
            @ApiResponse(code = 500, message = INTERNAL_SERVER_ERROR_500)
    }) public @interface ApiResponsesDefault {}

    @ApiResponses(value = {
            @ApiResponse(code = 400, message = BAD_REQUEST_400),
            @ApiResponse(code = 422, message = "Invalid username/password supplied")
    }) public @interface ApiResponseForSignin {}

    @ApiResponses(value = {
            @ApiResponse(code = 400, message = BAD_REQUEST_400), //
            @ApiResponse(code = 403, message = FORBIDDEN_403),
            @ApiResponse(code = 422, message = "Username is already in use"),
            @ApiResponse(code = 500, message = INTERNAL_SERVER_ERROR_500)
    }) public @interface ApiResponseForSignup {}

    @ApiResponses(value = {
            @ApiResponse(code = 400, message = BAD_REQUEST_400),
            @ApiResponse(code = 403, message = FORBIDDEN_403),
            @ApiResponse(code = 404, message = NOT_FOUND_404),
            @ApiResponse(code = 500, message = INTERNAL_SERVER_ERROR_500)
    }) public @interface ApiResponseForDelete {}

    @ApiResponses(value = {
            @ApiResponse(code = 400, message = BAD_REQUEST_400),
            @ApiResponse(code = 403, message = FORBIDDEN_403),
            @ApiResponse(code = 404, message = NOT_FOUND_404),
            @ApiResponse(code = 500, message = INTERNAL_SERVER_ERROR_500)
    }) public @interface ApiResponseForSearch {}

    @ApiResponses(value = {
            @ApiResponse(code = 400, message = BAD_REQUEST_400),
            @ApiResponse(code = 403, message = FORBIDDEN_403),
            @ApiResponse(code = 500, message = INTERNAL_SERVER_ERROR_500)
    }) public @interface ApiResponseForWhoami {}
}