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
	
	<h2>格式化数字</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>数字格式化能够控制一个数字如何显示.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table>
		<tr>
			<td>美国数字格式：</td>
			<td><input class="easyui-numberbox" value="1234567.89" data-options="precision:2,groupSeparator:','"></input></td>
		</tr>
		<tr>
			<td>法国数字格式：</td>
			<td><input class="easyui-numberbox" value="1234567.89" data-options="precision:2,groupSeparator:' ',decimalSeparator:','"></input></td>
		</tr>
		<tr>
			<td>货币:美元</td>
			<td><input class="easyui-numberbox" value="1234567.89" data-options="precision:2,groupSeparator:',',decimalSeparator:'.',prefix:'$'"></input></td>
		</tr>
		<tr>
			<td>货币:欧元</td>
			<td><input class="easyui-numberbox" value="1234567.89" data-options="precision:2,groupSeparator:',',decimalSeparator:' ',prefix:'€'"></input></td>
		</tr>
		<tr>
			<td></td>
			<td><input class="easyui-numberbox" value="1234567.89" data-options="precision:2,groupSeparator:' ',decimalSeparator:',',suffix:'€'"></input></td>
		</tr>
	</table>
	
	
</body>
</html>