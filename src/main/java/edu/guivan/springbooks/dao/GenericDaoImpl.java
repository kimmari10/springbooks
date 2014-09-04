package edu.guivan.springbooks.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

@Repository
@Transactional
public abstract class GenericDaoImpl<T,PK extends Serializable> implements GenericDao<T, PK> {

    @Autowired
    protected SessionFactory sessionFactory;

    private Class<T> type;

    public GenericDaoImpl(Class<T> type) {
        this.type = type;
    }

    public PK create(T o) {
        return (PK) sessionFactory.getCurrentSession().save(o);
    }

    public T read(PK id) {
        return (T) sessionFactory.getCurrentSession().get(type, id);
    }

    public void update(T o) {
        sessionFactory.getCurrentSession().update(o);
    }

    public void delete(T o) {
        sessionFactory.getCurrentSession().delete(o);
    }

    public List<T> get(){
       return sessionFactory.getCurrentSession().createCriteria(type).list();
    }

}
