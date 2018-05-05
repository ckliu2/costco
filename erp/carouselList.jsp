<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" class="cContentTable">
      <tr>
        <td class="cContentTitle" >Carousels</td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
          <button onclick="location.href='editCarousel.do'" class="cButton"><fmt:message key="common.new"/></button>
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="list" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />   
    <display:column property="type.valueTw" sortable="true" title="type" />	
    <display:column property="seqNo" sortable="true" title="seqNo" />
    <display:column property="name" sortable="true" title="name" style="text-align:left" />  
    <display:column property="url" sortable="true" title="url" style="text-align:left" />
    <display:column title="photo">
    	<img src="${ctx}/upload/carousel/${row.id}/${row.photo.fileName}" width="200px"/>
    </display:column>		
    <display:column titleKey="common.action">
        <a href="editCarousel.do?carousel.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
        
        </td>
      </tr>
</table>
<form name="form1" action="saveCarousel.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="carousel.id" value="">
    <select name="selectedCarouselIds" multiple="true" style="display:none"></select>
</form>
