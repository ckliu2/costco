<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{noBySizeJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>