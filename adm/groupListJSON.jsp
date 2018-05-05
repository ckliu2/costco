<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{groupListJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>