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
	
	<h2>定制面板工具</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击右上角按钮执行面板相关操作.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="定制面板工具" style="width:500px;height:200px;padding:10px;"
			data-options="iconCls:'icon-save',closable:true,tools:'#tt'">
		<p style="font-size:14px">jQuery EasyUI框架能够让你轻松构建Web页面.</p>
		<ul>
			<li>easyui是一套基于JQuery的用户界面插件集合.</li>
			<li>easyui为构建现代流行的交互式体验JavaScript应用程序提供了基本功能.</li>
			<li>使用easyui你不需要写很多javascript代码，你通常只需要写一些html标签来定义用户界面.</li>
			<li>完美支持HTML5.</li>
			<li>easyui能够有效地节省你的开发时间.</li>
			<li>easyui很简单但是很强大.</li>
		</ul>
	</div>
	<div id="tt">
		<a href="javascript:void(0)" class="icon-add" onclick="javascript:alert('添加')"></a>
		<a href="javascript:void(0)" class="icon-edit" onclick="javascript:alert('编辑')"></a>
		<a href="javascript:void(0)" class="icon-cut" onclick="javascript:alert('剪切')"></a>
		<a href="javascript:void(0)" class="icon-help" onclick="javascript:alert('帮助')"></a>
	</div>
	
	
</body>
</html>