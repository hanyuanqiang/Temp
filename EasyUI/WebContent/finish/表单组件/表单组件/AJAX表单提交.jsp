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
	
	<h2>AJAX表单提交</h2>  
    <div class="demo-info" style="margin-bottom:10px">  
        <div class="demo-tip icon-tip">&nbsp;</div>  
        <div>填写表单,然后提交.</div>  
    </div>  
      
    <div class="easyui-panel" title="Ajax表单" style="width:230px;padding:10px;">  
        <form id="ff" action="form" method="post">  
            <table>  
                <tr>  
                    <td>姓名:</td>  
                    <td><input name="name" type="text"></input></td>  
                </tr>  
                <tr>  
                    <td>Email:</td>  
                    <td><input name="email" type="text"></input></td>  
                </tr>  
                <tr>  
                    <td>电话</td>  
                    <td><input name="phone" type="text"></input></td>  
                </tr>  
                <tr>  
                    <td></td>  
                    <td><input type="submit" value="提交"></input></td>  
                </tr>  
            </table>  
        </form>  
    </div>  
    <script type="text/javascript">  
        $(function(){  
            $('#ff').form({  
                success:function(data){  
                    $.messager.alert('系统提示', data, 'info');  
                }  
            });  
        });  
    </script>  
	
	
</body>
</html>