package com.library.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.library.entity.Books;
import com.library.service.BookService;

@org.springframework.stereotype.Controller
public class BkController {
	@Autowired
	BookService bkservice;
	
	 public BkController() {
		 System.out.println("controller");
	 }
	 
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/addBook")
	public String addbook() {
		return "addbooks";
	}
	@PostMapping("/addBook")
	public String addbook(@ModelAttribute Books book) {
		System.out.println(book.getBkname());
		System.out.println(book.getBkauthor());
		System.out.println(book.getCount());
		if(!bkservice.addbook(book)){
			return "bkalreadyexists";
		}
		return "success";
	}
	@GetMapping("/home")
	public String index2() {
		return "index";
	}
	@GetMapping("/listBooks")
	public String listbooks(Model model) {
		
		List<Books> books=bkservice.allbooks();
		model.addAttribute("books",books);
		
		return "listbooks";
	}
		
	

}	


