<%@ include file="/common/taglibs.jsp"%>


<table id="dg2" class="easyui-datagrid"></table>

         <div id="toolbar2">
      
            <a href="#" class="easyui-linkbutton" iconcls="icon-excel" plain="true" onclick="downloadExcel()">excel</a>
                          
           
         </div>               

        
        
<script>

function downloadExcel(){
	$('#dg2').datagrid('toExcel','dg.xls');
}


 $(document).ready(function () {
	
$('#dg2').datagrid({            
   url:'billboardRentJSON.do',  
   frozenColumns:[[
       {
         field: 'store',
         title: '店別',
         width:100
       },
       {
         field: 'billboardNo',
         title: '燈箱編號',
         width:60
       },
   ]],    
   columns:[[
   
     
       {  field: 'size',
         title: '燈箱名稱',
         width:60
       },
       {
         field: 'size1',
         title: '燈箱代碼',
         width:60
       },
       {
         field: 'size2',
         title: '燈箱俗稱',
         width:60
       },
       {
         field: 'size3',
         title: '客戶統稱',
         width:60
       },
       {
         field: 'size4',
         title: '燈箱尺寸',
         width:70
       },
       
       
       {
         field: 'vendorNo',
         title: '客戶編號',
         width:60
       },
       {
         field: 'vendor',
         title: '客戶',
         width:100
       },
       
       {
         field: 'kind',
         title: '備註',
         width:100
       },
       {
         field: 'fmYear',
         title: '上架年份',
         width:60
       },
       {
         field: 'memo',
         title: '備註1',
         width:200
       },
       {
         field: 'assign',
         title: '指定',
         width:80
       },
       
   ]],
   rownumbers: true,
   idField:'id',  
   width:'100%',
   height:'auto',
   toolbar:"#toolbar2",
  }).datagrid('enableFilter');
  
  });  


</script>