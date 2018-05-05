<%@ include file="/common/taglibs.jsp"%>

<ww:form name="smsForm" action="saveSmsMail.do" method="POST"  onsubmit="onSubmit()">

  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><ww:text name='sms.smsmail'/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type="submit"  class="cButton" value="<ww:text name='sms.send'/>" />      </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="sms.sender"/></td>
        <td class="cInputColumn">
           <ww:property value="#session['user'].name"/>        </td>
    </tr>
   

   
    <tr><td class="cInputCaption"><fmt:message key="sms."/></td>
        <td class="cInputColumn">
            <textarea name="msg" cols="45" rows="6" onPropertyChange="count(this.value)"  css="cInputTextArea"></textarea>
           <div class="cInputValidationError" id="info"></div> 
           </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="sms.other"/></td>
        <td class="cInputColumn">
            <ww:textfield name="othermail" value="%{othermail}"  cssClass="cInputTextArea" /></span>  
            <br>      
            <input type="button" value="+"  class="cSelectButton" onclick="addOne(othermail, otherIds);">
            <input type="button" value="-"  class="cSelectButton" onclick="disOne(otherIds);">
                
            </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="sms.otherlist"/></td>
      <td class="cInputColumn">
            <select name="otherIds"  size="8" multiple="multiple" class="cQueryFieldList" id="otherIds">
            </select>
            
            <select name="memberIds"  size="8" multiple="multiple" class="cQueryFieldList" id="memberIds">
            </select>
            <input class="cOpenWindowButton" type=button value="<fmt:message key="common.insert"/>" onclick="myInsertFromNewWindow('queryMemberListTop.do', 'memberIds', '');">
            <input class="cOpenWindowButton" type=button value="<fmt:message key="common.delete"/>" onclick="myDeleteFromSelectMany(document.smsForm.memberIds);">
        
            
            </td>
    </tr>
    
    


       <tr><td class="cInputCaption"><fmt:message key="grade.name"/></td>
        <td class="cInputColumn">
        
     <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="grade.name"/></style></th>
                <th>&nbsp;</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="grade.name"/></style></th>
            </tr><tr>
            <td >
                <ww:select id="allGrade"
                list="gradeAllList"
                listKey="id"
                listValue="caption_"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                />                
                </td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allGrade, selectedGrade);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allGrade, selectedGrade);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedGrade, allGrade);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedGrade, allGrade);"><br>
            </td>
            
            <td align="center">
                <select name="gradeIds"  size="8" multiple="multiple" class="cQueryFieldList" id="selectedGrade"></select>
                </td>
            </tr>
       </table>
            
        </td>
    </tr>
    
    <!--事奉團隊-->
     <tr><td class="cInputCaption"><fmt:message key="member.serviceTeam"/></td>
        <td class="cInputColumn">
            <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="member.serviceTeam"/></style></th>
                <th>&nbsp;</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="member.serviceTeam"/></style></th>
            </tr><tr>
            <td >
                <ww:select id="allServiceTeam"
                list="serviceTeamAllList"
                listKey="id"
                listValue="name"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                />
                </td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allServiceTeam, selectedServiceTeam);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allServiceTeam, selectedServiceTeam);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedServiceTeam, allServiceTeam);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedServiceTeam, allServiceTeam);"><br>
            </td>
            
            <td align="center">
                <ww:select name="serviceteamIds" id="selectedServiceTeam"
                list="serviceTeam_memberList"
                listKey="id"
                listValue="name"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                />              
            </td>
            </tr>
            
            
            </table>
        </td>
    </tr> 
    
    <!--事奉團隊-->
    
    
   <tr><td class="cInputCaption"><fmt:message key="team.name"/></td>
        <td class="cInputColumn">
        
         <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="team.name"/></style></th>
                <th>&nbsp;</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="team.name"/></style></th>
            </tr><tr>
            <td >
            
               <ww:select id="allTeam"
                list="teamAllList"
                listKey="id"
                listValue="name"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                />   
                
             
                </td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allTeam, selectedTeam);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allTeam, selectedTeam);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedTeam, allTeam);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedTeam, allTeam);"><br>
            </td>            
            <td align="center">
                <select name="teamIds"  size="8" multiple="multiple" class="cQueryFieldList" id="selectedTeam">
                </select>
              </td>
            </tr>
        </table>
            
            
        </td>
    </tr>
    
    
        <tr>
          <td class="cInputCaption"><fmt:message key="group.groupNameCh"/>&nbsp;</td>
          <td class="cInputColumn">
          <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="group.groupNameCh"/></style></th>
                <th>&nbsp;</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="group.groupNameCh"/></style></th>
            </tr><tr>
            <td >
                <ww:select id="allGroup"
                list="groupList"
                listKey="id"
                listValue="caption_"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                /></td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allGroup, selectedGroup);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allGroup, selectedGroup);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedGroup, allGroup);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedGroup, allGroup);"><br>
            </td>
            
            <td align="center"><select name="groupIds"  size="8" multiple="multiple" class="cQueryFieldList" id="selectedGroup">
            </select>
            </td>
            </tr>
            </table>          </td>
        </tr>
     
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type="submit"  class="cButton" value="<ww:text name='sms.send'/>" />        </td>
    </tr>
  </table>
</ww:form>

<script>
function onSubmit() {
mySelectAll(document.smsForm.memberIds);
mySelectAll(document.smsForm.groupIds);
mySelectAll(document.smsForm.gradeIds);
mySelectAll(document.smsForm.teamIds);
mySelectAll(document.smsForm.otherIds);
mySelectAll(document.smsForm.serviceteamIds);
    return true;
}

<%
  String msg=request.getParameter("msg");
    if (msg != null && msg.equals("1")) {
%>
  alert("<ww:text name='sms.send.success'/>");
<%
}
%>

<%
    if (msg != null && msg.equals("2")) {
%>
  alert("<ww:text name='sms.send.error'/>");
<%
}
%>

	function count(value){
		var x=smsForm.msg.value.length;
        var text=parseInt( (x/70)+1 ); 
		document.getElementById("info").innerHTML=x+' texts:['+text+']';
	}

</script>
