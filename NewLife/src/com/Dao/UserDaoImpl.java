package com.Dao;

import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;


import com.bean.Book;
import com.bean.Cart;
import com.bean.Address;
import com.bean.Admin;
import com.bean.Orders;
import com.bean.User;
import com.bean.kind;
import com.hibernate.hibernateUtil;
@Repository 
public class UserDaoImpl  implements UserDao{

	@Override
	public User select(String username, String password) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        System.out.println("用户输入的账号密码是"+username+password);
		Query query = session.createQuery("from User where name=? and password=?");
        query.setParameter(0, username);
        query.setParameter(1, password);
        
        Query q = session.createQuery("from User where email=? and password=?");
        q.setParameter(0, username);
        q.setParameter(1, password);
        
        User user = (User)query.uniqueResult();
        User u = (User)q.uniqueResult();
        tran.commit();
        session.close();
        
        if(user != null) {
        	System.out.println("用户登录成功！");
        	return user;
        }else {
        	if(u != null) {
        		return u;
        	}
        	else {
        	System.out.println("用户名或密码错误，用户登录失败。");
        	return null;
        	}
        }
	}
	
	@Override
	public Book selectBookId(int id) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book where bookId=?");
        query.setParameter(0, id);
        Book book = (Book) query.uniqueResult();
        
        tran.commit();
        session.close();
		return book;
	}
	
	@Override
	public List<Book> findBookId(int id) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book where bookId=?");
        query.setParameter(0, id);
        List<Book> list = query.list();
        
        tran.commit();
        session.close();
		return list;
	}

	@Override
	public List<Book> findBookKid(int id) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book where kindId=?");
        query.setParameter(0, id);
        List<Book> list = query.list();
        
        tran.commit();
        session.close();
		return list;
	}
	
	@Override
	public boolean addBookCart(Book book,int text1,int userId) {
		// TODO Auto-generated method stub
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Cart c = new Cart();
        c.setName(book.getName());
        c.setBookId(book.getBookId());
        c.setAuthor(book.getAuthor());
        c.setPrice(book.getPrice());
        c.setNumber(text1);
        c.setAddPrice(book.getPrice()*text1);
        c.setUserId(userId);
        session.save(c);
        tran.commit();
        session.close();
		return true;
	}

	@Override
	public boolean selectUserName(String userName) {
		// TODO Auto-generated method stub
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from User where name=?");
        query.setParameter(0, userName);
        User user = (User) query.uniqueResult();//返回一个唯一结果
        if(user != null) {
        	return true;
        }
		return false;
	}

	@Override
	public boolean regist(User user) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        System.out.println("能不能获取到用户输入的用户名"+user.getName());
        User u = new User();
        u.setName(user.getName());
        u.setPassword(user.getPassword());
        u.setEmail(user.getEmail());
        session.save(u);
        tran.commit();
        session.close();
		return true;
	}

	@Override
	public boolean selectBookCart(int id, int userId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Cart where userId=? and bookId =?");
        query.setParameter(0,userId);
        query.setParameter(1,id);
        Cart cart = (Cart) query.uniqueResult();
        if(cart != null) {
        	//也就是说，购物车里有这本书,而且有这个人。返回正确
        	System.out.println("目前所处userdao接口类里，而且购物车里有这本书而且有这个人"+cart.getUserId());
        	return true;
        }
		return false;
	}

	@Override
	public boolean updateBookCart(int id,int text,int userId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Cart where userId=? and bookId=?");
        query.setParameter(0,userId);
        query.setParameter(1,id);
        Cart cart = (Cart) query.uniqueResult();//返回一个唯一结果
        System.out.println("本来书本有"+cart.getNumber());
        cart.setNumber(cart.getNumber()+text);     
        cart.setAddPrice(cart.getPrice()*(cart.getNumber()+text));
        session.save(cart); 
        tran.commit();
        session.close();
        System.out.println("现在书本有"+cart.getNumber());
		return true;
	}

	@Override
	public List<Cart> showCart(int userId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Cart where userId=?");
        query.setParameter(0,userId);
        List<Cart> list = query.list();
        tran.commit();
        session.close();
        
		return list;
	}

	@Override
	public boolean selectAddress(int userId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Address where userId=?");
        System.out.println("selectAddress获取到了用户id"+userId);
        query.setParameter(0,userId);
        Address address = (Address)query.uniqueResult();
        tran.commit();
        session.close();
        if(address != null) {
        	System.out.println("用户已经设置了地址，true");
        	return true;
        }else {
        	return false;
        }
		
	}

	@Override
	public Cart selectCart(Integer cartId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Cart where cartId=?");
        query.setParameter(0,cartId);
        Cart cart = (Cart) query.uniqueResult();
        tran.commit();
        session.close();
        return cart;
	}

	@Override
	public boolean addOrders(Cart cart,int userId) {
		// TODO Auto-generated method stub
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String data = df.format(new Date());
		System.out.println(data);// new Date()为获取当前系统时间
		String state = "not upload";
		
        Query query = session.createQuery("from User where userId=?");
        query.setParameter(0,userId);
        User user = (User)query.uniqueResult();
        System.out.println("能不能获取到addressId"+user.getAddressId()+"或者是用户名"+user.getName());
        Orders orders = new Orders();
        orders.setUserId(userId);
        orders.setName(cart.getName());
        orders.setBookId(cart.getBookId());
        orders.setNumber(cart.getNumber());
        orders.setPrice(cart.getPrice());
        orders.setAddPrice(cart.getAddPrice());
        orders.setOrder_time(data);	
        orders.setOrder_state(state);
        orders.setAddressId(user.getAddressId());
        
        session.save(orders);
        tran.commit();
        session.close();
		return true;
	}

	@Override
	public boolean updateCart(Cart cart) {
		// TODO Auto-generated method stub
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();

        
        Query query = session.createQuery("update Cart set number=?,addPrice=? where cartId=?");
        query.setParameter(0,cart.getNumber());
        query.setParameter(1,cart.getAddPrice());
        query.setParameter(2,cart.getCartId());
        query.executeUpdate();

        tran.commit();
        session.close();
		return true;
	}

	@Override
	public boolean deleteCart(int[] cartId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        for(int i = 0;i<cartId.length;i++) {
        Query query = session.createQuery("delete from Cart where cartId=?");
        query.setParameter(0,cartId[i]);
        query.executeUpdate();
        System.out.println("我这个cart删除成功了吗？");
        }
        tran.commit();
        session.close();
		return true;
		
		
	}

	@Override
	public List<Orders> showOrders(int userId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Orders where userId=?");
        query.setParameter(0,userId);
        List<Orders> list = query.list();
        tran.commit();
        session.close();
		return list;
	}

	@Override
	public boolean setAddress(User u, String province, String city, String town, String street) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        System.out.println("userId等等"+u.getUserId()+street);
        Address address = new Address();
        address.setUserId(u.getUserId());
        address.setProvince(province);
        address.setCity(city);
        address.setTown(town);
        address.setStreet(street);

        session.save(address);
        
        Query query = session.createQuery("update User set addressId = ? where userId = ?");
        query.setParameter(0,address.getAddressId());
        query.setParameter(1,u.getUserId());
    
        query.executeUpdate();

        
        System.out.println("用户id为"+u.getUserId()+"的用户，设置好了addressId了吗"+u.getAddressId());
        tran.commit();
        session.close();
		return true;
	}
	
	@Override
	public Orders selectOrder(Integer orderId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Orders where orderId=?");
        query.setParameter(0,orderId);
        Orders orders = (Orders) query.uniqueResult();
        tran.commit();
        session.close();
        return orders;
	}

	@Override
	public Address lookAddress(int addressId) {
		// TODO Auto-generated method stub
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Address address = new Address();
        Query query = session.createQuery("from Address where addressId=?");
        query.setParameter(0,addressId);
        address = (Address) query.uniqueResult();
        	
		tran.commit();
        session.close();
		return address;
	}

	@Override
	public boolean updateOrders(Orders orders, int count) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Orders o = new Orders();
        o = orders;
        System.out.println("这里orders已经赋值给了o试着输出c的名字"+o.getName());
		o.setNumber(count);
		o.setAddPrice(o.getPrice()*count);
		
		session.save(o);
        tran.commit();
        session.close();
		return true;
	}

	@Override
	public boolean deleteOrders(int ids) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Orders orders = session.get(Orders.class,ids);
        session.delete(orders);
        System.out.println("我这个Orders删除成功了吗？");
        
        tran.commit();
        session.close();
		return true;
	}

	@Override
	public void deleteNoAddressUser(User u) {
		// TODO Auto-generated method stub
		
	}

	
}