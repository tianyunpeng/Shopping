package com.Dao;

import java.util.List;

import com.bean.Address;
import com.bean.Book;
import com.bean.Cart;
import com.bean.Orders;
import com.bean.User;


public interface UserDao {
	public User select(String username,String password);
	
	public Book selectBookId(int id);
	public List<Book> findBookId(int id);
	public List<Book> findBookKid(int id);
	public boolean addBookCart(Book book,int text1,int userId);

	public boolean selectUserName(String userName);
	public boolean regist(User user);
	
	public boolean selectBookCart(int id,int userId);
	public boolean updateBookCart(int id,int text,int userId);

	public List<Cart> showCart(int userId);

	public boolean selectAddress(int userId);

	public Cart selectCart(Integer cartId);

	public boolean addOrders(Cart cart,int userId);
	public boolean updateCart(Cart cart);
	public boolean deleteCart(int[] cartId);

	public List<Orders> showOrders(int userId);

	public boolean setAddress(User u,String province,String city,String town,String street);

	public Address lookAddress(int cartId);

	public Orders selectOrder(Integer orderId);

	public boolean updateOrders(Orders orders, int count);

	public boolean deleteOrders(int ids);

	public void deleteNoAddressUser(User u);

}
