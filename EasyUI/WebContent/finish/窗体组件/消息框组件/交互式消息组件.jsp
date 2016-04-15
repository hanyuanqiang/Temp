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
	
	<h2>交互式消息组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击每个按钮显示不同的交互式消息框.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="confirm1();">确认消息框</a>
		<a href="#" class="easyui-linkbutton" onclick="prompt1()">提示消息框</a>
	</div>
	<script>
		function confirm1(){
			$.messager.confirm('我的标题', '确认吗?', function(r){
				if (r){
					alert('确认: '+r);
				}
			});
		}
		function prompt1(){
			$.messager.prompt('我的标题', '请输些东西', function(r){
				if (r){
					alert('你输入的是: '+r);
				}
			});
		}
	</script>
	
	
</body>
</html>