package com.lwz.service.impl;

import com.lwz.dao.TagDao;
import com.lwz.pojo.Tag;
import com.lwz.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

//标签业务层实现类
@Service
public class TagServiceImpl implements TagService {

    @Autowired
    TagDao tagDao;

//    保存标签
    @Override
    public int saveTag(Tag tag) {
        return tagDao.saveTag(tag);
    }

//    根据标签ID获取标签对象
    @Override
    public Tag getTag(Long id) {
        return tagDao.getTag(id);
    }

//    根据标签名称获取标签对象
    @Override
    public Tag getTagByName(String name) {
        return tagDao.getTagByName(name);
    }

//    获取所有标签
    @Override
    public List<Tag> getAllTag() {
        return tagDao.getAllTag();
    }

//    获取番剧标签
    @Override
    public List<Tag> getBlogTag() {
        return tagDao.getBlogTag();
    }

//    根据字符串获取标签集合
    @Override
    public List<Tag> getTagByString(String text) {
        // 初始化标签集合
        List<Tag> tags = new ArrayList<>();
        // 将输入的字符串转换为长整型列表，这里假设已有convertToList方法实现此功能
        List<Long> longs = convertToList(text);
        // 遍历长整型列表，根据每个ID获取对应的标签对象，并添加到标签集合中
        for (Long long1 : longs) {
            tags.add(tagDao.getTag(long1));
        }
        // 返回标签集合
        return tags;
    }

//    将字符串形式的标签ID转换为Long类型的列表
    private List<Long> convertToList(String ids) {
        List<Long> list = new ArrayList<>();
        // 检查输入字符串是否非空且不为null，避免空指针异常或格式错误
        if (!"".equals(ids) && ids != null) {
            // 分割输入字符串为数组
            String[] idarray = ids.split(",");
            // 遍历数组，将每个元素转换为Long类型并添加到列表中
            for (int i=0; i < idarray.length;i++) {
                list.add(new Long(idarray[i]));
            }
        }
        // 返回转换后的列表
        return list;
    }

//    更新标签信息
    @Override
    public int updateTag(Tag tag) {
        return tagDao.updateTag(tag);
    }

//    根据ID删除标签
    @Override
    public int deleteTag(Long id) {
        return tagDao.deleteTag(id);
    }
}
