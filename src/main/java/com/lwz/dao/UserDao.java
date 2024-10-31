package com.lwz.dao;

import com.lwz.pojo.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDao {

    // 根据用户名和密码查询用户
    User queryByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    // 注册新用户
    int registerUser(User user);
}
