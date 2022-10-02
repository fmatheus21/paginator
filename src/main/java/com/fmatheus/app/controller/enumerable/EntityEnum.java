package com.fmatheus.app.controller.enumerable;

import lombok.Getter;

public enum EntityEnum {

    ID("id"),
    NAME("name"),
    DOCUMENT("document"),
    EMAIL("email"),
    ID_PERSON("idPerson"),
    PHONE("phone"),
    PLACE("place"),
    CITY("city"),
    STATE("state"),
    CONTACT("contact"),
    ADDRESS("address"),
    DISTRICT("district"),
    ZIPCODE("zipCode");


    @Getter
    private final String value;

    EntityEnum(String value) {
        this.value = value;
    }

}
