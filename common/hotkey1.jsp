    <div id="mm2" class="easyui-menu" style="width:220px;">
    	  <div data-options="iconCls:'icon-add'" onclick="javascript:parent.parent.window.location='myQuotedPrice.do'">新增報價單</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:openmmwin('quickQuotedPrice.do')">報價單查詢</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:parent.parent.window.location='redoApply.do'">重放單申請</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:parent.parent.window.location='workflow.do'">流程控管</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:parent.parent.window.location='produceClass1List.do'">類別管理</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:parent.parent.window.location='customerList.do'">客戶管理</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:openmmwin('addresseeList.do')">收件人管理</div>
    </div>

<script>
	
 function openmmwin(u){
 	 var scree=$(window).width()-430;
	  parent.parent.$('#mmwin').window({
        left:scree+'px'
    });
    parent.parent.parent.$('#mmwin').window('open');      	
    parent.parent.parent.$('#mmwin').window('setTitle', '快速查詢');
    parent.parent.parent.$('#mmwin').window('refresh', u);		   
 }	
 
 $(function(){
            $(document).bind('contextmenu',function(e){
                e.preventDefault();
                $('#mm2').menu('show', {
                    left: e.pageX,
                    top: e.pageY
                });
            });
        });
    
</script>      