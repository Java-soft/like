<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Bootstrap 实例 - 倒置的导航栏</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	

	
	<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
	<style type="text/css">
	
	#pp{
	margin-left: 650px;
	}
	#zz {
	height: 120px;
	background-color: #DDDDDD;
	display: block;
}
body{
width: 100%;
height: 3000px;
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
	width: 1350px;
}
#hh{
background-color: white;
}
#tu{
margin-left: 30px;
}
	</style>
<script type="text/javascript">
function aa() {
	var aa = document.getElementById("main").checked;
	var bbs = document.getElementsByClassName("slave");
	if (aa) {
		for (a = 0; a < bbs.length; a++) {
			bbs[a].checked = true;
		}
	} else {
		for (a = 0; a < bbs.length; a++) {
			bbs[a].checked = false;
		}
	}
	var num = cc();
	$(".badge").html(num);
}
function bb() {
	var num = cc();
	$(".badge").html(num);
	var bbs = document.getElementsByClassName("slave");
	for (a = 0; a < bbs.length; a++) {
		if (!bbs[a].checked) {
			document.getElementById("main").checked = false;
			return;
		}
	}
	document.getElementById("main").checked = true;
}
function cc() {
	var num = 0;
	var bbs = document.getElementsByClassName("slave");
	var aa="${pageContext.request.contextPath}/video/deletemore.action?";//初始化一个地址
	for (a = 0; a < bbs.length; a++) {
		if (bbs[a].checked) {
			num++;
			aa +="id="+$(bbs[a]).val()+"&";//拼接checked的按钮
		}
	}
	$("#deletemore").attr("href",aa);
	return num;
}
</script>
</head>

<body>
<form class="navbar-form navbar-left"  action="${pageContext.request.contextPath}/video/findallvideo.action">
       </form>
<nav class="navbar navbar-inverse" style="border: none;">
	<div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" id="tu" href="#">视频管理系统</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li class="active" id="tu"><a href="${pageContext.request.contextPath}/video/findallvideo.action">视频管理</a></li>
            <li><a  href="${pageContext.request.contextPath}/speaker/findallspeaker.action" id="tu" >主讲人管理</a></li>
            <li ><a href="${pageContext.request.contextPath}/course/findallcourse.action" id="tu">课程管理</a>
                
            </li>
			<li id="pp"><a href="#">退出</a></li>
        </ul>
    </div>
	</div>

<div id="zz">
		<h2 id="ee">视频管理</h2>

	</div>
	
	
	<div class="container-fluid" id="hh">
    <div class="navbar-header" id="op">
        <a class="btn btn-primary" id="wp" href="${pageContext.request.contextPath}/video/TZ.action">添加</a>
        
		<a href="${pageContext.request.contextPath}/video/deletemore.action" id="deletemore" onclick="deletemore()" class="btn btn-primary" >
					批量删除<span class="badge">0</span>
				</a>
		
    </div>
 
    <div>
        <form class="navbar-form navbar-left" role="search" action="${pageContext.request.contextPath}/video/selectbyInput.action">
            <div class="form-group"  id="mm">
                <input type="text" class="btn btn-primary" placeholder="Search">
            </div>
           
            <select name="spearkerId" class="btn btn-primary">
            <option >请选择教师</option>
            <c:forEach items="${speaker}" var="s">
			<option value="${s.id }">${s.speakerName}</option></c:forEach>
		</select>
		
		<select name="courseId" class="btn btn-primary">
		<option>请选择课程</option>
		<c:forEach items="${course}" var="c">
		 
			<option value="${c.id}">${c.courseTitle}</option>
		</c:forEach></select>
		 
			
       <button type="submit" class="btn btn-primary" > <p id="wp">查询</p></button> 
        </form>
        
    </div>
    	
	
	<div id="tb">

			<table class="table" border="2px" >

				<tr>
					<th>序号</th>
					<th>名称</th>
					<th>介绍</th>
					<th>讲师</th>
					<th>时长</th>
					<th>播放次数</th>
					<th>编辑</th>
					<th>删除</th>
					<th>选择</th>
				</tr>
		<c:forEach items="${pagemsg.lists}" var="v">
							
							<tr>
								<th>${v.id}</th>
								
								<th>${v.title}</th>
								<th>${v.detail}</th>
								<th>${v.spearkerId}</th>
								
								<th>${v.time}</th>
								<th>${v.playNum}</th>
								<th><a href="${pageContext.request.contextPath}/video/selectbyID?id=${v.id }">修改</a> </th>
								<th><a href="${pageContext.request.contextPath}/video/videoDelete?id=${v.id }">删除</a> </th>
								
								<th><input type="checkbox" class="slave" value="${v.id}" onclick="bb()" /></th>
							</tr>
		</c:forEach>
					
			</table>
			<div>
		<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td class="td2">
   <span>第${requestScope.pagemsg.currPage}/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }/video/main?currentPage=1">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/video/main?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>

       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }/video/main?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/video/main?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
</td>
</tr>
</table>
		</div>
</div>



		</div>
		
	
</nav>

</body>
</html>