<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Bootstrap 实例 - 倒置的导航栏</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
	
	#pp{
	margin-left: 650px;
	}
	#zz {
	height: 120px;
	background-color: #DDDDDD;
	display: block;
}
* {
	padding:0;line-height:0;margin:0;
}
#ee {
margin-left:50px;
	text-align: left;
	font-size: 40px;
	padding-top: 40px;
}
#mm{
margin-left: 600px;
}
#op{
margin-left: 40px;
}
#tb {

	margin-left: 50px; 
	height: 400px;
	padding-top: 60px;
	width: 1200px;
}
#hh{
background-color: white;
}
#gg{
margin-left: 900px;
}
#tu{
margin-left: 30px;
}
	</style>
</head>

<body>

<nav class="navbar navbar-inverse" role="navigation">

	<div class="container-fluid">
	
    <div class="navbar-header">
        <a class="navbar-brand" id="tu" href="#">视频管理系统</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li class="active" id="tu"><a href="#">视频管理</a></li>
            <li><a href="#" id="tu">主讲人管理</a></li>
            <li ><a href="#" id="tu">课程管理</a>
                
            </li>
			<li id="pp"><a href="#">退出</a></li>
        </ul>
    </div>
	</div>

<div id="zz">
		<h2 id="ee">视频管理</h2>

	</div>
	
	
	<div  id="hh">
  
	
	<div id="tb">
<form action="${pageContext.request.contextPath}/video/VideoUpdate.action">
			     <c:forEach items="${video}" var="v">
					<table  style="border-collapse:separate; border-spacing:30px;">
					
				<tr>
				<th></th>
					<th>名称</th>
					<th>介绍</th>
					<th>讲师</th>
					<th>时长</th>
					
					
				</tr>
					<tr>
					
					<td><input type="hidden"  name="id" value="${v.id}"></td>
					
					<td><input type="text" name="title" value="${v.title}"></td>
					
					<td><input type="text" name="detail" value="${v.detail}"></td>
					
					<td><input type="text" name="spearkerId" value="${v.spearkerId}"></td>
					<td><input type="text" name="time" value="${v.time}"></td>
					
		            
		</tr>
		 </table>
		 </c:forEach>
		 <input type="submit"  value="修改" style="width: 100px;height: 60px;" id="gg" >
</form>
</div>
		</div>
</nav>
</body>
</html>