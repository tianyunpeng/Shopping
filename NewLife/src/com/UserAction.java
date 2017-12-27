package com;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Address;
import com.bean.Admin;
import com.bean.Book;
import com.bean.Cart;
import com.bean.Orders;
import com.bean.User;

import com.service.UserService;
import com.service.AdminService;
@Controller
public class UserAction {
	
@Autowired  //注解消除set和get方法 可以调用它的私有属性以及方法 每一个声明都需要写一遍
private UserService userService;
@Autowired
private AdminService adminService;

//userLogin
@RequestMapping(value="/userLogin",method=RequestMethod.POST)
public String userLogin(HttpSession session,Model model,String username,String password) {
	System.out.println("在userAction中用户输入的账号密码是"+username+password);
	User user=userService.userLogin(username,password);
	session.setAttribute("user",user);
	
	if(user != null) {
		return "index";
	}else {
		model.addAttribute("errormsg", "username or password is wrong");
		return "userLogin";
		}	
	}

@RequestMapping("/myMessage")
public String mycount(HttpSession session,Model model)
{
	User user = (User) session.getAttribute("user");
	if(user != null) {
		model.addAttribute("user",user);
		return "myMessage";
	}else {
		System.out.println("您未登录，请先登录。");
		return "userLogin";
	}
	
	
}
@RequestMapping("/addCart")
public String addCart(HttpSession session,Model model , int id)
{
	User u = (User) session.getAttribute("user");
	if(u != null) {
		Book book = userService.selectBookId(id);
		model.addAttribute("book",book);
		return "addCart";
	}
	else {
		System.out.println("您未登录，请先登录。");
		return "userLogin";
	}	
	

}
@RequestMapping("/addBookCart")
public String addBookCart(int ids,int text1,HttpSession session)
{
	//在这里先判断是否购物车里有这本书，我需要两个参数，一个用户id一个书本id
	System.out.println("测试一下能不能获取书籍id"+ids+"输入数量"+text1);

	User u = (User) session.getAttribute("user");
	System.out.println("用户id"+u.getUserId());
	int userId = u.getUserId();
	//应该先判断购物车里的用户，用户id是多少，在判断他购物车里的东西
	boolean f = userService.selectBookCart(ids,userId);
	if(f) { //如果购物车里有这本书，直接增加数量
		boolean ff = userService.updateBookCart(ids,text1,userId);
		if(ff) {
			System.out.println("更新已有书籍成功");
			return "redirect:/userBookList.do";
			}
			else {
				return "error";
			}
		
	}else {
	Book book = userService.selectBookId(ids);  //通过传进来的bookid获取该书本
	System.out.println("购物车里没记录");
	boolean flag=userService.addBookCart(book,text1,userId);
	if(flag) {
		System.out.println("添加新书籍成功");
		return "redirect:/userBookList.do";   
		}
		else {
			return "error";
		}
	}

}

@RequestMapping("/findBookId")
public String findBookId(Model model,int bookId)
{

	List<Book> list = userService.findBookId(bookId);  //通过传进来的bookid获取该书本
	model.addAttribute("booklist", list);
	return "findBook";

}

@RequestMapping("/findBookKid")
public String findBookKid(Model model,int bookKid)
{

	List<Book> list = userService.findBookKid(bookKid);  //通过传进来的bookid获取该书本
	model.addAttribute("booklist", list);
	return "findBook";

}

@RequestMapping("/checkUser")
@ResponseBody //这个注解是为了return "yes" 返回具体的string  不然的话系统胡执行寻找yes.jsp对象
public String checkUser(String name)
{

	boolean flag = userService.selectUserName(name);
	if(flag) {
		return "yes";
	
		
	}else {
		return "no";
	}
	

}

@RequestMapping("/userRegist")
public String userRegist(User user,@RequestParam(value="files") MultipartFile file,HttpServletRequest request) {
	System.out.println("用户名:"+user.getName()+"用户密码"+user.getPassword()+"哦用户邮箱"+user.getEmail());
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
			return "userLogin";
			}
			else {
				return "error";
			}
}
//判断用户是否登录，以查看用户购物车
@RequestMapping("/showCart")
public String showCart(HttpSession session,Model model)
{
	User u = (User) session.getAttribute("user");
	if(u != null) {
		
		int userId = u.getUserId();
		List<Cart> list = userService.showCart(userId);
		int i;
		float all = 0;
		for(i = 0; i < list.size(); i ++) {
			all = all+list.get(i).getAddPrice();
		}
		System.out.println("购物车总金额"+all);
		model.addAttribute("list",list);
		model.addAttribute("all",all);
		return "showCart";
	}else {
		System.out.println("您未登录，无法查看购物车。");
		return "userLogin";
	}	
	

}

@RequestMapping("/setOrders") 
public String setOrders(Model model, HttpServletRequest request)
{
	
	User u = (User) request.getSession().getAttribute("user");
	int cartId = Integer.parseInt(request.getParameter("id"));
	int userId = u.getUserId();
	System.out.println("userId"+userId);
	//既然都点进去购物车了，那么用户肯定就登录了，
	//那么只需要判断用户是否设置地址了就好。	
	boolean flag = userService.selectAddress(u.getUserId());
	if(flag) {
		
		Cart cart = userService.selectCart(cartId);		
		
		boolean f = userService.addOrders(cart,userId);
		if(f) {
			System.out.println("提交订单成功，返回主页查看订单");
			return "index";
		}else {
			System.out.println("提交失败");
		}
		
	}else {
		System.out.println("您还没填写地址，请填写地址。");
		model.addAttribute("cartId",cartId);
		return "setAddress";
	}
	return "index";

	
}

@RequestMapping("/updateCart") 
public String updateCart(Model model, HttpServletRequest request)
{

	int cartId = Integer.parseInt(request.getParameter("id"));
	System.out.println("需要修改购物车的ID"+cartId);
	Cart cart = userService.selectCart(cartId);
	model.addAttribute("cart",cart);
	return "updateCart";
}

@RequestMapping("/updateCart2") 
public String updateCart(int ids,int text1,HttpSession session)
{


	System.out.println("需要修改购物车的ID"+ids);
	System.out.println("修改的数量"+text1);
	
	boolean flag = userService.updateCart(ids,text1);
	if(flag) {
		
			return "redirect:/showCart.do";	
	}else {
		return "error";
	}
	
	
}

@RequestMapping("/deleteCart") 
public String deleteCart(int[] delete)
{
	System.out.println("需要删除购物车的ID"+delete);
	boolean flag = userService.deleteCart(delete);
	if(flag) {
		System.out.println("成功删除了id为"+delete+"的购物车");
		return "redirect:/showCart.do";
	}else {
		return "error";
	}
	
	
}

@RequestMapping("/showOrders") 
public String showOrders(HttpSession session,Model model)
{
	User u = (User) session.getAttribute("user");
	if(u != null) {
		
		int userId = u.getUserId();
		List<Orders> list = userService.showOrders(userId);
		int i;
		float all = 0;
		for(i = 0; i < list.size(); i ++) {
			all = all+list.get(i).getAddPrice();
		}
		model.addAttribute("list",list);
		model.addAttribute("all",all);
		return "showOrders";
	}else {
		System.out.println("您未登录，无法查看购物车。");
		return "userLogin";
	}
	
	
}

@RequestMapping("/setAddress")
public String setAddress (HttpSession session,Model model,HttpServletRequest request) {
	
	
	User u = (User) session.getAttribute("user");
	int userId = u.getUserId();
	String province = request.getParameter("province");
	String city = request.getParameter("city");
	String town = request.getParameter("town");
	String street = request.getParameter("street");
	System.out.println("省市县"+province + city + town+street);
	boolean flag = userService.setAddress(u,province,city,town,street);
	if(flag) {
		//这个时候，用户已经成功添加了地址，但是之前存的没地址的用户还在，所以吧之前没地址的用户删除。
		//userService.deleteNoAddressUser(u);
		int cartId = Integer.parseInt(request.getParameter("ids"));
		Cart cart = userService.selectCart(cartId);				
		boolean f = userService.addOrders(cart,userId);
		if(f) {
			return "redirect:/showOrders.do";
		}else {
			System.out.println("提交失败");
			return "error";
		}
		
	}else {
		return "error";
	}
	
	
}
@RequestMapping("/lookAddress")
public String lookAddress(HttpServletRequest request,Model model) {
	int orderId = Integer.parseInt(request.getParameter("id"));
	Orders orders = new Orders();
	orders = userService.selectOrder(orderId);
	Address address = new Address();
	System.out.println("应该能获取到addressId吧"+orders.getAddressId());
	address = userService.lookAddress(orders.getAddressId());
	
	model.addAttribute("orders",orders);
	model.addAttribute("address",address);
	return "lookAddress";
}

@RequestMapping("/updateOrders") 
public String updateOrders(Model model, HttpServletRequest request)
{

	int orderId = Integer.parseInt(request.getParameter("id"));
	System.out.println("需要修改订单的ID"+orderId);
	Orders orders = new Orders();
	orders = userService.selectOrder(orderId);
	System.out.println("订单状态"+orders.getOrder_state());
	String state = "not upload";
	if(orders.getOrder_state().equals(state)) {
		model.addAttribute("orders",orders);
		return "updateOrders";
	}else {
		System.out.println("订单已被提交，不可进行修改操作。");
		return "redirect:/showOrders.do";
	}
	
}

@RequestMapping("/updateOrders2") 
public String updateOrders2(int ids,int text1,HttpSession session)
{


	System.out.println("需要修改购物车的ID"+ids);
	System.out.println("修改的数量"+text1);
	Orders orders = userService.selectOrder(ids);
	boolean flag = userService.updateOrders(orders,text1);
	if(flag) {
		boolean f = userService.deleteOrders(ids);
		if(f) {
			return "redirect:/showOrders.do";
		}else {
			return "error";
		}
		
		
	}else {
		return "error";
	}
	
	
}

@RequestMapping("/deleteOrders") 
public String deleteOrders(Model model, HttpServletRequest request)
{

	int orderId = Integer.parseInt(request.getParameter("id"));
	System.out.println("需要修改订单的ID"+orderId);
	Orders orders = new Orders();
	orders = userService.selectOrder(orderId);
	System.out.println("订单状态"+orders.getOrder_state());
	String state = "not upload";
	if(orders.getOrder_state().equals(state)) {
		boolean f = userService.deleteOrders(orderId);
		if(f) {
			return "redirect:/showOrders.do";
		}else {
			return "error";
		}
		
	}else {
		System.out.println("订单已被提交，不可进行修改操作。");
		return "redirect:/showOrders.do";
	}
	
}


}

