package com.vdp.users.dao;
import com.vdp.users.model.Category;
import com.vdp.users.model.Products;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import sun.dc.pr.PRError;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductsDAOImpl implements  ProductsDAO  {

    @PersistenceContext
    private EntityManager entityManager;


//user ------------------------------------------------------------------
    @Override
    public List<Products> list (Category category) {
        Query query;
        query = entityManager.createQuery("select  p from Products p join p.categories c where  c.id = :idCategory", Products.class);
        query.setParameter("idCategory", category.getId());

        return (List<Products>) query.getResultList();
    }
    //-----------------------------------------------------------------------



    // admin otions ----------------------------------------------------------
    @Override
    public  void deleteOne(Products product){
        entityManager.remove(product);
    }


    @Override
    public void deleteMany(long [] toDelete){
       Products product;
        for (long l : toDelete) {
            product = entityManager.find(Products.class, l);
            product.clearcategory();
            entityManager.remove(product);
        }
    }



    @Override
    public  void addProduct(Products product){
        entityManager.persist(product);
    }


    @Override
    public List<Products> listall(){
        Query query;
        query = entityManager.createQuery("select p From Products p");
        return( List<Products>) query.getResultList();

    }

    //------------------------------------------------------------------------


    @Override
    public byte[] getImage(long id ) {
        Products product = entityManager.find(Products.class, id);
        return  product.getImage();
    }

    @Override
    public Products findOne(long id) {
        Products product = entityManager.find(Products.class, id);
        return product;
    }

    @Override
    public List<Products> findMany(long[] toAdd) {
        Query query = null;
        List<Products> list = new ArrayList<Products>();
          for (long l : toAdd) {
              query =  entityManager.createQuery("select p from Products p where p.id  = :idProd", Products.class);
              query.setParameter("idProd", l);

              list.addAll ((List<Products>)query.getResultList());
          }
          System.out.println(list);
          System.out.println(list);

         return list;
    }
}
