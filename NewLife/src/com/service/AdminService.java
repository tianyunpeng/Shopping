package com.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//这个servlet里是所有方法的声明，其具体实现在接口类里
import com.Dao.AdminDao;
import com.bean.Address;
import com.bean.Book;
import com.bean.Orders;
import com.bean.Page;
import com.bean.User;
@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public AdminDao getAdminrDao() {
		return adminDao;
	}
	
	//*****	admin login function
	public boolean adminLogin(String username,String password) {	
		boolean flag=adminDao.select(username, password);
		
		return flag;
	}
	
	//*****	show book
	public List<Book> showBook(Page page){
		System.out.println("AdminService.showBook运行成功！");
		List<Book> booklist=adminDao.selectAllBook(page);
		
		return booklist;
	}
	
	public List<Book> showBook1(Page page){
		System.out.println("AdminService.showBook运行成功！");
		List<Book> booklist=adminDao.selectAllBook1(page);
		
		return booklist;
	}
	
	public List<Book> showBook2(Page page){
		System.out.println("AdminService.showBook运行成功！");
		List<Book> booklist=adminDao.selectAllBook2(page);
		
		return booklist;
	}
	
	//*****	update book -> selectBookId
	public Book selectBookId(int id) {
		Book book=adminDao.selectBookId(id);
		return book;
	}
	
	//***** update book submit -> updatebook
	public boolean updateBook(Book book) {
		
		boolean flag=adminDao.updatebook(book);
		if(flag) {
		return true;
		}
		else {
			return false;
		}
	}
	
	//***** delete book
	public boolean deleteBook(int id) {		
		boolean flag=adminDao.deleteBook(id);
		if(flag) {
			return true;
			}
			else {
				return false;
			}
	}
	
	//***** insert book
	public boolean insertBook(Book book) {
		boolean flag=adminDao.insertBook(book);
		if(flag) {
			return true;
			}
			else {
				return false;
			}
	}
	
	//*****	show user
		public List<User> showUser(){
			System.out.println("AdminService.showUser运行成功！");
			List<User> userlist = adminDao.selectAllUser();
			
			return userlist;
		}

	//***** insert user
		public boolean insertUser(User user) {
			boolean flag=adminDao.insertUser(user);
			if(flag) {
				return true;
				}
				else {
					return false;
				}
		}

		public boolean deleteUser(Integer id) {
			boolean flag=adminDao.deleteUser(id);
			if(flag) {
				return true;
				}
				else {
					return false;
				}
		}

		public List<Orders> showOrders(Page page) {
			List<Orders> list = adminDao.showOrders(page);
			return list;
		}

		public boolean confirmOrders(Integer orderId) {
			// TODO Auto-generated method stub
			boolean flag = adminDao.confirmOrders(orderId);
			return flag;
		}

		public List<Book> findBookId(int bookId) {
			List<Book> list = adminDao.findBookId(bookId);
			
			return list;
		}

		public Orders selectOrder(int orderId) {
			// TODO Auto-generated method stub
			Orders orders = adminDao.selectOrder(orderId);
			return orders;
		}

		public Address lookAddress(int addressId) {
			Address address = new Address();
			address = adminDao.lookAddress(addressId);
			return address;
		}

		public User selectUser(int userId) {
			// TODO Auto-generated method stub
			User user = new User();
			user = adminDao.selectUser(userId);
			return user;
		}

		public Long getCount() {
			// TODO Auto-generated method stub
			Long totalCount = adminDao.getCount();
			return totalCount;
		}
		
		public List<Orders> findName(String name) {
			List<Orders> list = adminDao.findName(name);
			
			return list;
		}

		public User selectUserName(String name) {
			// TODO Auto-generated method stub
			User user = new User();
			user = adminDao.selectUserName(name);
			return user;
		}
}
