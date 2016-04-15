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
	
	<h2>基本树形表格</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>树形表格允许你展开和收缩多行组合.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table title="文件浏览" class="easyui-treegrid" style="width:700px;height:250px"
			data-options="
				url: 'treegrid_data1.json',
				rownumbers: true,
				idField: 'id',
				treeField: 'name'
			">
		<thead>
			<tr>
				<th data-options="field:'name'" width="220">名称</th>
				<th data-options="field:'size'" width="100" align="right">大小</th>
				<th data-options="field:'date'" width="150">修改日期</th>
			</tr>
		</thead>
	</table>
	
	
</body>
</html>