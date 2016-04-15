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
	
	<h2>定制分页组件按钮</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>定制按钮能够添加到分页工具条上去.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-pagination" data-options="total:114,buttons:buttons" style="border:1px solid #ddd;"></div>
	<script>
		var buttons = [{
			iconCls:'icon-add',
			handler:function(){
				alert('添加');
			}
		},{
			iconCls:'icon-cut',
			handler:function(){
				alert('剪切');
			}
		},{
			iconCls:'icon-save',
			handler:function(){
				alert('保存');
			}
		}];
	</script>
	
	
</body>
</html>