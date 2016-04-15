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
	
	
	<h2>普通链接按钮</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>链接按钮只有普通效果.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="padding:5px;border:1px solid #ddd;">
		<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'">关闭</a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'">刷新</a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'">搜索</a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true">文本按钮</a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-print'">打印</a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-help'"> </a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-save'"></a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-back'"></a>
	</div>
	
	
</body>
</html>