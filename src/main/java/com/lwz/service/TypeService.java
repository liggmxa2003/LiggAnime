package com.lwz.service;

import com.lwz.pojo.Type;

import java.util.List;

public interface TypeService {

//    保存分类信息
    int saveType(Type type);

//    根据ID获取分类信息
    Type getType(Long id);

//    根据名称获取分类
    Type getTypeByName(String name);

//    获取所有分类列表
    List<Type> getAllType();

    List<Type> getBlogType();  //首页右侧展示type对应的番剧数量

//    更新分类信息
    int updateType(Type type);

//    根据ID删除分类
    int deleteType(Long id);
}
