package com.joshi.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joshi.demo.model.Order;


public interface OrderRepository extends JpaRepository<Order, Integer>{

}
