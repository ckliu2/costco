<%@ include file="/common/taglibs.jsp"%>


<ww:set name="v" value="%{getVendorById()}"/> 
<ww:set name="vq" value="%{getVendorQuantityByStoreVendor()}"/>     


   
    <div class="easyui-panel" title="設定" style="width:100%;max-width:600px;padding:30px 60px;">
        <form id="ff" method="post"> 
            <div style="margin-bottom:20px">
                廠商 : ${v.name}
            </div>
            <div style="margin-bottom:20px">
                出班工費數量: <input id="quantity" name="quantity" class="easyui-numberspinner" data-options="min:0,prompt:'份數'"  value="${vq.quantity}" />
            </div>
            
        </form>
        <div style="text-align:center;padding:5px 0">
            <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-save" plain="true" onclick="saveQuantity()" style="width:80px">儲存</a>
        </div>
    </div>
    <script> 
 
       
       function saveQuantity(){
       	let quantity=$('#quantity').numberbox('getValue');
       	//alert(quantity);
         $.ajax({
          url: 'quantityFormJSON.do',
          type: "POST",
          data: { 
          	  'vendor.id': '${vendor.id}' ,
          	  'vendorQuantity.quantity': quantity ,
          	},
          dataType: "json",
          success: function (data) {
             $('#dg3').datagrid("reload");  
             parent.$('#myevent').window('close');
           }
          })
       }
       
     
    </script>
    