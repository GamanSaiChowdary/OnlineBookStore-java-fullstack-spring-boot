package com.joshi.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joshi.demo.model.Book;

public interface BookRepository extends JpaRepository<Book, String>{

}
