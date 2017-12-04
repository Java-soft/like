<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>错误界面</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- 如果IE版本小于9，加载以下js,解决低版本兼容问题 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </head>
  <body>
     <div class="container">
         
         <div style="text-align: center">
           <img src="img/error.jpg" alt="..."  class="img-rounded">
         </div>
         
        <h2>异常信息如下：</h2>&nbsp;&nbsp;<h3><a href="javascript:history.go(-1)">返回上一页</a></h3>
        <div class="alert alert-danger" role="alert">${message}</div>
     </div>
  </body>
</html>
