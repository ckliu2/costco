<%@ include file="/common/taglibs.jsp"%>


        
        <table id="dg" class="easyui-datagrid"></table>
        <div id="myevent" class="easyui-window" data-options="resizable:true,modal:true,closed:true,iconCls:'icon-view'" style="width:50%;height:600px;padding:10px;top:1px"></div>
          
        
         <div id="toolbar">
           <ww:select name="year" 
               id="year"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="costcoYearList"
               listKey="id"
               listValue="value"
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
            <a href="#" class="easyui-linkbutton" iconcls="icon-1" plain="true" onclick="renew()">續租</a>       
            <a href="#" class="easyui-linkbutton" iconcls="icon-2" plain="true" onclick="change()">換位</a>
            <a href="#" class="easyui-linkbutton" iconcls="icon-3" plain="true" onclick="newRent()">新租</a>
                          
           
         </div>               



<script>


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

function change(){
	let ids = getDatagridSelectId('dg');
  if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
  }
  let queryData = {};
	queryData['rent.id'] = ids.toString(); 
	$('#myevent').window('open');
  $('#myevent').window('setTitle', '換位設定');
  $('#myevent').window('refresh', 'changeRent.do?'+encodeQueryData(queryData));
  
} 

function renew(){
	let ids = getDatagridSelectId('dg');
      //alert('renew() ids='+ids.toString());        
      if (ids.length == 0) {
        $.messager.alert('系統訊息', '至少選擇一項!', 'error');
        return false;
      }
     renewCheck(ids.toString()); 
     
}

String.prototype.format = String.prototype.f = function() {
    var s = this,
        i = arguments.length;

    while (i--) {
        s = s.replace(new RegExp('\\{' + i + '\\}', 'gm'), arguments[i]);
    }
    return s;
};

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
	 let year=$('#year').val();
	 let store=$('#store').val();
	 //alert(year+'-'+store);
	 $('#dg').datagrid('load', {
      'year':year,
      'store.id':store,
   });
}

$(document).ready(function () {
	
$('#dg').datagrid({            
   url:'rentListJSON.do',  
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
   toolbar:"#toolbar",
  }).datagrid('enableFilter');
  
  });  
          function checkForChanges(){		          	
              	var $element=$(window);	              	
     	          $('#dg').datagrid('resize', {
                 height:$element.height()-30,
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