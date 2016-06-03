package com.vdp.users.dao;

import com.vdp.users.model.Category;

import java.util.List;

public interface CategoryDAO {
    Category showOne(long id);
    List<Category> list();
    void  add(Category category);

}
