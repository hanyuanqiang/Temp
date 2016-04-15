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
	
	<h2>树形表格报表</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>使用树形表格显示复杂报表.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table title="树形表格报表" class="easyui-treegrid" style="width:700px;height:250px"
			data-options="
				url: 'treegrid_data3.json',
				rownumbers: true,
				showFooter: true,
				idField: 'id',
				treeField: 'region'
			">
		<thead frozen="true">
			<tr>
				<th field="region" width="200">区域</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th colspan="4">2009</th>
				<th colspan="4">2010</th>
			</tr>
			<tr>
				<th field="f1" width="60" align="right">第一季度</th>
				<th field="f2" width="60" align="right">第二季度</th>
				<th field="f3" width="60" align="right">第三季度</th>
				<th field="f4" width="60" align="right">第四季度</th>
				<th field="f5" width="60" align="right">第一季度</th>
				<th field="f6" width="60" align="right">第二季度</th>
				<th field="f7" width="60" align="right">第三季度</th>
				<th field="f8" width="60" align="right">第四季度</th>
			</tr>
		</thead>
	</table>
	
	
</body>
</html>