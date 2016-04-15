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
	
	<h2>基本验证框组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>我们可以很方便地添加验证逻辑到文本框里.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="注册" style="width:400px;padding:10px">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input class="easyui-validatebox" data-options="required:true,validType:'length[3,10]'"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input class="easyui-validatebox" data-options="required:true,validType:'email'"></td>
			</tr>
			<tr>
				<td>出生日期:</td>
				<td><input class="easyui-datebox"></td>
			</tr>
			<tr>
				<td>URL:</td>
				<td><input class="easyui-validatebox" data-options="required:true,validType:'url'"></td>
			</tr>
			<tr>
				<td>电话:</td>
				<td><input class="easyui-validatebox" data-options="required:true"></td>
			</tr>
		</table>
	</div>
	
	
</body>
</html>