<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/webwork" prefix="ww" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<ww:set name="list" value="%{findSkillsList()}"/>  
<c:set var="count" value="0" />
<ww:iterator value="list">
<ww:if test="${fn:length(list)} >1 && ${count}!=0">
,
</ww:if>
${id}|${name}
<c:set var="count" value="${count+1}" />
</ww:iterator>