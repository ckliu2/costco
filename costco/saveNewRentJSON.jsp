<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{saveNewRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>