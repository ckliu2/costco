<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{billboardRentJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>