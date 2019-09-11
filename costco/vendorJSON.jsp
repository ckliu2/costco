<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{vendorJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>