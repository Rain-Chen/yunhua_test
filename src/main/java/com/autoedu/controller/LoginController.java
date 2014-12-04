package com.autoedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-4
 * Time: 下午3:11.
 */
@Controller
public class LoginController {

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(
        String username,
        String password,
        ModelMap map
    ){
        return null;
    }
}
