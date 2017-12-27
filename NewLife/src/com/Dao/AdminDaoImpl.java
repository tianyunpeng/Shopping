package com.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.bean.Address;
import com.bean.Admin;
import com.bean.Book;
import com.bean.Orders;
import com.bean.Page;
import com.bean.User;
import com.hibernate.hibernateUtil;
@Repository 
public class AdminDaoImpl  implements AdminDao{
	
	@Override
	public boolean select(String username,String password) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        System.out.println("用户输入的账号密码是"+username+password);
		Query query = session.createQuery("from Admin where name=? and password=?");
        query.setParameter(0, username);
        query.setParameter(1, password);
        List<Admin> list = query.list();
        
        tran.commit();
        session.close();
        
        if(list.size()>0) {
        	System.out.println("登录后台成功！");
        	return true;
        }else {
        	System.out.println("用户名或密码错误，登录后台失败。");
        	return false;
        }
		
	}

	//select all book
	@Override
	public List<Book> selectAllBook(Page page) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book");

        query.setFirstResult((page.getDpage()-1) * page.getPagecount());
		query.setMaxResults(page.getPagecount());
        List<Book> booklist = query.list();
        
        tran.commit();
        session.close();
        
		return booklist;
	}

	@Override
	public List<Book> selectAllBook1(Page page) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book where hot=?");
        query.setParameter(0,1);
        query.setFirstResult((page.getDpage()-1) * page.getPagecount());
		query.setMaxResults(page.getPagecount());
        List<Book> booklist = query.list();
        
        tran.commit();
        session.close();
        
		return booklist;
	}

	
	@Override
	public List<Book> selectAllBook2(Page page) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book where latest=?");
        query.setParameter(0,1);
        query.setFirstResult((page.getDpage()-1) * page.getPagecount());
		query.setMaxResults(page.getPagecount());
        List<Book> booklist = query.list();
        
        tran.commit();
        session.close();
        
		return booklist;
	}

	
	@Override
	public Book selectBookId(int id) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book where bookId=?");
        query.setParameter(0, id);
        List<Book> list = query.list();
        
        tran.commit();
        session.close();
		return list.get(0);
	}
	
	@Override
	public boolean updatebook(Book book) { 
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Book book1=session.get(Book.class, book.getBookId());
        book1.setName(book.getName());
        book1.setAuthor(book.getAuthor());
        book1.setPrice(book.getPrice());
        book1.setIntroduce(book.getIntroduce());
        book1.setImgUrl(book.getImgUrl());
        book1.setHot(book.getHot());
        book1.setKindId(book.getKindId());
        book1.setLatest(book.getLatest());
        session.save(book1);
        tran.commit();
        session.close();
		return true;
	}
	
	@Override
	public boolean deleteBook(int id) {
		
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Book book=session.get(Book.class, id);
        session.delete(book);
        
        tran.commit();
        session.close();
		return true;
	}
	
	@Override
	public boolean insertBook(Book book) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Book b=new Book();
        b.setName(book.getName());
        b.setAuthor(book.getAuthor());
        b.setIntroduce(book.getIntroduce());
        b.setPrice(book.getPrice());
        b.setImgUrl(book.getImgUrl());
        b.setKindId(book.getKindId());
        b.setLatest(book.getLatest());
        b.setHot(book.getHot());
        session.save(b);
        tran.commit();
        session.close();
		return true;
	}

	@Override
	public List<User> selectAllUser() {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from User");
        List<User> userlist = query.list();
        
        tran.commit();
        session.close();
        
		return userlist;
	}
	
	@Override
	public boolean insertUser(User user) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        User u=new User();
        u.setName(user.getName());
        u.setPassword(user.getPassword());
        u.setEmail(user.getEmail());
        u.setImgUrl(user.getImgUrl());
        session.save(u);
        tran.commit();
        session.close();
		return true;
	}
	
	@Override
	public boolean deleteUser(int id) {
		
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        User user=session.get(User.class, id);
        session.delete(user);
        
        tran.commit();
        session.close();
		return true;
	}

	@Override
	public List<Orders> showOrders(Page page) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Orders");
      
        query.setFirstResult((page.getDpage()-1) * page.getPagecount());
		query.setMaxResults(page.getPagecount());
        List<Orders> orderslist = query.list();
        tran.commit();
        session.close();
        
		return orderslist;
	}

	@Override
	public boolean confirmOrders(int orderId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Orders where orderId=?");
        query.setParameter(0,orderId);
        Orders orders = new Orders();
        orders = (Orders) query.uniqueResult();
        System.out.println("成功获取到需要确认的订单id以及查询到该订单"+orderId+orders.getName());
        orders.setOrder_state("confirm");
        tran.commit();
        session.close();
        
		return true;
	}

	@Override
	public List<Book> findBookId(int bookId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Book where bookId=?");
        query.setParameter(0, bookId);
        List<Book> list = query.list();
        
        tran.commit();
        session.close();
		return list;
	}

	@Override
	public Orders selectOrder(int orderId) {
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
	public User selectUser(int userId) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        User user = new User();
        Query query = session.createQuery("from User where userId=?");
        query.setParameter(0,userId);
        user = (User) query.uniqueResult();
        
        tran.commit();
        session.close();
		return user;
	}

	@Override
	public Long getCount() {
		// TODO Auto-generated method stub
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        Query query = session.createQuery("select count(*) from Book");
        Long totalCount = (Long)query.uniqueResult();
        tran.commit();
        session.close();
		return totalCount;
	}
	
	@Override
	public List<Orders> findName(String name) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();
        
        Query query = session.createQuery("from Orders where name=?");
        query.setParameter(0,name);
        List<Orders> list = query.list();
        
        tran.commit();
        session.close();
		return list;
	}

	@Override
	public User selectUserName(String name) {
		Session session = hibernateUtil.openSession();
        Transaction tran = session.beginTransaction();	
        
        User user = new User();
        Query query = session.createQuery("from User where name=?");
        query.setParameter(0,name);
        user = (User) query.uniqueResult();
        
        tran.commit();
        session.close();
		return user;
	}
}
