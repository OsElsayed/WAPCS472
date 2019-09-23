package edu.mum.wap.daos.impl;

import edu.mum.wap.daos.UserRepository;
import edu.mum.wap.models.User;

public class UserDao extends GenericDao<User> implements UserRepository {
    public UserDao() {
        super.setDaoClass(User.class);
    }
}
