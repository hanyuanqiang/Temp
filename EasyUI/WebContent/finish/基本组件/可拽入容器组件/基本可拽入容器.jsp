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
	
	<h2>基本可拽入容器</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>把左边项拖拽到右边目标区域.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div style="float:left;width:200px;margin-right:20px;">
		<div class="title">源</div>
		<div>
			<div class="dragitem">苹果</div>
			<div class="dragitem">桃子</div>
			<div class="dragitem">桔子</div>
		</div>
	</div>
	<div style="float:left;width:200px;">
		<div class="title">目标</div>
		<div class="easyui-droppable targetarea"
				data-options="
					accept: '.dragitem',
					onDragEnter:function(e,source){
						$(this).html('进入');
					},
					onDragLeave: function(e,source){
						$(this).html('离开');
					},
					onDrop: function(e,source){
						$(this).html($(source).html() + ' 拽入');
					}
				">
		</div>
	</div>
	<div style="clear:both"></div>
	<style type="text/css">
		.title{
			margin-bottom:10px;
		}
		.dragitem{
			border:1px solid #ccc;
			width:50px;
			height:50px;
			margin-bottom:10px;
		}
		.targetarea{
			border:1px solid red;
			height:150px;
		}
		.proxy{
			border:1px solid #ccc;
			width:80px;
			background:#fafafa;
		}
	</style>
	<script>
		$(function(){
			$('.dragitem').draggable({
				revert:true,
				deltaX:10,
				deltaY:10,
				proxy:function(source){
					var n = $('<div class="proxy"></div>');
					n.html($(source).html()).appendTo('body');
					return n;
				}
			});
		});
	</script>
	
	
</body>
</html>