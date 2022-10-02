package com.fmatheus.app.model.repository.query;

import com.fmatheus.app.model.entity.Client;
import com.fmatheus.app.model.repository.filter.RepositoryFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ClientRepositoryQuery {

    Page<Client> findAllFilter(Pageable pageable, RepositoryFilter filter);

}
