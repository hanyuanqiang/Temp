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
	
	<h2>定制数据表格分页</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>你能够把一些按钮添加到标准的数据表格分页工具条上去.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table id="dg" class="easyui-datagrid" title="定制数据表格分页" style="width:705px;height:250px"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json'">
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
	<script type="text/javascript">
		$(function(){
			var pager = $('#dg').datagrid('getPager');	// get the pager of datagrid
			pager.pagination({
				buttons:[{
					iconCls:'icon-search',
					handler:function(){
						alert('搜索');
					}
				},{
					iconCls:'icon-add',
					handler:function(){
						alert('添加');
					}
				},{
					iconCls:'icon-edit',
					handler:function(){
						alert('编辑');
					}
				}]
			});			
		})
	</script>
	
	
</body>
</html>