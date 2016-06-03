package com.vdp.users.model;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "users")
public class User {

	@Id
	@Column(name = "username", unique = true, nullable = false, length = 45)
	private String username;
	@Column(name = "password", nullable = false, length = 60)
	private String password;
	@Column(name = "enabled", nullable = false)
	private boolean enabled;
	@Column(name  = "email")
	private String email;
	@Column(name = "phone")
	private String phone;
	@Column(name = "name")
	private  String name;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user", cascade=CascadeType.ALL)
	private Set<UserRole> userRole = new HashSet<UserRole>(0);

	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable(
 			name = "users_product",
			joinColumns ={@JoinColumn (name = "users_username",  referencedColumnName = "username")},
			inverseJoinColumns = {@JoinColumn(name = "Products_idProducts", referencedColumnName = "idProducts")}
	)

	Set<Products> productsSet = new TreeSet<Products>();

	public User() {
	}

	public User(String username, String password, boolean enabled) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
	}

	public User(String username, String password, boolean enabled, String email, String phone, String name) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.email = email;
		this.phone = phone;
		this.name = name;
	}

	public User(String username, String password, boolean enabled, Set<UserRole> userRole) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.userRole = userRole;
	}
	public String getUsername() {
		return this.username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}


	public Set<UserRole> getUserRole() {
		return this.userRole;
	}

	public void setUserRole(Set<UserRole> userRole) {
		this.userRole = userRole;
	}

	public Set<Products> getProductsSet() {
		return productsSet;
	}

	public void setProductsSetAddall(List<Products> productsList) {
		this.productsSet.addAll(productsList);
	}
	public void setProductsSet(Set<Products> productsList) {
		this.productsSet = productsList;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getAmount(Set<Products> set){
		Integer amount = 0;
		for (Products products : set) {
			amount+= Integer.parseInt(products.getPrice());
		}
		return amount;
	}

	public String getProductsDescription(){
		String result = "";
		for (Products products : productsSet) {
			result += products.getDescription() + ", ";
		}
		return result;
	}

	public void clearSet(){
		this.productsSet.clear();
	}


}
