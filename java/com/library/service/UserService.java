package com.library.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.library.entity.User;
import com.library.repository.UserRepository;

@Transactional
@Service
public class UserService {
	@Autowired
	UserRepository userrepo;
	
	public boolean adduser(User user) {
		if(userrepo.existsByUsernameAndAgeAndContacts(user.getUsername(),user.getAge(),user.getContacts())) {
			return false;
		}
		userrepo.save(user);
		return true;
	}
	public boolean checkuser(String name,int age,int contacts) {
		if(userrepo.existsByUsernameAndAgeAndContacts(name,age,contacts)) {
			System.out.println("true");
			return true;
		}
		return false;
	}
	public User giveuser(String Username,int age, int contact) {
		User user=userrepo.findByUsernameAndAgeAndContacts(Username,age,contact);
		return user;
	}
	public User getUserByUserId(int userId) {
		return userrepo.findByUserId(userId);
	}
	public User giveuser(int userid) {
		return userrepo.findByUserId(userid);
	}

}
