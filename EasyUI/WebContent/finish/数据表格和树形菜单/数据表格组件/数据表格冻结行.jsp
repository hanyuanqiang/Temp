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
	
	<h2>数据表格中冻结行</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>你能够冻结一些行.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table class="easyui-datagrid" title="数据表格中冻结" style="width:700px;height:250px"
			data-options="
				singleSelect: true,
				collapsible: true,
				rownumbers: true,
				url: 'datagrid_data1.json',
				onLoadSuccess: function(){
					$(this).datagrid('freezeRow',0).datagrid('freezeRow',1);
				}
			">
		<thead data-options="frozen:true">
			<tr>
				<th data-options="field:'itemid',width:100">编号</th>
				<th data-options="field:'productid',width:120">产品编号</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th data-options="field:'listprice',width:90,align:'right'">市场价</th>
				<th data-options="field:'unitcost',width:90,align:'right'">成本价</th>
				<th data-options="field:'attr1',width:230">描述</th>
				<th data-options="field:'status',width:60,align:'center'">状态</th>
			</tr>
		</thead>
	</table>
	
	
</body>
</html>