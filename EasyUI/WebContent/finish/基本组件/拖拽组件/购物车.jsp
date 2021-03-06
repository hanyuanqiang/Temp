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
	
	
	 <h2>购物车</h2>  
  <div class="easyui-panel" fit="true" border="false" style="height:100%;overflow:hidden">  
      <div class="cart">  
          <div class="ctitle">购物车</div>  
          <div style="background:#fff">  
          <table id="cartcontent" fitColumns="true" style="width1:300px;height:auto;">  
              <thead>  
                  <tr>  
                      <th field="name" width=140>商品名称</th>  
                      <th field="quantity" width=60 align="right">数量</th>  
                      <th field="price" width=60 align="right">价格</th>  
                  </tr>  
              </thead>  
          </table>  
          </div>  
          <div class="ctitle" style="position:absolute;bottom:40px">把商品拖到这里添加到购物车</div>  
      </div>  
      <div class="products">  
          <ul>  
              <li>  
                  <a href="#" class="item">  
                      <img src="images/shirt1.gif"/>  
                      <div>  
                          <p>气球</p>  
                          <p>价格:RMB25</p>  
                      </div>  
                  </a>  
              </li>  
              <li>  
                  <a href="#" class="item">  
                      <img src="images/shirt2.gif"/>  
                      <div>  
                          <p>心情</p>  
                          <p>价格:RMB25</p>  
                      </div>  
                  </a>  
              </li>  
              <li>  
                  <a href="#" class="item">  
                      <img src="images/shirt3.gif"/>  
                      <div>  
                          <p>大象</p>  
                          <p>价格:RMB25</p>  
                      </div>  
                  </a>  
              </li>  
              <li>  
                  <a href="#" class="item">  
                      <img src="images/shirt4.gif"/>  
                      <div>  
                          <p>涂鸦</p>  
                          <p>价格:RMB25</p>  
                      </div>  
                  </a>  
              </li>  
              <li>  
                  <a href="#" class="item">  
                      <img src="images/shirt5.gif"/>  
                      <div>  
                          <p>字母组合</p>  
                          <p>价格:RMB25</p>  
                      </div>  
                  </a>  
              </li>  
              <li>  
                  <a href="#" class="item">  
                      <img src="images/shirt6.gif"/>  
                      <div>  
                          <p>摇滚</p>  
                          <p>价格:RMB25</p>  
                      </div>  
                  </a>  
              </li>  
          </ul>  
      </div>  
  </div>  
    
      <style type="text/css">  
          .products{  
              overflow:auto;  
              height:100%;  
              background:#fafafa;  
          }  
          .products ul{  
              list-style:none;  
              margin:0;  
              padding:0px;  
          }  
          .products li{  
              display:inline;  
              float:left;  
              margin:10px;  
          }  
          .item{  
              display:block;  
              text-decoration:none;  
          }  
          .item img{  
              border:1px solid #333;  
          }  
          .item p{  
              margin:0;  
              font-weight:bold;  
              text-align:center;  
              color:#c3c3c3;  
          }  
          .cart{  
              float:right;  
              position:relative;  
              width:260px;  
              height:100%;  
              background:#ccc;  
              padding:0px 10px;  
          }  
          .ctitle{  
              text-align:center;  
              color:#555;  
              font-size:18px;  
              padding:10px;  
          }  
      </style>  
      <script>  
          $(function(){  
              $('#cartcontent').datagrid({  
                  singleSelect:true,  
                  showFooter:true  
              });  
              $('.item').draggable({  
                  revert:true,  
                  proxy:'clone',  
                  onStartDrag:function(){  
                      $(this).draggable('options').cursor = 'not-allowed';  
                      $(this).draggable('proxy').css('z-index',10);  
                  },  
                  onStopDrag:function(){  
                      $(this).draggable('options').cursor='move';  
                  }  
              });  
              $('.cart').droppable({  
                  onDragEnter:function(e,source){  
                      $(source).draggable('options').cursor='auto';  
                  },  
                  onDragLeave:function(e,source){  
                      $(source).draggable('options').cursor='not-allowed';  
                  },  
                  onDrop:function(e,source){  
                      var name = $(source).find('p:eq(0)').html();  
                      var price = $(source).find('p:eq(1)').html();  
                      addProduct(name, parseFloat(price.split('RMB')[1]));  
                  }  
              });  
          });  
            
          function addProduct(name,price){  
              var dg = $('#cartcontent');  
              var data = dg.datagrid('getData');  
              function add(){  
                  for(var i=0; i<data.total; i++){  
                      var row = data.rows[i];  
                      if (row.name == name){  
                          row.quantity += 1;  
                          return;  
                      }  
                  }  
                  data.total += 1;  
                  data.rows.push({  
                      name:name,  
                      quantity:1,  
                      price:price  
                  });  
              }  
              add();  
              dg.datagrid('loadData', data);  
              var cost = 0;  
              var rows = dg.datagrid('getRows');  
              for(var i=0; i<rows.length; i++){  
                  cost += rows[i].price*rows[i].quantity;  
              }  
              dg.datagrid('reloadFooter', [{name:'总计',price:cost}]);  
          }  
      </script>  
	
</body>
</html>