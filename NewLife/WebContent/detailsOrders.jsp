<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@ page import="java.util.*" %>
          <%@ page import="com.AdminAction" %>
          <%@ page import="com.bean.Admin" %>
          <%@ page import="com.bean.Orders" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Light Bootstrap Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    欢迎登陆后台管理系统
                </a>
            </div>

            <ul class="nav">
           		 <li>
                    <a href="adminInterFace.jsp">
                        <i class="pe-7s-science"></i>
                        <p>Introduction</p>
                    </a>
                </li>
                <li>
                    <a href="ShopList.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Shop List</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User List</p>
                    </a>
                </li>
                <li class="active">
                    <a href="ordersList.do">
                        <i class="pe-7s-note2"></i>
                        <p>Orders List</p>
                    </a>
                </li>
            
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Table List</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret"></b>
                                    <span class="notification">5</span>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               Account
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Dropdown
                                    <b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                              </ul>
                        </li>
                        <li>
                            <a href="index.html">
                                Log out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">客户订单</h4>
                                <p class="category">Here is a orderlist for this table</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped" align="center">
                                    <thead>
                                        <th style="text-align:center;">订单id</th>
                                        <th style="text-align:center;">用户id</th>
                                    	<th style="text-align:center;">商品名称</th>
                                    	<th style="text-align:center;">订单金额</th>
                                    	<th style="text-align:center;">订单时间</th>
                                    	<th style="text-align:center;">订单状态</th>
                                    	<th style="text-align:center;">操作</th>
                                    	
                                    </thead>
                                    <tbody>
                                        <tr align="center">
										<td>${orders.orderId}</td>
										<td>${orders.userId}</td>
										<td>${orders.name}</td>
										<td>${orders.addPrice}</td>
										<td>${orders.order_time}</td>
										<td>${orders.order_state}</td>
										<td><a href="ordersList.do?id=${orders.orderId}">返回上一页面</a>
									</td>
									  </tr>
                                        
                                    </tbody>
                            
                                </table>
                                <p>用户名:${user.name}&nbsp;</p>
								<p>详细地址:${address.province}&nbsp;${address.city}&nbsp;${address.town}&nbsp;${address.street}
								</p>
								
                            <!-- row end -->
               
              
              
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
              	<tr>
              		<td colspan="7" align="center">
						<a href="adminMainServlet?page=1">首页</a>&nbsp;&nbsp;&nbsp;
						<c:if test="${page.dpage!=1}">
						<a href="adminMainServlet?page=${page.dpage-1 }">上一页</a>&nbsp;&nbsp;&nbsp;
						</c:if>
						<c:if test="${page.dpage!=page.totalpage}">
						<a href="adminMainServlet?page=${page.dpage+1}">下一页</a>&nbsp;&nbsp;&nbsp;
			
						</c:if>
						<a href="adminMainServlet?page=${page.totalpage}">尾页</a>
					</td>
				</tr>
            </div>
        </footer>
	</table>
    </div>
</div>
</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>


</html>
