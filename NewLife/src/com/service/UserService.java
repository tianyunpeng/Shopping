package com.service;

import com.Dao.UserDao;
import com.bean.Address;
import com.bean.Book;
import com.bean.Cart;
import com.bean.Orders;
import com.bean.User;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	//*****	user login function
		public User userLogin(String username,String password) {	
			User user=userDao.select(username, password);
			
			return user;
		}
	
	//***** select book 
		public Book selectBookId(int id) {
			Book book = userDao.selectBookId(id);
			
			return book;
		
	}
		
	//***** select book 
		public List<Book> findBookId(int id) {
			List<Book> list = userDao.findBookId(id);
					
					return list;
				
			}
				
	//***** select book 
		public List<Book> findBookKid(int id) {
					List<Book> list = userDao.findBookKid(id);
					
					return list;
				
			}
		
	//***** add book cart 
		public boolean addBookCart(Book book,int text1,int userId) {
			boolean flag=userDao.addBookCart(book,text1,userId);
			if(flag) {
				return true;
				}
				else {
					return false;
				}
			
		}

		public boolean selectUserName(String userName) {
			// TODO Auto-generated method stub
			boolean flag = userDao.selectUserName(userName);
			return flag;
		}
		
		public boolean regist(User user) {
			System.out.println("service成功执行");
			boolean flag = userDao.regist(user);
			return flag;
		}
		
		//***** select book cart
		public boolean selectBookCart(int id,int userId) {
				boolean flag  = userDao.selectBookCart(id,userId);
					
					return flag;
				
			}
				
		//***** update book cart
		public boolean updateBookCart(int id,int text,int userId) {
			boolean flag  = userDao.updateBookCart(id,text,userId);
					
					return flag;
				
			}

		public List<Cart> showCart(int userId) {
			// TODO Auto-generated method stub
			List<Cart> list = userDao.showCart(userId);
			return list;
		}

		public boolean selectAddress(int userId) {
			boolean flag = userDao.selectAddress(userId);
			
			return flag;
		}

		public Cart selectCart(Integer cartId) {
			// TODO Auto-generated method stub
			Cart cart = userDao.selectCart(cartId);
			return cart;
			
		}	
		public Orders selectOrder(Integer orderId) {
			// TODO Auto-generated method stub
			Orders orders = userDao.selectOrder(orderId);
			return orders;
			
		}	
		
		public boolean addOrders(Cart cart,int userId) {
			// TODO Auto-generated method stub
			boolean flag = userDao.addOrders(cart,userId);
			return flag;
			
		}
		
		public boolean updateCart(int cartId,int count) {
			// TODO Auto-generated method stub
			Cart cart = userDao.selectCart(cartId);
			cart.setNumber(count);
			cart.setAddPrice(cart.getPrice()*count);
			boolean flag = userDao.updateCart(cart);
			return flag;
			
		}

		public boolean deleteCart(int[] id) {
			// TODO Auto-generated method stub
			boolean flag = userDao.deleteCart(id);
			return flag;
		}
		
		public List<Orders> showOrders(int userId){
			List<Orders> list = userDao.showOrders(userId);
			return list;
			
			
		}
		public boolean setAddress(User u,String province,String city,String town,String street) {
			
			boolean flag = userDao.setAddress(u,province,city,town,street);
			return flag;
		}
		
		public Address lookAddress(int addressId) {
			Address address = new Address();
			address = userDao.lookAddress(addressId);
			return address;
		}

		public boolean updateOrders(Orders orders, int count) {
			boolean flag = userDao.updateOrders(orders,count);
			return flag;
		}

		public boolean deleteOrders(int ids) {
			boolean flag = userDao.deleteOrders(ids);
			return flag;
		}

		public void deleteNoAddressUser(User u) {
			userDao.deleteNoAddressUser(u);
			
		}
}
