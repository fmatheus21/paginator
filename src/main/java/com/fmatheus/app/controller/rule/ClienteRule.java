package com.fmatheus.app.controller.rule;

import com.fmatheus.app.controller.dto.response.ClienteDtoResponse;
import com.fmatheus.app.model.repository.filter.RepositoryFilter;
import com.fmatheus.app.model.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

@Component
public class ClienteRule {

    @Autowired
    private ClientService clientServicevice;

    public Page<ClienteDtoResponse> findAll(Pageable pageable, RepositoryFilter filter) {
        return this.clientServicevice.findAllFilter(pageable, filter);
    }

}
