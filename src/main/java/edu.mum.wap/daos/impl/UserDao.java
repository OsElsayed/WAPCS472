package edu.mum.wap.daos.impl;

import edu.mum.wap.daos.UserRepository;
import edu.mum.wap.models.User;

import javax.persistence.Query;

public class UserDao extends GenericDao<User> implements UserRepository {
    public UserDao() {
        super.setDaoClass(User.class);
    }

    @Override
    public User getUserByName(String username) {
        Query query = super.entityManager.createQuery("select u from User u where u.username = :username", User.class);
        query.setParameter("username", username);
        User user = (User) query.getSingleResult();
        return user;
    }
}
