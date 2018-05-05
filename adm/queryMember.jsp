<%@ include file="/common/taglibs.jsp"%>


<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="member.list"/></td>
      </tr>    
      <tr>
        <td class="cMenuItem">        
        
        <form action="queryMember.do" method="post" name="queryForm">
          <!--
          <fmt:message key="cog.church"/>:
              <ww:select  name="churchId" 
                headerKey=""
                headerValue="%{getText('common.pleaseSelect')}..."
                list="churchList"
                listKey="id"
                listValue="name"
            /> 
           -->            
          &nbsp;

          <fmt:message key="member.name"/>:<ww:textfield name="name"   id="name"  maxlength="10"  cssClass="cInputTextFieldShort" />
          <input type="submit" value="<fmt:message key="common.search"/>" class="cButton" >
         </form>
         </td>         
      </tr>
      
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editMember.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>            </ww:if>
            &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="myCheckSubmitCopy('form1', ${GLOBAL_pagesize}, 'selectedMemberId', 'copyMember.do', '<fmt:message key="common.mustSelectOne"/>', '<fmt:message key="common.mustSelectOnlyOne"/>')" class="cButton"><fmt:message key="common.copy"/></button>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editMember.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>        </ww:else>        </td>
      </tr>
      <tr>
        <td>

<c:set var="count" value="0" />
<display:table name="queryMemberList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />
    <display:column titleKey="common.select">
        <input type="checkbox" id="selectedMemberId_<c:out value="${count}"/>" name="selectedMemberId" value="<c:out value="${row.id}"/>">    </display:column>
     <display:column property="name" sortable="true" titleKey="member.name" style="text-align:left" />
    <display:column property="cellphone" sortable="true" titleKey="member.cellphone" />
    <display:column property="homePhone" sortable="true" titleKey="member.homePhone" />
    <display:column property="email" sortable="true" titleKey="member.email" />
    <display:column property="groups" sortable="true" titleKey="member.group" />    
    <display:column property="unit" sortable="true" titleKey="member.unit" style="text-align:left" />
    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editMember.do?member.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.name}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'member.id', '${row.id}')"><fmt:message key="common.delete"/></a>        </ww:if>
        <ww:else>
           <a href="editMember.do?member.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;        </ww:else>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editMember.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>            </ww:if>
            &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="myCheckSubmitCopy('form1', ${GLOBAL_pagesize}, 'selectedMemberId', 'copyMember.do', '<fmt:message key="common.mustSelectOne"/>', '<fmt:message key="common.mustSelectOnlyOne"/>')" class="cButton"><fmt:message key="common.copy"/></button>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editMember.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>        </ww:else>        </td>
      </tr>
</table>
<form name="form1" action="saveMember.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="member.id" value="">
    <select name="selectedMemberIds" multiple="true" style="display:none"></select>
</form>




