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
	
	<h2>可编辑树形表格</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>选择一个节点点击编辑按钮执行编辑操作.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="edit()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="save()">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="cancel()">结束</a>
	</div>
	<table id="tg" class="easyui-treegrid" title="可编辑树形表格" style="width:700px;height:250px"
			data-options="
				iconCls: 'icon-ok',
				rownumbers: true,
				animate: true,
				collapsible: true,
				fitColumns: true,
				url: 'treegrid_data2.json',
				idField: 'id',
				treeField: 'name',
				showFooter: true
			">
		<thead>
			<tr>
				<th data-options="field:'name',width:180,editor:'text'">任务名称</th>
				<th data-options="field:'persons',width:60,align:'right',editor:'numberbox'">人员</th>
				<th data-options="field:'begin',width:80,editor:'datebox'">开始日期</th>
				<th data-options="field:'end',width:80,editor:'datebox'">结束日期</th>
				<th data-options="field:'progress',width:120,formatter:formatProgress,editor:'numberbox'">进度</th>
			</tr>
		</thead>
	</table>
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
		var editingId;
		function edit(){
			if (editingId != undefined){
				$('#tg').treegrid('select', editingId);
				return;
			}
			var row = $('#tg').treegrid('getSelected');
			if (row){
				editingId = row.id
				$('#tg').treegrid('beginEdit', editingId);
			}
		}
		function save(){
			if (editingId != undefined){
				var t = $('#tg');
				t.treegrid('endEdit', editingId);
				editingId = undefined;
				var persons = 0;
				var rows = t.treegrid('getChildren');
				for(var i=0; i<rows.length; i++){
					var p = parseInt(rows[i].persons);
					if (!isNaN(p)){
						persons += p;
					}
				}
				var frow = t.treegrid('getFooterRows')[0];
				frow.persons = persons;
				t.treegrid('reloadFooter');
			}
		}
		function cancel(){
			if (editingId != undefined){
				$('#tg').treegrid('cancelEdit', editingId);
				editingId = undefined;
			}
		}
	</script>
	
	
</body>
</html>