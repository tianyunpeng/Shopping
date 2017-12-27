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

	<h1>Update CART WIDGET</h1>

	<!-- Content-Starts-Here -->
	<div class="container">

		<!-- Mainbar-Starts-Here -->
		<div class="main-bar">
			<table class="table table-hover table-striped" align="center" width="100%" border="10">			
                                <form modelAttribute="cart" enctype="multipart/form-data">                     
                                        <th style="text-align:center;">图书id</th>
                                        <th style="text-align:center;">书名</th>
										<th style="text-align:center;">单价</th>
                                      <tr align="center">                  
                                        <td>${orders.bookId}</td>
										<td>${orders.name}</td>
										<td><input type="text" id="text2" name="text2"onkeyup="jisuan();" value="${orders.price}"readonly="readonly"style="width:40px;"disabled="true"/></td>
									  </tr>
								</form>
								
                                </table>
                                
		</div>

								<form action="updateOrders2.do">
									<input type="hidden" name="ids" value="${orders.orderId}">
									请输入数量:<input type="text" id="text1" name="text1"onkeyup="jisuan();" style="width:50px;"/>&nbsp;&nbsp;
									总金额:<input type="text" name="text3"id="text3"  style="width:50px;"disabled="true"/>&nbsp;&nbsp;
									<input type="submit" value="提交修改"/>
								</form>


	</div>

</body>
<!-- Body-Ends-Here -->

</html>