<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{memberListByGroupJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>