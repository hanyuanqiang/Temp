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
	
	<h2>定制提示信息内容</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>访问每个元素描述获取提示信息内容.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div id="pg" data-options="total:114" style="border:1px solid #ddd;"></div>
	
	<script>
		$(function(){
			$('#pg').pagination().find('a.l-btn').tooltip({
				content: function(){
					var cc = $(this).find('span.l-btn-empty').attr('class').split(' ');
					var icon = cc[1].split('-')[1];
					return icon + ' page';
				}
			});
		});
	</script>
	
	
</body>
</html>