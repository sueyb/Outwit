package com.outwit.dao;

import com.outwit.entity.User;

import java.util.List;

/**
 * @author roy
 * @create 2020-01-02-16:56
 */
public interface UserMapper {
    //输入账号后校验
    String search(String username);

    //登录
    List<User> login(String username, String password);

    //添加
    User insertUser(User user);

}
