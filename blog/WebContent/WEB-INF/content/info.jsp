<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE>
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>更新资料</title>
	<%@ include file="include/styles.jsp" %>
</head>
<body>

<jsp:include page="include/header.jsp"/>

<div class="container">
	<div class="row">
		<div class="col-xs-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						更新资料
					</div>
					
					<div class="panel-body">
						<%-- <c:if test="${!empty user.avatar}">
							<p class="text-center">
								<img src="${user.avatar}" >
							</p> --%>
							<c:if test="${not empty user.avatar}">
                                  <img width="200px" height="200px" src="${user.avatar}">
                            </c:if>
					<%-- 	</c:if> --%>
						<c:if test="${empty user.avatar}">
                                <p class="text-center"><img  src="${pageContext.request.contextPath}/upload/1494774724269.jpg">
                           </p>
                            </c:if>
						<form class="form-horizontal"  method="post" 
						action="infoUpdate.action" enctype="multipart/form-data">

							<div class="form-group">
								<label for="avatar" class="col-sm-2 control-label">头像</label>
								<div class="col-sm-10">
									<input type="file" class="form-control" id="avatar" placeholder="${user.avatar}"
									value="${user.avatar}"
									 name="avatar">
								</div>                 
							</div>
							<div class="form-group">
								<label for="email" class="col-sm-2 control-label">邮箱地址</label>
								<div class="col-sm-10">
									<input type="email" id="email" class="form-control" value="${user.email }"
										   readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label for="userName" class="col-sm-2 control-label">姓名</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="userName" id="userName"
										   placeholder="姓名，大名" value="${user.userName}">
								</div>
							</div>
							<div class="form-group">
								<label for="nickName" class="col-sm-2 control-label">昵称</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="nickName" id="nickName"
										   placeholder="昵称，小名" value="${user.nickName}">
								</div>
							</div>
							<div class="form-group">
								<label for="age" class="col-sm-2 control-label">年龄</label>
								<div class="col-sm-10">
									<input type="number" class="form-control" name="age" id="age" placeholder="年龄"
										   value="${user.age}">
								</div>
							</div>
							<div class="form-group">
								<label for="introduction" class="col-sm-2 control-label">个人介绍</label>
								<div class="col-sm-10">
									<textarea class="form-control" name="introduction"
											  id="introduction">${user.introduction}</textarea>
								</div>
							</div>
							<div class="col-sm-10 col-sm-offset-2 text-right">
								<button type="submit" class="btn btn-default">更新信息</button>
							</div>
						</form>
					</div>
				</div>
		</div>
		<div class="col-xs-3">
			<jsp:include page="include/right.jsp"></jsp:include>
		</div>
	</div>
</div>

<%@ include file="include/scripts.jsp" %>


<script>
	$(function () {

		$('#infoForm').validate({
			submitHandler: function (form) {
				//ajax提交
				$(form).ajaxSubmit({
					method: 'post',
					dataType: 'json',
					success: function (data) {
						//响应结果
						if (data.success) {
							alert('修改信息成功');
							location.reload();
						} else {
							alert('信息修改失败:' + data.message);
						}
					}
				});

			},
			rules: {
				userName: {
					required: true
				},
				nickName: {
					required: true
				},
				age: {
					required: true
				}
				/* avatar: {
					required: true
				} */
			}
		});

	});
</script>
</body>
</html>