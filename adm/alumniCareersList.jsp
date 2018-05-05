<%@ include file="/common/taglibs.jsp"%>

<form name="qform"  method="post" >

<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="careers.alumni.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>

         <span class="cLabel1"><fmt:message key="common.search"/><fmt:message key="careers.name"/>:</span>         
          <ww:textfield name="careerName" value="%{careerName}"  cssClass="cInputTextFieldShort" />                  
          <input type="submit" value="<fmt:message key="common.search"/>" class="cButton">       
          
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="alumniCareersList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />    
    <display:column titleKey="company.name" sortable="true">    
      ${row.company.name}
    </display:column>
    <display:column property="name" sortable="true" titleKey="careers.name" style="text-align:left" />
    <display:column property="jobStatus" sortable="true" titleKey="careers.jobStatus" style="text-align:left" />
    <display:column property="candidatesWay" sortable="true" titleKey="careers.candidates" style="text-align:left" />
    <display:column property="address" sortable="true" titleKey="careers.address" style="text-align:left" />
    <display:column property="timeover" sortable="true" titleKey="careers.timeover" style="text-align:left" decorator="com.base.web.displaytag.YesNoDecorator"/>
    <display:column property="allow" sortable="true" titleKey="careers.allow" style="text-align:left" decorator="com.base.web.displaytag.YesNoDecorator"/>
    <display:column property="lastModifiedDate" sortable="true" titleKey="common.lastModifiedDate" style="text-align:left" />
    <display:column titleKey="common.action">
          <a href="editAlumniCareers.do?careers.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>
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

</form>


