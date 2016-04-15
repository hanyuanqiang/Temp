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
	
	<h2>基本布局组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>布局包含北，南，西，东和中五个区域.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-layout" style="width:700px;height:350px;">
		<div data-options="region:'north'" style="height:50px"></div>
		<div data-options="region:'south',split:true" style="height:50px;"></div>
		<div data-options="region:'east',split:true" title="东" style="width:180px;"></div>
		<div data-options="region:'west',split:true" title="西" style="width:100px;"></div>
		<div data-options="region:'center',title:'主区域标题',iconCls:'icon-ok'">
			<table class="easyui-datagrid"
					data-options="url:'datagrid_data1.json',border:false,singleSelect:true,fit:true,fitColumns:true">
				<thead>
					<tr>
						<th data-options="field:'itemid'" width="80">编号</th>
						<th data-options="field:'productid'" width="100">商品编号</th>
						<th data-options="field:'listprice',align:'right'" width="80">市场价</th>
						<th data-options="field:'unitcost',align:'right'" width="80">成本价</th>
						<th data-options="field:'attr1'" width="150">描述</th>
						<th data-options="field:'status',align:'center'" width="50">状态</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	
	
</body>
</html>