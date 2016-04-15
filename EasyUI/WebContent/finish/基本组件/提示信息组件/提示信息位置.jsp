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
	
	<h2>提示信息位置</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面的下拉框改变提示信息的显示位置.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<span>选择位置:</span>
	<select onchange="changePosition(this.value)">
		<option value="bottom">下</option>
		<option value="top">上</option>
		<option value="left">左</option>
		<option value="right">右</option>
	</select>
	<div style="padding:10px 200px">
	<div id="pp" class="easyui-panel easyui-tooltip" title="这是提示信息." style="width:100px;padding:5px">到我这来</div>
	</div>
	<script type="text/javascript">
		function changePosition(pos){
			$('#pp').tooltip({
				position: pos
			});
		}
	</script>
	
	
</body>
</html>