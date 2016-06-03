package com.vdp.users.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name = "orders")
public class Orders {

    @Id
    @Column (name = "id")
    private long id;


    @Column (name = "amount")
    private Integer amount;

    @Column(name = "name")
    private String name;

    @Column(name= "list")
    private String list;

    @Column(name ="phone")
    private String phone;

    @Column(name = "creationtime")
    String creationtime;

    public Orders() {}

    public Orders(Integer amount) {
        this.amount = amount;
    }

    public Orders(Integer amount, String name, String list ,String phone) {
        this.amount = amount;
        this.name = name;
        this.list = list;
        this.phone = phone;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getList() {
        return list;
    }

    public void setList(String list) {
        this.list = list;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void SetcreationTime(){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
      this.creationtime =   simpleDateFormat.format(new Date());
    }


    public String getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(String creationtime) {
        this.creationtime = creationtime;
    }
}
