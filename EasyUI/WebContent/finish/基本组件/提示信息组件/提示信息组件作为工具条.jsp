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
	
	<h2>提示信息组件作为工具条</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>这个示例教大家如果创建一个提示信息风格的工具条.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="padding:10px 200px">
		<p><a id="dd" href="javascript:void(0)" class="easyui-tooltip" data-options="
					hideEvent: 'none',
					content: function(){
						return $('#toolbar');
					},
					onShow: function(){
						var t = $(this);
						t.tooltip('tip').focus().unbind().bind('blur',function(){
							t.tooltip('hide');
						});
					}
				">到我这来</a> 搞出一个工具条.</p>
	</div>
	<div style="display:none">
		<div id="toolbar">
			<a href="#" class="easyui-linkbutton easyui-tooltip" title="添加" data-options="iconCls:'icon-add',plain:true"></a>
			<a href="#" class="easyui-linkbutton easyui-tooltip" title="剪切" data-options="iconCls:'icon-cut',plain:true"></a>
			<a href="#" class="easyui-linkbutton easyui-tooltip" title="删除" data-options="iconCls:'icon-remove',plain:true"></a>
			<a href="#" class="easyui-linkbutton easyui-tooltip" title="撤销" data-options="iconCls:'icon-undo',plain:true"></a>
			<a href="#" class="easyui-linkbutton easyui-tooltip" title="恢复" data-options="iconCls:'icon-redo',plain:true"></a>
		</div>
	</div>
	
	
</body>
</html>