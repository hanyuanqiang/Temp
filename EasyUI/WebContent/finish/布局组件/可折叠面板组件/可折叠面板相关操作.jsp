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
	
	<h2>可折叠面板相关操作</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮添加或者删除可折叠面板项.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="selectPanel()">选择</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="addPanel()">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="removePanel()">删除</a>
	</div>
	<div id="aa" class="easyui-accordion" style="width:500px;height:300px;">
		<div title="关于" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<h3 style="color:#0099FF;">可折叠面板</h3>
			<p>可折叠面板是jquery easyui框架的一部分. 他可以让你轻松地在Web页面上定义可折叠元素.</p>
		</div>
	</div>
	<script type="text/javascript">
		function selectPanel(){
			$.messager.prompt('系统提示','请输入面板标题:',function(s){
				if (s){
					$('#aa').accordion('select',s);
				}
			});
		}
		var idx = 1;
		function addPanel(){
			$('#aa').accordion('add',{
				title:'标题'+idx,
				content:'<div style="padding:10px">内容'+idx+'</div>'
			});
			idx++;
		}
		function removePanel(){
			var pp = $('#aa').accordion('getSelected');
			if (pp){
				var index = $('#aa').accordion('getPanelIndex',pp);
				$('#aa').accordion('remove',index);
			}
		}
	</script>
	
	
</body>
</html>