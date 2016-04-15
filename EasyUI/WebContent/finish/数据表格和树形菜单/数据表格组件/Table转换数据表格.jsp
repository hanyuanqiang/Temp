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
	
	<h2>把Table转化成数据表格</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>把Table转化成数据表格.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table class="easyui-datagrid" style="width:500px;height:auto">
		<thead>
			<tr>
				<th data-options="field:'itemid'">编号</th>
				<th data-options="field:'productid'">产品编号</th>
				<th data-options="field:'listprice',align:'right'">市场价</th>
				<th data-options="field:'attr1'">描述</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>EST-1</td><td>FI-SW-01</td><td>36.50</td><td>Large</td>
			</tr>
			<tr>
				<td>EST-10</td><td>K9-DL-01</td><td>18.50</td><td>Spotted Adult Female</td>
			</tr>
			<tr>
				<td>EST-11</td><td>RP-SN-01</td><td>28.50</td><td>Venomless</td>
			</tr>
			<tr>
				<td>EST-12</td><td>RP-SN-01</td><td>26.50</td><td>Rattleless</td>
			</tr>
			<tr>
				<td>EST-13</td><td>RP-LI-02</td><td>35.50</td><td>Green Adult</td>
			</tr>
		</tbody>
	</table>
	
	
</body>
</html>