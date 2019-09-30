<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{storeSizeAllJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>