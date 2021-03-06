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
	
	<h2>消息框位置</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮在不同位置显示消息框.</div>
	</div>
	<div style="margin:10px 0;">
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topLeft();">左上角</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topCenter()">顶部左右居中</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topRight()">右上角</a>
		</p>
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="centerLeft()">左边上下居中</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="center()">上下左右居中</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="centerRight()">右边上下居中</a>
		</p>
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomLeft()">左下角</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomCenter()">底部左右居中</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomRight()">右下角</a>
		</p>
	</div>
	<script>
		function topLeft(){
			$.messager.show({
				title:'我的标题',
				msg:'左上角',
				showType:'show',
				style:{
					right:'',
					left:0,
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function topCenter(){
			$.messager.show({
				title:'我的标题',
				msg:'顶部左右居中',
				showType:'slide',
				style:{
					right:'',
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function topRight(){
			$.messager.show({
				title:'我的标题',
				msg:'右上角',
				showType:'show',
				style:{
					left:'',
					right:0,
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function centerLeft(){
			$.messager.show({
				title:'我的标题',
				msg:'左边上下居中',
				showType:'fade',
				style:{
					left:0,
					right:'',
					bottom:''
				}
			});
		}
		function center(){
			$.messager.show({
				title:'我的标题',
				msg:'上下左右居中',
				showType:'fade',
				style:{
					right:'',
					bottom:''
				}
			});
		}
		function centerRight(){
			$.messager.show({
				title:'我的标题',
				msg:'右边上下居中',
				showType:'fade',
				style:{
					left:'',
					right:0,
					bottom:''
				}
			});
		}
		function bottomLeft(){
			$.messager.show({
				title:'我的标题',
				msg:'左下角',
				showType:'show',
				style:{
					left:0,
					right:'',
					top:'',
					bottom:-document.body.scrollTop-document.documentElement.scrollTop
				}
			});
		}
		function bottomCenter(){
			$.messager.show({
				title:'我的标题',
				msg:'底部左右居中',
				showType:'slide',
				style:{
					right:'',
					top:'',
					bottom:-document.body.scrollTop-document.documentElement.scrollTop
				}
			});
		}
		function bottomRight(){
			$.messager.show({
				title:'我的标题',
				msg:'右下角',
				showType:'show'
			});
		}
	</script>
	
	
</body>
</html>