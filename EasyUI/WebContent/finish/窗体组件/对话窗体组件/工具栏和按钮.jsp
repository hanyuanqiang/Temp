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
	
	<h2>工具栏和按钮</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>工具栏和按钮可以添加到对话框体里去.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">打开</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('close')">关闭</a>
	</div>
	<div id="dlg" class="easyui-dialog" title="工具栏和按钮" style="width:400px;height:200px;padding:10px"
			data-options="
				iconCls: 'icon-save',
				toolbar: [{
					text:'添加',
					iconCls:'icon-add',
					handler:function(){
						alert('添加')
					}
				},'-',{
					text:'保存',
					iconCls:'icon-save',
					handler:function(){
						alert('保存')
					}
				}],
				buttons: [{
					text:'确定',
					iconCls:'icon-ok',
					handler:function(){
						alert('确定');
					}
				},{
					text:'关闭',
					handler:function(){
						alert('关闭');;
					}
				}]
			">
		对话窗体内容.
	</div>
	
	
</body>
</html>