<%@ include file="/common/taglibs.jsp"%>
<ww:set name="ls" value="%{selectIndustryInfo()}"/>  
<c:out value="${ls}" escapeXml="false"/>
