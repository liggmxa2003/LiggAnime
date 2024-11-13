package com.lwz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//角色表
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Role {
    private Long id;
    private String name;
    private String roleKey;
}
