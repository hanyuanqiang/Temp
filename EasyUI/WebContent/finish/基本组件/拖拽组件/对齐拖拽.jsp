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
	
	<h2>对齐拖拽</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>本示例展示如何将一个可拖拽对象拖到20*20的格子.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="position:relative;overflow:hidden;border:1px solid #ccc;width:500px;height:300px">
		<div class="easyui-draggable" data-options="onDrag:onDrag" style="width:100px;height:100px;background:#fafafa;border:1px solid #ccc;">
		</div>
	</div>
	<script>
		function onDrag(e){
			var d = e.data;
			d.left = repair(d.left);
			d.top = repair(d.top);
			
			function repair(v){
				var r = parseInt(v/20)*20;
				if (Math.abs(v % 20) > 10){
					r += v > 0 ? 20 : -20;
				}
				return r;
			}
		}
	</script>
	
	
</body>
</html>