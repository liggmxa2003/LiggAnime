package com.lwz.service.impl;

import com.lwz.dao.UserDao;
import com.lwz.pojo.User;
import com.lwz.service.UserService;
import com.lwz.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static org.apache.tomcat.jni.User.username;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    /**
     * 根据用户名和密码检查用户
     * 此方法用于验证用户身份，通过用户名和密码从数据库中查询用户信息
     * 如果用户信息匹配，则返回用户对象；如果不匹配或用户不存在，则返回null
     *
     * @param username 用户名，用于查询用户
     * @param password 密码，与用户名一起用于验证用户身份
     * @return 如果找到匹配的用户，则返回User对象；否则返回null
     */
    @Override
    public User checkUser(String username, String password) {
        User user = userDao.queryByUsernameAndPassword(username, MD5Utils.editUser(password));
        return user;
    }

    //    注册用户功能实现
    @Override
    public boolean registerUser(String username, String password) {
        // 判断用户是否已存在
        if (userDao.queryUser(username) != null) {
            return false;
        }
        // 用户不存在，调用DAO层的用户注册方法
        userDao.registerUser(username,password);
        return true;
    }

    //根据id查询用户
    @Override
    public User queryUserById(Long id) {
        User user = userDao.queryUserById(id);
        return user;
    }

    //修改用户信息
    @Override
    public boolean updateUser(User user) {
        return userDao.updateUser(user);
    }
}
