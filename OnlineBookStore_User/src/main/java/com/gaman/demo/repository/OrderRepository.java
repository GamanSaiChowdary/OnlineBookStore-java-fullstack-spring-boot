package com.gaman.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaman.demo.model.Order;

public interface OrderRepository extends JpaRepository<Order, Integer>{

}
