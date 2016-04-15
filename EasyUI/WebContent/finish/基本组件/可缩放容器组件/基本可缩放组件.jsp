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
	
	<h2>基本可缩放组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击组件边缘调整组件大小.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-resizable" data-options="minWidth:50,minHeight:50" style="width:200px;height:150px;border:1px solid #ccc;">
		<div style="padding:20px">缩放我</div>
	</div>
	<div id="dd" class="easyui-draggable easyui-resizable" data-options="handle:'#mytitle'" style="width:200px;height:150px;border:1px solid #ccc">
		<div id="mytitle" style="background:#ddd;padding:5px;">标题</div>
		<div style="padding:20px">拖拽并缩放我</div>
	</div>
	
	
</body>
</html>