package com.gaman.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaman.demo.model.Cart;
import com.gaman.demo.repository.CartRepository;

@Service
public class CartDao {
	@Autowired
	CartRepository cartRepo;
	
	public void addToCart(Cart c) {
		cartRepo.save(c);
	}
	
	public List<Cart> getAllCartItems() {
		return cartRepo.findAll();
	}
	
	public void removeById(String bid, String uid) {
		
		int id = 0;
		
		List<Cart> cl = getAllCartItems();
		for(Cart i : cl) {
			if(i.getBookId().equals(bid) && i.getEmail().equals(uid)) {
				id = i.getCartId();
				break;
			}
		}
		
		cartRepo.deleteById(id);
	}
}
