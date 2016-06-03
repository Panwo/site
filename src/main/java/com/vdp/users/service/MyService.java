package com.vdp.users.service;


import com.vdp.users.dao.CategoryDAO;
import com.vdp.users.dao.OrdersDAO;
import com.vdp.users.dao.ProductsDAO;
import com.vdp.users.dao.UserDao;
import com.vdp.users.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MyService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private CategoryDAO categoryDAO;

    @Autowired
    private ProductsDAO productsDAO;

    @Autowired
    private OrdersDAO ordersDAO;

    //admin part---------------------------------------
    @Transactional
    public void deleteOneProduct(Products product){
        productsDAO.deleteOne(product);
    }

    @Transactional
    public void deleteManyProducts(long [] toDelete){
        productsDAO.deleteMany(toDelete);
    }

     @Transactional(readOnly = false)
    public void addProduct(Products product){
        productsDAO.addProduct(product);
    }

    @Transactional
    public  List <Products> displayProducts(){
      return   productsDAO.listall();
    }

    @Transactional
    public void  addCategory(Category category){
        categoryDAO.add(category);
    }


     // end of admin part---------------------------------------

    @Transactional
    public  List<Products> findManyProducts (long [] toAdd){
        return productsDAO.findMany(toAdd);
    }

    @Transactional
    public  byte [] getImg(long id ) {
        return productsDAO.getImage(id);
    }

    @Transactional
    public Products getOneProduct(long id ){
        return productsDAO.findOne(id);
    }


    @Transactional
    public void updateUser(User user){
        userDao.update(user);
    }

    @Transactional
    public List<User> allUsers(){
        return userDao.listall();
    }

    @Transactional
    public void RegisterUser(User user, UserRole role){
        userDao.registerNew(user, role);
    }

    @Transactional(readOnly = true)
    public com.vdp.users.model.User findUserByUsername(String username){
        User user = userDao.findByUserName(username);
        return user;
    }

    @Transactional(readOnly =  true)
    public Category find(long id ){
        return categoryDAO.showOne(id);
    }

    @Transactional(readOnly=true)
    public List<Category> listGroups() {
        return categoryDAO.list();
    }

    @Transactional(readOnly = true)
    public  List<Products> listProducts (Category category){
        return productsDAO.list(category);
    }


    // ----------------  Orders --------------------------------------------
     @Transactional
    public void addOrder(Orders order){
         ordersDAO.AddOrder(order);
     }


    @Transactional
    public List<Orders> viewAllOrders(){
      return     ordersDAO.showAllOrders();
    }

  // ------------------END ORDERS -------------------------------------------
}
