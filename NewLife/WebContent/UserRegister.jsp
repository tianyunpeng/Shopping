<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!doctype html>
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
<script>
function getajaxHttp() {

    var xmlHttp;
    try {
        // Firefox, Opera 8.0+, Safari  
        xmlHttp = new XMLHttpRequest();
    } catch (e) {
        // Internet Explorer  
        try {
            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {
                alert("您的浏览器不支持AJAX！");
                return false;
            }
        }
    }
    return xmlHttp;
}
/** 
 * 发送ajax请求 
 * url--请求到服务器的URL 
 * methodtype(post/get) 
 * con (true(异步)|false(同步)) 
 * functionName(回调方法名，不需要引号,这里只有成功的时候才调用) 
 * (注意：这方法有二个参数，一个就是xmlhttp,一个就是要处理的对象) 
 */
function ajaxrequest(url, methodtype, con, functionName) {
    //获取XMLHTTPRequest对象
    var xmlhttp = getajaxHttp();
    //设置回调函数（响应的时候调用的函数）
    xmlhttp.onreadystatechange = function() {
        //这个函数中的代码在什么时候被XMLHTTPRequest对象调用？
        //当服务器响应时，XMLHTTPRequest对象会自动调用该回调方法
        if (xmlhttp.readyState == 4) {
            if (xmlhttp.status == 200) {
                functionName(xmlhttp.responseText);
            }
        }
    };
    //创建请求
    xmlhttp.open(methodtype, url, con);
    //发送请求
    xmlhttp.send();
}
function checkUsername() {
	
    var username=document.getElementById('name').value;
    //调用ajax请求Servlet
    ajaxrequest("checkUser.do?name="+username,"POST",true,ckUsernameResponse);
}
function ckUsernameResponse(responseContents){

    if (responseContents == 'yes') {
        document.getElementById('span_1').innerHTML="<font color='red'>用户名存在</font>";
        document.getElementById('name').style="background-color: red";
    }else{
        document.getElementById('span_1').innerHTML="";
        document.getElementById('name').style="background-color: white";
    }
}

function checkLength(){//判断输入密码是否大于6位
	  
    var password=document.getElementById("pwd1"); //获取密码框值

 if(password.value.length<6){
	 document.getElementById('span_2').innerHTML="<font color='red'>密码少于六位</font>";
     document.getElementById('pwd1').style="background-color: red";
 }else{
     document.getElementById('span_2').innerHTML="";
     document.getElementById('pwd1').style="background-color: white";
 }
   
 }
 
function re(){ 
	var password = document.getElementById("pwd1").value; 
	var repsword = document.getElementById("pwd2").value; 
	if(password != repsword) {
		document.getElementById('span_3').innerHTML="<font color='red'>两次输入密码不一致</font>";
	    document.getElementById('pwd2').style="background-color: red";
	 }else{
	     document.getElementById('span_3').innerHTML="";
	     document.getElementById('pwd2').style="background-color: white";
	 }
	}
</script>
</head>
<body>
<div class="login">
	<h2>Acced Form</h2>
	<div class="login-top">
		<h1>用户注册</h1>
		<form modelAttribute="user" action="userRegist.do" method="post" id="form" enctype="multipart/form-data">
			您的账号:<input type="text" name="name" id="name" onblur="checkUsername()" value="${user.name}"/><span id="span_1"></span></br>
			您的密码:<input type="password" name="password" id="pwd1" onblur="checkLength()" value="${user.password}"/><span id="span_2"></span></br>
	    	确认密码:<input type="password" name="rePassword" id="pwd2" onblur="re()"/><span id="span_3"></span></br>
	    	您的邮箱:<input type="text" name="email"value="${user.email}"/>
	    	您的头像:<input type="file" name="files"/>
	    	<input type="submit" value="注册" id="submit">
	    </form>
	</div>
			
</div>	


</body>
</html>