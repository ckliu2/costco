<%@ include file="/common/taglibs.jsp"%>


<table id="dg2" class="easyui-datagrid"></table>

         <div id="toolbar2">
           <ww:select name="fmYear" 
               id="fmYear"
               list="costcoYearList"
               listKey="valueTw"
               listValue="valueTw"
               cssClass="cInputListField"
            />
            
            <a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true" onclick="query()">查詢</a>  
            
            <a href="#" class="easyui-linkbutton" iconcls="icon-excel" plain="true" onclick="downloadExcel()">Export Excel</a>
                          
           
         </div>               

        
        
<script>

function downloadExcel(){
	$('#dg2').datagrid('toExcel','dg.xls');
	//var data = JSON.stringify($('#dg2').datagrid('getData').rows); 
  //JSONToCSVConvertor(data, "Download", true);  
}

function query(){
	 let fmYear=$('#fmYear').val();
	 //alert(fmYear+'-'+store);
	 $('#dg2').datagrid('load', {
      'fmYear':fmYear,
   });
  
}


 $(document).ready(function () {
	
$('#dg2').datagrid({            
   url:'billboardRentJSON.do',  
   frozenColumns:[[
   
       {
         field: 'billboard',
         title: '系統編號',
         width:30
       },
       
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
         width:160
       },
      
       {
         field: 'fmYear',
         title: '上架年份',
         width:60
       },
       {
         field: 'year',
         title: '製作年份',
         width:60
       },
       {
         field: 'kind',
         title: '備註1',
         width:100
       },
       {
         field: 'memo',
         title: '備註2',
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
  
  
  function JSONToCSVConvertor(JSONData, ReportTitle, ShowLabel) {  
            //If JSONData is not an object then JSON.parse will parse the JSON string in an Object  
            var arrData = typeof JSONData != 'object' ? JSON.parse(JSONData)  
                    : JSONData;  
  
            var CSV = '';  
            //Set Report title in first row or line  
  
            CSV += ReportTitle + '\r\n\n';  
  
            //This condition will generate the Label/Header  
            if (ShowLabel) {  
                var row = "";  
  
                //This loop will extract the label from 1st index of on array  
                for ( var index in arrData[0]) {  
  
                    //Now convert each value to string and comma-seprated  
                    row += index + ',';  
                }  
  
                row = row.slice(0, -1);  
  
                //append Label row with line break  
                CSV += row + '\r\n';  
            }  
  
            //1st loop is to extract each row  
            for (var i = 0; i < arrData.length; i++) {  
                var row = "";  
  
                //2nd loop will extract each column and convert it in string comma-seprated  
                for ( var index in arrData[i]) {  
                    row += '"' + arrData[i][index] + '",';  
                }  
  
                row.slice(0, row.length - 1);  
  
                //add a line break after each row  
                CSV += row + '\r\n';  
            }  
  
            if (CSV == '') {  
                alert("Invalid data");  
                return;  
            }  
  
            //Generate a file name  
            var fileName = "MyReport_";  
            //this will remove the blank-spaces from the title and replace it with an underscore  
            fileName += ReportTitle.replace(/ /g, "_");  
  
            //Initialize file format you want csv or xls  
            var uri = 'data:text/csv;charset=utf-8,' + escape(CSV);  
  
            // Now the little tricky part.  
            // you can use either>> window.open(uri);  
            // but this will not work in some browsers  
            // or you will not get the correct file extension      
  
            //this trick will generate a temp <a /> tag  
            var link = document.createElement("a");  
            link.href = uri;  
  
            //set the visibility hidden so it will not effect on your web-layout  
            link.style = "visibility:hidden";  
            link.download = fileName + ".csv";  
  
            //this part will append the anchor tag and remove it after automatic click  
            document.body.appendChild(link);  
            link.click();  
            document.body.removeChild(link);  
        }  


</script>