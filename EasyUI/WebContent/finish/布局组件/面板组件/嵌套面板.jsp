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
	
	<h2>嵌套面板</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>面板能够放在容器里，并且能包含其他组件.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="嵌套面板" style="width:500px;height:200px;padding:10px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'west',split:true" style="width:100px;padding:10px">
				左边内容
			</div>
			<div data-options="region:'center'" style="padding:10px">
				右边内容
			</div>
		</div>
	</div>
	
	
</body>
</html>