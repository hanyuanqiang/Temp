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

</head>
<body>

	<div id="p" style="padding: 10px;" class="easyui-panel">
		<p>panel content.</p>
		<p>panel content.</p>
	</div>

	<script type="text/javascript">
 
 		$('#p').panel({
 			iconCls:'icon-save',
 			title:'哈哈哈',
	 		width:500,
	  		height:250,
	  		tools: [{
	   		iconCls:'icon-add',
	  		 handler:function(){alert('new');}
	   		},
	   		{
	   		 iconCls:'icon-save',
	   		 handler:function(){alert('save');}
	  		 }]
		});
 </script>  
	
	
</body>
</html>