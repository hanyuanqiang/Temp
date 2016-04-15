<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生信息管理系统主界面</title>
<%
	// 权限验证
	/* if(session.getAttribute("currentUser")==null){
		response.sendRedirect("index.jsp");
		return;
	} */
	
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect("index.jsp");
		return;
	}
%>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	/* 网页加载完了进入下面方法 */
	/* $(function(){
		alert("jiazaiwanle");
	}); */
	$(function(){
		// 数据
		/* var treeData=[{
			text:"根",
			children:[{
				text:"班级信息管理",
				attributes:{
					url:"gradeInfoManage.jsp"
				}
			},{
				text:"学生信息管理",
				attributes:{
					url:"studentInfoManage.jsp"
				}
			}]
		}]; */
		var treeData=[{
			text:"根",
			children:[{
				text:"班级信息管理",
				/* attributes是属性集合，每个属性都是键值对形式 */
				attributes:{
					url:"gradeInfoManage.jsp"
				}
			},{
				text:"学生信息管理",
				attributes:{
					url:"studentInfoManage.jsp"
				}
			}]
		}];
		
		// 实例化树菜单
		/* $("#tree").tree({
			data:treeData,
			lines:true,
			onClick:function(node){
				if(node.attributes){
					openTab(node.text,node.attributes.url);
				}
			}
		}); */
		$("#tree").tree({
			/* 把上面的数据塞到指定的节点中 */
			data:treeData,
			/* 显示树的线 */
			lines:true,
			/* 给每个节点添加一个点击事件，把当前点击的节点作为一个对象传入到方法里面 */
			onClick:function(node){
				/* 验证节点的属性集合是否为空 */
				if(node.attributes){
					/* 把节点的文本和url传到openTab方法中 */
					openTab(node.text,node.attributes.url);
				}
			}
		});
		
		// 新增Tab
		/* function openTab(text,url){
			if($("#tabs").tabs('exists',text)){
				$("#tabs").tabs('select',text);
			}else{
				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
				$("#tabs").tabs('add',{
					title:text,
					closable:true,
					content:content
				});
			}
		} */
		function openTab(text,url){
			
			if($("#tabs").tabs('exists',text)){
				/* 如果点击的节点在tabs中已经存在，则选中该节点 */
				$("#tabs").tabs("select",text);
			}else{
				/* 否则的话，根据传过来的url，获取要显示的内容，放在iframe中 */
				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
				$('#tabs').tabs('add',{
					/* 设置标题 */
					title:text,
					/* 设置该tab是可关闭的 */
					closable:true,
					/* 把内容加载到tab中 */
					content:content
				});
			}
		}
		
	});
</script>
</head>
<body class="easyui-layout">
	<!-- 顶部 -->
	<div region="north" style="height: 80px;background-color: #E0EDFF">
		<!-- float表示该div悬浮在左边，下一个div不会换行 -->
		<div align="left" style="width: 80%;float: left"><img src="images/main.jpg"></div>
		<div style="padding-top: 55px;padding-right: 20px;text-align: right;">当前用户：&nbsp;<font color="red" >${currentUser.userName }</font></div>
	</div>
	
	<!-- 中央 -->
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页" >
				<div align="center" style="padding-top: 100px;"><font color="red" size="10">欢迎使用</font></div>
			</div>
		</div>
	</div>
	<div region="west" style="width: 150px;" title="导航菜单" split="true">
		<ul id="tree"></ul>
	</div>
	<div region="south" style="height: 25px;" align="center">版权所有<a href="http://www.java1234.com">www.java1234.com</a></div>
</body>

</html>