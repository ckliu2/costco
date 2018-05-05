<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" errorPage="/common/error.jsp" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/webwork" prefix="ww" %>
<%
    response.addHeader("Pragma", "no-cache");
    response.setHeader("Cache-control", "no-store");
    response.setHeader("Cache-control", "no-cache");
    response.setDateHeader("Expires", 0);

    response.setContentType("text/html;charset=UTF-8");
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>

<head>
<title> <fmt:message key="common.title"/> </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
</STYLE>
<script language="javascript">
    alert('<fmt:message key="common.sessionTimeout"/>');
    document.location.href='${ctx}/';
</script>

</body>
</html>