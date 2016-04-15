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
	
	<h2>树形表格底部行</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>在树形表格底部显示总结信息.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table id="tg"></table>
	<script type="text/javascript">
		$(function(){
			$('#tg').treegrid({
				title:'树形表格底部行',
				iconCls:'icon-ok',
				width:700,
				height:250,
				rownumbers: true,
				animate:true,
				collapsible:true,
				fitColumns:true,
				url:'treegrid_data2.json',
				idField:'id',
				treeField:'name',
				showFooter:true,
				columns:[[
	                {title:'任务名称',field:'name',width:180},
					{title:'人员',field:'persons',width:60,align:'right'},
					{title:'开始日期',field:'begin',width:80},
					{title:'结束日期',field:'end',width:80},
					{title:'进度',field:'progress',width:120,
					    formatter:function(value){
					    	if (value){
						    	var s = '<div style="width:100%;border:1px solid #ccc">' +
						    			'<div style="width:' + value + '%;background:#cc0000;color:#fff">' + value + '%' + '</div>'
						    			'</div>';
						    	return s;
					    	} else {
						    	return '';
					    	}
				    	}
					}
				]]
			});
		})
	</script>
	
	
</body>
</html>