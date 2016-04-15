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
<body class="easyui-layout">
	
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">北部区域</div>
	<div data-options="region:'west',split:true,title:'西'" style="width:150px;padding:10px;">西部区域内容</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'东'" style="width:100px;padding:10px;">中部区域</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">南部区域</div>
	<div data-options="region:'center',title:'中'"></div>
	
	
</body>
</html>