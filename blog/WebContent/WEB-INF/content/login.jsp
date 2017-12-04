<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>     
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<%@ include file="include/styles.jsp" %>
</head>
<body>
<div class="container">
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
	
	<c:if test="${not empty message }">
		${message }
	</c:if>
	<h1 class="text-center">登录页面</h1>
	<form class="form-horizontal" action="user/logins.action" id="loginForm" method="get">
  <div class="form-group">
    <label for="email"  class="col-sm-3 control-label">邮箱地址</label>
    <div class="col-sm-9">
    	<input type="email" name="email" id="email" class="form-control"  placeholder="请输入邮箱地址：xx@x.com">
    </div>
  </div>
  <div class="form-group">
    <label for="pwd"  class="col-sm-3 control-label">登录密码</label>
    <div class="col-sm-9">
    <input type="password" name="pwd" id="pwd" class="form-control" placeholder="请输入密码：4-12位">
    </div>
  </div>
 <div class="col-sm-9 col-sm-offset-3 text-right">
 
  <button type="submit" class="btn btn-default">登录系统</button>
  
  </div>
  <div class="col-sm-9 col-sm-offset-3 text-right">
  	<span>还没有账号？<a href="regist.do">去注册</a></span>
  </div>
</form>
</div>
</div>
</div>
<jsp:include page="include/scripts.jsp"></jsp:include>

<script>
	 $(function(){
		$('#loginForm').validate({

			rules:{
				email:{	
					required:true,
					email:true
				},
				pwd:{
					required:true,
					minlength:4
				}
			}
		});
		
	}); 
</script>

</body>
</html>