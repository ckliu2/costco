<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" class="cContentTable">
      <tr>
        <td class="cContentTitle" ><fmt:message key="billboard.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
          <form name="form2" action="billboardList.do">
            <ww:select name="store.id" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="storeList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            />
            <input type="submit" value="<fmt:message key="common.search"/>" class="cButton">
          </form>
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="billboardList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />
    <display:column property="no" sortable="true" titleKey="billboard.no" />
    <display:column property="size.valueTw" sortable="true" titleKey="billboard.size" style="text-align:left"/>   
    <display:column property="store.name" sortable="true" titleKey="billboard.store" style="text-align:left"/>
    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editBillboard.do?billboard.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.caption_}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'billboard.id', '${row.id}')"><fmt:message key="common.delete"/></a>
        </ww:if>
        <ww:else>
           <a href="editBillboard.do?billboard.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
        </ww:else>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
          <button onclick="location.href='editBillboard.do'" class="cButton"><fmt:message key="common.new"/></button>
            
        </td>
      </tr>
</table>
<form name="form1" action="saveBillboard.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="billboard.id" value="">
    <select name="selectedBillboardIds" multiple="true" style="display:none"></select>
</form>
