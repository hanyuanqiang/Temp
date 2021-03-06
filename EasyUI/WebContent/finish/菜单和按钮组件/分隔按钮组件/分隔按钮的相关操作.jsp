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
	
	<h2>分隔按钮的相关操作</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮执行相关操作.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="$('#btn-edit').splitbutton('disable')">禁用编辑</a>
		<a href="#" class="easyui-linkbutton" onclick="$('#btn-edit').splitbutton('enable')">启用编辑</a>
	</div>
	<div style="padding:5px;border:1px solid #ddd;">
		<a href="#" class="easyui-linkbutton" data-options="plain:true">主页</a>
		<a id="btn-edit" href="#" class="easyui-splitbutton" data-options="menu:'#mm1',iconCls:'icon-edit'">编辑</a>
		<a href="#" class="easyui-splitbutton" data-options="menu:'#mm2',iconCls:'icon-ok'">确定</a>
		<a href="#" class="easyui-menubutton" data-options="menu:'#mm3',iconCls:'icon-help'">帮助</a>
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
		<div data-options="iconCls:'icon-ok'">确定</div>
		<div data-options="iconCls:'icon-cancel'">关闭</div>
	</div>
	<div id="mm3" style="width:150px;">
		<div>帮助</div>
		<div>更新</div>
		<div>
			<span>关于</span>
			<div class="menu-content" style="padding:10px;text-align:left">
				<img src="http://www.jeasyui.com/images/logo1.png" style="width:150px;height:50px">
				<p style="font-size:14px;color:#444">EasyUI就是好.</p>
			</div>
		</div>
	</div>
	
	
</body>
</html>