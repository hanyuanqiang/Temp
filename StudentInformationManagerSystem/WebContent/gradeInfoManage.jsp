<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>班级信息管理</title>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var url;
	/* 班级查找 */
	/* function searchGrade(){
		$('#dg').datagrid('load',{
			gradeName:$('#s_gradeName').val()
		});
	} */
	function searchGrade(){
		/* 加载表格（异步交互）,并且把班级的名称传过去 */
		$('#dg').datagrid('load',{
			gradeName:$('#s_gradeName').val()
		})
		/* {gradeName:$('#s_gradeName').val()} 是个参数（键值对形式）*/
	}
	
	/* 删除所选的班级 */
	function deleteGrade(){
		/* 获取选中的班级 */
		var selectedRows=$("#dg").datagrid('getSelections');
		/* 如果没有选中给与提示 */
		if(selectedRows.length==0){
			$.messager.alert("系统提示","请选择要删除的数据！");
			return;
		}
		
		/* 创建一个用于存储gradeId的数组 */
		var strIds=[];
		/* 把选中的gradeId都添加到数组中 */
		for(var i=0;i<selectedRows.length;i++){
			strIds.push(selectedRows[i].id);
		}
		
		/* join() 方法用于把数组中的所有元素放入一个字符串。 */
		var ids=strIds.join(",");
		
		/* 给用户确认框，防止误点操作 */
		$.messager.confirm("系统提示","您确认要删掉这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
			/* 如果点击取消，r为false，点击确定，r为true*/
			if(r){
				/* 使用已经封装好的异步调用方法
					第一个参数是url
					第二个参数是要传过去的参数
					第三个是处理返回结果的函数
					第四个是表示数据的格式
				*/
				$.post("gradeDelete",{delIds:ids},function(result){
					if(result.success){
						/* 如果删除成功，则给用户提示，并且重新加载表格 */
						$.messager.alert("系统提示","您已成功删除<font color=red>"+result.delNums+"</font>条数据！");
						$("#dg").datagrid("reload");
					}else{
						/* 否则的话，显示从后台传来的错误信息 */
						$.messager.alert('系统提示','<font color=red>'+selectedRows[result.errorIndex].gradeName+'</font>'+result.errorMsg);
					}
				},"json");
			}
		});
	}
	
	
	/* function openGradeAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加班级信息");
		url="gradeSave";
	} */
	function openGradeAddDialog(){
		/* 每次打开增加班级窗口之前都重新设置一下值 */
		resetValue();
		/* 打开对话框，把url设置成gradeSave(不带参数，若是修改操作的话则要把班级id传过去)*/
		$("#dlg").dialog('open').dialog('setTitle',"添加班级信息");
		url = "gradeSave";
	}
	
	function openGradeModifyDialog(){
		/* 修改前验证用户的选择情况（只能选择一条数据进行修改） */
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert("系统提示","请选择一条要编辑的数据！");
			return;
		}
		var row=selectedRows[0];
		$("#dlg").dialog("open").dialog("setTitle","编辑班级信息");
		/* 把选中的行的数据加载到打开的对话框中对应的字段中 */
		$("#fm").form("load",row);
		/* 把要修改的班级的Id也带到后台去 */
		url="gradeSave?id="+row.id;
	}
	
	/* 关闭对话框，并且清空数据 */
	function closeGradeDialog(){
		$("#dlg").dialog("close");
		resetValue();
	}
	function resetValue(){
		$("#gradeName").val("");
		$("#gradeDesc").val("");
	}
	
	
	/* 点击对话框中的确定后调用该方法 */
	function saveGrade(){
		/* 提交表单 */
		$("#fm").form("submit",{
			/* 表单提交的地址 */
			url:url,
			/* 验证表单中的数据是否都是有效的 */
			onSubmit:function(){
				return $(this).form("validate");
			},
			/* 发送成功并且获得返回信息后调用该方法（不论操作成功还是失败，后台都应该设置一个success的键值对，如果操作失败，则多加一个失败信息提示） */
			success:function(result){
				/* 如果存在错误信息，表示操作失败，应给与提示 */
				if(result.errorMsg){
					$.messager.alert("系统提示",result.errorMsg);
					return;
				}else{
					$.messager.alert("系统提示","保存成功");
					/* 清空对话框中的数据 */
					resetValue();
					/* 关闭对话框 */
					$("#dlg").dialog("close");
					/* 重新载入数据表格 */
					$("#dg").datagrid("reload");
				}
			}
		});
	}
	
	
</script>
</head>
<body style="margin: 5px;">
	<!-- easyui-datagrid是easyui的表格属性 
		fitColumns是使每列按比例排列
		pagination标记页码
	-->
	<table id="dg" title="班级信息" class="easyui-datagrid" fitColumns="true"
	 pagination="true" rownumbers="true" url="gradeList" fit="true" toolbar="#tb">
	 	<!-- 设置表格的头部信息 -->
		<thead>
			<tr>
				<!-- 该字段要与json格式中是数据字段相对应 -->
				<!-- checkbox是复选框 -->
				<th field="cb" checkbox="true"></th>
				<th field="id" width="50">编号</th>
				<th field="gradeName" width="100">班级名称</th>
				<th field="gradeDesc" width="250">班级描述</th>
			</tr>
		</thead>
	</table>
	
	<!-- 工具栏（添加，修改，删除） -->
	<div id="tb">
		<div>
		<!-- plain="true"是使按钮融合在父节点中,如果没有这项设置，会比较难看 -->
			<a href="javascript:openGradeAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
			<a href="javascript:openGradeModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
			<a href="javascript:deleteGrade()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
		</div>
		
		<!-- 按班级名称搜索,点击搜索触发相应的JavaScript事件 -->
		<div>&nbsp;班级名称：&nbsp;<input type="text" name="s_gradeName" id="s_gradeName"/><a href="javascript:searchGrade()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a></div>
	</div>
	
	<!-- 对话框中面板 -->
	<div id="dlg" class="easyui-dialog" style="width: 400px;height: 280px;padding: 10px 20px"
		closed="true" buttons="#dlg-buttons">
		<form id="fm" method="post">
			<table>
				<tr>
					<td>班级名称：</td>
					<td><input type="text" name="gradeName" id="gradeName" class="easyui-validatebox" required="true"/></td>
				</tr>
				<tr>
					<td valign="top">班级描述：</td>
					<td><textarea rows="7" cols="30" name="gradeDesc" id="gradeDesc"></textarea></td>
				</tr>
			</table>
		</form>
	</div>
	
	<!-- 对话框里面的按钮 -->
	<div id="dlg-buttons">
		<!-- 点击按钮会调用响应的JavaScript方法 -->
		<a href="javascript:saveGrade()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
		<a href="javascript:closeGradeDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
	</div>
</body>
</html>