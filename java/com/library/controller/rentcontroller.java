package com.library.controller;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.entity.Books;
import com.library.entity.Rent;
import com.library.entity.User;
import com.library.service.BookService;
import com.library.service.RentService;
import com.library.service.UserService;

@Controller
@RequestMapping("/rent")
public class rentcontroller {
	
	@Autowired
	BookService bkservice;
	@Autowired
	UserService usser;
	@Autowired
	RentService rentser;
	
	
	public rentcontroller() {
		System.out.println("rentcontroller created");
	}
	
	@RequestMapping("/rentbook")
	public String rentbook() {
		return "userverify";
	}
	
	@PostMapping("/verify")
	public String rentbooks(@RequestParam("username") String Username,@RequestParam("age")int age,@RequestParam("contact") int contact,Model model) {
		
		if(usser.checkuser(Username,age,contact)) {
			List<Books> books=bkservice.allbooks();
			model.addAttribute("books",books);
			User user=usser.giveuser(Username,age,contact);
			model.addAttribute("user",user);
			return "rentuser";
		}
		
		return "nouserfound";
		
	
	}
	
	@PostMapping("/save")
	public String renting(@RequestParam int userId,
            @RequestParam int bookId,
            @RequestParam int quantity,Model model) {
		try {
	   rentser.createRent(userId,bookId,quantity);
	   model.addAttribute("userId",userId );
	   return "rentsuccessfuljsp";
		}
		catch(Exception e) {
			return "rentuser";
		}
		
	}
	@GetMapping("/verify")
	public String rentPage(@RequestParam int userId, Model model) {

	    User user = usser.getUserByUserId(userId);
	    List<Books> books = bkservice.allbooks();

	    model.addAttribute("user", user);
	    model.addAttribute("books", books);

	    return "rentuser";
	}
	@GetMapping("/details")
	public String showRentDetails(Model model) {

	    List<Rent> rents = rentser.getAllRents();

	    model.addAttribute("rents", rents);

	    return "rentdetails";
	}
	
	@GetMapping("/returncheck")
	public String returnverify() {
		return "returnverify";
	}
	@PostMapping("/returnBook")
	public String returnBok(@RequestParam("rentId") int rentId,Model model){
		Rent rent=rentser.getrent(rentId);
		rent.setStatus("RETURNED");
		rentser.saverent(rent);
		Books book=rent.getBook();
		book.setCount(rent.getQuantity()+book.getCount());
		bkservice.savebook(book);
		model.addAttribute("userId",rent.getUser().getUserId());
		return "returnsuccessfull";
		
	}
	@GetMapping("/returnbook")
	public String redreturn(@RequestParam("userId") int userid,Model model) {
		User user=usser.giveuser(userid);
		List<Rent> rents=rentser.returnrent(user);
		model.addAttribute("user",user);
		model.addAttribute("rents",rents);
		model.addAttribute("today", LocalDate.now());
		LocalDate today = LocalDate.now();

		for (Rent r : rents) {

		    if (r.getReturnDate().isBefore(today)) {

		        int days = (int) ChronoUnit.DAYS.between(r.getReturnDate(), today);

		        int fine = days * Books.fine; // your fixed fine

		        r.setFineamount(fine);

		    } else {
		        r.setFineamount(0);
		    }
		    rentser.saverent(r);
		}
		
		
		return "returnmain";
		
	}
	@PostMapping("/return")
	public String returnbk(@RequestParam("username") String Username,@RequestParam("age")int age,@RequestParam("contact") int contact,Model model)  {
		User user=usser.giveuser(Username,age,contact);
		if(user!=null) {
		List<Rent> rents=rentser.returnrent(user);
		model.addAttribute("user",user);
		model.addAttribute("rents",rents);
		model.addAttribute("today", LocalDate.now());
		LocalDate today = LocalDate.now();

		for (Rent r : rents) {

		    if (r.getReturnDate().isBefore(today)) {

		        int days = (int) ChronoUnit.DAYS.between(r.getReturnDate(), today);

		        int fine = days * Books.fine; // your fixed fine

		        r.setFineamount(fine);

		    } else {
		        r.setFineamount(0);
		    }
		    rentser.saverent(r);
		}
		}
		else {
			return "nouserfound";
		}
		
		return "returnmain";
		
		
	}
	

}
