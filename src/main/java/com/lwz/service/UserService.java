package com.lwz.service;

import com.lwz.pojo.User;

public interface UserService {

//    检查用户登录信息
//     该方法主要用于验证用户是否合法，通过比对数据库中的用户名和密码来确定用户的身份
//     它是用户登录过程中的关键步骤，确保系统安全的重要防线
    public User checkUser(String username, String password);

    //注册
    public boolean registerUser(User user);

    //id查询用户
    public User queryUserById(Long id);

    //修改用户信息

    public boolean updateUser(User user);
}
