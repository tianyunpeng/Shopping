package com.bean;

import java.util.HashSet;
import java.util.Set;

import com.bean.Book;
import com.bean.User;

public class Cart {
	private int cartId;
	private int bookId;
	private String name;
	private String author;
	private Float price;
	private int number;
	private Float addPrice;
	private int userId;
	private User user;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Float getAddPrice() {
		return addPrice;
	}
	public void setAddPrice(float addPrice) {
		this.addPrice = addPrice;
	}
	
	
}
