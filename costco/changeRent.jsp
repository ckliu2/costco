<%@ include file="/common/unsecureTaglibs.jsp"%>
changeRent rent.id=${rent.id}


<table id="dg1" class="easyui-datagrid"></table>
 <div id="toolbar1">
  <a href="#" id="rentKeep" class="easyui-linkbutton" iconcls="icon-1" plain="true" onclick="renewAdd()">留用</a>
  	 <a href="#" id="rentReNew" class="easyui-linkbutton" iconcls="icon-2" plain="true" onclick="changeOk()">換位</a>
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
         title: '製作年份',
         width:60
       },
       {
         field: 'fmYear',
         title: '上架年份',
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
     'rent.id': ids.toString(),
     'rent1.id': '${rent.id}',
     'kind.code':'rent.type.1'
    },
    success: function(data) {
    	 $.messager.alert('系統訊息', '換位完成!!', 'info');
    	 $('#myevent').window('close');
      //alert(JSON.stringify(data));
    }
   });	
  
 }
 
 
 
 
 $(document).ready(function () {
   	let ids = getDatagridSelectId('dg');
    let rentId=ids.toString();
  	renewCheck(rentId);
  	
  });
  
function renewCheck(rentId){
	 $.ajax({
    url: 'renewCheckJSON.do',
    type: "POST",
    dataType: "json",
    data: {
     "rent.id": rentId
    },
    success: function(data) {
    	//alert(JSON.stringify(data, null, 2));
    	if(data.renew == false){
    		 	  $('#rentKeep').linkbutton('disable');
    	 }
    	if(data.code===-2){
    		  	$('#rentKeep').linkbutton('disable');
    		  	$('#rentReNew').linkbutton('disable');
       }
    }
 });
}
  
 

function renewAdd(){
	let ids = getDatagridSelectId('dg');
  let rentId=ids.toString();
  //alert(rentId);
	$.ajax({
          url: 'renewAddJSON.do',
             data: {'rent.id': rentId,'kind.code':'rent.type.1'},
             type: "POST",
             dataType: "json",
             success: function(data) {
             	 //alert(JSON.stringify(data));
             	 $.messager.alert('系統訊息', '儲存成功!!', 'info');
             	 $('#myevent').window('close');
             }
         }); 
}


 

 
</script>