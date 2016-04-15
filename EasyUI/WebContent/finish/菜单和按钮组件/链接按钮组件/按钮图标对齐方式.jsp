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
	
	<h2>链接按钮的图标对齐位置</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>选择图标对齐方式，重置按钮图标左对齐或者右对齐.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div id="button-bar">
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">删除</a>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut',disabled:true">剪切</a>
	</div>
	<div style="margin:10px 0">
		<span>选择图标对齐位置: </span>
		<select onchange="$('#button-bar a').linkbutton({iconAlign:this.value})">
			<option value="left">左</option>
			<option value="right">右</option>
		</select>
	</div>
	
	
</body>
</html>