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
	
	<h2>对话窗体上的复杂工具栏</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>这个示例教你如何在对话窗体上创建复杂工具栏.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">打开</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('close')">关闭</a>
	</div>
	<div id="dlg" class="easyui-dialog" title="对话窗体上的复杂工具栏" style="width:400px;height:200px;padding:10px"
			data-options="
				iconCls: 'icon-save',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'
			">
		对话窗体内容.
	</div>
	<div id="dlg-toolbar" style="padding:2px 0">
		<table cellpadding="0" cellspacing="0" style="width:100%">
			<tr>
				<td style="padding-left:2px">
					<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
					<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-help',plain:true">帮助</a>
				</td>
				<td style="text-align:right;padding-right:2px">
					<input class="easyui-searchbox" data-options="prompt:'请输入...'" style="width:150px"></input>
				</td>
			</tr>
		</table>
	</div>
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:alert('保存')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:$('#dlg').dialog('close')">关闭</a>
	</div>
	
	
</body>
</html>