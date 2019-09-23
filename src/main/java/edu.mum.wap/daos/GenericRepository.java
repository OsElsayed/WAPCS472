package edu.mum.wap.daos;

import java.util.List;

public interface GenericRepository<T> {
    void save(T t);
    void delete(Long id);
    T findOne(Long id);
    T update(T t);
    List<T> findAll();
}
