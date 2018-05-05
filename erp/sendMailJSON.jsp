<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{sendMailJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>