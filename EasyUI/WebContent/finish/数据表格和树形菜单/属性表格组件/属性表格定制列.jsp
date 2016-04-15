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
	
	<h2>属性表格定制列</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>属性表格的列可以改变.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table class="easyui-propertygrid" style="width:300px" data-options="
				url: 'propertygrid_data1.json',
				showGroup: true,
				scrollbarSize: 0,
				columns: mycolumns
			">
	</table>
	<script>
		var mycolumns = [[
    		{field:'name',title:'名称',width:100,sortable:true},
   		    {field:'value',title:'值',width:100,resizable:false}
        ]];
	</script>
	
	
</body>
</html>