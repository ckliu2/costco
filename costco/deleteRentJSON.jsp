<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{deleteRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>