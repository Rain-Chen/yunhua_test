package com.autoedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with Intellij IDEA.
 * <p>Created by rainchen
 * User: rainchen
 * Date: 14-12-6
 * Time: 下午6:13.
 */
@Controller
public class PageRedirectController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
