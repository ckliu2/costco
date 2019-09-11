<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{rentListJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>