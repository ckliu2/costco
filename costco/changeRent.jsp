<%@ include file="/common/unsecureTaglibs.jsp"%>
changeRent rent.id=${rent.id}


<table id="dg1" class="easyui-datagrid"></table>
 <div id="toolbar1">
  <a href="#" class="easyui-linkbutton" iconcls="icon-add" plain="true" onclick="changeOk()">確認換位</a>
 </div>   

<script>

$(document).ready(function () {
	
	$('#dg1').datagrid({            
   url:'changeRentJSON.do?rent.id=${rent.id}',  
   frozenColumns:[[
     { field: 'ck', checkbox: true, width: 30 }, 
   ]],    
   columns:[[
       {
         field: 'vendor',
         title: '廠商簡稱',
         width:200
       },
       {
         field: 'vendorDeptNo',
         title: '部門編號',
         width:60
       },
       {
         field: 'vendorNo',
         title: '廠商編號',
         width:60
       },
       {
         field: 'year',
         title: '年份',
         width:60
       },
       {
         field: 'store',
         title: '店別',
         width:100
       },
       {
         field: 'rentNo',
         title: '燈箱編號',
         width:80
       },
       {
         field: 'size',
         title: '燈箱尺寸',
         width:150
       },
       {
         field: 'screen',
         title: '畫面',
         width:350
       },
   ]],
   singleSelect: true,           
   rownumbers: true,
   idField:'id',  
   width:'100%',
   height:'auto',
   toolbar:"#toolbar1",
  }).datagrid('enableFilter');
	
});

 function changeOk(){
 	
 	let ids = getDatagridSelectId('dg1');
  //alert('changeOk() ids='+ids.toString());        
  if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
  }
      
   $.ajax({
    url: 'changeRentAddJSON.do',
    type: "POST",
    dataType: "json",
    data: {
     "rent.id": ids.toString(),
     "rent1.id": '${rent.id}'
    },
    success: function(data) {
    	 $.messager.alert('系統訊息', '換位完成!!', 'info');
    	 parent.$('#myevent').window('close');
      //alert(JSON.stringify(data));
    }
   });	
  
 }
 
 
 
 
 
 
</script>