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
	
	<h2>基本下拉组件</h2>
	<div class="demo-info" style="margin-bottom:10px">
		<div class="demo-tip icon-tip"></div>
		<div>点击右边箭头按钮显示下拉面板，选一个值填充到文本框内.</div>
	</div>
	<select id="cc" style="width:150px"></select>
	<div id="sp">
		<div style="color:#99BBE8;background:#fafafa;padding:5px;">选择一种语言</div>
		<input type="radio" name="lang" value="01"><span>Java</span><br/>
		<input type="radio" name="lang" value="02"><span>C#</span><br/>
		<input type="radio" name="lang" value="03"><span>Ruby</span><br/>
		<input type="radio" name="lang" value="04"><span>Basic</span><br/>
		<input type="radio" name="lang" value="05"><span>Fortran</span>
	</div>
	<script type="text/javascript">
		$(function(){
			$('#cc').combo({
				required:true,
				editable:false
			});
			$('#sp').appendTo($('#cc').combo('panel'));
			$('#sp input').click(function(){
				var v = $(this).val();
				var s = $(this).next('span').text();
				$('#cc').combo('setValue', v).combo('setText', s).combo('hidePanel');
			});
		});
	</script>
	
	
</body>
</html>