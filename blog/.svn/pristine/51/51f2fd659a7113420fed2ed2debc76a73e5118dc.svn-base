<%--
  Created by IntelliJ IDEA.
  User: zhouyc
  Date: 2017/4/26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>用户首页</title>
	<%@ include file="include/styles.jsp"%>
</head>
<body>
<jsp:include  page="include/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-xs-9">
			<div id="chart"  style="min-width:400px;height:400px"></div>
		</div>
		<div class="col-xs-3">
			<jsp:include page="include/right.jsp"></jsp:include>
		</div>
	</div>
</div>

<%@ include file="include/scripts.jsp"%>
 <script src="${pageContext.request.contextPath}/static/scripts/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/static/scripts/highcharts-zh_CN.js"></script> 
<script>
	$(function () {
		$('#chart').highcharts({
			chart: {
				type: 'line'
			},
			title: {
				text: '最近七天访问量'
			},
			subtitle: {
				text: '数据来源: '
			},
			xAxis: {
				categories: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
			},
			yAxis: {
				title: {
					text: 'UV'
				}
			},
			plotOptions: {
				line: {
					dataLabels: {
						enabled: true          // 开启数据标签
					},
					enableMouseTracking: false // 关闭鼠标跟踪，对应的提示框、点击事件会失效
				}
			},
			series: [{
				name: '访问量',
				data: [10, 16, 20, 21, 20, 10, 30]
			}]
		});
	});
</script>
</body>
</html>
