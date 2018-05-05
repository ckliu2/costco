<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/common/taglibs.jsp"%>
<html>

<head>
    <title><fmt:message key="common.title"/></title>
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    
      
    <script src="${ctx}/scripts/jquery-1.7.2.js"></script>  
    <script type="text/javascript" src="${ctx}/scripts/common.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/menu.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/list.js"></script>
    
    <!---easyui-->
    <link rel="stylesheet" type="text/css" href="${ctx}/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/icon.css">
	  <script type="text/javascript" src="${ctx}/scripts/jquery.easyui.min.js"></script>
	  <script type="text/javascript" src='${ctx}/scripts/jquery.easyui.extend.min.js'></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-detailview.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-cellediting.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datagrid-dnd.js"></script>
  
    
    <link rel="stylesheet" type="text/css" href="${ctx}/css/flexigrid.pack.css"/>   
    <link rel="stylesheet" type="text/css" href="${ctx}/css/dhtmlXTabbar.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/dhtmlXGrid.css"/>
    
    
    <link rel="stylesheet" type="text/css" href="${ctx}/css/menu.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />  
    <link rel="stylesheet" href="${ctx}/css/justthetip.css"> 
    <link href="<ww:url value="/webwork/jscalendar/calendar-blue.css" />" rel="stylesheet" type="text/css" media="all"/>
   
</head>


	



<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0" class="cBody">
<table border="0" cellspacing="0" cellpadding="0" id="table1" class="cContentTable">
  <tr><td colspan="2" align="left" valign="top" >
	<table border="2" cellspacing="0" cellpadding="0" style="border-collapse: collapse" id="table7" width="100%" height="50">
		<tr>
			<td width="100%" height="50" align="center" style="color:#ffffff;font-size:20px" background="${ctx}/images/back.jpg"><fmt:message key="common.title"/>
			<div class="cLabel"><c:out value="${sessionScope.user.role}" /> </div>
			</td>
		</tr>
	</table>
	</td>
  </tr>
  <tr>
    <td width="160" align="left" valign="top" bgcolor="FFFFFF">
      <table border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse" width="160" id="table7" >
        <tr>
          <td align="left" height="60" width="100%" valign="top">
		    <table border="2" cellspacing="0" cellpadding="0" width="100%" height="100%" bgcolor="#DDEEFF">
				<tr><td align="left" valign="top">
					<table border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
					<tr><td align="left" valign="top" width="100%" height="24" background="${ctx}/images/back.gif" style="color:#ffffff;font-size: 14px;font-weight:bold;">&nbsp;&nbsp;&nbsp;<img src="${ctx}/images/expanded.gif" class="arrow" alt="User" /> <fmt:message key="common.user"/></span></td></tr>
					<tr><td align="left" valign="top" width="100%" style="font-size:12px;color:#000000">&nbsp;&nbsp;&nbsp; <c:out value="${sessionScope.user.name}" />
					[<a href="javascript:document.location.href='${ctx}/logout.do';"><span class="cLabel"><fmt:message key="common.logout"/></span></a>]
					</td></tr>
					
					</table>
				</td></tr>
			</table>
          </td>
        </tr>
        <tr>
          <td height="500" align="center" valign="top" bgcolor="FFFFCC"> 
		    <table border="2" cellspacing="0" cellpadding="0" height="100%"><tr><td align="left" valign="top" >
      		<tiles:insert attribute="menu"/>
      		
			</td></tr></table>
          </td>
        </tr>
      </table>
    </td>
    <td align="left" valign="top" width="100%">
<tiles:insert attribute="content"/>
    </td>
  </tr>
</table>

</body>

</html>