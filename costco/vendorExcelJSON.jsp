<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="ls" value="%{vendorExcelJSON()}"/>  
<c:out value="${ls}" escapeXml="false"/>