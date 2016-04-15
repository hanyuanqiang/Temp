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
	
	<h2>日期框事件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击右边日历小图标.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<input class="easyui-datebox" data-options="onSelect:onSelect"></input>
	<div style="margin:10px 0">
		<span>选择的日期是: </span>
		<span id="result"></span>
	</div>
	<script>
		function onSelect(date){
			$('#result').text(date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate());
		}
	</script>
	
	
</body>
</html>