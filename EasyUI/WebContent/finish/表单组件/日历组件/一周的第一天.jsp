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
	
	<h2>一周的第一天</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>选择一周的第一天.</div>
	</div>
	
	<div style="margin:10px 0">
		<select onchange="$('#cc').calendar({firstDay:this.value})">
			<option value="1">周一</option>
			<option value="2">周二</option>
			<option value="3">周三</option>
			<option value="4">周四</option>
			<option value="5">周五</option>
			<option value="6">周六</option>
			<option value="0">周日</option>
		</select>
	</div>
	
	<div id="cc" class="easyui-calendar" style="width:180px;height:180px;"></div>
	
	
</body>
</html>