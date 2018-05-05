<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="webSite.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editWebSite.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editWebSite.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>
        </ww:else>
        </td>
      </tr>
      <tr>
        <td>
<display:table name="webSiteList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="10" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />
    <display:column property="code" sortable="true" titleKey="webSite.code" style="text-align:left" />
    <display:column property="name" sortable="true" titleKey="webSite.name" style="text-align:left" />
    <display:column property="country.caption_" sortable="true" titleKey="webSite.country" style="text-align:left"/>
    <display:column sortable="true"     titleKey="webSite.functionCategory"  style="text-align:left">
        <c:forEach var="aVal" items="${row.functionCategory}">
            <c:out value="${aVal.caption_}" />,
        </c:forEach>
    </display:column>

    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editWebSite.do?webSite.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.caption_}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'webSite.id', '${row.id}')"><fmt:message key="common.delete"/></a>
        </ww:if>
        <ww:else>
           <a href="editWebSite.do?webSite.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
        </ww:else>
    </display:column>
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editWebSite.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editWebSite.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>
        </ww:else>
        </td>
      </tr>
</table>
<form name="form1" action="saveWebSite.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="webSite.id" value="">
</form>
