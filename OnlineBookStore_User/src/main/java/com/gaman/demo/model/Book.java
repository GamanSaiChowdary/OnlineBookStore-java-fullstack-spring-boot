package com.gaman.demo.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Book {
	
	@Id
	String bookid;
	
	String name;
	
	String type;
		
	String genre;

	String author;
	
	String publish;
	
	@Column(length = 1000)
	String description;
	
	@Lob
	Blob image;
	
	double price;

	double rating;
	
	int peopleRated;
	
	int purchases;
	
	public String getBookid() {
		return bookid;
	}

	public void setBookid(String bookid) {
		this.bookid = bookid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublish() {
		return publish;
	}

	public void setPublish(String publish) {
		this.publish = publish;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public int getPeopleRated() {
		return peopleRated;
	}

	public void setPeopleRated(int peopleRated) {
		this.peopleRated = peopleRated;
	}

	public int getPurchases() {
		return purchases;
	}

	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}

	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", name=" + name + ", type=" + type + ", genre=" + genre + ", author="
				+ author + ", publish=" + publish + ", description=" + description + ", image=" + image + ", price="
				+ price + ", rating=" + rating + ", peopleRated=" + peopleRated + ", purchases=" + purchases + "]";
	}
	
	
}
