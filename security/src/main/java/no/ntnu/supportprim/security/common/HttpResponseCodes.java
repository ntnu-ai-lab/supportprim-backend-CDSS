package no.ntnu.supportprim.security.common;

/**
 * @author: Amar Jaiswal
 */
public interface HttpResponseCodes {

    // Successful Responses
    String OK_200 = "OK";
    String Created_201 = "Created";
    String Accepted_202 = "Accepted";

    // Client Error Responses
    String BAD_REQUEST_400 = "Application could not understand the request due to invalid syntax";
    String UNAUTHORIZED_401 = "Unauthorized";
    String FORBIDDEN_403 = "Access denied";
    String NOT_FOUND_404 = "The user with the given username does not exist";

    // Server Error Responses
    String INTERNAL_SERVER_ERROR_500 = "Expired or invalid JWT token";
}
