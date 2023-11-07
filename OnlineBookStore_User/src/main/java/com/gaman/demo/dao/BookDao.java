package com.gaman.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaman.demo.model.Book;
import com.gaman.demo.repository.BookRepository;

@Service
public class BookDao {
	
	@Autowired
	BookRepository bookRepo;
	
	public List<Book> getBooks() {
		return bookRepo.findAll();
	}
	
	public Optional<Book> retrieveBookById(String bid) {
		return bookRepo.findById(bid);
	}
	
}
