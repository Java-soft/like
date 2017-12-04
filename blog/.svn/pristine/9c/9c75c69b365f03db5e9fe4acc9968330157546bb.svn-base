<%--
  Created by IntelliJ IDEA.
  User: zhouyc
  Date: 2017/4/25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>写博客</title>
	<%@ include file="../include/styles.jsp"%>
	<link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/static/styles/font-awesome.min.css"></link>
	<link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/static/styles/simditor.css"></link>

</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-xs-9">
			<div class="panel panel-default">
				<div class="panel-heading">
					我要写博客了
				</div>
				<div class="panel-body">
					<form class="form-horizontal" action="blog/add.action" method="post" id="blogForm">
						<div class="form-group">
							<label for="blogTypeId" class="col-sm-2 control-label">分类</label>
							<div class="col-sm-10">
								<select class="form-control" name="blogTypeId" id="blogTypeId">
								<option value="0">选择博客分类</option>
								<c:if test="${not empty types}">
									<c:forEach items="${types}" var="type">
										<option value="${type.id}">${type.title}</option>
									</c:forEach>
								</c:if>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="title" class="col-sm-2 control-label">标题</label>
							<div class="col-sm-10">
								<input type="text" name="title" class="form-control" id="title" placeholder="博客标题">
							</div>
						</div>
						<div class="form-group">
							<label for="title" class="col-sm-2 control-label">正文</label>
							<div class="col-sm-10">
								<textarea id="content" name="content"></textarea>
							</div>
						</div>
						<div class="row text-right" style="padding-right: 20px;">
						<button type="submit" class="btn btn-default btn-lg">提交</button>
						</div>
					</form>

				</div>
			</div>
		</div>
		<div class="col-xs-3">
			<jsp:include page="../include/right.jsp"></jsp:include>
		</div>
	</div>
</div>


<%@ include file="../include/scripts.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/scripts/module.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/scripts/hotkeys.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/scripts/uploader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/scripts/simditor.js"></script>
<script>
	$(function () {
		var editor = new Simditor({
			textarea: $('#content')
		});
		$('#blogForm').validate({
			submitHandler: function (form) {
				$.post('blog/add.do', $(form).serialize(), function (data) {
					if (data.success) {
						alert('博客发表成功')
			 			document.location.href='blog/info.do?blogId='+data.blogId;
					} else {
						alert(data.message);
					}
				},'json');
			},
			rules: {
				blogTypeId: {
					required: true,
					min:1
				},
				title: {
					required: true
				}
			},
			messages:{
				blogTypeId:'请选择博客分类',
				title:'请填写博客标题'
			}
		});
	});
</script>
</body>
</html>
