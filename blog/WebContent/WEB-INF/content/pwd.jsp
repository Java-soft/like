<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>         
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<%@ include file="include/styles.jsp"%>
</head>
<body>

	<jsp:include page="include/header.jsp"/>

	<div class="container">
		<div class="row">
			<div class="col-xs-9">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<div class="panel panel-default">
							<div class="panel-heading">
								修改密码
							</div>
							<div class="panel-body">
							<form class="form-horizontal"  id="pwdForm" method="post"
							action="updatePwd1.do"
							>
								<div class="form-group">
									<label for="email" class="col-sm-3 control-label">邮箱地址</label>
									<div class="col-sm-9">
										<input type="email" id="email" class="form-control" value="${user.email }" readonly="readonly">
									</div>
								</div>

								<div class="form-group">
									<label for="oldPwd"  class="col-sm-3 control-label">输入密码</label>
									<div class="col-sm-9">
										<input type="password" class="form-control" name="oldPwd" id="oldPwd" placeholder="请输入原登录密码">
									</div>
								</div>
								<div class="form-group">
									<label for="newPwd"  class="col-sm-3 control-label">输入新密码</label>
									<div class="col-sm-9">
										<input type="password" class="form-control" name="newPwd" id="newPwd" placeholder="请输入新登录密码">
									</div>
								</div>
								<div class="form-group">
									<label for="conpwd"  class="col-sm-3 control-label">确认新密码</label>
									<div class="col-sm-9">
										<input type="password" class="form-control" name="confirmPwd" id="conpwd" placeholder="请再次确认密码">
									</div>
								</div>
								<div class="col-sm-9 col-sm-offset-3 text-right">
									<button type="submit" class="btn btn-default">修改密码</button>
								</div>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-3">
				<jsp:include page="include/right.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<%@ include file="include/scripts.jsp"%>


<!-- <script>
$(function(){
	 
	$('#pwdForm').validate({
		submitHandler: function (form){
			//ajax提交
			$.post('home/updatePwd.do',$('#pwdForm').serialize(),function(data){
				//响应结果
				if(data.success){
					alert('修改密码成功');
					location.reload();
				}else{
					alert('密码修改失败:'+data.message);
				}
				
			},'json');
		},
		rules:{
			oldPwd:{	
				required:true,
				minlength:4
			},
			newPwd:{
				required:true,
				minlength:4
			},
			confirmPwd:{
				required:true,
				minlength:4,
				equalTo:'#newPwd'
			}
		}
	});
	
}); 
</script>	 -->
</body>
</html>