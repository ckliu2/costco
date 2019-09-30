<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{editRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>