package com.fmatheus.app.model.repository.impl;

import com.fmatheus.app.controller.enumerable.EntityEnum;
import com.fmatheus.app.controller.util.AppUtil;
import com.fmatheus.app.model.entity.Address;
import com.fmatheus.app.model.entity.Client;
import com.fmatheus.app.model.entity.Contact;
import com.fmatheus.app.model.entity.Person;
import com.fmatheus.app.model.repository.filter.RepositoryFilter;
import com.fmatheus.app.model.repository.query.ClientRepositoryQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ClientRepositoryImpl implements ClientRepositoryQuery {

    @PersistenceContext
    private EntityManager manager;

    @Override
    public Page<Client> findAllFilter(Pageable pageable, RepositoryFilter filter) {
        var builder = this.manager.getCriteriaBuilder();
        CriteriaQuery<Client> criteriaQuery = builder.createQuery(Client.class);
        Root<Client> root = criteriaQuery.from(Client.class);
        Join<Person, Client> joinPerson = root.join(EntityEnum.ID_PERSON.getValue());
        Predicate[] predicates = createRestrictions(filter, builder, root);
        criteriaQuery
                .where(predicates)
                .orderBy(builder.asc(joinPerson.get(EntityEnum.NAME.getValue())));

        TypedQuery<Client> typedQuery = this.manager.createQuery(criteriaQuery);

        this.addPageRestrictions(typedQuery, pageable);

        return new PageImpl<>(typedQuery.getResultList(), pageable, this.total(filter));
    }

    /**
     * Metodo responsavel por criar uma array de Predicate para implementar uma
     * consulta de acordo com o filtro.
     *
     * @param filter  Filtro de consulta
     * @param builder CriteriaBuilder
     * @param root    Root
     * @return Predicate[]
     * @author Fernando Matheus
     */
    private Predicate[] createRestrictions(RepositoryFilter filter, CriteriaBuilder builder, Root<Client> root) {

        List<Predicate> predicates = new ArrayList<>();
        Join<Person, Client> joinPerson = root.join(EntityEnum.ID_PERSON.getValue());
        Join<Contact, Person> joinContact = joinPerson.join(EntityEnum.CONTACT.getValue());
        Join<Address, Person> joinAddress = joinPerson.join(EntityEnum.ADDRESS.getValue());

        if (Objects.nonNull(filter.getName())) {
            predicates.add(builder.like(builder.lower(joinPerson.get(EntityEnum.NAME.getValue())),
                    "%" + filter.getName().toLowerCase() + "%"));
        }

        if (Objects.nonNull(filter.getDocument())) {
            predicates.add(builder.like(builder.lower(joinPerson.get(EntityEnum.DOCUMENT.getValue())),
                    "%" + AppUtil.removeSpecialCharacters(filter.getDocument()) + "%"));
        }


        if (Objects.nonNull(filter.getPhone())) {
            predicates.add(builder.like(builder.lower(joinContact.get(EntityEnum.PHONE.getValue())),
                    "%" + AppUtil.removeSpecialCharacters(filter.getPhone()) + "%"));
        }

        if (Objects.nonNull(filter.getEmail())) {
            predicates.add(builder.like(builder.lower(joinContact.get(EntityEnum.EMAIL.getValue())),
                    "%" + filter.getEmail() + "%"));
        }

        if (Objects.nonNull(filter.getPlace())) {
            predicates.add(builder.like(builder.lower(joinAddress.get(EntityEnum.PLACE.getValue())),
                    "%" + AppUtil.removeDuplicateSpace(filter.getPlace()) + "%"));
        }

        if (Objects.nonNull(filter.getCity())) {
            predicates.add(builder.like(builder.lower(joinAddress.get(EntityEnum.CITY.getValue())),
                    "%" + AppUtil.removeDuplicateSpace(filter.getCity()) + "%"));
        }

        if (Objects.nonNull(filter.getState())) {
            predicates.add(builder.like(builder.lower(joinAddress.get(EntityEnum.STATE.getValue())),
                    "%" + AppUtil.removeDuplicateSpace(filter.getState()) + "%"));
        }

        if (Objects.nonNull(filter.getDistrict())) {
            predicates.add(builder.like(builder.lower(joinAddress.get(EntityEnum.DISTRICT.getValue())),
                    "%" + AppUtil.removeDuplicateSpace(filter.getDistrict()) + "%"));
        }

        if (Objects.nonNull(filter.getZipCode())) {
            predicates.add(builder.like(builder.lower(joinAddress.get(EntityEnum.ZIPCODE.getValue())),
                    "%" + AppUtil.removeSpecialCharacters(filter.getZipCode()) + "%"));
        }


        return predicates.toArray(new Predicate[0]);

    }


    /**
     * Metodo responsavel por contar o total de registros.
     *
     * @param filter - Filtro de consulta
     * @return Long
     * @author Fernando Matheus
     */
    @Override
    public Long total(RepositoryFilter filter) {
        var builder = this.manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteriaQuery = builder.createQuery(Long.class);
        Root<Client> root = criteriaQuery.from(Client.class);

        Predicate[] predicates = createRestrictions(filter, builder, root);
        criteriaQuery.where(predicates);

        criteriaQuery.select(builder.count(root));

        return this.manager.createQuery(criteriaQuery).getSingleResult();
    }

    /**
     * Metodo responsavel por criar paginacao.
     *
     * @param typedQuery - TypedQuery
     * @param pageable   - Pageable
     * @author Fernando Matheus
     */
    private void addPageRestrictions(TypedQuery<Client> typedQuery, Pageable pageable) {
        int currentPage = pageable.getPageNumber();
        int totalRecordsPerPage = pageable.getPageSize();
        int firstPageRecord = currentPage * totalRecordsPerPage;

        typedQuery.setFirstResult(firstPageRecord);
        typedQuery.setMaxResults(totalRecordsPerPage);
    }

}
