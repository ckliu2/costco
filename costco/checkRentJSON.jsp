<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{checkRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>