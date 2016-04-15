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
	
	<h2>基本菜单按钮</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>鼠标移到菜单按钮上显示下拉菜单.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="padding:5px;border:1px solid #ddd">
		<a href="#" class="easyui-linkbutton" data-options="plain:true">主页</a>
		<a href="#" class="easyui-menubutton" data-options="menu:'#mm1',iconCls:'icon-edit'">编辑</a>
		<a href="#" class="easyui-menubutton" data-options="menu:'#mm2',iconCls:'icon-help'">帮助</a>
		<a href="#" class="easyui-menubutton" data-options="menu:'#mm3'">关于</a>
	</div>
	<div id="mm1" style="width:150px;">
		<div data-options="iconCls:'icon-undo'">撤销</div>
		<div data-options="iconCls:'icon-redo'">恢复</div>
		<div class="menu-sep"></div>
		<div>剪切</div>
		<div>复制</div>
		<div>粘贴</div>
		<div class="menu-sep"></div>
		<div>
			<span>工具条</span>
			<div style="width:150px;">
				<div>地址</div>
				<div>链接</div>
				<div>导航工具条</div>
				<div>书签工具条</div>
				<div class="menu-sep"></div>
				<div>新建工具条...</div>
			</div>
		</div>
		<div data-options="iconCls:'icon-remove'">删除</div>
		<div>全选</div>
	</div>
	<div id="mm2" style="width:100px;">
		<div>帮助</div>
		<div>更新</div>
		<div>关于</div>
	</div>
	<div id="mm3" class="menu-content" style="background:#f0f0f0;padding:10px;text-align:left">
		<img src="http://www.jeasyui.com/images/logo1.png" style="width:150px;height:50px">
		<p style="font-size:14px;color:#444;">EasyUI就是好.</p>
	</div>
</body>
	
	
</body>
</html>