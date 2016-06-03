package com.vdp.users.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "products")
public class Products implements Serializable , Comparable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idProducts")
    private long id;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private String price;

    @Column(name = "image")
    private byte [] image;

    public Products() {
    }

    public Products(String description, String price, byte[] image) {
        this.description = description;
        this.price = price;
        this.image = image;
    }

    public Products(String description, String price, byte[] image, List<Category> categories) {
        this.description = description;
        this.price = price;
        this.image = image;
        this.categories = categories;
    }

    @ManyToMany(mappedBy = "productsSet")
    List<User> usersList = new ArrayList<User>();


    @ManyToMany
    @JoinTable(
       name = "category_products",
            joinColumns ={@JoinColumn (name = "Products_idProducts", referencedColumnName = "idProducts")},
            inverseJoinColumns = {@JoinColumn(name = "category_id", referencedColumnName = "id")}
    )
        List<Category> categories = new ArrayList<Category>();


    @Override
    public int compareTo(Object o) {

        Products another = (Products) o;
        if (this.id == another.id) return 0;

        else return 1;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public long getId() {
        return id;
    }

    public String getPrice() {
        return price;
    }

    public byte[] getImage() {
        return image;
    }

    public void clearcategory(){
        categories.clear();
    }
}
