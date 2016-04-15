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
	
	<h2>添加和删除布局组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮添加或者删除布局组件面板.</div>
	</div>
	<div style="margin:10px 0;">
		<span>选择一个区域面板:</span>
		<select id="region">
			<option value="north">北</option>
			<option value="south">南</option>
			<option value="east">东</option>
			<option value="west">西</option>
		</select>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="addPanel()">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="removePanel()">删除</a>
	</div>
	<div id="cc" class="easyui-layout" style="width:700px;height:350px;">
		<div data-options="region:'north'" style="height:50px"></div>
		<div data-options="region:'south',split:true" style="height:50px;"></div>
		<div data-options="region:'east',split:true" title="东" style="width:100px;"></div>
		<div data-options="region:'west',split:true" title="西" style="width:100px;"></div>
		<div data-options="region:'center',title:'中'"></div>
	</div>
	<script type="text/javascript">
		function addPanel(){
			var region = $('#region').val();
			var options = {
				region: region
			};
			if (region=='north' || region=='south'){
				options.height = 50;
			} else {
				options.width = 100;
				options.split = true;
				options.title = $('#region option:selected').text();
			}
			$('#cc').layout('add', options);
		}
		function removePanel(){
			$('#cc').layout('remove', $('#region').val());
		}
	</script>
	
	
</body>
</html>