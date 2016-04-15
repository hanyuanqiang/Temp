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
	
	<h2>定制菜单项</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>在页面上右击显示菜单，移到“打开”菜单项显示它的定制内容.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div id="mm" class="easyui-menu" style="width:120px;">
		<div>新建</div>
		<div>
			<span>打开</span>
			<div class="menu-content" style="text-align:left;padding:10px">
				<div style="font-weight:bold;font-size:16px">选择一种语言:</div>
				<ul style="margin:0;padding:0 0 0 40px">
					<li><a href="javascript:void(0)">Java</a></li>
					<li><a href="javascript:void(0)">Basic</a></li>
					<li><a href="javascript:void(0)">C++</a></li>
					<li><a href="javascript:void(0)">Fortran</a></li>
					<li>
						<span>其他</span>
						<input>
					</li>
				</ul>
				<div style="padding:10px 0 0 30px">
					<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">确定</a>
				</div>
			</div>
		</div>
		<div data-options="iconCls:'icon-save'">保存</div>
		<div data-options="iconCls:'icon-print'">打印</div>
		<div class="menu-sep"></div>
		<div>退出</div>
	</div>
	<script>
		$(function(){
			$(document).bind('contextmenu',function(e){
				e.preventDefault();
				$('#mm').menu('show', {
					left: e.pageX,
					top: e.pageY
				});
			});
		});
	</script>
	
	
</body>
</html>