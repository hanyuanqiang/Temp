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
	
	<h2>复选框树</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>带复选框的树节点.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="getChecked()">获取选中值</a> 
		<br/>
		<input type="checkbox" checked onchange="$('#tt').tree({cascadeCheck:$(this).is(':checked')})">级联选中
		<input type="checkbox" onchange="$('#tt').tree({onlyLeafCheck:$(this).is(':checked')})">只有叶子节点有复选框
	</div>
	<ul id="tt" class="easyui-tree" data-options="url:'tree_data1.json',animate:true,checkbox:true"></ul>
	<script type="text/javascript">
		function getChecked(){
			var nodes = $('#tt').tree('getChecked');
			var s = '';
			for(var i=0; i<nodes.length; i++){
				if (s != '') s += ',';
				s += nodes[i].text;
			}
			alert(s);
		}
	</script>
	
	
</body>
</html>