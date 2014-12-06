package com.autoedu.controller;

import com.autoedu.bean.User;
import com.autoedu.service.PasswordHelper;
import com.autoedu.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.inject.Inject;
/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-4
 * Time: 下午3:11.
 */
@Controller
@SessionAttributes(value = {"user"})
public class LoginController {

	@Inject
    private UserService userService;
    @Inject
    private PasswordHelper passwordHelper;
    
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(
        @RequestParam("username") String username,
        @RequestParam("password") String password,
        ModelMap map
    ){
        System.out.println("从前台接受到数据::==>username: "+username+" password: "+password);
        if (null != username) {
            User user = userService.findOne(username);
            if (null != user){
                if (passwordHelper.decryptPassword(password,user.getCredentialsSalt()).equals(user.getPassword())){
                    System.out.println("密码验证通过，登录用户为: "+user);
                    //为了让session中的user密码和salt为null
                    user.setPassword("");
                    user.setSalt("");
                    map.addAttribute("user",user);
                    System.out.println("这是放到Session中的User对象: "+user);
                    return "redirect:index";
                }
                else {
                    map.addAttribute("lf","密码不正确，请检查密码！");
                    return "login";
                }
            }
            //如果没有这个用户
            map.addAttribute("lf","用户不存在，请检查用户名！");
            return "login";
        }
        map.addAttribute("lf","用户名为空");
        return "login";
    }
}
