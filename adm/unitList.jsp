<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" class="cContentTable">
      <tr>
        <td class="cContentTitle" ><fmt:message key="unit.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
          <button onclick="location.href='editUnit.do'" class="cButton"><fmt:message key="common.new"/></button>
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="unitList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />   
    <display:column property="name" sortable="true" titleKey="unit.name" style="text-align:left" />
    <display:column property="members" sortable="true" titleKey="unit.members" style="text-align:left" />
    <display:column titleKey="common.action">        
            <a href="editUnit.do?unit.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.caption_}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'unit.id', '${row.id}')"><fmt:message key="common.delete"/></a>        
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
           <button onclick="location.href='editUnit.do'" class="cButton"><fmt:message key="common.new"/></button>
        </td>
      </tr>
</table>
<form name="form1" action="saveUnit.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="unit.id" value="">
    <select name="selectedUnitIds" multiple="true" style="display:none"></select>
</form>
