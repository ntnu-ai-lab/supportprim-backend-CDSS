package no.ntnu.supportprim.security.common;

/**
 * @author: Amar Jaiswal
 */
public interface SecurityConstants {
    String AUTHORIZATION = "Authorization";
    String BEARER_WITH_A_SPACE = "Bearer "; // Mind it, there is a space after the word Bearer.
    int INDEX_TO_SPLIT_BEARER_WITH_A_SPACE = 7;
    String JWT_CLAIM_AUTH_KEY = "auth";
    String ACCESS_DENIED_PAGE = "/login";
}
