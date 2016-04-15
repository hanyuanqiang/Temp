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
	
	<h2>树形表格相关操作</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮执行相关操作.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="collapseAll()">收缩所有</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="expandAll()">展开所有</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="expandTo()">展开到</a>
	</div>
	<table id="tg" class="easyui-treegrid" title="树形表格相关操作" style="width:700px;height:250px"
			data-options="
				iconCls: 'icon-ok',
				rownumbers: true,
				animate: true,
				collapsible: true,
				fitColumns: true,
				url: 'treegrid_data2.json',
				idField: 'id',
				treeField: 'name'
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
		function collapseAll(){
			$('#tg').treegrid('collapseAll');
		}
		function expandAll(){
			$('#tg').treegrid('expandAll');
		}
		function expandTo(){
			$('#tg').treegrid('expandTo',21).treegrid('select',21);
		}
	</script>
	
	
</body>
</html>