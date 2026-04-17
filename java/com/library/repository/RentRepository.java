package com.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.library.entity.Rent;
import com.library.entity.User;

public interface RentRepository extends JpaRepository<Rent,Integer> {
	
	List<Rent> findByUser(User user);
	Rent findByRentId(int rentId);
}
