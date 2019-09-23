package edu.mum.wap.services;

import edu.mum.wap.daos.impl.UserDao;
import edu.mum.wap.models.User;

import java.util.List;

public class UserService {

    private UserDao userDao = new UserDao();

    public void addUser(User user) {
        userDao.save(user);
    }

    public User updateUser(User user) {
        return userDao.update(user);
    }

    public void deleteUser(Long userId) {
        userDao.delete(userId);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }

    public User findUser(Long userId) {
        return userDao.findOne(userId);
    }
}

