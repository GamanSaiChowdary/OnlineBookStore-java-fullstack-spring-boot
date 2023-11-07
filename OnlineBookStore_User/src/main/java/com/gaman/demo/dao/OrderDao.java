package com.gaman.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaman.demo.model.Order;
import com.gaman.demo.repository.OrderRepository;

@Service
public class OrderDao {
	
	@Autowired
	OrderRepository orderRepo;
	
	public void newOrder(Order o) {
		orderRepo.save(o);
	}
	
	public List<Order> getAllOrders() {
		return orderRepo.findAll();
	}
}
