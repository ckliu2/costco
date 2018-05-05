<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="utf-8" %>	
<%@ page language="java" errorPage="/error.jsp" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/webwork" prefix="ww" %>
<c:set var="datePattern"><fmt:message key="date.format"/></c:set>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
    response.addHeader("Pragma", "no-cache");
    response.setHeader("Cache-control", "no-store");
    response.setHeader("Cache-control", "no-cache");
    response.setDateHeader("Expires", 0);
    response.setContentType("text/html;charset=UTF-8");
	  com.common.util.Util.IMAGE_CONTEXT_ROOT_PATH = "/imageDB";    
%>

	<link rel="stylesheet" type="text/css" href="${ctx}/css/metro/easyui.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/mobile.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/icon.css">
	<script type="text/javascript" src="${ctx}/scripts/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/scripts/jquery.easyui.min-1.5.js"></script>
	<script type="text/javascript" src="${ctx}/scripts/jquery.easyui.mobile.js"></script>
	






    
