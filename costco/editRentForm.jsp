<%@ include file="/common/taglibs.jsp"%>

    <div class="easyui-panel" title="編輯" style="width:100%;max-width:400px;padding:30px 60px;">
        <form id="ff" method="post">
            
            <div style="margin-bottom:20px">
               店名: 
               <ww:select name="store.id" onchange="getNo()"
                 id="storeId"
                 headerKey=""
                 headerValue="%{getText('common.pleaseSelect')}..."
                 list="storeList"
                 listKey="id"
                 listValue="name"
                 cssClass="cInputListField"
               />
            </div>
            <div style="margin-bottom:20px">
                尺寸:
                <ww:select name="billboard.sizeId" onchange="getNo()"
                  id="sizeId"
                  headerKey=""
                  headerValue="%{getText('common.pleaseSelect')}..."
                  list="billboardSizes"
                  listKey="id"
                  listValue="valueTw"
                  	
                  cssClass="cInputListField"
                 />
            </div>
            <div style="margin-bottom:20px">
                屬性:
                <ww:select name="kind.id" 
                  id="kindId"
                  headerKey=""
                  headerValue="%{getText('common.pleaseSelect')}..."
                  list="kindList"
                  listKey="id"
                  listValue="valueTw"
                  	
                  cssClass="cInputListField"
                 />
            </div>
            
             <div style="margin-bottom:20px">
                製作年份:
                <input id="year" name="year" class="easyui-numberspinner" data-options="min:2020,prompt:'製作年份'"  />
             </div>
            
            
            <div style="margin-bottom:20px">
                燈號:
                <input id="no" name="no" class="easyui-combobox" data-options="prompt:'請選擇燈號'" style="width:200px" />
            </div>
            <div style="margin-bottom:20px">
                廠商:
                <input id="vendor" name="vendor" class="easyui-combobox" data-options="prompt:'輸入廠商關鍵字'" style="width:200px" />
            </div>
            <div style="margin-bottom:20px">
                備註:
               <input id="memo" name="memo" class="easyui-textbox" data-options="prompt:'備註'" style="width:200px;height:100px" multiline="true"/>
            </div>
            <div style="margin-bottom:20px">
                畫面:
               <input id="screen" name="screen" class="easyui-textbox" data-options="prompt:'畫面'" style="width:200px;height:100px" multiline="true"/>
            </div>
            <div style="margin-bottom:20px">
                指定:
               <ww:checkbox id="assign" name="assign" cssClass="cCheckboxField" />
            </div>
            
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-save" plain="true" onclick="saveNewRent()" style="width:80px">儲存</a>
        </div>
    </div>
    <script>
    
       let rentId='${rent.id}';
       
       $(document).ready(function () {
       	  if(rentId!==''){
       	  	editForm('${rent.id}');
       	  }
       	  
       	  $("#vendor").combobox({
            method: 'get',
            url:'vendorJSON.do',  
            valueField: 'value',
            textField: 'text',
          });
          
          $('#no').combobox({
	            onChange: function(newValue,oldValue){
	            	if (isNaN(oldVal) == true) {
		              getNo();
		            }
	            }
          });

       });
       
       
       
       
       
       function editForm(id) {
       	//alert(id);
        $.ajax({
          url: 'editRentJSON.do',
          type: "POST",
          data: { "rent.id": id },
          dataType: "json",
          success: function (data) {
          	//alert(JSON.stringify(data, null, 2));
          	$('#storeId').val(data.store);
          	$('#sizeId').val(data.size);
          	$('#kindId').val(data.kind);
          	$('#year').numberbox('setValue', data.year);
          	$('#screen').textbox('setValue', data.screen);
          	$('#memo').textbox('setValue', data.memo);
          	$("#assign").prop( "checked", data.assign );
          	$('#vendor').combobox('setValue', data.vendor);
          	getNo();
          	$('#no').combobox('setValue', data.no);
          }
          })
       } 
       
       function saveNewRent(){
       	  let storeId=$('#storeId').val();
        	let sizeId=$('#sizeId').val();
        	let kindId=$('#kindId').val();
        	let assign=$('#assign').prop('checked');
        	let screen = $('#screen').textbox('getValue');
        	let memo = $('#memo').textbox('getValue');
        	let no = $('#no').combobox('getValue');   
        	let vendor = $('#vendor').combobox('getValue'); 
        	let year = $('#year').numberbox('getValue');
        	
        	//alert("vendor,{0},no,{1},assign,{2}".format(vendor,no,assign));
        	//alert('vendor='+vendor+'--no='+vendor);
        	
        	if(storeId ==='' || sizeId ===''|| kindId ==='' || no === null || vendor === null){
        		 $.messager.alert('系統訊息', '店名,尺寸,燈號,廠商必填欄位!', 'error');
        		 return false;
          }
        	
        	
        	//alert('no='+no);
        	
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
    
        function getNo(){
        	let storeId=$('#storeId').val();
        	let sizeId=$('#sizeId').val();
        	
        	//alert('getNo store='+storeId+'  size='+sizeId);
        	
        	$("#no").combobox({
            method: 'get',
            url:'storeSizeAllJSON.do?store.id='+storeId+'&size.id='+sizeId,  
            valueField: 'value',
            textField: 'text',
          });
        	
          	
        }
        
        function submitForm(){
            $('#ff').form('submit');
        }
       
    </script>