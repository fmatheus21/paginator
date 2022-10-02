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
    STATE("state");


    @Getter
    private final String value;

    EntityEnum(String value) {
        this.value = value;
    }

}
