package com.lwz.service.impl;

import com.lwz.dao.TypeDao;
import com.lwz.pojo.Type;
import com.lwz.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeDao typeDao;

//    保存分类信息
    //事务注解
    @Transactional
    @Override
    public int saveType(Type type) {
        return typeDao.saveType(type);
    }

//    获取指定ID的分类信息
    @Transactional
    @Override
    public Type getType(Long id) {
        return typeDao.getType(id);
    }

//    根据名称获取分类对象
    @Transactional
    @Override
    public Type getTypeByName(String name) {
        return typeDao.getTypeByName(name);
    }

//    获取所有分类列表
    @Transactional
    @Override
    public List<Type> getAllType() {
        return typeDao.getAllType();
    }

//    获取博客分类列表
    @Override
    public List<Type> getBlogType() {
        return typeDao.getBlogType();
    }

//    更新分类信息
    @Transactional
    @Override
    public int updateType(Type type) {
        return typeDao.updateType(type);
    }

//    删除指定分类的记录
    @Transactional
    @Override
    public int deleteType(Long id) {
        return typeDao.deleteType(id);
    }
}
