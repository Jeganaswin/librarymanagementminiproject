package com.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.library.entity.User;
import com.library.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	UserService usser;

	public UserController() {
		System.out.println("user controler created");
	}
	@RequestMapping("/home")
	public String homepage() {
		return "index";
	}
	@RequestMapping("/adduser")
	public String addUser() {
		return "adduserform";
	}
	@PostMapping("/save")
	public String saveUser(@ModelAttribute User user) {
		if(!usser.adduser(user)) {
			System.out.println(user.getUsername());
			return "useralreadyexists";
		}
		return "useraddedsuccess";
	}
}
