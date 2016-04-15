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
	
	<h2>格式化提示信息</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>如何格式化提示信息.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="margin-top:20px;">
		<input class="easyui-slider" value="12" style="width:300px" data-options="
				showTip: true,
				rule: [0,'|',25,'|',50,'|',75,'|',100],
				tipFormatter: function(value){
					return value+'px';
				},
				onChange: function(value){
					$('#ff').css('font-size', value);
				}">
	</div>
	<div id="ff" style="margin-top:50px;font-size:12px">www.java1234.com</div>
	
	
</body>
</html>