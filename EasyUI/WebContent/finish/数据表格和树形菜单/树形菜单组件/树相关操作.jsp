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
	
	<h2>树相关操作</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮执行相关操作.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="collapseAll()">收缩所有</a>
		<a href="#" class="easyui-linkbutton" onclick="expandAll()">展开所有</a>
		<a href="#" class="easyui-linkbutton" onclick="expandTo()">展开到</a>
		<a href="#" class="easyui-linkbutton" onclick="getSelected()">获取选中节点</a>
	</div>
	<ul id="tt" class="easyui-tree" data-options="url:'tree_data1.json',animate:true"></ul>
	<script type="text/javascript">
		function collapseAll(){
			$('#tt').tree('collapseAll');
		}
		function expandAll(){
			$('#tt').tree('expandAll');
		}
		function expandTo(){
			var node = $('#tt').tree('find',113);
			$('#tt').tree('expandTo', node.target).tree('select', node.target);
		}
		function getSelected(){
			var node = $('#tt').tree('getSelected');
			if (node){
				var s = node.text;
				if (node.attributes){
					s += ","+node.attributes.p1+","+node.attributes.p2;
				}
				alert(s);
			}
		}
	</script>
	
	
</body>
</html>