package com.vdp.users.dao;


import com.vdp.users.model.Orders;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;


@Repository
public class OrdersDAOIMPL implements OrdersDAO {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void AddOrder(Orders order) {
        entityManager.merge(order);
    }

    @Override
    public List<Orders> showAllOrders() {
        Query query;
        query = entityManager.createQuery("select o from  Orders o");
        return (List<Orders>) query.getResultList();
    }
}
