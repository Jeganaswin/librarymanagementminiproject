package com.library.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>{

	boolean existsByContacts(int contacts);
	boolean existsByUsernameAndAgeAndContacts(String username,int age,int contacts);
	User findByUsernameAndAgeAndContacts(String username,int age,int contacts);
	User findByUserId(int userid);
}
