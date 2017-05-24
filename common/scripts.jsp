
    <script src="${ctx}/scripts/jquery-1.7.2.js"></script>  
    <script type="text/javascript" src="${ctx}/scripts/common.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/menu.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/list.js"></script>
    
    <!---easyui  -->
    <link rel="stylesheet" type="text/css" href="${ctx}/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/icon.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/color.css">
    
	  <script type="text/javascript" src="${ctx}/scripts/jquery.easyui.min.js"></script>
	  <script type="text/javascript" src='${ctx}/scripts/jquery.easyui.extend.min.js'></script>	  
    <script type="text/javascript" src="${ctx}/scripts/datagrid-detailview.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-scrollview.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-cellediting.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-dnd.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery.portal.js"></script>
    
    <script type="text/javascript" src="${ctx}/scripts/datagrid-tooltip.js"></script>
    
    <script type="text/javascript" src="${ctx}/scripts/columns-ext.js"></script>        
    <script type="text/javascript" src="${ctx}/scripts/datagrid-filter.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery.edatagrid.js"></script>
    
    
   
    
    <link rel="stylesheet" type="text/css" href="${ctx}/css/menu.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />  
    <link rel="stylesheet" href="${ctx}/css/justthetip.css"> 
    <link href="<ww:url value="/webwork/jscalendar/calendar-blue.css" />" rel="stylesheet" type="text/css" media="all"/>
   
   
   <!--- photo---> 
   <link type="text/css" href="${ctx}/css/base.css" rel="stylesheet" />
   <script type="text/javascript" src="${ctx}/scripts/jquery.jcarousel.min.js"></script>
   <script type="text/javascript" src="${ctx}/scripts/jquery.pikachoose.min.js"></script>
   <script type="text/javascript" src="${ctx}/scripts/jquery.touchwipe.min.js"></script>
   
   
   <!---dropzone -->
   <link rel="stylesheet" type="text/css" href="${ctx}/css/dropzone.css">
   <script src="${ctx}/scripts/dropzone.js"></script>
   <script src="${ctx}/scripts/dropzone-amd-module.js"></script>
    
   <div id="mm" class="easyui-menu" style="width:120px;">
    	  <div data-options="iconCls:'icon-add'" onclick="javascript:window.location='myQuotedPrice.do'">新增報價單</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:openmmwin('quickQuotedPrice.do')">報價單查詢</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:window.location='redoApply.do'">重放單申請</div>        
        <div data-options="iconCls:'icon-search'" onclick="javascript:window.location='workflow.do'">流程控管</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:window.location='produceClass1List.do'">類別管理</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:window.location='customerList.do'">客戶管理</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:openmmwin('addresseeList.do')">收件人管理</div>
    </div>

<script> 
 function openmmwin(u){
    parent.parent.$('#mmwin').window('open');      	
    parent.parent.$('#mmwin').window('setTitle', '快速查詢');
    parent.parent.$('#mmwin').window('refresh', u);		   
 }	
	
 function menuUrl(u)
 {
 	window.location=u;
 }
 
 function inforTips(msg){
            $.messager.show({
                title:'系統訊息',
                msg:msg ,
                timeout:1000,
                showType:'slide',
                style:{
                    right:'',
                    bottom:''
                }
            });
        }	   
</script>  