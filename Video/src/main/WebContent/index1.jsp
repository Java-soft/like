<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<span style="font-size:14px;"><link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">  
<link rel="stylesheet" type="text/css" href="css/base.css"></span>
<span style="font-size:14px;"><script src="js/jquery.min.js"></script>  
<script src="js/bootstrap.min.js"></script></span> 
<form action="${pageContext.request.contextPath }/Admin/login.action" method="get" >
 用户名：<input type="username" name="username">
密码：<input type="password" name="password"> 
<a href="${pageContext.request.contextPath}/user/TZ.action">注册</a>
<input type="submit" >
</form>
</body>
</html>