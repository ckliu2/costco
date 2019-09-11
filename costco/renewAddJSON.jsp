<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{renewAddJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>