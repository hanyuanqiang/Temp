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
	
	<h2>选项卡嵌套</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>选项卡面板能够包含子选项卡或者其他元素.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:700px;height:250px">
		<div title="子选项卡" style="padding:10px;">
			<div class="easyui-tabs" data-options="fit:true,plain:true">
				<div title="标题一" style="padding:10px;">内容一</div>
				<div title="标题二" style="padding:10px;">内容二</div>
				<div title="标题三" style="padding:10px;">内容三</div>
			</div>
		</div>
		<div title="Ajax" data-options="href:'_content.html',closable:true" style="padding:10px"></div>
		<div title="嵌套框架" data-options="closable:true" style="overflow:hidden">
			<iframe scrolling="yes" frameborder="0"  src="http://www.jeasyui.com" style="width:100%;height:100%;"></iframe>
		</div>
		<div title="数据表格" data-options="closable:true" style="padding:10px">
			<table class="easyui-datagrid" data-options="fit:true,singleSelect:true,rownumbers:true">
				<thead>
					<tr>
						<th data-options="field:'f1',width:100">标题一</th>
						<th data-options="field:'f2',width:100">标题二</th>
						<th data-options="field:'f3',width:100">标题三</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>d11</td>
						<td>d12</td>
						<td>d13</td>
					</tr>
					<tr>
						<td>d21</td>
						<td>d22</td>
						<td>d23</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	
</body>
</html>