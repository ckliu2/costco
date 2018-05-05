<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/common/unsecureTaglibs.jsp"%>
<html>

<head>
    <title><fmt:message key="common.title"/></title>


    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0"/>
    
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <script type="text/javascript" src="${ctx}/scripts/common.js"></script>  
    <script type="text/javascript" src="${ctx}/scripts/list.js"></script>

    <link rel="stylesheet" type="text/css" href="${ctx}/css/icon.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/easyui.css">
    <script type="text/javascript" src="${ctx}/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/easyui-lang-zh_CN.js"></script>
    
    <script type="text/javascript" src="${ctx}/scripts/datagrid-cellediting.js"></script>
 
    <link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />
    <link href="<ww:url value="/webwork/jscalendar/calendar-blue.css" />" rel="stylesheet" type="text/css" media="all"/>
   
</head>

<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0" class="cBody">
<table border="0" cellspacing="0" cellpadding="0" id="table1" class="cContentTable">
  <tr>
    <td align="left" valign="top">
<tiles:insert attribute="content"/>
    </td>
  </tr>
</table>

</body>

</html>