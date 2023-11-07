package com.gaman.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gaman.demo.model.Book;

public interface BookRepository extends JpaRepository<Book, String>{
	
}
