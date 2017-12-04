<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bootstrap 实例 - 倒置的导航栏</title>
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
					<li class="active" id="tu"><a href="#">视频管理</a></li>
					<li><a href="#" id="tu">主讲人管理</a></li>
					<li><a href="#" id="tu">课程管理</a></li>
					<li id="pp"><a href="#">退出</a></li>
				</ul>
			</div>
		</div>

		<div id="zz">
			<h2 id="ee">视频管理</h2>

		</div>


		<div class="container-fluid" id="hh">



				
					

			

		



			<div id="tb">
<form class="form-inline" role="form" action="${pageContext.request.contextPath}/video/videoadd.action"
					> 
				<div>

					视频标题：<input type="text" name="title" id="oo" value="视屏名称"><br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 主讲人：<select id="oo">
						<option value="a">请选择教师</option>
					</select><br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 所选课程 ：<select id="oo">
						<option value="b">请选择课程</option>
					</select> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 视频时长(秒)：<input type="text" name="time" id="oo"
						value="精确到秒"> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 封面图片地址：<input type="text" name="imageUrl" id="oo"
						value="具体的url"> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> 视频播放地址：<input type="text" name="videoUrl" id="oo"
						value="具体的url"> <br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<%-- <form class="form-inline" role="form" action="${pageContext.request.contextPath}/video/videoadd.action"
					> --%>
						<div class="form-group">
							<label class="sr-only" for="name">备注</label> <input
								type="text" class="form-control" name="detail" id="oo"
								placeholder="备注">
						</div>


						<button type="submit" class="btn btn-default">提交</button>
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