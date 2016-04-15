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
	
	<h2>复杂布局</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>这个示例教大家如何创建一个复杂布局.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-layout" style="width:700px;height:350px;">
		<div data-options="region:'north'" style="height:50px"></div>
		<div data-options="region:'south',split:true" style="height:50px;"></div>
		<div data-options="region:'east',split:true" title="东" style="width:180px;">
			<ul class="easyui-tree" data-options="url:'../layout/tree_data1.json',animate:true,dnd:true"></ul>
		</div>
		<div data-options="region:'west',split:true" title="西" style="width:100px;">
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="标题一" style="padding:10px;">
					内容一
				</div>
				<div title="标题二" data-options="selected:true" style="padding:10px;">
					内容二
				</div>
				<div title="标题三" style="padding:10px">
					内容三
				</div>
			</div>
		</div>
		<div data-options="region:'center',title:'主面板区域',iconCls:'icon-ok'">
			<div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
				<div title="关于" data-options="href:'_content.html'" style="padding:10px"></div>
				<div title="数据表格" style="padding:5px">
					<table class="easyui-datagrid"
							data-options="url:'datagrid_data1.json',singleSelect:true,fit:true,fitColumns:true">
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
		</div>
	</div>
	
	
</body>
</html>