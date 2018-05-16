<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" class="cContentTable">
      <tr>
        <td class="cContentTitle" ><fmt:message key="vendor.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editVendor.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
            &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="myCheckSubmitCopy('form1', <ww:property value="vendorList.size()"/>, 'selectedVendorId', 'copyVendor.do', '<fmt:message key="common.mustSelectOne"/>', '<fmt:message key="common.mustSelectOnlyOne"/>')" class="cButton"><fmt:message key="common.copy"/></button>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editVendor.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>
        </ww:else>
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="vendorList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />
    <display:column titleKey="common.select">
        <input type="checkbox" id="selectedVendorId_<c:out value="${count}"/>" name="selectedVendorId" value="<c:out value="${row.id}"/>">
    </display:column>
    <display:column property="name" sortable="true" titleKey="vendor.name" style="text-align:left" />
    <display:column property="address" sortable="true" titleKey="vendor.address" style="text-align:left" />
    <display:column property="contact" sortable="true" titleKey="vendor.contact" style="text-align:left" />
    <display:column property="title" sortable="true" titleKey="vendor.title" style="text-align:left" />
    <display:column property="phone" sortable="true" titleKey="vendor.phone" style="text-align:left" />
    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editVendor.do?vendor.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.name}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'vendor.id', '${row.id}')"><fmt:message key="common.delete"/></a>
        </ww:if>
        <ww:else>
           <a href="editVendor.do?vendor.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
        </ww:else>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editVendor.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
            &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="myCheckSubmitCopy('form1', <ww:property value="vendorList.size()"/>, 'selectedVendorId', 'copyVendor.do', '<fmt:message key="common.mustSelectOne"/>', '<fmt:message key="common.mustSelectOnlyOne"/>')" class="cButton"><fmt:message key="common.copy"/></button>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editVendor.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>
        </ww:else>
        </td>
      </tr>
</table>
<form name="form1" action="saveVendor.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="vendor.id" value="">
    <select name="selectedVendorIds" multiple="true" style="display:none"></select>
</form>
