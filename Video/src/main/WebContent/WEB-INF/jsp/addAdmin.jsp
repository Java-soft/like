<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
                                                                           欢迎来到注册界面
<!-- localhost:8080/storm/user/showUser?id=1 -->
<form action="${pageContext.request.contextPath }/user/addAdmin.action" method="get" >

 用户名：<input type="username" name="username">
密码：<input type="password" name="password"> 
<input type="submit" >
</form>
</body>
</html>