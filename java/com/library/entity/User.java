package com.library.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table(name="User")
public class User {
	
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="userId")
	private int userId;
	
	@Column(name="username")
	private String username;
	
	@Column(name="contacts")
	private int contacts;
	
	public int getContacts() {
		return contacts;
	}

	public void setContacts(int contacts) {
		this.contacts = contacts;
	}

	public User(int userId, String username, int age,int contacts) {
		super();
		this.userId = userId;
		this.username = username;
		this.age = age;
		this.contacts=contacts;
	}

	public User() {
	
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Column(name="age")
	private int age;
	

}
