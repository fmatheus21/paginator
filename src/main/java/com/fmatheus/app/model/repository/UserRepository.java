package com.fmatheus.app.model.repository;

import com.fmatheus.app.model.entity.User;
import com.fmatheus.app.model.repository.query.UserRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>, UserRepositoryQuery {

}