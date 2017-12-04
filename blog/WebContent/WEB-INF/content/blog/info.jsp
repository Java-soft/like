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
	<title>看博客</title>
	<%@ include file="../include/styles.jsp"%>

</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
 
 <div class="container">
	<div class="row">
		<div class="col-xs-9">
			<div class="panel panel-default">
				<div class="panel-heading">
				 <a href="javascript:history.go(-1);" class="text-right" title="点击返回上一页"><i class="glyphicon glyphicon-chevron-left" aria-hidden="true"></i></a>
					&nbsp;&nbsp;标题：${blogInfo.title}
				</div>
				<div class="panel-body">
				<h1 class="text-center">${blogInfo.title}</h1> 
					<p>作者：${blogInfo.insertUser}&nbsp;&nbsp;发表时间：<fmt:formatDate value="${blogInfo.insertTime}" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate>
					&nbsp;&nbsp;更新时间：<fmt:formatDate value="${blogInfo.updateTime}" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate>
			&nbsp; 分类：${blogInfo.blogtype.title}</p>  
					<div class="row">
						${blogInfo.content}
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-3"> 
	
		
	
			<jsp:include page="../include/right.jsp"></jsp:include>
		</div>
	</div>
</div>
 

 


<%@ include file="../include/scripts.jsp"%>

<!-- <script>
	$(function () {


	});
</script> -->
</body>
</html>
