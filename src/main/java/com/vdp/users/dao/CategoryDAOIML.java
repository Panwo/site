package com.vdp.users.dao;

import com.vdp.users.model.Category;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;



@Repository
public class CategoryDAOIML  implements CategoryDAO {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
     public Category showOne(long id){
        return  entityManager.find(Category.class, id);
    }

    @Override
    public List<Category> list() {
        Query query = entityManager.createQuery("select  c FROM Category c", Category.class);
        return (List<Category>) query.getResultList();
    }

    public void add(Category category){
        entityManager.persist(category);
    }
}
