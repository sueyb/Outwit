package com.outwit.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONPObject;
import com.outwit.dao.UserMapper;
import com.outwit.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author roy
 * @create 2020-01-02-16:55
 */
@Controller
public class UserController {
    @Autowired
    private UserMapper userMapper;

    @RequestMapping("/search")
    public String search(String username, HttpServletResponse response) throws IOException {
        String user = userMapper.search(username);
        System.out.println(user);
        PrintWriter pw = response.getWriter();
        JSONArray jsonArray = new JSONArray();
        jsonArray.add(user);
        pw.write(jsonArray.toString());
        return null;
    }
}
