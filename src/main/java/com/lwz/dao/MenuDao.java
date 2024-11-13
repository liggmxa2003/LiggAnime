package com.lwz.dao;

import com.lwz.pojo.Menu;
import com.lwz.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MenuDao {

    User selectPermsByUserId(@Param("username") String username);
}
