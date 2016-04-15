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
	
	<h2>基本树组件</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>点击左边箭头来展开或者收缩节点.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<ul class="easyui-tree">
		<li>
			<span>My Documents</span>
			<ul>
				<li data-options="state:'closed'">
					<span>Photos</span>
					<ul>
						<li>
							<span>Friend</span>
						</li>
						<li>
							<span>Wife</span>
						</li>
						<li>
							<span>Company</span>
						</li>
					</ul>
				</li>
				<li>
					<span>Program Files</span>
					<ul>
						<li>Intel</li>
						<li>Java</li>
						<li>Microsoft Office</li>
						<li>Games</li>
					</ul>
				</li>
				<li>index.html</li>
				<li>about.html</li>
				<li>welcome.html</li>
			</ul>
		</li>
	</ul>
	
	
</body>
</html>