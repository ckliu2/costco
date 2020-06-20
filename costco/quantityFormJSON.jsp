<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{quantityFormJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>