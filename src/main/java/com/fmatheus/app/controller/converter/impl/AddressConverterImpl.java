package com.fmatheus.app.controller.converter.impl;

import com.fmatheus.app.controller.converter.AddressConverter;
import com.fmatheus.app.controller.dto.response.AddressDtoResponse;
import com.fmatheus.app.model.entity.Address;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AddressConverterImpl implements AddressConverter {

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public AddressDtoResponse converterToResponse(Address address) {
        return this.modelMapper.map(address, AddressDtoResponse.class);
    }
    
}
