<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{renewCheckJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>