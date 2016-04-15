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
	
	<h2>下拉框自定义格式</h2>
	<div class="demo-info" style="margin-bottom:10px">
		<div class="demo-tip icon-tip"></div>
		<div>如何在下拉框中自定义格式.</div>
	</div>
	<input class="easyui-combobox" name="language" data-options="
				url: 'combobox_data1.json',
				valueField: 'id',
				textField: 'text',
				panelWidth: 350,
				panelHeight: 'auto',
				formatter: formatItem
			">
	<script type="text/javascript">
		function formatItem(row){
			var s = '<span style="font-weight:bold">' + row.text + '</span><br/>' +
					'<span style="color:#888">' + row.desc + '</span>';
			return s;
		}
	</script>
	
	
</body>
</html>