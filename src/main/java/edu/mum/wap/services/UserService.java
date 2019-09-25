package edu.mum.wap.services;

import edu.mum.wap.daos.impl.ImageDao;
import edu.mum.wap.daos.impl.UserDao;
import edu.mum.wap.models.Images;
import edu.mum.wap.models.User;
import edu.mum.wap.utils.HashingHelper;
//import edu.mum.wap.utils.HashingHelper;

import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;

public class UserService {

    private UserDao userDao = new UserDao();
    private ImageDao imageDao = new ImageDao();

    public User addUser(User user) throws NoSuchAlgorithmException {
        Date date = new Date();
        user.setCreationDate(date);
        user.setModifiedDate(date);
        user.setAdmin(false);
        String pass = user.getPassword();
        String sha256hex = HashingHelper.HashPassword(pass);
        user.setPassword(sha256hex);
        user.setActive(true);
        Images img = user.getImage();
        if(img != null && !img.getImageUrl().isEmpty()){
            img = imageDao.save(img);
            user.setImage(img);
        }
        return userDao.save(user);
    }
    public void addUser(User user, boolean isNew) throws NoSuchAlgorithmException {
        Date date = new Date();
        user.setCreationDate(date);
        user.setModifiedDate(date);
        user.setAdmin(false);
        Images img = user.getImage();
        if(img != null && !img.getImageUrl().isEmpty()){
            img = imageDao.save(img);
            user.setImage(img);
        }
        userDao.save(user);
    }

    public User updateUser(User user) {
        return userDao.save(user);
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

    public User authenticateUser(String email) {
        User user = userDao.getUserByEmail(email);
        return user;
    }
}

