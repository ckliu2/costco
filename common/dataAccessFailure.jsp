<%@ include file="/common/taglibs.jsp" %>

<h3><fmt:message key="common.dataAccessError"/></h3>
<p>
	<fmt:message key="common.dataAccessErrorMessage"/><br>
    <c:out value="${requestScope.exception.message}"/>
</p>

<!--
<%
Exception ex = (Exception) request.getAttribute("exception");
if (ex instanceof com.base.except.SessionTimeoutException) {
    ex.printStackTrace(new java.io.PrintWriter(out));
    response.sendRedirect("/teachdb/common/timeout.jsp");
} else {
    ex.printStackTrace(new java.io.PrintWriter(out));
}
%>
-->

<a href="<c:url value='/'/>/index.jsp">&#171; Go Home</a>
