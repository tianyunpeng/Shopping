<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>

<!--<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>--->

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>

<div class="header-area">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="user-menu">
					<ul>
						<li><a href="#"><i class="fa fa-user"></i>我的信息</a></li>
						<li><a href="#"><i class="fa fa-heart"></i> 我喜欢的</a></li>
						<li><a href="showCart.do"><i class="fa fa-user"></i>我的购物车</a></li>
						<li><a href="showOrders.do"><i class="fa fa-user"></i>我的订单</a></li>
						<li><a href="userLogin.jsp"><i class="fa fa-user"></i>用户登录</a></li>
						<li><a href="AdminLogin.html"><i class="fa fa-user"></i>管理员登陆</a></li>
					</ul>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="header-right">
					<ul class="list-unstyled list-inline">
						<li class="dropdown dropdown-small">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">USD</a></li>
								<li><a href="#">INR</a></li>
								<li><a href="#">GBP</a></li>
							</ul>
						</li>

						<li class="dropdown dropdown-small">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">English</a></li>
								<li><a href="#">French</a></li>
								<li><a href="#">German</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div> <!-- End header area -->

<div class="site-branding-area">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="logo">
					<h1><a href="index.html">e<span>Electronics</span></a></h1>
				</div>
			</div>
			
			<div class="col-sm-6">
				<div class="shopping-item">
					<a href="cart.html">Cart - <span class="cart-amunt">$800</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
				</div>
			</div>
		</div>
	</div>
</div> <!-- End site branding area -->

<div class="mainmenu-area">
	<div class="container">
		<div class="row">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div> 
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html">主页</a></li>
					<li><a href="userBookList.do">全部商品</a></li>
					<li><a href="userBookList1.do">热门商品</a></li>
					<li><a href="userBookList2.do">最新商品</a></li>
					<li><a href="checkout.html">搜索</a></li>
					<li><a href="#">更多</a></li>
				</ul>
			</div>  
		</div>
	</div>
</div> <!-- End mainmenu area -->

<div class="slider-area">
	<div class="zigzag-bottom"></div>
	<div id="slide-list" class="carousel carousel-fade slide" data-ride="carousel">
		
		<div class="slide-bulletz">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ol class="carousel-indicators slide-indicators">
							<li data-target="#slide-list" data-slide-to="0" class="active"></li>
							<li data-target="#slide-list" data-slide-to="1"></li>
							<li data-target="#slide-list" data-slide-to="2"></li>
						</ol>                            
					</div>
				</div>
			</div>
		</div>

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="single-slide">
					<div class="slide-bg slide-one"></div>
					<div class="slide-text-wrapper">
						<div class="slide-text">
							<div class="container">
								<div class="row">
									<div class="col-md-6 col-md-offset-6">
										<div class="slide-content">
											<h2>We are awesome</h2>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur, dolorem, excepturi. Dolore aliquam quibusdam ut quae iure vero exercitationem ratione!</p>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi ab molestiae minus reiciendis! Pariatur ab rerum, sapiente ex nostrum laudantium.</p>
											<a href="" class="readmore">Learn more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="single-slide">
					<div class="slide-bg slide-two"></div>
					<div class="slide-text-wrapper">
						<div class="slide-text">
							<div class="container">
								<div class="row">
									<div class="col-md-6 col-md-offset-6">
										<div class="slide-content">
											<h2>We are great</h2>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe aspernatur, dolorum harum molestias tempora deserunt voluptas possimus quos eveniet, vitae voluptatem accusantium atque deleniti inventore. Enim quam placeat expedita! Quibusdam!</p>
											<a href="" class="readmore">Learn more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="single-slide">
					<div class="slide-bg slide-three"></div>
					<div class="slide-text-wrapper">
						<div class="slide-text">
							<div class="container">
								<div class="row">
									<div class="col-md-6 col-md-offset-6">
										<div class="slide-content">
											<h2>We are superb</h2>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, eius?</p>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptates necessitatibus dicta recusandae quae amet nobis sapiente explicabo voluptatibus rerum nihil quas saepe, tempore error odio quam obcaecati suscipit sequi.</p>
											<a href="" class="readmore">Learn more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>        
</div> <!-- End slider area -->

<div class="promo-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<div class="single-promo">
					<i class="fa fa-refresh"></i>
					<p>30 Days return</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-promo">
					<i class="fa fa-truck"></i>
					<p>Free shipping</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-promo">
					<i class="fa fa-lock"></i>
					<p>Secure payments</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-promo">
					<i class="fa fa-gift"></i>
					<p>New products</p>
				</div>
			</div>
		</div>
	</div>
</div> <!-- End promo area -->


<div class="brands-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="brand-wrapper">
					<h2 class="section-title">Brands</h2>
					<div class="brand-list">
						<img src="img/services_logo__1.jpg" alt="">
						<img src="img/services_logo__2.jpg" alt="">
						<img src="img/services_logo__3.jpg" alt="">
						<img src="img/services_logo__4.jpg" alt="">
						<img src="img/services_logo__1.jpg" alt="">
						<img src="img/services_logo__2.jpg" alt="">
						<img src="img/services_logo__3.jpg" alt="">
						<img src="img/services_logo__4.jpg" alt="">                            
					</div>
				</div>
			</div>
		</div>
	</div>
</div> <!-- End brands area -->



<div class="footer-top-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<div class="footer-about-us">
					<h2>e<span>Electronics</span></h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
					<div class="footer-social">
						<a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
						<a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
						<a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
						<a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						<a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6">
				<div class="footer-menu">
					<h2 class="footer-wid-title">User Navigation </h2>
					<ul>
						<li><a href="#">My account</a></li>
						<li><a href="#">Order history</a></li>
						<li><a href="#">Wishlist</a></li>
						<li><a href="#">Vendor contact</a></li>
						<li><a href="#">Front page</a></li>
					</ul>                        
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6">
				<div class="footer-menu">
					<h2 class="footer-wid-title">Categories</h2>
					<ul>
						<li><a href="#">Mobile Phone</a></li>
						<li><a href="#">Home accesseries</a></li>
						<li><a href="#">LED TV</a></li>
						<li><a href="#">Computer</a></li>
						<li><a href="#">Gadets</a></li>
					</ul>                        
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6">
				<div class="footer-newsletter">
					<h2 class="footer-wid-title">Newsletter</h2>
					<p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
					<div class="newsletter-form">
						<form action="#">
							<input type="email" placeholder="Type your email">
							<input type="submit" value="Subscribe">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> <!-- End footer top area -->

<div class="footer-bottom-area">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="copyright">
					<p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="footer-card-icon">
					<i class="fa fa-cc-discover"></i>
					<i class="fa fa-cc-mastercard"></i>
					<i class="fa fa-cc-paypal"></i>
					<i class="fa fa-cc-visa"></i>
				</div>
			</div>
		</div>
	</div>
</div> <!-- End footer bottom area -->

<!-- Latest jQuery form server -->
<script src="js/jquery-1.8.3.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="js/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="js/main.js"></script>
</body>
</html>