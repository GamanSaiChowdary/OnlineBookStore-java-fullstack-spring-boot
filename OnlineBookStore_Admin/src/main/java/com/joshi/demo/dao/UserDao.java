package com.joshi.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joshi.demo.model.User;
import com.joshi.demo.repository.UserRepository;

@Service
public class UserDao {
	@Autowired
	UserRepository userRepo;
	
	public List<User> getAllUser() {
		return userRepo.findAll();
	}
	
	public int count() {
		return userRepo.findAll().size();
	}
}
