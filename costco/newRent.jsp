<%@ include file="/common/taglibs.jsp"%>

    <div class="easyui-panel" title="新租" style="width:100%;max-width:400px;padding:30px 60px;">
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
                燈號:
                <input id="no" name="no" class="easyui-combobox" data-options="prompt:'請選擇燈號'" style="width:200px" />
            </div>
            <div style="margin-bottom:20px">
                廠商:
                <input id="vendor" name="vendor" class="easyui-combobox" data-options="prompt:'輸入廠商關鍵字'" style="width:200px" />
            </div>
            <div style="margin-bottom:20px">
                畫面:
               <input id="screen" name="screen" class="easyui-textbox" data-options="prompt:'畫面'" style="width:200px"/>
            </div>
            
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="saveNewRent()" style="width:80px">新作</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">清除</a>
        </div>
    </div>
    <script>
    
       
       $(document).ready(function () {
       	  $("#vendor").combobox({
            method: 'get',
            url:'vendorJSON.do',  
            valueField: 'value',
            textField: 'text',
          });
       });
       
       function saveNewRent(){
       	  let storeId=$('#storeId').val();
        	let sizeId=$('#sizeId').val();
        	let screen = $('#screen').textbox('getValue');
        	let no = $('#no').combobox('getValue');   
        	let vendor = $('#vendor').combobox('getValue'); 
        	if(storeId ==='' || sizeId ===''|| no ===''|| vendor ===''){
        		$.messager.alert('系統訊息', '店名,尺寸,燈號,廠商必填欄位!', 'error');
        		return false;
        	}
        	//alert('no='+no+' vendor='+vendor+' '+screen );
        	
        	$.ajax({
             url: 'saveNewRentJSON.do',
             data: {'billboard.id': no,'vendor.id': vendor,'rent.screen':screen},
             type: "POST",
             dataType: "json",
             success: function(data) {
             	 //alert(JSON.stringify(data));
             	 $.messager.alert('系統訊息', '儲存成功!!', 'info');
             	 parent.$('#myevent').window('close');
             }
          }); 
         
         
        }
    
        function getNo(){
        	let storeId=$('#storeId').val();
        	let sizeId=$('#sizeId').val();
        	
        	$("#no").combobox({
            method: 'get',
            url:'storeSizeJSON.do?store.id='+storeId+'&size.id='+sizeId,  
            valueField: 'value',
            textField: 'text',
          });
        	
          //alert('store='+storeId+'  size='+sizeId);	
        }
        
        function submitForm(){
            $('#ff').form('submit');
        }
        function clearForm(){
            $('#ff').form('clear');
        }
    </script>