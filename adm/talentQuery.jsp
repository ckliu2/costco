<%@ include file="/common/taglibs.jsp"%>

<ww:form name="talentList" action="talentQuery" method="POST"  onsubmit="onSubmit()"> 
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="company.talent.List"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">      
          <input type=button onclick="javascript:window.location='talentList.do'" class="cButton" value="<fmt:message key="common.back"/>" >      
      </td>
    </tr>
    
    
    <tr>
        <td>
<c:set var="count" value="0" />

<display:table name="talentList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />    
    <display:column titleKey="department.name" sortable="true">
      ${row.department.name}
    </display:column>     
    <display:column property="rgno" sortable="true" titleKey="member.rgno" style="text-align:left" />
    <display:column property="cname" sortable="true" titleKey="member.cname" style="text-align:left" />
    <display:column property="birthday" sortable="true" titleKey="member.birthday" style="text-align:left" />
    <display:column property="sex" sortable="true" titleKey="member.sex" decorator="com.base.web.displaytag.SexDecorator" />
    <display:column property="status" sortable="true" titleKey="member.status" style="text-align:left" />
    <display:column titleKey="skill.name" sortable="true"> 
      <c:forEach var="skill" items="${row.skills}">
        ${skill.name},
      </c:forEach>
    </display:column>
    <display:column property="otherSkills" sortable="true" titleKey="member.otherSkills" style="text-align:left" />
    <display:column property="licence" sortable="true" titleKey="member.licence" style="text-align:left" />    
    <display:column titleKey="member.topdegree" sortable="true">       
      <ww:set name="topdegree" value="%{getTopDegree('${row.id}')}"/> 
      ${topdegree.valueTw}
    </display:column>    
    <display:column titleKey="company.talent.workexperience" sortable="true">
      ${row.workdays}<fmt:message key="common.day"/>  (${row.workdaysDate})
    </display:column>
    <display:column titleKey="common.action">
        <a href="editMember.do?member.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>

        </td>
    </tr>

  
 
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:window.location='talentList.do'" class="cButton" value="<fmt:message key="common.back"/>" >        
      </td>
    </tr>
  </table>
</ww:form>


<c:if test="${fn:length(queryString) > 0 }" > 
<hr>
<span class="cLabel5"><fmt:message key="company.talent.condition"/></span>
<br>
<span class="cLabel4">${queryString}</span>
</c:if>
