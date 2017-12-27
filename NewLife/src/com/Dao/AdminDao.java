package com.Dao;

import java.util.List;

import com.bean.Address;
import com.bean.Book;
import com.bean.Orders;
import com.bean.Page;
import com.bean.User;

public interface AdminDao {
	public boolean select(String username,String password);
	
	//show all book
	public List<Book> selectAllBook(Page page);
	public List<Book> selectAllBook1(Page page);
	public List<Book> selectAllBook2(Page page);
	
	//operate book 
	public Book selectBookId(int id);
	public boolean updatebook(Book book);
	public boolean deleteBook(int id);
	public boolean insertBook(Book book);
	
	//show all user
	public List<User> selectAllUser();
	public boolean insertUser(User user);
	public boolean deleteUser(int id);

	public List<Orders> showOrders(Page page);

	public boolean confirmOrders(int orderId);

	public List<Book> findBookId(int bookId);
	public List<Orders> findName(String name);

	public Orders selectOrder(int orderId);

	public Address lookAddress(int addressId);

	public User selectUser(int userId);

	public Long getCount();

	public User selectUserName(String name);
	
}
