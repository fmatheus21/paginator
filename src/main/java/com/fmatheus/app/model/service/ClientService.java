package com.fmatheus.app.model.service;


import com.fmatheus.app.controller.dto.response.ClienteDtoResponse;
import com.fmatheus.app.model.repository.filter.RepositoryFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ClientService extends GenericService<ClienteDtoResponse, Integer> {

    Page<ClienteDtoResponse> findAllFilter(Pageable pageable, RepositoryFilter filter);

}
