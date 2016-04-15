<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.4.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.4.5/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.4.5/demo.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.4.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.4.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>

</head>
<body>
	
	<h2>菜单事件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>在页面上右击点击菜单项.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div id="mm" class="easyui-menu" data-options="onClick:menuHandler" style="width:120px;">
		<div data-options="name:'new'">新建</div>
		<div data-options="name:'save',iconCls:'icon-save'">保存</div>
		<div data-options="name:'print',iconCls:'icon-print'">打印</div>
		<div class="menu-sep"></div>
		<div data-options="name:'exit'">退出</div>
	</div>
	<script>
		function menuHandler(item){
			alert(item.name);
		}
		$(function(){
			$(document).bind('contextmenu',function(e){
				e.preventDefault();
				$('#mm').menu('show', {
					left: e.pageX,
					top: e.pageY
				});
			});
		});
	</script>
	
	
</body>
</html>