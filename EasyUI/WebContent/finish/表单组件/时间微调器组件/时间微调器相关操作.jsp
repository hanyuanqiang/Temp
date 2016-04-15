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
	
	<h2>时间微调器相关操作</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮执行相关操作.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="getValue()">获取值</a>
		<a href="#" class="easyui-linkbutton" onclick="setValue()">设置值</a>
		<a href="#" class="easyui-linkbutton" onclick="disable()">禁用</a>
		<a href="#" class="easyui-linkbutton" onclick="enable()">启用</a>
	</div>
	<input id="dt" class="easyui-timespinner" style="width:80px;">
	<script>
		function getValue(){
			var val = $('#dt').timespinner('getValue');
			alert(val);
		}
		function setValue(){
			$('#dt').timespinner('setValue', '09:45');
		}
		function disable(){
			$('#dt').timespinner('disable');
		}
		function enable(){
			$('#dt').timespinner('enable');
		}
	</script>
	
	
</body>
</html>