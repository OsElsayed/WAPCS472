package edu.mum.wap.daos.impl;

import edu.mum.wap.daos.GenericRepository;
import edu.mum.wap.utils.EntityManagerHelper;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class GenericDao<T> implements GenericRepository<T> {

    protected EntityManager entityManager = EntityManagerHelper.getCurrentEntityManager();
    protected Class<T> daoClass;

    public void setDaoClass(Class<T> type) {
        daoClass = type;
    }

    public T save(T entity) {
        entityManager.getTransaction().begin();
        entity = entityManager.merge(entity);
        entityManager.getTransaction().commit();
        return entity;
    }

    private void checkEntityManager() {
        if(!entityManager.isOpen()){
            entityManager.getTransaction().begin();
        }
    }

    public void delete(T entity) {
        entityManager.remove(entity);
    }

    @Override
    public void delete(Long id) {
        T entity = findOne(id);
        delete(entity);
    }

    @Override
    public T findOne(Long id) {
        return (T) entityManager.find(daoClass, id);
    }

    @Override
    public List<T> findAll() {
        return entityManager.createQuery("from " + daoClass.getName())
                .getResultList();
    }

    @Override
    public T update(T entity) {
        return entityManager.merge(entity);
    }
}
