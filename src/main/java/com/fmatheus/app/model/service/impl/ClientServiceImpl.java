package com.fmatheus.app.model.service.impl;


import com.fmatheus.app.controller.converter.ClientConverter;
import com.fmatheus.app.controller.dto.response.ClienteDtoResponse;
import com.fmatheus.app.model.entity.Client;
import com.fmatheus.app.model.repository.ClientRepository;
import com.fmatheus.app.model.repository.filter.RepositoryFilter;
import com.fmatheus.app.model.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClientServiceImpl implements ClientService {

    @Autowired
    private ClientRepository repository;

    @Autowired
    private ClientConverter clientConverter;


    @Override
    public List<ClienteDtoResponse> findAll() {
        return this.converterList(this.repository.findAll());
    }

    @Override
    public Optional<ClienteDtoResponse> findById(Integer id) {
        var result = this.repository.findById(id);
        return result.map(this::converter);
    }

    @Override
    public <S extends ClienteDtoResponse> S save(S s) {
        return null;
    }

    @Override
    public void delete(Integer id) {
    }

    @Override
    public Page<ClienteDtoResponse> findAllFilter(Pageable pageable, RepositoryFilter filter) {
        var list = this.repository.findAllFilter(pageable, filter);
        var listConverter = list.map(this::converter).stream().toList();
        return new PageImpl<>(listConverter, pageable, this.totalPaginator(filter));
    }

    private Long totalPaginator(RepositoryFilter filter) {
        return this.repository.total(filter);
    }

    private ClienteDtoResponse converter(Client client) {
        return this.clientConverter.converterToResponse(client);
    }

    private List<ClienteDtoResponse> converterList(List<Client> list) {
        return list.stream().map(map -> this.clientConverter.converterToResponse(map)).toList();
    }


}
