<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" errorPage="/error.jsp" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/webwork" prefix="ww" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ww:set name="GLOBAL_pagesize" value="50" scope="session"/>
<ww:set name="RESULT_SIZE" value="20" scope="session"/>
<%
    response.addHeader("Pragma", "no-cache");
    response.setHeader("Cache-control", "no-store");
    response.setHeader("Cache-control", "no-cache");
    response.setDateHeader("Expires", 0);
    response.setContentType("text/html;charset=UTF-8");
%>
<html>

<head>
<title> <fmt:message key="common.title"/> </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />

<style type="text/css">
<!--
body {
	background-image: url( ${ctx}/images/bg.jpg );
	
}
-->
</style></head>

<body bgcolor="#C3D9F9">

  <STYLE type=text/css>
    .tl {font-size:18px; line-height:24px; color: #000000}
    .tm {font-size:16px; line-height:18px; color: #000000}
    .ts {font-size:12px; line-height:18px; color: #ffffff}
    .none {font-size:6px}
    .nor {font-size:12px; line-height:18px; color: #656565}
    .nork {font-size:12px; line-height:24px; color: #000000}
    .norb {font-size:12px; line-height:18px; color: #0099CC}
    .nors {font-size:12px; line-height:18px; color: #cc0000}
    .date {font-size:12px; line-height:18px; color: #656565}
    A:link  {font-size:12px; color:#990000; font-style: normal; text-decoration: underline; cursor: hand}
    A:visited  {font-size:12px; color:#990000; font-style: normal; text-decoration: underline}
    A:active  {font-size:12px; color:#990000; font-style: normal; text-decoration: none}
    A:hover {font-size:12px; color:#FF6633; font-style: normal; text-decoration: none}
.cLoginButton {
    border-style: outset;
    border-width: 1px;
    font-size:13px;
    background: #EEEEEE;
    height: 50px;
}

.cLoginButton1 {
    border-style: outset;
    border-width: 1px;
    font-size:13px;
    background: #EEEEEE;
    height: 75px;
}
    
  </STYLE>
  

<div align="center">
  <table border="0" cellspacing="0" style="border-collapse: collapse" id="table1">
    <tr>
      <td height="100" align="center" style="font-size:40px;"><fmt:message key="common.title"/></td>
    </tr>
    
    <tr>
      <td>
<table width="432" border="0" cellspacing="0" cellpadding="0" align="center" id="table2">
  <tr>
    <td width="428">
    
<div id="loginPanel">    
      <form action="login.do" method="post">
        <table class="nork" width="300" border="0" cellspacing="1" cellpadding="0" align="center" id="table3">
           <tr>
            <td colspan="2" width="414">            </td>
           <tr>
             <td colspan="2" align="center">&nbsp;</td>
           </tr>
           <tr>
            <td colspan="2" width="414" align="center">
              <span style="font-size:10pt;color:#FF0000"><ww:property value="msg"/></span>            </td>
          </tr>
          <tr>
            <td width="70" bgcolor="#6666FF" NOWRAP align="right">
              <div align="center"><span style="font-size:11pt;color:#FFFFFF">
               手機
              </span></div>            
            </td>
            <td bgcolor="#E8E8FF">
              <input type="text" tabindex="1" style="border-width:1px;border-style:inset;width:180pt;font-size:12pt;height:16pt" name="cellphone"  value="0912345678" />            </td>
            <td bgcolor="#FFFFFF" rowspan="2">
                <input class="cLoginButton" type="submit"  value="<fmt:message key="common.login"/>"/>            </td>
          </tr>
          <tr>
            <td width="70" bgcolor="#6666FF" NOWRAP align="right">
              <div align="center"><span style="font-size:11pt;color:#FFFFFF">
              密碼
              </span></div>            </td>
            <td bgcolor="#E8E8FF">
              <input type="password" tabindex="2" style="border-width:1px;border-style:inset;width:180pt;font-size:12pt;height:16pt" name="password"   value="1234678" />            </td>
          </tr>
          
          
         
           
             </td>
           </tr>
        </table>
      </form> 
</div>     


        </td>
  </tr>
</table></td>
    </tr>
   
   <tr>
     <td>
   
     </td>   
   </tr> 
    
    
  </table>
  
  
　

</body>
</html>

<script>
 
 
<%
String msg=request.getParameter("msg");
  if(msg!=null && !msg.equals("")){ 
%>
	     alert("手機或身分證輸入錯誤!");
<%
	  }
	    
%>
	 


</script>