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
	
	<h2>加载表单数据</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击下面按钮加载数据.</div>
	</div>
	<div style="margin:10px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="loadLocal()">加载本地</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="loadRemote()">加载远程</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
	<div class="easyui-panel" title="发表主题" style="width:400px">
		<div style="padding:10px 0 10px 60px">
	    <form id="ff" method="post">
	    	<table>
	    		<tr>
	    			<td>姓名:</td>
	    			<td><input class="easyui-validatebox" type="text" name="name" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>Email:</td>
	    			<td><input class="easyui-validatebox" type="text" name="email" data-options="required:true,validType:'email'"></input></td>
	    		</tr>
	    		<tr>
	    			<td>主题:</td>
	    			<td><input class="easyui-validatebox" type="text" name="subject" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>内容:</td>
	    			<td><textarea name="message" style="height:60px;"></textarea></td>
	    		</tr>
	    		<tr>
	    			<td>语言:</td>
	    			<td>
	    				<select class="easyui-combobox" name="language"><option value="ar">Arabic</option><option value="bg">Bulgarian</option><option value="ca">Catalan</option><option value="zh-cht">Chinese Traditional</option><option value="cs">Czech</option><option value="da">Danish</option><option value="nl">Dutch</option><option value="en" selected="selected">English</option><option value="et">Estonian</option><option value="fi">Finnish</option><option value="fr">French</option><option value="de">German</option><option value="el">Greek</option><option value="ht">Haitian Creole</option><option value="he">Hebrew</option><option value="hi">Hindi</option><option value="mww">Hmong Daw</option><option value="hu">Hungarian</option><option value="id">Indonesian</option><option value="it">Italian</option><option value="ja">Japanese</option><option value="ko">Korean</option><option value="lv">Latvian</option><option value="lt">Lithuanian</option><option value="no">Norwegian</option><option value="fa">Persian</option><option value="pl">Polish</option><option value="pt">Portuguese</option><option value="ro">Romanian</option><option value="ru">Russian</option><option value="sk">Slovak</option><option value="sl">Slovenian</option><option value="es">Spanish</option><option value="sv">Swedish</option><option value="th">Thai</option><option value="tr">Turkish</option><option value="uk">Ukrainian</option><option value="vi">Vietnamese</option></select>
	    			</td>
	    		</tr>
	    	</table>
	    </form>
	    </div>
	</div>
	<script>
		function loadLocal(){
			$('#ff').form('load',{
				name:'张三',
				email:'zhangsan@qq.com',
				subject:'张三的主题',
				message:'张三的内容',
				language:'en'
			});
		}
		function loadRemote(){
			$('#ff').form('load', '../form/form_data1.json');
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
	
	
</body>
</html>