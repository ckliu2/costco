<%@ include file="/common/taglibs.jsp"%>
    <script language="javascript">
<!--
	var __widget='<c:out value="${param.widgetId}"/>';
	function getWidgetId()
	{
		return __widget;
	}
-->
  </script>
  
</div>
<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="member.list"/></td>
        <td align="left" width="7%">
        <div align="left">
        <a href="javascript:try{ window.parent.close(); } catch (e) {}"><span class="cLabel"><fmt:message key="common.window.close"/></span></a>
        </div>
        </td>
      </tr>    
      
      <tr>
        <td>
        <form name="qform" action="searchMember.do" method="post" >
          <span class="cLabel2"> <fmt:message key="common.keyword"/>:</span>
          <ww:textfield name="keyword" value="%{keyword}" maxlength="40" cssClass="cInputTextFieldShort" />            
          <ww:hidden name="widgetId" value="${param.widgetId}"/>           
          <input type="submit" value="<fmt:message key="common.search"/>" class="cButton">
        </form> 
        </td>
      </tr>
      
      
      <tr>
        <td class="cMenuItem">         </td>         
      </tr>      

      <tr>
        <td>

<c:set var="count" value="1" />
<display:table name="memberList" class="list" defaultsort="3"  cellspacing="1" requestURI="" id="row" export="false" pagesize="20" sort="list"  >
    
    <display:column titleKey="common.action">
        <a href="#" onclick="myReturnFunction(<c:out value="${row.id}"/>,'<c:out value="${row.name}"/>');"><fmt:message key="common.insert"/></a>
    </display:column>
     

     
     <display:column titleKey="member.name" style="text-align:left" sortable="true">       
       <a href="editMemberInfo.do?member.id=<c:out value="${row.id}"/>" target="_blank"><c:out value="${row.name}" /></a>
     </display:column>      
 
    

   
  
    <c:set var="count" value="${count+1}" />
</display:table>     </td>
    </tr>

</table>





