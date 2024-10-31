package com.lwz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 把番剧和标签关系存到数据库中使用的类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnimeAndTag {

    private Long tagId;

    private Long blogId;
}
