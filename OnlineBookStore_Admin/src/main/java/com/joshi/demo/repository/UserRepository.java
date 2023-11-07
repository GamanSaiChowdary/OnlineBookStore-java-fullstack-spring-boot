package com.joshi.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joshi.demo.model.User;

public interface UserRepository extends JpaRepository<User, String>{

}
