package com.fmatheus.app.model.service;

import com.fmatheus.app.model.entity.User;
import com.fmatheus.app.model.repository.filter.UserRepositoryFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface UserService extends GenericService<User, Integer> {

    public Page<User> findAllFilter(Pageable pageable, UserRepositoryFilter filter);

    Long totalPaginator(UserRepositoryFilter filter);

}
