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
	
	<h2>提示信息对话框</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>这个示例教我们如何创建一个提示信息对话框.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="padding:10px 200px">
		<p><a id="dd" href="javascript:void(0)">点这里</a> 来显示一个提示信息对话框.
	</div>
	<script>
		$(function(){
			$('#dd').tooltip({
				content: $('<div></div>'),
				showEvent: 'click',
				onUpdate: function(content){
					content.panel({
						width: 200,
						border: false,
						title: '登录',
						href: '_dialog.html'
					});
				},
				onShow: function(){
					var t = $(this);
					t.tooltip('tip').unbind().bind('mouseenter', function(){
						t.tooltip('show');
					}).bind('mouseleave', function(){
						t.tooltip('hide');
					});
				}
			});
		});
	</script>
	
	
</body>
</html>