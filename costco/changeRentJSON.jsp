<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{changeRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>