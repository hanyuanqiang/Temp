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
	
	<h2>分组格式化</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>用户能够改变分组信息.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table class="easyui-propertygrid" style="width:300px" data-options="
				url: 'propertygrid_data1.json',
				showGroup: true,
				scrollbarSize: 0,
				groupFormatter: groupFormatter
			">
	</table>
	<script>
		function groupFormatter(fvalue, rows){
			return fvalue + ' - <span style="color:red">' + rows.length + ' 行</span>';
		}
	</script>
	
	
</body>
</html>