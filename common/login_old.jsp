<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" errorPage="/error.jsp" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/webwork" prefix="ww" %>
<html>

<head>
<title> <fmt:message key="common.title"/> </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />

</head>

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
.cButton {
    border-style: outset;
    border-width: 1px;
    font-size:13px;
    background: #EEDDEE;
    height: 25px;
}
	
</STYLE>

<div align="center">
  <table border="0" cellspacing="0" style="border-collapse: collapse" id="table1" background="../images/tnit.bmp" width="898" height="555">
	<tr height="400">
	  <td></td>
	</tr>
	<tr>
      <td>
<table width="432" border="0" cellspacing="0" cellpadding="0" align="center" id="table2">
  <tr>
    <td width="428">
      <form action="login.html" method="post">
        <table class="nork" width="300" border="0" cellspacing="1" cellpadding="0" align="center" id="table3">
           <tr>
            <td colspan="2" width="414">
            </td>
          <tr>
            <td colspan="2" width="414" align="center">
              <span style="font-size:10pt;color:#FF0000"><ww:property value="msg"/></span>
            </td>
          </tr>
          <tr>
            <td width="70" bgcolor="#6666FF" NOWRAP align="right">
              <div align="center"><span style="font-size:11pt;color:#FFFFFF"><fmt:message key="common.loginId"/></span></div>
            </td>
            <td bgcolor="#E8E8FF">
              <input type="text" tabindex="1" style="border-width:1px;border-style:inset;width:135pt;font-size:12pt;height:16pt" name="loginId" maxlength="20"/>
            </td>
            <td bgcolor="#FFFFFF" rowspan="2">
				<input class="cButton" style="height:38pt" type="submit"  value="<fmt:message key="common.login"/>"/>
			</td>
          </tr>
          <tr>
            <td width="70" bgcolor="#6666FF" NOWRAP align="right">
              <div align="center"><span style="font-size:11pt;color:#FFFFFF"><fmt:message key="common.password"/></span></div>
            </td>
            <td bgcolor="#E8E8FF">
              <input type="password" tabindex="2" style="border-width:1px;border-style:inset;width:135pt;font-size:12pt;height:16pt" name="password"  maxlength="20"/>
            </td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" NOWRAP align="left" colspan=2>
			  <span style="font-size:12pt;color:#000000"><fmt:message key="common.hint"/></span><br>
              &nbsp;&nbsp;&nbsp;<span style="font-size:10pt;color:#000000"><fmt:message key="common.loginId.hint"/></span><br>
              &nbsp;&nbsp;&nbsp;<span style="font-size:10pt;color:#000000"><fmt:message key="common.password.hint"/></span>
            </td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</table>

</td>
    </tr>
  </table>
</div>
</body>
</html>