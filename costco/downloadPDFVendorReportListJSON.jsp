<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{downloadPDFVendorReportListJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>