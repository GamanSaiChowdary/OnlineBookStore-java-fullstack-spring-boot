package com.joshi.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joshi.demo.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, String>{
	
	Admin getById(String id);
}