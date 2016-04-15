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
	
	<h2>数据表格列对齐</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>使用align和halign来设置列和他们的列头对齐.</div>
	</div>
	<div style="margin:10px 0;"></div>
	
	<table class="easyui-datagrid" title="数据表格列对齐" style="width:700px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json'">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80,halign:'center'">编号</th>
				<th data-options="field:'productid',width:100,halign:'center'">产品编号</th>
				<th data-options="field:'listprice',width:80,align:'right',halign:'center'">市场价</th>
				<th data-options="field:'unitcost',width:80,align:'right',halign:'center'">成本价</th>
				<th data-options="field:'attr1',width:250,halign:'center'">描述</th>
				<th data-options="field:'status',width:60,align:'center',halign:'center'">状态</th>
			</tr>
		</thead>
	</table>
	
	
</body>
</html>