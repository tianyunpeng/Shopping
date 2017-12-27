<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<!-- For-Mobile-Apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="E Shop Cart Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Android Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->

<!-- Custom-Theme-Files -->
	<link rel="stylesheet" href="css/addCart.css" type="text/css" media="all" />
	 <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
<!-- //Custom-Theme-Files -->

<!-- Remove-Item-JavaScript -->
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script>$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c){
			$('.close1').fadeOut('slow', function(c){
		  		$('.close1').remove();
			});
		});	  
	});
	</script>
	<script>$(document).ready(function(c) {
		$('.alert-close2').on('click', function(c){
			$('.close2').fadeOut('slow', function(c){
		  		$('.close2').remove();
			});
		});	  
	});
	
	</script>
	<script>$(document).ready(function(c) {
		$('.alert-close3').on('click', function(c){
			$('.close3').fadeOut('slow', function(c){
		  		$('.close3').remove();
			});
		});	  
	});
	function jisuan(){
		var text1=document.getElementById("text1").value;
		var text2=document.getElementById("text2").value;
		document.getElementById("text3").value=parseFloat(text1)*parseFloat(text2);
		}
	</script>
<!-- //Remove-Item-JavaScript -->

</head>

<!-- Body-Starts-Here -->
<body>

	<h1>E SHOP CART WIDGET</h1>

	<!-- Content-Starts-Here -->
	<div class="container">

		<div class="content">
            <div class="container-fluid">
                <div class="row">
			<div class="col-md-12"> 
                        <div class="card">
                        
                 			<div class="header">
                 				<div style="width:250px; height:auto; float:left; display:inline">
                                <h4 class="title">我的购物车</h4>
                                <p class="category">Here is a shoplist for my cart</p>
                                </div>
                              
                                <div style="width:50px; height:auto; display:inline">
                                <h4 class="title">全部金额&nbsp;&nbsp;<a href="#">${all}元</a></h4>
                                <div style="width:150px;  float:right; display:inline">
                                <a href="userBookList.do">继续购买</a>
                                
                                </div>
                                </div>
                            </div>
                            
                            <div class="content table-responsive table-full-width">			
                                <table class="table table-hover table-striped" align="center" width="100%">
                                    <thead>
                                    <form action="deleteCart.do" method="post">
                                    	<th><input type="submit" value="批量删除"></input></th>
                                        <th>图书ID</th>
										<th style="text-align:center;">书名</th>
										<th style="text-align:center;">作者</th>
										<th style="text-align:center;">图书价格</th>
										<th style="text-align:center;">图书数量</th>
										<th style="text-align:center;">总金额</th>										
										<th style="text-align:center;" colspan="2">操作</th></tr>
										<c:forEach items="${list}" var="cart">
                                    </thead>
                                    
                                    <%-- <a href="deleteCart.do?id=${cart.cartId}">删除</a> --%>
                                    <tbody>
                                      <tr align="center">
                                        <td><input type="checkbox" name="delete" value="${cart.cartId}"/></td>
										<td>${cart.bookId}</td>
										<td>${cart.name}</td>
										<td>${cart.author}</td>
										<td>${cart.price}</td>
										<td>${cart.number}</td>
										<td>${cart.addPrice}</td>
										<td><a href="updateCart.do?id=${cart.cartId}">修改</a>
										
										<td><a href="setOrders.do?id=${cart.cartId}">提交订单</a></td>
									  </tr>
                                    </tbody>
                                    	</c:forEach> 
                                </table>
								
								</form>
                                </table>
                        </div>
                    </div>
                  </div>      
                  </div>
            </div>



	</div>

</body>
<!-- Body-Ends-Here -->

</html>