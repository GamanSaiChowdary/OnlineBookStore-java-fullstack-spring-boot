package com.gaman.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaman.demo.model.Cart;

public interface CartRepository extends JpaRepository<Cart, Integer>{
}
