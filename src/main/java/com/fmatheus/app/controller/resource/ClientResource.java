package com.fmatheus.app.controller.resource;

import com.fmatheus.app.controller.constant.HttpStatusConstant;
import com.fmatheus.app.controller.constant.OperationConstant;
import com.fmatheus.app.controller.dto.response.ClienteDtoResponse;
import com.fmatheus.app.controller.rule.ClienteRule;
import com.fmatheus.app.model.repository.filter.RepositoryFilter;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
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


    @Operation(summary = OperationConstant.LIST, description = OperationConstant.CLIENT_LIST_DESCRIPTION,
            tags = {OperationConstant.CLIENT_TAG})
    @ApiResponses(value = {
            @ApiResponse(responseCode = HttpStatusConstant.OK_NUMBER, description = HttpStatusConstant.OK,
                    content = @Content(mediaType = "application/json", schema = @Schema(implementation = ClienteDtoResponse.class))),
            @ApiResponse(responseCode = HttpStatusConstant.NO_CONTENT_NUMBER, description = HttpStatusConstant.NO_CONTENT,
                    content = @Content(schema = @Schema(hidden = true)))
    })
    @GetMapping
    public ResponseEntity<Page<ClienteDtoResponse>> list(Pageable pageable, RepositoryFilter filter) {
        var result = this.rule.findAll(pageable, filter);
        return !result.isEmpty() ? ResponseEntity.ok(result) : ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

}
