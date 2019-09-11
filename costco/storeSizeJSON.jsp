<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{storeSizeJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>