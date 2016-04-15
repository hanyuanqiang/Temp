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
	
	<h2>基本属性表格</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击行来改变每个属性值.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="showGroup()">显示分组</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="hideGroup()">隐藏分组</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="showHeader()">显示头部</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="hideHeader()">隐藏头部</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="getChanges()">获取变化</a>
	</div>
	<table id="pg" class="easyui-propertygrid" style="width:300px"
			data-options="url:'propertygrid_data1.json',showGroup:true,scrollbarSize:0"></table>

	<script type="text/javascript">
		function showGroup(){
			$('#pg').propertygrid({
				showGroup:true
			});
		}
		function hideGroup(){
			$('#pg').propertygrid({
				showGroup:false
			});
		}
		function showHeader(){
			$('#pg').propertygrid({
				showHeader:true
			});
		}
		function hideHeader(){
			$('#pg').propertygrid({
				showHeader:false
			});
		}
		function getChanges(){
			var s = '';
			var rows = $('#pg').propertygrid('getChanges');
			for(var i=0; i<rows.length; i++){
				s += rows[i].name + ':' + rows[i].value + ',';
			}
			alert(s)
		}
	</script>
	
	
</body>
</html>