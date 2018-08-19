package org.test.dao;

import org.springframework.stereotype.Repository;
import org.test.entity.Category;
import org.test.entity.Entity;

import java.util.List;

/**
 * @author marshmello
 * @apiNote CategoryDao
 * @tips  @Repository将DAO类声明为Bean
 * */
@Repository
public interface CategoryDao {
    List<Category> getCategories();
    List<Entity> getEntities();


    public  int updateCategorys(Category categorys);
    public void addCategorys(Category categorys);
    Category findById(int id);
    int deleteCategorys(String id);
    int deleteChildCategorys(String id);
}
