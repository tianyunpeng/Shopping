package com.bean;

public class OrderDetail {
	private Integer order_detail_id;
	private Integer order_id;
	private int user_id;
	private String book_name;
	private float book_price;
	private float book_addprice;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Integer getOrder_detail_id() {
		return order_detail_id;
	}
	public void setOrder_detail_id(Integer order_detail_id) {
		this.order_detail_id = order_detail_id;
	}
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public float getBook_price() {
		return book_price;
	}
	public void setBook_price(float book_price) {
		this.book_price = book_price;
	}
	public float getBook_addprice() {
		return book_addprice;
	}
	public void setBook_addprice(float book_addprice) {
		this.book_addprice = book_addprice;
	}
	private Integer count;
	
	public Integer getDetailId(){
		return order_detail_id;
	}
	public void setDetailId(Integer detailId){
		this.order_detail_id = detailId;
	}
	public Integer getId(){
		return order_id;
	}
	public void setId(Integer id){
		this.order_id = id;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	
}
