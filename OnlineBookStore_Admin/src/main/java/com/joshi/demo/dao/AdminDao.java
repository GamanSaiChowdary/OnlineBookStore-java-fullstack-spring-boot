package com.joshi.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joshi.demo.model.Admin;
import com.joshi.demo.repository.AdminRepository;

@Service
public class AdminDao {
	
	@Autowired
	AdminRepository adminRepo;
	
	public void newAdmin(Admin a) {
		adminRepo.save(a);
	}
    
	public List<Admin> showall() {
		return adminRepo.findAll();
	}
	
	public Admin validateAdmin(String uname) {
		Admin a = adminRepo.getById(uname);
		return a;
	}
	
	
}
