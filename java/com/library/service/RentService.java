package com.library.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.library.entity.Books;
import com.library.entity.Rent;
import com.library.entity.User;
import com.library.repository.BookRepository;
import com.library.repository.RentRepository;
import com.library.repository.UserRepository;

@Transactional
@Service
public class RentService {
	
	@Autowired
	UserRepository userrepo;
	@Autowired
	BookRepository bookrepo;
	@Autowired
	RentRepository rentrepo;
	
	public void createRent(int userid, int bookid, int quantity) {
		Books book=bookrepo.findByBkid(bookid);
		User user=userrepo.findByUserId(userid);
	    if (book == null || user == null) {
	        throw new RuntimeException("User or Book not found");
	    }

	    if (book.getCount() < quantity) {
	        throw new RuntimeException("Not enough stock available");
	    }
		int count=book.getCount();
		count =count-quantity;
		book.setCount(count);
		bookrepo.save(book);
		Rent rent=new Rent(user,book,quantity);
		rent.setRentDate(LocalDate.now());
		rent.setReturnDate(LocalDate.now().plusDays(30));
		rent.setStatus("RENTED");
		
		rentrepo.save(rent);
		
		
	}
	public void saverent(Rent rent) {
		rentrepo.save(rent);
	}

	public List<Rent> getAllRents() {
		return rentrepo.findAll();
		
	}
	public List<Rent> returnrent(User user){
		List<Rent> rents=rentrepo.findByUser(user);
		return rents;
	}
	public Rent getrent(int rentid) {
		return rentrepo.findByRentId(rentid);
	}

}
