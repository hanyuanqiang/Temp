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
	
	<h2>Ajax提示信息</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>提示信息可以通过AJAX加载.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<a href="#" class="easyui-tooltip" data-options="
			content: $('<div></div>'),
			onShow: function(){
				$(this).tooltip('arrow').css('left', 20);
				$(this).tooltip('tip').css('left', $(this).offset().left);
			},
			onUpdate: function(cc){
				cc.panel({
					width: 500,
					height: 'auto',
					border: false,
					href: '_content.html'
				});
			}
		">到我这来</a> 显示AJAX加载的提示信息.
	
	
</body>
</html>