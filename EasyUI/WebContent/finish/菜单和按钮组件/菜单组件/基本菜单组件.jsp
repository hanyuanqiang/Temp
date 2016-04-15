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
	
	<h2>基本菜单组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>在页面上右击显示菜单.</div>
	</div>
	<div style="margin:10px 0;"></div>
	
	<div id="mm" class="easyui-menu" style="width:120px;">
		<div onclick="javascript:alert('新建')">新建</div>
		<div>
			<span>打开</span>
			<div style="width:150px;">
				<div><b>Word</b></div>
				<div>Excel</div>
				<div>PowerPoint</div>
				<div>
					<span>M1</span>
					<div style="width:120px;">
						<div>sub1</div>
						<div>sub2</div>
						<div>
							<span>Sub</span>
							<div style="width:80px;">
								<div onclick="javascript:alert('sub21')">sub21</div>
								<div>sub22</div>
								<div>sub23</div>
							</div>
						</div>
						<div>sub3</div>
					</div>
				</div>
				<div>
					<span>Window Demos</span>
					<div style="width:120px;">
						<div data-options="href:'window.html'">Window</div>
						<div data-options="href:'dialog.html'">Dialog</div>
						<div><a href="http://www.jeasyui.com" target="_blank">EasyUI</a></div>
					</div>
				</div>
			</div>
		</div>
		<div data-options="iconCls:'icon-save'">保存</div>
		<div data-options="iconCls:'icon-print',disabled:true">打印</div>
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