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
	
	<h2>定制提示信息风格</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>这个示例教我们如何定制提示信息的风格.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="padding:10px 200px">
		<div id="pp1" class="easyui-panel" style="width:100px;padding:5px">搞我啊！</div>
	</div>
	<div style="padding:10px 200px">
		<div id="pp2" class="easyui-panel" style="width:100px;padding:5px">搞我呀！</div>
	</div>
	<script>
		$(function(){
			$('#pp1').tooltip({
				position: 'right',
				content: '<span style="color:#fff">这是一种风格的提示信息.</span>',
				onShow: function(){
					$(this).tooltip('tip').css({
						backgroundColor: '#666',
						borderColor: '#666'
					});
				}
			});
			$('#pp2').tooltip({
				position: 'bottom',
				content: '<div style="padding:5px;background:#eee;color:#000">这又是一种风格的提示信息.</div>',
				onShow: function(){
					$(this).tooltip('tip').css({
						backgroundColor: '#fff000',
						borderColor: '#ff0000',
						boxShadow: '1px 1px 3px #292929'
					});
				},
				onPosition: function(){
					$(this).tooltip('tip').css('left', $(this).offset().left);
					$(this).tooltip('arrow').css('left', 20);
				}
			});
		});
	</script>
	
	
</body>
</html>