package com.library.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="Rent")
public class Rent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="rentId")
    private int rentId;

    @ManyToOne
    private User user;

    @ManyToOne
    private Books book;
    
    private int fineamount;

    public int getFineamount() {
		return fineamount;
	}
	public void setFineamount(int fineamount) {
		this.fineamount = fineamount;
	}
	public Rent(User user, Books book, int quantity) {
		super();
		this.user = user;
		this.book = book;
		this.quantity = quantity;
	}
    public Rent() {
  		
  	}

	public int getRentId() {
		return rentId;
	}

	public void setRentId(int rentId) {
		this.rentId = rentId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Books getBook() {
		return book;
	}

	public void setBook(Books book) {
		this.book = book;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public LocalDate getRentDate() {
		return rentDate;
	}

	public void setRentDate(LocalDate rentDate) {
		this.rentDate = rentDate;
	}

	public LocalDate getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(LocalDate returnDate) {
		this.returnDate = returnDate;
	}

	private int quantity;

    private LocalDate rentDate;

    private LocalDate returnDate;
    
    private String status;

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
