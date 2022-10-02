package com.fmatheus.app.controller.resource;

import com.fmatheus.app.controller.dto.response.ClienteDtoResponse;
import com.fmatheus.app.controller.rule.ClienteRule;
import com.fmatheus.app.model.repository.filter.RepositoryFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/clients")
public class ClientResource {

    @Autowired
    private ClienteRule rule;

    @GetMapping
    public ResponseEntity<Page<ClienteDtoResponse>> list(Pageable pageable, RepositoryFilter filter) {
        var result = this.rule.findAll(pageable, filter);
        return !result.isEmpty() ? ResponseEntity.ok(result) : ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

}
