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
<link href="css/bootstrap1.css" rel="stylesheet">
    <!-- FONT AWESOME CSS -->
    <link href="css/font-awesome.min.css1" rel="stylesheet" />
    <!--GOOGLE FONT -->
 <link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css'>
    <!-- custom CSS here -->
    <link href="css/style1.css" rel="stylesheet" />
     <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />
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
	<h2>My Message</h2>
	<div class="login-top">
		
		<table class="table table-hover table-striped" align="center" width="80%">
                                    <thead align="center">
                                   		<th style="text-align:center;">head portrait</th>
                                        <th align="center">userId</th>
										<th style="text-align:center;">username</th>
										
										<th style="text-align:center;">email</th>
										
										
										
                                    </thead>
                                    <tbody align="center">
                                   		<td><img alt="图片" src="${user.imgUrl}"></td>
                                     	<td>${user.userId}</td>
										<td>${user.name}</td>										
										<td>${user.email}</td>
								
                              	  </table> 
	</div>
	<div class="login-bottom">
		
	</div>
</div>	


</body>
</html>