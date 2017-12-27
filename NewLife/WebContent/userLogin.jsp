<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>
<body>
<div class="login">
	<h2>Acced Form</h2>
	<div class="login-top">
		<h1>用户登录</h1>
		<form action="userLogin.do" method="post" id="form">
			<input type="text" id="username" name="username" value="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'username';}">
			<input type="password" id="password" name="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
	    
	    <div class="forgot">
	    	<a href="#">忘记密码</a>
	    	<input type="submit" value="Login" >
	    </div>
	    </form>
	</div>
	<div class="login-bottom">
		<h3>新用户 &nbsp;<a href="UserRegister.jsp">注册</a>&nbsp 点这里</h3>
	</div>
</div>	


</body>
</html>