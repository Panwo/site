package com.vdp.users.dao;

import com.vdp.users.model.Category;
import com.vdp.users.model.Products;

import java.util.List;

public interface ProductsDAO {
    List<Products> list (Category category);
    List<Products> listall();
    void  deleteOne(Products products);
    void deleteMany(long [] toDelete );
    void addProduct(Products products);
    List<Products> findMany(long [] toAdd);
    byte[] getImage(long id );
    Products findOne(long id);

}
