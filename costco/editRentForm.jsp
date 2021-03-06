<%@ include file="/common/taglibs.jsp"%>
 
   <ww:if test="rent.id == null">
     <c:set var="title" value="新增" />
   </ww:if>
   <ww:else>
     <c:set var="title" value="編輯" />
   </ww:else>
   
   
    <div class="easyui-panel" title="${title}-${rent.id}" style="width:100%;max-width:100%;padding:10px 10px;">
        <form id="ff" method="post">
            <ww:hidden id="storeId" name="storeId" value="${rent.billboard.store.id}"/> 
            <ww:hidden id="no" name="no" value="${rent.billboard.id}"/> 
            
            
            <div style="margin-bottom:10px">
                廠商:
                <input id="vendor" name="vendor" class="easyui-combobox" data-options="prompt:'輸入廠商關鍵字'" style="width:300px" />
            </div>
            
             <div style="margin-bottom:10px">
                製作年份:
                <input id="year" name="year" class="easyui-numberspinner"  data-options="
                    onChange: function(value){ 
                    	let kindId;
                    	let year=new Date().getYear()+1900;
                    	if(value==2020){ 
                    		kindId=14;
                    	}else{ 
                    		kindId=15;
                    	} 
                    	  $('#kindId').val(kindId); 
                    }
                ">
             </div>
             
            <div style="margin-bottom:10px">
                上架年份:
                <ww:select name="fmYearId" 
                  id="fmYearId"
                  list="costcoYearList"
                  listKey="valueTw"
                  listValue="valueTw"
                  cssClass="cInputListField"
                 />
             </div> 
            
            <div style="margin-bottom:10px">
               店名: ${rent.billboard.store.name}    
            </div>
            
            <div style="margin-bottom:10px">
                燈箱編號: ${rent.billboard.no}
            </div>
            
            <div style="margin-bottom:10px">
                燈箱名稱: <span id="size"/>
            </div>
            <div style="margin-bottom:10px">
                燈箱代碼: <span id="size1"/>
            </div>
            <div style="margin-bottom:10px">
                燈箱俗稱: <span id="size2"/>
            </div>
             <div style="margin-bottom:10px">
                客戶統稱: <span id="size3"/>
            </div>
            <div style="margin-bottom:10px">
                燈箱尺寸: <span id="size4"/>
            </div>
            
            <div style="margin-bottom:10px">
                畫面:
               <input id="screen" name="screen" class="easyui-textbox" data-options="prompt:'畫面'" style="width:80%;height:50px" multiline="true"/>
            </div> 
           
            <div style="margin-bottom:10px">
                備註1:
                <ww:select name="kind.id"  onchange="kind()"
                  id="kindId"
                  headerKey=""
                  headerValue="%{getText('common.pleaseSelect')}..."
                  list="kindList"
                  listKey="id"
                  listValue="valueTw"
                  	
                  cssClass="cInputListField"
                 />
            </div> 
             
            <div style="margin-bottom:10px">
                備註2:
               <input id="memo" name="memo" class="easyui-textbox" data-options="prompt:'備註'" style="width:80%;height:50px" multiline="true"/>
            </div>
            
            <div style="margin-bottom:10px">
                指定:
               <ww:checkbox id="assign" name="assign" cssClass="cCheckboxField" />
            </div>
            <div style="margin-bottom:10px">
                最後修改人:
               ${rent.lastModifiedUser.name}
            </div>
            <div style="margin-bottom:10px">
                最後修改時間: 
               <fmt:formatDate pattern = "yyyy-MM-dd HH:mm" value = "${rent.lastModifiedDate}" />
            </div>
            
            
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-save" plain="true" onclick="saveNewRent()" style="width:80px">儲存</a>
        </div>
    </div>
    <script>
    
       let rentId='${rent.id}';
       
       
       $(document).ready(function () {
       	
       	   editForm('${rent.id}');
       	  
       	  $("#vendor").combobox({
            method: 'get',
            url:'vendorJSON.do',  
            valueField: 'value',
            textField: 'text',
          });
           
           noBySize('${rent.billboard.id}');
       });
       
       function kind(){
       	 let kindId=$('#kindId').val();
       	 if(kindId==14){
       	 	 $('#year').numberspinner('setValue', 2020);
       	 }else{
       	 	 $('#year').numberspinner('setValue', 2021);
       	 }
       }
       
       
       function noBySize(id){
         $.ajax({
          url: 'noBySizeJSON.do',
          type: "POST",
          data: { "billboard.id": id },
          dataType: "json",
          success: function (data) {
          	 $('#size').text(data.size);
          	 $('#size1').text(data.size1);
          	 $('#size2').text(data.size2);
          	 $('#size3').text(data.size3);
          	 $('#size4').text(data.size4); 
          	 $('#sizeId').val(data.sizeId);
           }
          })
       }
       
       
       function editForm(id) { 
        $.ajax({
          url: 'editRentJSON.do',
          type: "POST",
          data: { "rent.id": id },
          dataType: "json",
          success: function (data) {
          	//alert(JSON.stringify(data, null, 2));
          	$('#fmYearId').val(data.fmYear);
          	$('#storeId').val(data.store);
          	$('#sizeId').val(data.size);
          	$('#kindId').val(data.kind);
          	$('#year').numberbox('setValue', data.year);
          	$('#screen').textbox('setValue', data.screen);
          	$('#memo').textbox('setValue', data.memo);
          	$("#assign").prop( "checked", data.assign );
          	$('#vendor').combobox('setValue', data.vendor);
          	getNo();
          	
          }
          })
       } 
       
       function saveNewRent(){
       	  let storeId=$('#storeId').val();
        	let sizeId=$('#sizeId').val();
        	let kindId=$('#kindId').val();
        	let fmYearId=$('#fmYearId').val();
        	let assign=$('#assign').prop('checked');
        	let screen = $('#screen').textbox('getValue');
        	let memo = $('#memo').textbox('getValue');
        	let no=$('#no').val();
        	let vendor = $('#vendor').combobox('getValue'); 
        	let year = $('#year').numberbox('getValue');
        	
        	//alert("vendor,{0},no,{1},assign,{2}".format(vendor,no,assign));
        	//alert('storeId='+storeId);
        	
        	if(storeId ==='' || sizeId ===''|| kindId ==='' || no === null ){
        		 $.messager.alert('系統訊息', '店名,尺寸,燈號必填欄位!', 'error');
        		 return false;
          }
        	
        	if(vendor==null) vendor=0;
        	
        	
        	$.ajax({
                   url: 'saveRentJSON.do',
                   data: {
                   	'store.id':storeId,
                   	'billboard.id': no,
                   	'vendor.id': vendor,
                   	'rent.year':year,
                   	'rent.screen':screen,
                   	'rent.memo':memo,
                   	'kind.id':kindId,
                   	'assign':assign,
                   	'rent.id':rentId,
                   	'fmYear':fmYearId,
                   	},
                   type: "POST",
                   dataType: "json",
                   success: function(data) {
             	       switch(data.result){
             	       	 case 0:
             	       	  $.messager.alert('系統訊息', '儲存成功!!', 'info');
             	       	  parent.$('#dg').datagrid("reload");  
                        parent.$('#dg').datagrid("uncheckAll");  
             	       	  parent.$('#myevent').window('close');
             	       	 break;
             	       	 case -1:
             	       	  $.messager.alert('系統訊息', '該燈號已有設定,不能覆蓋!!', 'error');
             	       	 break;
             	       }
                    }
                  }); 
        }
    
       
        
        function submitForm(){
            $('#ff').form('submit');
        }
        
        
       
    </script>