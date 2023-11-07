package com.joshi.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joshi.demo.model.Book;
import com.joshi.demo.repository.BookRepository;

@Service
public class BookDao {
	
	@Autowired
	BookRepository bookRepo;
	
	public void addBook(Book b) {
		bookRepo.save(b);
	}
	
	public List<Book> retrieveAll() {
		return bookRepo.findAll();
	}
	
	public Optional<Book> retriveByid(String bid) {
		return bookRepo.findById(bid);
	}
	
	public void delete(String bid) {
		Optional<Book> b1=retriveByid(bid);
		 bookRepo.deleteById(bid);
		
	}
	
	public int count() {
		return bookRepo.findAll().size();
	}
	
}
