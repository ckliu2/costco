<%@ include file="/common/taglibs.jsp"%>

code = ${code} -- rent.id=${rent.id} 
<br>


<a href="#" id="rentKeep" class="easyui-linkbutton" data-options="iconCls:'icon-1'" onclick="renewAdd('${rent.id}','rent.type.1')">留用</a>

<a href="#" id="rentReNew" class="easyui-linkbutton" data-options="iconCls:'icon-2'" onclick="renewAdd('${rent.id}','rent.type.2')">新作</a>




<script>

  $(document).ready(function () {
  	var code='${code}';
	  var rentId='${rent.id}';
  	//alert('checkAction='+code);
	
    switch(code){
		  case '1':
		   //alert('續租');
		   renewCheck(rentId);
		  break;
		  case '2':
		    renewCheck(rentId);
		  break;
	  }
  	
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


function renewAdd(rentId,kindCode){
	
	 $.ajax({
          url: 'renewAddJSON.do',
             data: {"rent.id": rentId,"kind.code":kindCode},
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