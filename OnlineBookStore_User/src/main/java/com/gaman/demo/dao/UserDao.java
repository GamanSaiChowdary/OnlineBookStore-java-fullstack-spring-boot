package com.gaman.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.gaman.demo.model.User;
import com.gaman.demo.repository.UserRepository;

@Service
public class UserDao {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
    private BCryptPasswordEncoder passwordEncoder;
	
	public boolean checkUserExistingOrNot(String email) {
		return userRepo.existsById(email); 
	}
	
	public void registerNewUser(User u1) {
		String encrypted = passwordEncoder.encode(u1.getPassword());
		u1.setPassword(encrypted);
		userRepo.save(u1);
	}
	
	public User getUserByEmail(String email) {
		return userRepo.getById(email);
	}
	
	public boolean authenticateUser(User u1, User u2) {
		return passwordEncoder.matches(u1.getPassword(), u2.getPassword());
	}
	
}
