package com.library.entity;

import org.springframework.stereotype.Component;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Books")
@Component
public class Books {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Bkid")
	private int bkid;
	@Column(name="Bkname")
	private String bkname;
	@Column(name="Bkauthor")
	private String bkauthor;
	public static int fine=5;

	@Column(name="count")
	private int count;
	public String getBkname() {
		return bkname;
	}
	public void setBkname(String bkname) {
		this.bkname = bkname;
	}
	public String getBkauthor() {
		return bkauthor;
	}
	public void setBkauthor(String bkauthor) {
		this.bkauthor = bkauthor;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Books(String bkname, String bkauthor, int count) {
		super();
		this.bkname = bkname;
		this.bkauthor = bkauthor;
		this.count = count;
	}
	
	public Books() {

	}
	public int getBkid() {
		return bkid;
	}
	public void setBkid(int bkid) {
		this.bkid = bkid;
	}

}
