package com.vdp.users.dao;

import com.vdp.users.model.Orders;

import java.util.List;

public interface OrdersDAO {

    public  void AddOrder(Orders order);
    public List<Orders> showAllOrders();

}
