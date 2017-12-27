package com;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Address;
import com.bean.Book;
import com.bean.Orders;
import com.bean.Page;
import com.bean.User;
import com.paging.Paging;
import com.service.AdminService;
import com.service.UserService;

@Controller
public class AdminAction {
	
@Autowired
private AdminService adminService;
@Autowired
private UserService userService;

//adminLogin
@RequestMapping(value="/AdminLogin",method=RequestMethod.POST)
public String adminLogin(Model model,String username,String password) {
	System.out.println("在AdminAction中用户输入的账号密码是"+username+password);
	boolean flag=adminService.adminLogin(username,password);
	if(flag) {
		return "adminInterFace";
	}else {
		model.addAttribute("errormsg", "username or password is wrong");
		return "AdminError";
		}	
	}

//******  show book list
@RequestMapping("/bookList")
public String booklist(Model model,Integer pageS) {
	Long totalCount = adminService.getCount();
	System.out.println(totalCount);
	Paging paging = new Paging();
	Page page = paging.checkByPage(totalCount, pageS);
	List<Book> list=adminService.showBook(page);
	model.addAttribute("page",page);
	model.addAttribute("booklist", list);
	return "bookList";
}

//show book list (user)
@RequestMapping("/userBookList")
public String booklist2(Model model,Integer pageS) {
	Long totalCount = adminService.getCount();
	System.out.println(totalCount);
	Paging paging = new Paging();
	Page page = paging.checkByPage(totalCount, pageS);
	
	List<Book> list=adminService.showBook(page);
	
	model.addAttribute("page",page);
	model.addAttribute("booklist", list);
	return "shop";
}

@RequestMapping("/userBookList1")
public String booklist3(Model model,Integer pageS) {
	Long totalCount = adminService.getCount();
	System.out.println(totalCount);
	Paging paging = new Paging();
	Page page = paging.checkByPage(totalCount, pageS);
	
	List<Book> list=adminService.showBook1(page);
	
	model.addAttribute("page",page);
	model.addAttribute("booklist", list);
	return "Hotshop";
}

@RequestMapping("/userBookList2")
public String booklist4(Model model,Integer pageS) {
	Long totalCount = adminService.getCount();
	System.out.println(totalCount);
	Paging paging = new Paging();
	Page page = paging.checkByPage(totalCount, pageS);
	List<Book> list=adminService.showBook2(page);
	model.addAttribute("page",page);
	model.addAttribute("booklist", list);
	return "Newshop";
}

//******  update Book
@RequestMapping("/updateBook")
public String updateBook(Model model,Integer id) {
	Book book=adminService.selectBookId(id);
	model.addAttribute("book", book);
	return "updatebook";
}


//***** update book submit
@RequestMapping("/updateBooksubmit")
public String updatesubmit(Book book,@RequestParam(value="files") MultipartFile file,HttpServletRequest request) {
	 if (!file.isEmpty()) {  
            try {  
               //update imgUrl
                String filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"  
                        + file.getOriginalFilename();  
                System.out.println("文件上传到"+filePath);
                file.transferTo(new File(filePath));  
                
                book.setImgUrl(filePath);
            } catch (Exception e) {  
                e.printStackTrace();  
            }  
        } 
	boolean flag=adminService.updateBook(book);
	if(flag) {
	return "ShopList";
	}
	else {
		return "error";
	}
	}

//*****delete book
@RequestMapping("/deleteBook")
public String deleteBook(Integer id) {		
	boolean flag=adminService.deleteBook(id);
	if(flag) {
		return "redirect:/bookList.do";
		}
		else {
			return "error";
		}
		
}

//***** insert book 
@RequestMapping("/insertBook")
public String insertBook(Book book,@RequestParam(value="files") MultipartFile file,HttpServletRequest request) {
	 if (!file.isEmpty()) {  
           try {  
            
               String filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"  
                       + file.getOriginalFilename();  
              
               file.transferTo(new File(filePath));  
               book.setImgUrl(filePath);
           } catch (Exception e) {  
               e.printStackTrace();  
           }  
       } 
	 boolean flag=adminService.insertBook(book);
		if(flag) {
			return "ShopList";
			}
			else {
				return "error";
			}
}

//***** show userlist
@RequestMapping("/userList")
public String userlist(Model model) {
	System.out.println("AdminAction.userlist运行成功！");
	List<User> list=adminService.showUser();
	model.addAttribute("userlist", list);
	return "userList";
}

//***** insert user
@RequestMapping("/insertUser")
public String insertUser(User user,@RequestParam(value="files") MultipartFile file,HttpServletRequest request) {
	 if (!file.isEmpty()) {  
         try {  
          
             String filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"  
                     + file.getOriginalFilename();  
            
             file.transferTo(new File(filePath));  
             user.setImgUrl(filePath);
         } catch (Exception e) {  
             e.printStackTrace();  
         }  
     } 
	 boolean flag=adminService.insertUser(user);
		if(flag) {
			return "user";
			}
			else {
				return "error";
			}
}

//*****delete user
@RequestMapping("/deleteUser")
public String deleteUser(Integer id) {		
	boolean flag=adminService.deleteUser(id);
	if(flag) {
		return "redirect:/userList.do";
		}
		else {
			return "error";
		}
		
}

@RequestMapping("/ordersList")
public String adminShowAddress(Model model,Integer pageS) {
	
	
	Long totalCount = adminService.getCount();
	Paging paging = new Paging();
	Page page = paging.checkByPage(totalCount, pageS);
	
	List<Orders> list=adminService.showOrders(page);
	model.addAttribute("page",page);
	model.addAttribute("orderslist",list);
	
	return "orders";
	
}
@RequestMapping("/confirmOrders")
public String confirmOrders(Integer id) {
	System.out.println("查看订单详情控制器已运行orderid为"+id);
	boolean flag = adminService.confirmOrders(id);
	if(flag) {

		return "redirect:/ordersList.do";
	}else {
		return "error";
	}
	
	
	
}

@RequestMapping("/adminFindBookId")
public String findBookId(Model model,int bookId)
{

	List<Book> list = adminService.findBookId(bookId);  //通过传进来的bookid获取该书本
	model.addAttribute("booklist", list);
	return "bookList";

}
@RequestMapping("/detailsOrders")
public String detailsOrders(HttpServletRequest request,Model model,HttpSession session) 
{
	int orderId = Integer.parseInt(request.getParameter("id"));
	Orders orders = new Orders();
	orders = adminService.selectOrder(orderId);
	User user = adminService.selectUser(orders.getUserId());
	Address address = new Address();
	address = adminService.lookAddress(orders.getAddressId());
	System.out.println("查到地址了吗"+address.getProvince());
	System.out.println("查到用户"+user.getName());
	model.addAttribute("orders",orders);
	model.addAttribute("address",address);
	model.addAttribute("user",user);
	return "detailsOrders";
}

@RequestMapping("/adminFindName")
public String adminFindName(Model model,String name)
{

	List<Orders> list = adminService.findName(name);  //通过传进来的bookid获取该书本
	model.addAttribute("orderslist", list);
	return "orders";

}

@RequestMapping("/findUser")
public String findUser(Model model,HttpServletRequest request)
{
	System.out.println("管理员输入的是"+request.getParameter("name"));
	String username = request.getParameter("name");
	//int userId = Integer.parseInt(request.getParameter("name"));
	
	//User u1 = adminService.selectUser(userId);	
	User u2 = new User();
	u2 = adminService.selectUserName(username);
		if(u2 != null) {
			model.addAttribute("user",u2);
			return "userList2";
		}else {
			return "userList2";
		}
//	if(u1 == null) {
//	User u2 = new User();
//	u2 = adminService.selectUserName(username);
//		if(u2 != null) {
//			model.addAttribute("user",u2);
//			return "userList2";
//		}else {
//			return "userList2";
//		}
//	
//	}else {
//		model.addAttribute("user",u1);
//		return "userList2";
//	}

}
}
