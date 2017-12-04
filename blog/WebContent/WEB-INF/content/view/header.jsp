<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="view/index.do">Blog</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="view/index.do">博客系统</a></li>

      </ul>
     
      <ul class="nav navbar-nav navbar-right">
        <c:if test="${!empty _USEREMAIL}">
          <li><a href="#">${_USEREMAIL}</a></li>
          <li><a href="home/admin.do">我的博客</a></li>
        </c:if>
        <c:if test="${empty _USEREMAIL}">
        <li><a href="home/login.do">登录</a></li>
          <li><a href="home/regist.do">注册</a></li>
        </c:if>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>