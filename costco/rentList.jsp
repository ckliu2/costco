<%@ include file="/common/taglibs.jsp"%>
<ww:set name="adminRole" value="%{isAdminRole()}"/> 
<ww:if test="${adminRole == true}">
     <c:set var="admin" value="1" />
</ww:if>
<ww:else>
     <c:set var="admin" value="0" />
</ww:else>
        
        <table id="dg" class="easyui-datagrid"></table>
        <div id="myevent" class="easyui-window" data-options="resizable:true,modal:true,closed:true,iconCls:'icon-view'" style="width:40%;height:700px;padding:10px;top:1px"></div>
          
        
         <div id="toolbar">
      
           <ww:select name="fmYear" 
               id="fmYear"
               list="costcoYearList"
               listKey="valueTw"
               listValue="valueTw"
               cssClass="cInputListField"
            />
          
            <ww:select name="store.id" 
               id="store"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="storeList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            />
            <a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true" onclick="query()">查詢</a>   
            <a href="#" class="easyui-linkbutton" iconcls="icon-1" plain="true" onclick="rentList()">出租一覽表</a>
            <a href="#" class="easyui-linkbutton" iconcls="icon-2" plain="true" onclick="vendorReportList()">客戶訂購單一覽表</a>
            <a href="#" class="easyui-linkbutton" iconcls="icon-3" plain="true" onclick="noRentStoreList()">FY21無出租廠商一覽表</a>
            <a href="#" class="easyui-linkbutton" iconcls="icon-4" plain="true" onclick="resetData()">恢復去年資料</a>
            
            
            <a href="#" class="easyui-linkbutton" iconcls="icon-excel" plain="true" onclick="vendorExcel()">廠商出租</a>
            <a href="#" class="easyui-linkbutton" iconcls="icon-edit" plain="true" onclick="edit()">編輯</a>
            <a href="#" class="easyui-linkbutton" iconcls="icon-remove" plain="true" onclick="deleteRent()">刪除</a>
                      
           
         </div>               

<div class="progress"></div>

<script>

function checkForChanges(){		   	
              	var $element=$(window);	         	
     	          $('#dg').datagrid('resize', {
                 height:$element.height()-100,
                });
}

function resetData(){
	let ids=getSelx();
	let admin='${admin}';
	if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
  }
  if (admin === '0') {
        $.messager.alert('系統訊息', '權限不足!', 'error');
        return false;
  }
	
	 $.ajax({
          url: 'rollBackRentJSON.do',
          type: "POST",
          dataType: "json",
          data: {
            "store.id": ids[0].storeId,
            "billboard.no": ids[0].rentNo,
          },
          success: function(data) {
    	      $.messager.alert('系統訊息', '恢復成功!', 'info');
    	      $('#dg').datagrid("reload");  
            $('#dg').datagrid("uncheckAll");  
          }
    })      
}

function getSelx() {
                var checkedItems = $('#dg').datagrid('getChecked');
                var vendors = [];
                $.each(checkedItems, function(index, item) { 
                    vendors.push({storeId:item.storeId,rentNo:item.rentNo}); 
                });
                return vendors;
}

function noRentStoreList(){
	let store=$('#store').val();
	if (store == '') {
       $.messager.alert('系統訊息', '請選擇一間店!', 'error');
       return false;
   }  
   window.open('http://192.168.1.222:8077/?rpt=1&store='+store);
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



$('#myevent').window({
   onClose() {
     $('#dg').datagrid("reload");  
     $('#dg').datagrid("uncheckAll");  
   }
});

function edit(){
	 let ids = getDatagridSelectId('dg');
	 let rentId=ids.toString();
	 //alert(rentId);
	 $('#myevent').window('open');
   $('#myevent').window('setTitle', '出租設定');
   $('#myevent').window('refresh', 'editRentForm.do?rent.id='+rentId);
}

function deleteRent(){
	let ids = getDatagridSelectId('dg');
  if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
  }
  
  let deleteFMYear;
  let checkedItems = $('#dg').datagrid('getChecked');
  $.each(checkedItems, function(index, item) {
      deleteFMYear=item.fmYear;
  });
  
  if(deleteFMYear==='FY19'){
  	$.messager.alert('系統訊息', 'FY19 不能刪除!', 'error');
    return false;
  }
  
 $.messager.confirm('系統訊息', '確定刪除?', function(r){
   if (r){ 
                
    let rentId=ids.toString();
      $.ajax({
          url: 'deleteRentJSON.do',
          type: "POST",
          dataType: "json",
          data: {
            "rent.id": rentId
          },
          success: function(data) {
    	      $.messager.alert('系統訊息', '刪除成功!', 'info');
    	      $('#dg').datagrid("reload");  
            $('#dg').datagrid("uncheckAll");  
          }
      });
  
     }
  });
  
}


function encodeQueryData(data) {
  var ret = [];
  for (let d in data)
    ret.push(encodeURIComponent(d) + '=' + encodeURIComponent(data[d]));
  return ret.join('&');
} 

function newRent(){
	$('#myevent').window('open');
  $('#myevent').window('setTitle', '換位設定');
  $('#myevent').window('refresh', 'newRent.do');
}

function rentList(){
  window.open('billboardRentList.do');
}

function vendorReportList(){
  window.open('vendorReportList.do');
}

function change(){
	let ids = getDatagridSelectId('dg');
  if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
  }
  let queryData = {};
	queryData['rent.id'] = ids.toString(); 
	$('#myevent').window({
     top: '0px',
     width:'50%',
     height:'600px'
  });
	$('#myevent').window('open');
  $('#myevent').window('setTitle', '換位設定');
  $('#myevent').window('refresh', 'changeRent.do?'+encodeQueryData(queryData));
} 




function renew(){
	let ids = getDatagridSelectId('dg');
  if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
  }
      
  $('#myevent').window({
     top: '0px',
     width:'30%',
     height:'auto'
  });
  $('#myevent').window('open');
  $('#myevent').window('setTitle', '租用設定');
  $('#myevent').window('refresh', 'rentSetting.do?code=1&rent.id='+ids.toString());
}

String.prototype.format = String.prototype.f = function() {
    var s = this,
        i = arguments.length;

    while (i--) {
        s = s.replace(new RegExp('\\{' + i + '\\}', 'gm'), arguments[i]);
    }
    return s;
};

function vendorExcel(){
	 let fmYear=$('#fmYear').val();
	 $.ajax({
    url: 'vendorExcelJSON.do',
    type: "POST",
    dataType: "json",
    data: {
     "fmYear": fmYear
    },
    beforeSend: function(){           
           progress();
    },
    success: function(data) {
    	$.messager.progress('close');
    	window.open('http://60.248.162.95:9080/costco/download/vendorExcel.xls');     
      $.messager.alert('系統訊息', '系統會自動下載 若沒有下載請到該網址下載<br>http://60.248.162.95:9080/costco/download/vendorExcel.xls', 'info');
    	
    }
  });
    	
}

function renewCheck(rentId){
	let message='';
	 //let message1="{0}-{1}".format('a','b');
	 //alert(message1);
	 
   $.ajax({
    url: 'renewCheckJSON.do',
    type: "POST",
    dataType: "json",
    data: {
     "rent.id": rentId
    },
    success: function(data) {
    	console.log(JSON.stringify(data, null, 2));
    	if(!data.result){
    		
    	  if(data.code===-1){	
    	  	
    	  message='不可續租必須新租,請問您要新租?';
    		$.messager.confirm('系統訊息', message, function (r) {    
          if (r) {
            alert('新租');
          }
        });
        
       }
       
       if(data.code===-2){
       	   message='已被租走<br><br><br>出租年：{0}<br>廠商：{1}<br>燈箱尺寸：{2}<br>店別：{3}<br>燈箱編號：{4}<br>畫面：{5}'.format(data.year,data.vendor,data.size,data.store,data.no,data.screen)
         	 $.messager.alert('系統訊息', message, 'error');
       }
       
    	}else{
    		message='可續租<br><br><br>出租年：{0}<br>廠商：{1}<br>燈箱尺寸：{2}<br>店別：{3}<br>燈箱編號：{4}<br>畫面：{5}'.format(data.year,data.vendor,data.size,data.store,data.no,data.screen)
    		$.messager.confirm('系統訊息', message, function (r) {    
          if (r) {
            //alert('續租');
            renewAdd(rentId);
          }
        });
    		
    	}
    	
      //alert(JSON.stringify(data));
    }
   });	
  
 }
 
function renewAdd(rentId){
	//alert('renewAdd rentId='+rentId);
	
	 $.ajax({
          url: 'renewAddJSON.do',
             data: {"rent.id": rentId},
             type: "POST",
             dataType: "json",
             success: function(data) {
             	 //alert(JSON.stringify(data));
             	 $.messager.alert('系統訊息', '儲存成功!!', 'info')
             }
         });  
} 

function query(){
	 let fmYear=$('#fmYear').val();
	 let store=$('#store').val();
	 //alert(fmYear+'-'+store);
	 $('#dg').datagrid('load', {
      'fmYear':fmYear,
      'store.id':store,
   });
   $('#dg').datagrid("uncheckAll"); 
}

$(document).ready(function () {
	
$('#dg').datagrid({            
   url:'rentListJSON.do',  
   frozenColumns:[[
     { field: 'ck', checkbox: true, width: 30 }, 
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
    
   ]],    
   columns:[[ 
       {
         field: 'rentNo',
         title: '燈箱編號',
         width:60
       },
       {
         field: 'size',
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
         field: 'screen',
         title: '畫面',
         width:150
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
       {
         field: 'lastModifiedUser',
         title: '最後修改人',
         width:80
       }, 
       {
         field: 'lastModifiedDate',
         title: '最後修改時間',
         width:200
       },
   ]],
   singleSelect: true,           
   rownumbers: true,
   idField:'id',  
   width:'100%',
   height:'auto',
   toolbar:"#toolbar",
   rowStyler: function(index, row) {
          if(row.isEdited ==='N'){
              return 'background-color:#808080;color:#fff;';
         }
   },
  }).datagrid('enableFilter');
  
  checkForChanges()
  
});  
          function checkForChanges(){		          	
              	var $element=$(window);	              	
     	          $('#dg').datagrid('resize', {
                 height:$element.height()-50,
                });
           }
           
   var delay = (function () {
         var timer = 0;
          return function (callback, ms) {
           clearTimeout(timer);
           timer = setTimeout(callback, ms);
          };
         })();

         delay(function () {      
          checkForChanges();
         }, 1500); // end delay
         

</script>