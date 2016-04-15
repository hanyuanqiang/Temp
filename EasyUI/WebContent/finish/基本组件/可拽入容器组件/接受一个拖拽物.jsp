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
	
	
	<h2>接受一个拖拽物</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>不接受一些拖拽物.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div id="source" style="border:1px solid #ccc;width:300px;height:400px;float:left;margin:5px;">
		来拖我!
		<div id="d1" class="drag">拖拽物1</div>
		<div id="d2" class="drag">拖拽物2</div>
		<div id="d3" class="drag">拖拽物3</div>
	</div>
	<div id="target" style="border:1px solid #ccc;width:300px;height:400px;float:left;margin:5px;">
		拖到这里！
	</div>
	<div style="clear:both"></div>
	<style type="text/css">
		.drag{
			width:100px;
			height:50px;
			padding:10px;
			margin:5px;
			border:1px solid #ccc;
			background:#AACCFF;
		}
		.dp{
			opacity:0.5;
			filter:alpha(opacity=50);
		}
		.over{
			background:#FBEC88;
		}
	</style>
	<script>
		$(function(){
			$('.drag').draggable({
				proxy:'clone',
				revert:true,
				cursor:'auto',
				onStartDrag:function(){
					$(this).draggable('options').cursor='not-allowed';
					$(this).draggable('proxy').addClass('dp');
				},
				onStopDrag:function(){
					$(this).draggable('options').cursor='auto';
				}
			});
			$('#target').droppable({
				accept:'#d1,#d3',
				onDragEnter:function(e,source){
					$(source).draggable('options').cursor='auto';
					$(source).draggable('proxy').css('border','1px solid red');
					$(this).addClass('over');
				},
				onDragLeave:function(e,source){
					$(source).draggable('options').cursor='not-allowed';
					$(source).draggable('proxy').css('border','1px solid #ccc');
					$(this).removeClass('over');
				},
				onDrop:function(e,source){
					$(this).append(source)
					$(this).removeClass('over');
				}
			});
		});
	</script>
	
</body>
</html>