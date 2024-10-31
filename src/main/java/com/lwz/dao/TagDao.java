package com.lwz.dao;

import com.lwz.pojo.Tag;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface TagDao {

    int saveTag(Tag tag);

    Tag getTag(Long id);

    Tag getTagByName(String name);

    List<Tag> getAllTag();

    List<Tag> getBlogTag();  //首页展示番剧标签

    int updateTag(Tag tag);

    int deleteTag(Long id);
}
