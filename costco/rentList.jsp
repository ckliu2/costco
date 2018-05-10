<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" class="cContentTable">
      <tr>
        <td class="cContentTitle" ><fmt:message key="rent.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
         <form name="form2" action="rentList.do">
         	  <ww:select name="year" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="yearList"
               cssClass="cInputListField"
            />
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
<display:table name="rentList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />
    
    <display:column property="year" sortable="true" titleKey="rent.year" style="text-align:left" />    
    <display:column property="billboard.store.name" sortable="true" titleKey="store.name" style="text-align:left"/>
    <display:column property="billboard.no" sortable="true" titleKey="billboard.no" style="text-align:left"/>
    <display:column property="billboard.size.valueTw" sortable="true" titleKey="billboard.size" style="text-align:left"/>
    <display:column property="vendor.name" sortable="true" titleKey="rent.vendor" style="text-align:left"/>
    <display:column titleKey="rent.cover" style="text-align:left">
    	<img src="${ctx}/<fmt:message key="rent.uploadCover.relativeUrl"/>/${row.id}/${row.cover.fileName}" width="10%" />
    </display:column>	
    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editRent.do?rent.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.caption_}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'rent.id', '${row.id}')"><fmt:message key="common.delete"/></a>
        </ww:if>
        <ww:else>
           <a href="editRent.do?rent.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
        </ww:else>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
          <button onclick="location.href='editRent.do'" class="cButton"><fmt:message key="common.new"/></button>
        </td>
      </tr>
</table>
<form name="form1" action="saveRent.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="rent.id" value="">
    <select name="selectedRentIds" multiple="true" style="display:none"></select>
</form>
