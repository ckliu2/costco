<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="smsMailRec.list"/></td>
      </tr>

      <tr>
        <td>
<c:set var="count" value="1" />
<display:table name="smsMailRecList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />
    <display:column titleKey="common.select">
       <c:out value="${count}"/>
    </display:column>
    <display:column property="target.caption_" sortable="true" titleKey="smsMailRec.target" style="text-align:left"/>
     <display:column property="cellphone" sortable="true" titleKey="smsMailRec.cellphone" style="text-align:left"/>
    
    <display:column property="msg" sortable="true" titleKey="smsMailRec.msg" style="text-align:left"/>
    <display:column property="sendDate" sortable="true" titleKey="smsMailRec.sendDate" format="{0,date,yyyy/MM/dd  HH:MM:SS}" style="text-align:left" />

    <display:column titleKey="common.action">
            <a href="editSmsMailRec.do?smsMailRec.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
     </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>

</table>

