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
	
	<h2>基本消息组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击每个按钮查看不同的消息框.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="show()">普通消息显示</a>
		<a href="#" class="easyui-linkbutton" onclick="slide()">滑动消息显示</a>
		<a href="#" class="easyui-linkbutton" onclick="fade()">淡出消息显示</a>
		<a href="#" class="easyui-linkbutton" onclick="progress()">进度条显示</a>
	</div>
	<script type="text/javascript">
		function show(){
			$.messager.show({
				title:'我的标题',
				msg:'消息4秒后自动关闭.',
				showType:'show'
			});
		}
		function slide(){
			$.messager.show({
				title:'我的标题',
				msg:'消息5秒后自动关闭.',
				timeout:5000,
				showType:'slide'
			});
		}
		function fade(){
			$.messager.show({
				title:'我的标题',
				msg:'消息不会自动关闭.',
				timeout:0,
				showType:'fade'
			});
		}
		function progress(){
			var win = $.messager.progress({
				title:'请稍等...',
				msg:'加载数据中...'
			});
			setTimeout(function(){
				$.messager.progress('close');
			},5000)
		}
	</script>
	
	
</body>
</html>