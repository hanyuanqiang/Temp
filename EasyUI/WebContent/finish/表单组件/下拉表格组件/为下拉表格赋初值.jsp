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
	
	<h2>为下拉表格赋初值</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>当下拉表格创建完后赋初值.</div>
	</div>
	<div style="margin:10px 0"></div>
	<input class="easyui-combogrid" style="width:250px" value="EST-12" data-options="
			panelWidth: 500,
			idField: 'itemid',
			textField: 'productname',
			url: 'datagrid_data1.json',
			columns: [[
				{field:'itemid',title:'产品编号',width:80},
				{field:'productname',title:'产品名称',width:120},
				{field:'listprice',title:'市场价',width:80,align:'right'},
				{field:'unitcost',title:'成本价',width:80,align:'right'},
				{field:'attr1',title:'描述',width:200},
				{field:'status',title:'状态',width:60,align:'center'}
			]],
			fitColumns: true
		">
	
	
</body>
</html>