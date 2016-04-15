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
	
	<h2>数据表格右键菜单</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>右击数据表格头部显示菜单.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table id="dg"></table>
	<script type="text/javascript">
		$(function(){
			$('#dg').datagrid({
				url: 'datagrid_data1.json',
				title: '数据表格右键菜单',
				iconCls: 'icon-save',
				width: 700,
				height: 250,
				fitColumns: true,
				singleSelect: true,
				columns:[[
					{field:'itemid',title:'编号',width:80},
					{field:'productid',title:'产品编号',width:120},
					{field:'listprice',title:'市场价',width:80,align:'right'},
					{field:'unitcost',title:'成本价',width:80,align:'right'},
					{field:'attr1',title:'描述',width:250},
					{field:'status',title:'状态',width:60,align:'center'}
				]],
				onHeaderContextMenu: function(e, field){
					e.preventDefault();
					if (!cmenu){
						createColumnMenu();
					}
					cmenu.menu('show', {
						left:e.pageX,
						top:e.pageY
					});
				}
			});
		});
		var cmenu;
		function createColumnMenu(){
			cmenu = $('<div/>').appendTo('body');
			cmenu.menu({
				onClick: function(item){
					if (item.iconCls == 'icon-ok'){
						$('#dg').datagrid('hideColumn', item.name);
						cmenu.menu('setIcon', {
							target: item.target,
							iconCls: 'icon-empty'
						});
					} else {
						$('#dg').datagrid('showColumn', item.name);
						cmenu.menu('setIcon', {
							target: item.target,
							iconCls: 'icon-ok'
						});
					}
				}
			});
			var fields = $('#dg').datagrid('getColumnFields');
			for(var i=0; i<fields.length; i++){
				var field = fields[i];
				var col = $('#dg').datagrid('getColumnOption', field);
				cmenu.menu('appendItem', {
					text: col.title,
					name: field,
					iconCls: 'icon-ok'
				});
			}
		}
	</script>
	
	
</body>
</html>