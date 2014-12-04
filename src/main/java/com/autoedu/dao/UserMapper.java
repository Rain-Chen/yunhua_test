package com.autoedu.dao;

import com.autoedu.bean.User;

import java.util.List;

/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-4
 * Time: 下午3:34.
 */
public interface UserMapper {

    public void createUser(User user);

    public void updateUser(User user);

    public void deleteUser(String userId);

    User findOne(String username);

    User findById(String userId);

    List<User> findAll();

}
