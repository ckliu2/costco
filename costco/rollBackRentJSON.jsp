<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{rollBackRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>