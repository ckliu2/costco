<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
	   
    <script src="${ctx}/scripts/jquery-1.7.2.js"></script>  
    <script type="text/javascript" src="${ctx}/scripts/common.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/menu.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/list.js"></script>
    
    <!---easyui-->	
    <link rel="stylesheet" type="text/css" href="${ctx}/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/icon.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/color.css">
    
	  <script type="text/javascript" src="${ctx}/scripts/jquery.easyui.min.js"></script>
	  <script type="text/javascript" src='${ctx}/scripts/jquery.easyui.extend.min.js'></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-detailview.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-cellediting.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-dnd.js"></script>    
    <script type="text/javascript" src="${ctx}/scripts/treegrid-dnd.js"></script>    
    <script type="text/javascript" src="${ctx}/scripts/jquery.portal.js"></script>    
    <script type="text/javascript" src="${ctx}/scripts/datagrid-filter.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/columns-ext.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-export.js"></script>
    
    
    
    
    <!--fullcalendar-->   
    <link href='${ctx}/css/jquery-ui.min.css' rel='stylesheet'/>
    <link href='${ctx}/css/fullcalendar.css' rel='stylesheet' />
    <link href='${ctx}/css/fullcalendar.print.css' rel='stylesheet' media='print' />
    <script src='${ctx}/scripts/moment.min.js'></script>
    <script src='${ctx}/scripts/fullcalendar.min.js'></script>
    <script src='${ctx}/scripts/lang-all.js'></script> 
    
    
    <link rel="stylesheet" type="text/css" href="${ctx}/css/flexigrid.pack.css"/>   
    <link rel="stylesheet" type="text/css" href="${ctx}/css/dhtmlXTabbar.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/dhtmlXGrid.css"/>
    
    
    <link rel="stylesheet" type="text/css" href="${ctx}/css/menu.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />  
    <link rel="stylesheet" href="${ctx}/css/justthetip.css"> 
    <link href="<ww:url value="/webwork/jscalendar/calendar-blue.css" />" rel="stylesheet" type="text/css" media="all"/>
   
</head>
<body>
    
    <div class="easyui-layout" id="cipLayout" data-options="fit:true" >
        <div id="p" data-options="region:'west',split:true,hideCollapsedContent:false,collapsed:true" title="[${sessionScope.user.member.name}]" style="width:20%">
                       
        <!---------------------------- Layout ---------------------------->
        
        <div class="easyui-menu" data-options="inline:true" style="width:100%">
            <tiles:insert attribute="menu"/>
            <div onclick="javascript:menuUrl('userIndex.do')" data-options="iconCls:'icon-home'"><b>首頁</b></div>	
            <div onclick="javascript:menuUrl('logout.do')" data-options="iconCls:'icon-logout'"><b>登出</b></div> 
        </div>
            
        <!---------------------------- Layout ---------------------------->
            
        </div>
        <div data-options="region:'center'" title="Costco" >        	
        	 <tiles:insert attribute="content"/>  
        </div>
    </div>
    


     
<script>	
 	

 function menuUrl(u)
 {
 	  //alert('u='+u);
 	  window.location=u;
 }
 
 
             
</script>		



    
</body>
</html>