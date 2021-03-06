<%@ include file="/common/taglibs.jsp"%>

<div id="myevent" class="easyui-window" data-options="resizable:true,modal:true,closed:true,iconCls:'icon-view'" style="width:40%;height:700px;padding:10px;top:1px"></div>
        
<table id="dg3" class="easyui-datagrid"></table>

         <div id="toolbar3">
      
            <a href="#" class="easyui-linkbutton" iconcls="icon-excel" plain="true" onclick="downloadExcel()">excel</a>
            <a href="#" class="easyui-linkbutton" iconcls="icon-ok" plain="true" onclick="downloadOrder()">下載訂購單</a>    
            <a href="#" class="easyui-linkbutton" iconcls="icon-1" plain="true" onclick="quantity()">換出班工費數量</a>          
           
         </div>               

 <div class="progress"></div>       
        
<script>

function quantity(){
	let vendors=getSel();
	//alert(vendors.length+' vendors[0].store='+vendors[0].storeId+' vendors[0].vendorId='+vendors[0].vendorId);
	if (vendors.length !== 1) {
      $.messager.alert('系統訊息', '您需選擇一個廠商!', 'error');
      return false;
  } 
  $('#myevent').window('open');
  $('#myevent').window('setTitle', '出班工費設定');
  $('#myevent').window('refresh', 'quantityForm.do?vendor.id='+vendors[0]);
}

function getSel() {
                var checkedItems = $('#dg3').datagrid('getChecked');
                var vendors = [];
                $.each(checkedItems, function(index, item) { 
                    vendors.push(item.vendorId); 
                });
                return vendors;
}

function progress(){
            var win = $.messager.progress({
                title:'Please waiting',
                msg:'資料處理中，請稍後.........'
            });
            setTimeout(function(){
                $.messager.progress('close');
            },5000000)
        }

function downloadExcel(){
	$('#dg3').datagrid('toExcel','dg.xls');
}

function downloadOrder(){
	let ids = getDatagridSelectId('dg3');
  if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
  }
 //alert(ids.toString());
 
 $.ajax({
    url: 'downloadPDFVendorReportListJSON.do',
    type: "POST",
    data: {
       'ids': ids.toString(),
    },
    beforeSend: function(){           
           progress();
    },
    dataType: "json",
    success: function(data) {
    	 $.messager.progress('close');
    	 $('#dg3').datagrid("uncheckAll");  
       window.open('http://60.248.162.95:9080/costco/download/vendorOrder.zip');     
       $.messager.alert('系統訊息', '系統會自動下載 若沒有下載請到該網址下載<br>http://60.248.162.95:9080/costco/download/vendorOrder.zip', 'info');
    }
 });
 
 
}


 $(document).ready(function () {
	
$('#dg3').datagrid({            
   url:'vendorReportListJSON.do',  
   singleSelect: false,
   rownumbers: true,
   idField:'id',  
   columns:[[
       { field: 'ck', checkbox: true, width: 30 }, 
       {  field: 'no',
         title: '客戶編號',
         width:100
       },
       {
         field: 'name',
         title: '客戶名稱',
         width:200
       },
       {
         field: 'price',
         title: '總金額',
         width:100
       },
       {
         field: 'quantity',
         title: '出班工費數量',
         width:80
       },
   ]],
   rownumbers: true,
   idField:'id',  
   width:'100%',
   height:'auto',
   toolbar:"#toolbar3",
  }).datagrid('enableFilter');
  
   
  
  });  
  
  

</script>