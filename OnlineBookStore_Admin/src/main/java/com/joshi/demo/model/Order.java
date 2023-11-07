package com.joshi.demo.model;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int orderId;
	
	String email;
	
	String adderss;
	
	String city;
	
	long pincode;
	
	double phno;
	
	String bookId;
	
	String bookName;
	
	String bookAuthor;
	
	String bookGenre;
	
	double bookPrice;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdderss() {
		return adderss;
	}

	public void setAdderss(String adderss) {
		this.adderss = adderss;
	}

	public long getPincode() {
		return pincode;
	}

	public void setPincode(long pincode) {
		this.pincode = pincode;
	}

	public double getPhno() {
		return phno;
	}

	public void setPhno(double phno) {
		this.phno = phno;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public String getBookGenre() {
		return bookGenre;
	}

	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}

	public double getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", email=" + email + ", adderss=" + adderss + ", city=" + city
				+ ", pincode=" + pincode + ", phno=" + phno + ", bookId=" + bookId + ", bookName=" + bookName
				+ ", bookAuthor=" + bookAuthor + ", bookGenre=" + bookGenre + ", bookPrice=" + bookPrice + "]";
	}
	
	

	
}
