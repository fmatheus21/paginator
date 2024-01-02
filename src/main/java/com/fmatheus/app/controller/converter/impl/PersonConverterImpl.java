package com.fmatheus.app.controller.converter.impl;

import com.fmatheus.app.controller.converter.PersonConverter;
import com.fmatheus.app.controller.dto.response.PersonResponse;
import com.fmatheus.app.controller.util.CharacterUtil;
import com.fmatheus.app.model.entity.Person;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;


@RequiredArgsConstructor
@Component
public class PersonConverterImpl implements PersonConverter {

    private final ModelMapper mapper;

    @Override
    public Person converterToEntity(Object o) {
        throw new UnsupportedOperationException();
    }

    @Override
    public PersonResponse converterToResponse(Person person) {
        this.converterPerson(person);
        return this.mapper.map(person, PersonResponse.class);
    }

    private void converterPerson(Person person) {
        person.setName(CharacterUtil.convertFirstUppercaseCharacter(person.getName()));

        var personType = person.getPersonType();
        personType.setName(CharacterUtil.convertFirstUppercaseCharacter(personType.getName()));

        var contact = person.getContact();
        contact.setEmail(CharacterUtil.convertAllLowercaseCharacters(contact.getEmail()));
        contact.setPhone(CharacterUtil.removeSpecialCharacters(contact.getPhone()));

        var user = person.getUser();
        user.setUsername(CharacterUtil.convertAllLowercaseCharacters(user.getUsername()));

        person.setContact(contact);
        person.setUser(user);

    }


}
