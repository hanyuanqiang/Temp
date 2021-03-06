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
	
	<h2>数据表格选择模型</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>选择一种选择模型并且选择一行或者多行.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="getSelected()">获取单选数据</a>
		<a href="#" class="easyui-linkbutton" onclick="getSelections()">获取多选数据</a>
	</div>
	<table id="dg" class="easyui-datagrid" title="数据表格选择模型" style="width:705px;height:250px"
			data-options="singleSelect:true,url:'datagrid_data1.json'">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">编号</th>
				<th data-options="field:'productid',width:100">产品编号</th>
				<th data-options="field:'listprice',width:80,align:'right'">市场价</th>
				<th data-options="field:'unitcost',width:80,align:'right'">成本价</th>
				<th data-options="field:'attr1',width:250">描述</th>
				<th data-options="field:'status',width:60,align:'center'">状态</th>
			</tr>
		</thead>
	</table>
	<div style="margin:10px 0;">
		<span>选择模型: </span>
		<select onchange="$('#dg').datagrid({singleSelect:(this.value==0)})">
			<option value="0">单选</option>
			<option value="1">多选</option>
		</select>
	</div>
	<script type="text/javascript">
		function getSelected(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$.messager.alert('系统提示', row.itemid+":"+row.productid+":"+row.attr1);
			}
		}
		function getSelections(){
			var ss = [];
			var rows = $('#dg').datagrid('getSelections');
			for(var i=0; i<rows.length; i++){
				var row = rows[i];
				ss.push('<span>'+row.itemid+":"+row.productid+":"+row.attr1+'</span>');
			}
			$.messager.alert('系统提示', ss.join('<br/>'));
		}
	</script>
	
	
</body>
</html>