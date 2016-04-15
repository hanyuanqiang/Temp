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
	
	<h2>拖拽限制</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>拖拽对象只能在它的父容器中拖动.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="position:relative;overflow:hidden;border:1px solid #ccc;width:500px;height:300px">
		<div class="easyui-draggable" data-options="onDrag:onDrag" style="width:100px;height:100px;background:#fafafa;border:1px solid #ccc;">
		</div>
	</div>
	<script>
		function onDrag(e){
			var d = e.data;
			if (d.left < 0){d.left = 0}
			if (d.top < 0){d.top = 0}
			if (d.left + $(d.target).outerWidth() > $(d.parent).width()){
				d.left = $(d.parent).width() - $(d.target).outerWidth();
			}
			if (d.top + $(d.target).outerHeight() > $(d.parent).height()){
				d.top = $(d.parent).height() - $(d.target).outerHeight();
			}
		}
	</script>
	
	
</body>
</html>