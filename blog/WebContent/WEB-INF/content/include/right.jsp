<%--
  Created by IntelliJ IDEA.
  User: zhouyc
  Date: 2017/4/25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

	<!--个人信息-->
<img src="${_USER_IMG}" style="margin-top:30px;width:80px;height:80px;border-radius: 40px;float:right;">
<div id="Layer1" style="display: none; position: absolute; z-index: 100;"></div>
	<p>
		<b>${_USER_MODEL.email}</b>

	</p>
	<p>
		大名：<b>${_USER_MODEL.userName}</b>
	</p>
	<p>
		小名：<b>${_USER_MODEL.nickName}</b>
	</p>
	<p>
		年龄：<b>${_USER_MODEL.age}</b>
	</p>
	<p>
		个人简介：${_USER_MODEL.introduction}
	</p>

<div class="row">
	<!--功能列表-->
	<div class="list-group">
		<a href="blog/admin.do" class="list-group-item" >博客首页</a>
		<a href="findById2.action" class="list-group-item">博客管理</a>
		
		<a href="blogType/queryList.do" class="list-group-item">分类管理</a>
		<a href="updateInfo.do" class="list-group-item">资料更新</a>
		<a href="updatePwd.do" class="list-group-item">修改密码</a>
		<a href="blog/state.do" class="list-group-item">博客统计</a>
		<a href="home/logout.do" class="list-group-item">退出登录</a>
	</div>
</div>
<div class="row">
	<a href="blog/Tz1.action" class="btn btn-primary btn-lg" title="快去写博客">写博客</a>
</div>
