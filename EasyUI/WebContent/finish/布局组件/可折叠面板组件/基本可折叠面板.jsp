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
	
	<h2>基本可折叠面板</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击面板头部来显示它的内容.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-accordion" style="width:500px;height:300px;">
		<div title="关于" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<h3 style="color:#0099FF;">可折叠面板</h3>
			<p>可折叠面板是jquery easyui框架的一部分. 他可以让你轻松地在Web页面上定义可折叠元素.</p>
		</div>
		<div title="帮助" data-options="iconCls:'icon-help'" style="padding:10px;">
			<p>可折叠面板允许你同时显示多个面板，每个面板支持展开和折叠，点击面板头部展开和折叠面板体，面板内容可以通过AJAX加载，用户能够定义某一个面板默认选中，如果没有指定，则第一个面板默认选中。</p> 		
		</div>
		<div title="树菜单" data-options="iconCls:'icon-search'" style="padding:10px;">
			<ul class="easyui-tree">
				<li>
					<span>食物</span>
					<ul>
						<li>
							<span>水果</span>
							<ul>
								<li>苹果</li>
								<li>橙子</li>
							</ul>
						</li>
						<li>
							<span>蔬菜</span>
							<ul>
								<li>西红柿</li>
								<li>胡萝卜</li>
								<li>卷心菜</li>
								<li>土豆</li>
								<li>生菜</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	
	
</body>
</html>