package com.fmatheus.app.controller.util;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class AppUtil {

    private AppUtil() {
    }


    /**
     * Converte o primeiro caracterde cada palavra em maiusculo.
     *
     * @param value String a ser convertida
     * @return String
     * @author Fernando Matheus
     */
    public static String convertFirstUppercaseCharacter(String value) {
        return Objects.nonNull(value) ? removeDuplicateSpace(CapitalizeUtil.capitalizeFully(value).trim()) : null;
    }

    /**
     * Converte todos os caracteres em maiusculo.
     *
     * @param value String a ser convertida
     * @return String
     * @author Fernando Matheus
     */
    public static String convertAllUppercaseCharacters(String value) {
        return Objects.nonNull(value) ? removeDuplicateSpace(value.toUpperCase().trim()) : null;
    }


    /**
     * Converte todos os caracteres em minusculo.
     *
     * @param value String a ser convertida
     * @return String
     * @author Fernando Matheus
     */
    public static String convertAllLowercaseCharacters(String value) {
        return Objects.nonNull(value) ? removeDuplicateSpace(value.toLowerCase().trim()) : null;
    }

    /**
     * Remove todos os espacos.
     *
     * @param value String a ser convertida
     * @return String
     * @author Fernando Matheus
     */
    public static String removeAllSpaces(String value) {
        return value.replace(" ", "");
    }


    /**
     * Remove espacos duplicados
     *
     * @param value String a ser convertida
     * @return String
     * @author Fernando Matheus
     */
    public static String removeDuplicateSpace(String value) {
        return Objects.nonNull(value) ? value.replaceAll("\\s+", " ").trim() : null;
    }

    public static String returnFirstWord(String texto) {
        String pattern = "^([a-zA-ZÈ-Úè-ú]+)\\s";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(texto);
        if (m.find()) {
            return m.group(0);
        }
        return null;
    }


    /**
     * Remove qualquer caracter, exeto numeros e letras.
     *
     * @param value String a ser convertida
     * @return String
     * @author Fernando Matheus
     */
    public static String removeSpecialCharacters(@NotNull @NotBlank String value) {
        return value.replaceAll("[^a-zA-Z0-9]", "");
    }


}


