<%@ include file="/common/taglibs.jsp"%>

<%
    com.base.value.SessionUser u = (com.base.value.SessionUser) request.getSession().getAttribute("user");
%>

<%= u.getMenuStr() %>
