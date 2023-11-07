package com.gaman.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaman.demo.model.User;

public interface UserRepository extends JpaRepository<User, String>{
	public User getById(String email);
}
