package com.autoedu.service;

import com.autoedu.bean.User;

import java.util.List;

/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-4
 * Time: 下午3:39.
 */
public interface UserService {

    /**
     * 创建用户
     * @param user
     * @return
     */
    public void createUser(User user);

    /**
     * 更新用户
     * @param user
     * @return
     */
    public void updateUser(User user);

    /**
     * 删除用户
     * @param userId
     */
    public void deleteUser(String userId);

    /**
     * 修改密码
     * @param userId
     * @param newPassword
     */
    public void changePassword(String userId, String newPassword);

    /**
     * 通过username查找对应用户
     * @param username
     * @return
     */
    User findOne(String username);

    /**
     * 通过userId查找对应用户
     * @param userId
     * @return
     */
    User findById(String userId);
    /**
     * 查找所有用户
     * @return
     */
    List<User> findAll();
}
