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

	<h2>基本EasyLoader组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮动态加载组件.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="#" class="easyui-linkbutton" onclick="load1()">加载日历</a>
		<a href="#" class="easyui-linkbutton" onclick="load2()">加载对话框</a>
		<a href="#" class="easyui-linkbutton" onclick="load3()">加载数据表格</a>
	</div>
	<div id="cc"></div>
	<div id="dd"></div>
	<table id="tt"></table>
	<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.4.5/easyloader.js"></script>
	<script>
		function load1(){
			using('calendar', function(){
				$('#cc').calendar({
					width:180,
					height:180
				});
			});
		}
		function load2(){
			using(['dialog','messager'], function(){
				$('#dd').dialog({
					title:'对话框',
					width:300,
					height:200
				});
				$.messager.show({
					title:'系统提示',
					msg:'对话框被创建'
				});
			});
		}
		function load3(){
			using('datagrid', function(){
				$('#tt').datagrid({
					title:'数据表格',
					width:300,
					height:200,
					fitColumns:true,
					columns:[[
						{field:'productid',title:'产品编号',width:100},
						{field:'productname',title:'产品名称',width:200}
					]],
					data: [
						{"productid":"FI-SW-01","productname":"Koi"},
						{"productid":"K9-DL-01","productname":"Dalmation"},
						{"productid":"RP-SN-01","productname":"Rattlesnake"},
						{"productid":"RP-LI-02","productname":"Iguana"},
						{"productid":"FL-DSH-01","productname":"Manx"},
						{"productid":"FL-DLH-02","productname":"Persian"},
						{"productid":"AV-CB-01","productname":"Amazon Parrot"}
					]
				});
			});
		}
	</script>

</body>
</html>