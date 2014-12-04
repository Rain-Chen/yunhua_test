package com.autoedu.service;

import com.autoedu.bean.User;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.DigestUtils;

import javax.inject.Inject;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-4
 * Time: 下午5:11.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-config.xml"})
public class TestUserService {

    @Inject
    private UserService userService;

    @Test
    public void testCreateUser(){
        User user = new User();
        user.setId(UUID.randomUUID().toString());
        user.setUsername("rainchen");
        user.setPassword("123");
        user.setSalt(DigestUtils.md5DigestAsHex(new Date().toString().getBytes()));
        System.out.println(user);
        userService.createUser(user);
    }

    @Test
    public void testUpdateUser(){
        User user = new User();
        user.setId("eeb35707-17b2-4ed9-81b0-68bb6e67bcad");
        user.setUsername("lzrainchen");
        user.setPassword("243c3e792544aa7f46af7cfe35ae0c4c");
        user.setSalt("5a4b11eaaf533596fed65c50543fce31");
        userService.updateUser(user);
    }

    @Test
    public void testFindOne(){
        User user = userService.findOne("lzrainchen");
        System.out.println(user);
    }

    @Test
    public void testFindById(){
        User user = userService.findById("eeb35707-17b2-4ed9-81b0-68bb6e67bcad");
        System.out.println(user);
    }

    @Test
    public void testChangePassword(){
        User user = userService.findOne("lzrainchen");
        System.out.println("没有修改密码之前的对象："+user);
        userService.changePassword("eeb35707-17b2-4ed9-81b0-68bb6e67bcad","123456");
        User user1 = userService.findOne("lzrainchen");
        System.out.println("修改密码之后的对象："+user1);
    }

    @Test
    public void testFindAll(){
        List<User> userList = userService.findAll();
        for (User user : userList){
            System.out.println(user);
        }
    }

    @Test
    public void testDeleteUser(){
        userService.deleteUser("696f9b68-ff64-4c2a-a578-90f3cedce45a");
    }
}
