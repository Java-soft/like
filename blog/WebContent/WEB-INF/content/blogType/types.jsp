<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品分类列表</title>
<%@ include file="../include/styles.jsp"%>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container">

		<div class="col-xs-9">
			<div class="panel panel-default">
				<div class="panel-heading">
					博客分类管理&nbsp;
					<button class="btn btn-default btn-md " id="btnAddType">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加新分类
					</button>
				</div>
				<div class="panel-body">
					<form class="form-inline" method="post" id="queryForm1"
						action="blogType/Mhcx.do">
						<div class="form-group">
							<label for="queryTypeName">名称</label> <input type="text"
								class="form-control" name="title" id="title"
								placeholder="分类名称，模糊匹配" value="${queryInfo.title }">
						</div>
						<div class="form-group">
							<label for="queryStartTime">创建时间从</label> <input type="text"
								class="form-control" name="insertTime" id="insertTime"
								placeholder="yyyy-mm-dd" value="${queryInfo.insertTime }">
						</div>
						<div class="form-group">
							<label for="queryEndTime">到</label> <input type="text"
								class="form-control" name="updateTime" id="updateTime"
								placeholder="yyyy-mm-dd" value="${queryInfo.updateTime }">
						</div>


						<button type="submit" class="btn btn-default">查询</button>
					</form>
					<table class="table  table-striped table-bordered">
						<tr>
							<th>序号</th>
							<th>分类名称</th>
							<th>分类介绍</th>
							<th>添加时间</th>
							<th>更新时间</th>
							<th>操作</th>
						</tr>
						<c:if test="${pageInfo!=null }">
							<c:forEach items="${pageInfo}" var="gro" varStatus="vstatus">
								<tr>
									<td>${vstatus.index+1 }</td>
									<td>${gro.title }</td>
									<td>${gro.descr }</td>
									<td><fmt:formatDate value="${gro.insertTime}"
											pattern="yyyy-MM-dd HH:mm" /></td>
									<td><fmt:formatDate value="${gro.updateTime}"
											pattern="yyyy-MM-dd HH:mm" /></td>
									<td>
										<button class="btn btn-default btn-sm"
											onclick="showUpdate('${gro.id}')">修改</button>&nbsp; <a
										class="btn btn-default btn-sm"
										href="blogType/delete.action?id=${gro.id}">删除</a>
									</td>
									<%-- 	<button class="btn btn-default btn-sm"   onclick="deleteType('${gro.id}')" >删除</button></td> --%>
								</tr>
							</c:forEach>
						</c:if>
					</table>
					<%-- 	<jsp:include page="../include/page.jsp"></jsp:include> --%>

				</div>
			</div>
		</div>

		<div class="col-xs-3">
			<jsp:include page="../include/right.jsp"></jsp:include>
		</div>
	</div>
	<!-- 新增分类的地方 -->
	<div class="modal fade addTypeModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">添加新分类</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" id="newTypeForm">
						<div class="form-group">
							<label for="addName" class="col-sm-2 control-label">分类名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title"
									id="addName" placeholder="中文或英文，必须填写">
							</div>
						</div>
						<div class="form-group">
							<label for="addIntroduction" class="col-sm-2 control-label">分类介绍</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="descr"
									id="addIntroduction" placeholder="介绍信息，可以不填写">
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="btnSaveNewType">保存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


	<!-- 编辑分类信息的地方 -->
	<div class="modal fade updateTypeModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">更新分类信息</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" id="updateTypeForm">
						<input type="hidden" name="id" id="updateTypeId">
						<div class="form-group">
							<label for="updateName" class="col-sm-2 control-label">分类名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title"
									id="updateName" placeholder="中文或英文，必须填写">
							</div>
						</div>
						<div class="form-group">
							<label for="updateIntroduction" class="col-sm-2 control-label">分类介绍</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="descr"
									id="updateIntroduction" placeholder="介绍信息，可以不填写">
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="btnUpdateType">更新</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<%@ include file="../include/scripts.jsp"%>
	<script type="text/javascript">

	$('#queryStartTime').datetimepicker({format: 'yyyy-mm-dd',minView:'month'});
	$('#queryEndTime').datetimepicker({format: 'yyyy-mm-dd',minView:'month'});


	//点击新增分类按钮，js控制弹窗的显示
	$('#btnAddType').on("click",function(){
		$('#newTypeForm')[0].reset();
		$('.addTypeModal').modal('show');
	});
	
	//保存新分类信息，ajax提交
	$('#btnSaveNewType').on("click",function(){
		//需要对必填字段进行校验，另外还需要对已填写数据格式做校验
		//纯用js校验太麻烦，推荐使用插件，例如bootstrap validator
		//另外，页面的校验不能作为后台进行数据库操作的依据，后台必须做二次校验，放置数据被修改，或者是使用非法手段模拟请求数据
		//此处仅做示例，只对非空字段进行校验
		var name = $('#addName').val();
		if(name==''){
			alert("必填字段不能为空");
			return;
		}
		$.post("blogType/create.do",$('#newTypeForm').serialize(),function(data){
			if(data.success){
				alert('添加新分类成功');
				location.reload();
			}else{
				alert(data.message);
			}
		},'json');
	});
	
	
	//更新分类信息，ajax提交
	$('#btnUpdateType').on("click",function(){
		//需要对必填字段进行校验，另外还需要对已填写数据格式做校验

		 var name = $('#updateTypeName').val();
		if(name==''){
			alert("必填字段不能为空");
			return;
		}
		
		$.post("blogType/update.do",$('#updateTypeForm').serialize(),function(data){
			if(data.success){
				alert('更新分类信息成功');
				$('#queryForm').submit();
			}else{
				alert(data.message);
			}
		},'json');
	});
	
	//打开编辑分类信息的窗口
	function showUpdate(id){
		alert(id);
		$('#updateTypeForm')[0].reset();

	
		
		 $.get("blogType/dk.action?idt="+id,function(da){
			if(da.success==true){
				alert('xx')
				var group = da.data;
				//加载f分类基本信息，然后放到对应的字段中
				$('#updateTypeId').val(group.id);
				$('#updateName').val(group.title);
				$('#updateIntroduction').val(group.descr);

				$('.updateTypeModal').modal('show');
		 }else{
				alert(da.message);
			}
		},"json"); 
		
	}
 
	//删除分类信息
	function deleteType(gid) {
		$.get("blogType/"+gid+"/delete.do",function (data) {
			if(data.success){
			    alert('删除分类信息成功');
			    window.location.reload();
			}else{
			    alert(data.message);
			}
        },"json");
    }
	
	function goPage(page){
		$('#queryPageNum').val(page);
		$('#queryPageForm').submit();
		
		return false;
	}
</script>


</body>
</html>