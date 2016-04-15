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
	
	<h2>树形表格客户端分页</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>这个示例教我们如何在树形表格中实现客户端分页.</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table id="tg" class="easyui-treegrid" title="客户端分页" style="width:700px;height:250px"
			data-options="
				iconCls: 'icon-ok',
				rownumbers: true,
				animate: true,
				collapsible: true,
				fitColumns: true,
				url: 'treegrid_data2.json',
				idField: 'id',
				treeField: 'name',
				loadFilter: pagerFilter,
				pagination: true,
				pageSize: 2,
				pageList: [2,5,10]
			">
		<thead>
			<tr>
				<th data-options="field:'name',width:180">任务名称</th>
				<th data-options="field:'persons',width:60,align:'right'">人员</th>
				<th data-options="field:'begin',width:80">开始日期</th>
				<th data-options="field:'end',width:80">结束日期</th>
				<th data-options="field:'progress',width:120,formatter:formatProgress">进度</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		function formatProgress(value){
	    	if (value){
		    	var s = '<div style="width:100%;border:1px solid #ccc">' +
		    			'<div style="width:' + value + '%;background:#cc0000;color:#fff">' + value + '%' + '</div>'
		    			'</div>';
		    	return s;
	    	} else {
		    	return '';
	    	}
		}
		
		function pagerFilter(data){
            if ($.isArray(data)){    // is array  
                data = {  
                    total: data.length,  
                    rows: data  
                }  
            }
            var dg = $(this);  
			var state = dg.data('treegrid');
            var opts = dg.treegrid('options');  
            var pager = dg.treegrid('getPager');  
            pager.pagination({  
                onSelectPage:function(pageNum, pageSize){  
                    opts.pageNumber = pageNum;  
                    opts.pageSize = pageSize;  
                    pager.pagination('refresh',{  
                        pageNumber:pageNum,  
                        pageSize:pageSize  
                    });  
                    dg.treegrid('loadData',data);  
                }  
            });  
            if (!data.topRows){  
            	data.topRows = [];
            	data.childRows = [];
            	for(var i=0; i<data.rows.length; i++){
            		var row = data.rows[i];
            		row._parentId ? data.childRows.push(row) : data.topRows.push(row);
            	}
				data.total = (data.topRows.length);
            }  
            var start = (opts.pageNumber-1)*parseInt(opts.pageSize);  
            var end = start + parseInt(opts.pageSize);  
			data.rows = $.extend(true,[],data.topRows.slice(start, end).concat(data.childRows));
			return data;
		}
	</script>
	
	
</body>
</html>