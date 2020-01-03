package com.outwit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author roy
 * @create 2020-01-02-15:40
 */
@Controller
public class pageController {
    @RequestMapping("/login")
    public String tologin() {
        return "login";
    }
}
