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
<title>注册</title>
<%@ include file="include/styles.jsp" %>
</head>
<body>

<div class="container">
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
	
	<c:if test="${not empty message }">
		${message }
	</c:if>
	
	<h1 class="text-center">注册页面</h1>
	<form class="form-horizontal" action="registZC.do" id="registForm" method="post">
  <div class="form-group">
    <label for="regEmail" class="col-sm-3 control-label">邮箱地址</label>
     <div class="col-sm-9">
    	<input type="email" class="form-control" name="email" id="regEmail" placeholder="请输入邮箱地址：xx@x.com">
    </div>
  </div>
  
  <div class="form-group">
    <label for="regPwd"  class="col-sm-3 control-label">输入密码</label>
    <div class="col-sm-9">
    <input type="password" class="form-control" name="regPwd" id="regPwd" placeholder="请输入密码：4-12位">
    </div>
  </div>
  <div class="form-group">
    <label for="regConpwd"  class="col-sm-3 control-label">确认密码</label>
    <div class="col-sm-9">
    <input type="password" class="form-control" name="regConpwd" id="regConpwd" placeholder="再次确认密码">
    </div>
  </div>
 	<div class="col-sm-9 col-sm-offset-3 text-right">
  <button type="submit" class="btn btn-default">提交注册</button>
  </div>
  <div class="col-sm-9 col-sm-offset-3 text-right">
  	<span>已有账号？<a href="logins.do">去登录</a></span>
  </div>
</form>

</div>
</div>
</div>


<script>
	 $(function(){
		 
		$('#registForm').validate({

			rules:{
				email:{	
					required:true,
					email:true
				},
				pwd:{
					required:true,
					minlength:4
				},
				confirmPwd:{
					required:true,
					minlength:4,
					equalTo:'#regPwd'
				}
			}
		});
		
	}); 
</script>


</body>
</html>