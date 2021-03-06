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
	
	<h2>树形表格右键菜单</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>右击树节点显示菜单.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table id="tg" class="easyui-treegrid" title="树形表格右键菜单" style="width:700px;height:250px"
			data-options="
				iconCls: 'icon-ok',
				rownumbers: true,
				animate: true,
				collapsible: true,
				fitColumns: true,
				url: 'treegrid_data2.json',
				idField: 'id',
				treeField: 'name',
				onContextMenu: onContextMenu
			">
		<thead>
			<tr>
				<th data-options="field:'name',width:180">任务名称</th>
				<th data-options="field:'persons',width:60,align:'right'">人员</th>
				<th data-options="field:'begin',width:80">开始日期</th>
				<th data-options="field:'end',width:80">结束日期</th>
				<th data-options="field:'progress',width:120,formatter:formatProgress">进度</th>
			</tr>
		</thead>
	</table>
	<div id="mm" class="easyui-menu" style="width:120px;">
		<div onclick="append()" data-options="iconCls:'icon-add'">添加</div>
		<div onclick="removeIt()" data-options="iconCls:'icon-remove'">删除</div>
		<div class="menu-sep"></div>
		<div onclick="collapse()">收缩</div>
		<div onclick="expand()">展开</div>
	</div>
	<script type="text/javascript">
		function formatProgress(value){
	    	if (value){
		    	var s = '<div style="width:100%;border:1px solid #ccc">' +
		    			'<div style="width:' + value + '%;background:#cc0000;color:#fff">' + value + '%' + '</div>'
		    			'</div>';
		    	return s;
	    	} else {
		    	return '';
	    	}
		}
		function onContextMenu(e,row){
			e.preventDefault();
			$(this).treegrid('select', row.id);
			$('#mm').menu('show',{
				left: e.pageX,
				top: e.pageY
			});
		}
		var idIndex = 100;
		function append(){
			idIndex++;
			var d1 = new Date();
			var d2 = new Date();
			d2.setMonth(d2.getMonth()+1);
			var node = $('#tg').treegrid('getSelected');
			$('#tg').treegrid('append',{
				parent: node.id,
				data: [{
					id: idIndex,
					name: 'New Task'+idIndex,
					persons: parseInt(Math.random()*10),
					begin: $.fn.datebox.defaults.formatter(d1),
					end: $.fn.datebox.defaults.formatter(d2),
					progress: parseInt(Math.random()*100)
				}]
			})
		}
		function removeIt(){
			var node = $('#tg').treegrid('getSelected');
			if (node){
				$('#tg').treegrid('remove', node.id);
			}
		}
		function collapse(){
			var node = $('#tg').treegrid('getSelected');
			if (node){
				$('#tg').treegrid('collapse', node.id);
			}
		}
		function expand(){
			var node = $('#tg').treegrid('getSelected');
			if (node){
				$('#tg').treegrid('expand', node.id);
			}
		}
	</script>
	
	
</body>
</html>