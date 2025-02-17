package no.ntnu.supportprim.transformer.util;

/**
 * @author: Amar Jaiswal
 */
public class Utils {
    public static String removeLeadingAndTrailing(String str, String leading, String trailing){
        String trimmedString = str;
        trimmedString = trimmedString.replaceFirst(leading, "");
        trimmedString = new StringBuilder(trimmedString).reverse().toString();
        trimmedString = trimmedString.replaceFirst(trailing, "");
        trimmedString = new StringBuilder(trimmedString).reverse().toString();
        return trimmedString;
    }
}
