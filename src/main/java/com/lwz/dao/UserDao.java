package com.lwz.dao;

import com.lwz.pojo.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDao {

    //根据id查阅用户信息
    User queryUserById(Long id);

    // 根据用户名和密码查询用户
    User queryByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    //根据账号查询用户
    User queryUser(String username);

    // 注册新用户
    int registerUser(String username, String password);

    //修改用户信息
    boolean updateUser(User user);
}
