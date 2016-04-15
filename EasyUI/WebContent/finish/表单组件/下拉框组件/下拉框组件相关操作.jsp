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
	
	<h2>下拉框组件相关操作</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮执行相关操作.</div>
	</div>
	
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="setvalue()">设置值</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="alert($('#state').combobox('getValue'))">获取值</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#state').combobox('disable')">禁用</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#state').combobox('enable')">启用</a>
	</div>
	<script type="text/javascript">
		function setvalue(){
			$.messager.prompt('设置值','请输入一个值(张三,李四,王八等):',function(v){
				if (v){
					$('#state').combobox('setValue',v);
				}
			});
		}
	</script>
	
	<select id="state" class="easyui-combobox" name="sheng" style="width:200px;">
		<option value="河北省">河北省</option>
		<option value="山东省">山东省</option>
		<option value="辽宁省">辽宁省</option>
		<option value="黑龙江省">黑龙江省</option>
		<option value="吉林省">吉林省</option>
		<option value="甘肃省">甘肃省</option>
		<option value="青海省">青海省</option>
		<option value="河南省">河南省</option>
		<option value="江苏省">江苏省</option>
		<option value="湖北省">湖北省</option>
		<option value="湖南省">湖南省</option>
		<option value="江西省">江西省</option>
		<option value="浙江省">浙江省</option>
		<option value="广东省">广东省</option>
		<option value="云南省">云南省</option>
		<option value="福建省">福建省</option>
		<option value="台湾省">台湾省</option>
		<option value="海南省">海南省</option>
		<option value="山西省">山西省</option>
		<option value="四川省">四川省</option>
		<option value="陕西省">陕西省</option>
		<option value="贵州省">贵州省</option>
		<option value="安徽省">安徽省</option>
	</select>
	
	
</body>
</html>