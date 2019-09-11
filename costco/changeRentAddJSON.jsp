<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{changeRentAddJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>