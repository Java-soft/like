<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Bootstrap</title>
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
#tu{
margin-left: 30px;
}
	</style>
</head>

<body>
 <form class="navbar-form navbar-left"  action="${pageContext.request.contextPath}/speaker/findallspeaker.action">
<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" id="tu" href="#">视频管理系统</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li  id="tu"><a href="${pageContext.request.contextPath}/video/findallvideo.action">视频管理</a></li>
             <li class="active"><a  href="${pageContext.request.contextPath}/speaker/findallspeaker.action" id="tu" >主讲人管理</a></li>
            <li  ><a href="${pageContext.request.contextPath}/course/findallcourse.action" id="tu">课程管理</a>
                
            </li>
			<li id="pp"><a href="#">退出</a></li>
        </ul>
    </div>
	</div>

<div id="zz">
		<h2 id="ee">主讲人管理</h2>

	</div>
	
	
	<div class="container-fluid" id="hh">
    <div class="navbar-header" id="op">
        <a class="navbar-brand" id="wp" href="${pageContext.request.contextPath}/speaker/TZ.action">添加</a>
		
    </div>
    
      
      
	<div id="tb">
 
			<table class="table" border="2px" >

				<tr>
					<th>序号</th>
					<th>名称</th>
					<th>职位</th>
					<th>简介</th>
					
					<th>编辑</th>
					<th>删除</th>
				</tr>
		<c:forEach items="${speaker}" var="v">
							
							<tr>
								<th>${v.id}</th>
								<th>${v.speakerName}</th>
								<th>${v.speakerJob}</th>
								<th>${v.speakerDesc}</th>
								
								
								<th><a href="${pageContext.request.contextPath}/speaker/selectbyID?id=${v.id }">修改</a> </th>
								<th><a href="${pageContext.request.contextPath}/speaker/speakerDelete?id=${v.id }">删除</a> </th>
									
							</tr>
		</c:forEach>
					
			</table>
			
</div>
  
		</div>
</nav>
</form>
</body>
</html>