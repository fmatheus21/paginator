package com.fmatheus.app.controller.exception;

import com.fmatheus.app.controller.enumerable.MessagesEnum;

import java.io.Serial;

/**
 * Ao lancar esta excecao, a mesma sera capturada pela classe ApiExceptionHandler onde sera tratada.
 *
 * @author Fernando Matheus
 */
public class ForbiddenException extends RuntimeException {

    @Serial
    private static final long serialVersionUID = 1L;

    public ForbiddenException() {
        super(MessagesEnum.ERROR_FORBIDDEN.getMessage());
    }

}
