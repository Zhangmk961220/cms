package org.test.entity;

import lombok.Data;

@Data
public class Entity {
    private int id;
    private int categoryId;
    private String name;
    private String type;
}
