<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>speaker添加界面</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#oo {
	width: 500px;
	height: 40px;
}

#pp {
	margin-left: 650px;
}

#zz {
	height: 120px;
	background-color: #DDDDDD;
	display: block;
}

* {
	padding: 0;
	line-height: 0;
	margin: 0;
}

#ee {
	margin-left: 50px;
	text-align: left;
	font-size: 40px;
	padding-top: 40px;
}

#mm {
	margin-left: 600px;
}

#op {
	margin-left: 40px;
}

#tb {
	margin-left: 50px;
	height: 400px;
	padding-top: 60px;
	width: 1200px;
}

#hh {
	background-color: white;
}

#tu {
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
					<li  id="tu"><a href="#">视频管理</a></li>
					<li class="active"><a href="#" id="tu">主讲人管理</a></li>
					<li><a href="#" id="tu">课程管理</a></li>
					<li id="pp"><a href="#">退出</a></li>
				</ul>
			</div>
		</div>

		<div id="zz">
			<h2 id="ee">添加主讲人</h2>

		</div>


		<div class="container-fluid" id="hh">



				
					

			

		



			<div id="tb">
<form class="form-inline" role="form" action="${pageContext.request.contextPath}/speaker/speakeradd.action"
					> 
				<div>

					姓名：<input type="text" name="speakerName" id="oo" value="主讲人姓名"><br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 
					职位：<input type="text" name="speakerJob" id="oo"
						value="主讲人职位"> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 头像地址：<input type="text" name="headImgUrl" id="oo"
						value="主讲人头像"> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 简介：<input type="text" name="speakerDesc" id="oo"
						value="主讲人简介"> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<%-- <form class="form-inline" role="form" action="${pageContext.request.contextPath}/speaker/speakeradd.action"
					> --%>
						


						<button type="submit" class="btn btn-default">保存</button>
			 </form> 
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
				</div>
			</div>
		</div>
			
	</nav>
</body>
</html>