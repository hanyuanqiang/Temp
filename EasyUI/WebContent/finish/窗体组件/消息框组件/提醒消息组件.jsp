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
	
	<h2>提醒消息组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击每个按钮显示不同的提醒消息框.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="alert1()">提醒消息</a>
		<a href="#" class="easyui-linkbutton" onclick="alert2()">错误消息</a>
		<a href="#" class="easyui-linkbutton" onclick="alert3()">信息消息</a>
		<a href="#" class="easyui-linkbutton" onclick="alert4()">问题消息</a>
		<a href="#" class="easyui-linkbutton" onclick="alert5()">警告消息</a>
	</div>
	<script>
		function alert1(){
			$.messager.alert('我的标题','这是一个消息!');
		}
		function alert2(){
			$.messager.alert('我的标题','这是一个错误消息!','error');
		}
		function alert3(){
			$.messager.alert('我的标题','这是一个信息消息!','info');
		}
		function alert4(){
			$.messager.alert('我的标题','这是一个问题消息!','question');
		}
		function alert5(){
			$.messager.alert('我的标题','这是一个警告消息!','warning');
		}
	</script>
	
	
</body>
</html>