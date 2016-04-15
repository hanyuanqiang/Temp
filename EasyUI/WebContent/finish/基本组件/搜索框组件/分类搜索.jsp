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
	
	<h2>分类查询</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>选择一个类别然后在输入框中点击搜索按钮或者按Enter键执行查询.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<input class="easyui-searchbox" data-options="prompt:'请输入...',menu:'#mm',searcher:doSearch" style="width:300px"></input>
	<div id="mm" style="width:120px">
		<div data-options="name:'all',iconCls:'icon-ok'">所有新闻</div>
		<div data-options="name:'sports'">体育新闻</div>
	</div>
	<script>
		function doSearch(value,name){
			alert('您输入的是: ' + value+'('+name+')');
		}
	</script>
	
	
</body>
</html>