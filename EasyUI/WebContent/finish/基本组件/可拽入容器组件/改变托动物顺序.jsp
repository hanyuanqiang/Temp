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
	
	<h2>改变托动物顺序</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>拖动托动物改变顺序.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<ul style="margin:0;padding:0;margin-left:10px;">
		<li class="drag-item">托动物 1</li>
		<li class="drag-item">托动物2</li>
		<li class="drag-item">托动物3</li>
		<li class="drag-item">托动物4</li>
		<li class="drag-item">托动物5</li>
		<li class="drag-item">托动物6</li>
	</ul>
	<style type="text/css">
		.drag-item{
			list-style-type:none;
			display:block;
			padding:5px;
			border:1px solid #ccc;
			margin:2px;
			width:300px;
			background:#fafafa;
			color:#444;
		}
		.indicator{
			position:absolute;
			font-size:9px;
			width:10px;
			height:10px;
			display:none;
			color:red;
		}
	</style>
	<script>
		$(function(){
			var indicator = $('<div class="indicator">>></div>').appendTo('body');
			$('.drag-item').draggable({
				revert:true,
				deltaX:0,
				deltaY:0
			}).droppable({
				onDragOver:function(e,source){
					indicator.css({
						display:'block',
						left:$(this).offset().left-10,
						top:$(this).offset().top+$(this).outerHeight()-5
					});
				},
				onDragLeave:function(e,source){
					indicator.hide();
				},
				onDrop:function(e,source){
					$(source).insertAfter(this);
					indicator.hide();
				}
			});
		});
	</script>
	
	
</body>
</html>