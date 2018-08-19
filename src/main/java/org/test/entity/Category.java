package org.test.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @tips null  数据库对应的列段对应的实体类是引用类型来对应 Interger
 * 如果实体类使用 int  对应的null  应该是跟0判断
 */
@Data
public class Category {
    private int id;
    private String name;

    private List<Entity> entities = new ArrayList<>();
}
