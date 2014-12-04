package com.autoedu.service;

import com.autoedu.bean.User;
import com.autoedu.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-4
 * Time: 下午3:41.
 */
@Service
public class UserServiceImpl implements UserService{

    @Inject
    private UserMapper userMapper;
    @Inject
    private PasswordHelper passwordHelper;
    @Override
    public void createUser(User user) {
        passwordHelper.encryptPassword(user);
        userMapper.createUser(user);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    @Override
    public void deleteUser(String userId) {
        userMapper.deleteUser(userId);
    }

    @Override
    public void changePassword(String userId, String newPassword) {
        User user = userMapper.findById(userId);
        user.setPassword(newPassword);
        passwordHelper.encryptPassword(user);
        userMapper.updateUser(user);
    }

    @Override
    public User findOne(String username) {
        return userMapper.findOne(username);
    }

    @Override
    public User findById(String userId){
        return userMapper.findById(userId);
    }

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }
}
