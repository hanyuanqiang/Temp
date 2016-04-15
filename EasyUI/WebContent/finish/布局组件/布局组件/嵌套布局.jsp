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
	
	<h2>嵌套布局</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>布局区域面板能够包含其他布局或者其他组件.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-layout" style="width:700px;height:350px;">
		<div data-options="region:'north'" style="height:50px"></div>
		<div data-options="region:'south',split:true" style="height:50px;"></div>
		<div data-options="region:'east',split:true" title="东" style="width:180px;"></div>
		<div data-options="region:'west',split:true" title="西" style="width:100px;"></div>
		<div data-options="region:'center',iconCls:'icon-ok'" title="中">
			<div class="easyui-layout" data-options="fit:true">
				<div data-options="region:'north',split:true,border:false" style="height:50px"></div>
				<div data-options="region:'west',split:true,border:false" style="width:100px"></div>
				<div data-options="region:'center',border:false"></div>
			</div>
		</div>
	</div>
	
	
</body>
</html>