package com.lwz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//菜单表
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Menu {
    private Long id;
    private String permissions;
    private String menuName;
}

