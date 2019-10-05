<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{vendorReportListJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>