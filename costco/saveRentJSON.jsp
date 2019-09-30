<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{saveRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>