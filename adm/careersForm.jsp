<%@ include file="/common/taglibs.jsp"%>

<ww:form name="careersForm" action="saveCareers" method="POST" onsubmit="onSubmit()">
  <ww:hidden name="careers.id" value="${careers.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="careers.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="careers.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="careers.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button"  value="<fmt:message key='common.version.easy'/>" onClick="show()" class="cButton"/>
      </td>
    </tr>
    

    
   <tr><td class="cInputCaption1"><fmt:message key="careers.company"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="careers.companyId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="companyList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('careers.companyId')"/></span>
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.name"/></td>
        <td class="cInputColumn">
            <ww:textfield name="careers.name" value="%{careers.name}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>
    

    
     <tr><td class="cInputCaption1"><fmt:message key="careers.beginDate"/></td>
        <td class="cInputColumn">
            <ww:datepicker cssClass="cInputTextFieldShort" name="beginDate" id="beginDate" value="%{careers.beginDate}" language="zh" format="%Y/%m/%d"/>
        </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="careers.endDate"/></td>
        <td class="cInputColumn">
            <ww:datepicker cssClass="cInputTextFieldShort" name="endDate" id="endDate" value="%{careers.endDate}" language="zh" format="%Y/%m/%d"/>
        </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="careers.timeover"/></td>
        <td class="cInputColumn">
            <ww:checkbox name="careers.timeover" cssClass="cCheckboxField" />
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.content"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.content" value="%{careers.content}" cssClass="cInputTextArea" cols="45" rows="12" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('careers.content')"/></span>
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.contactsEmail"/></td>
        <td class="cInputColumn">
            <ww:textfield name="careers.contactsEmail" value="%{careers.contactsEmail}" maxlength="60" cssClass="cInputTextFieldLong" />
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.treatment"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.treatment" value="%{careers.treatment}" cssClass="cInputTextArea" cols="45" rows="12" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('careers.treatment')"/></span>
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.contacts"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="careers.contacts" value="%{careers.contacts}" maxlength="10" cssClass="cInputTextFieldShort" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('careers.contacts')"/></span>
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.jobStatus"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="careers.jobStatusId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="jobStatusList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('careers.jobStatusId')"/></span>
        </td>
    </tr>

   <tr><td class="cInputCaption1"><fmt:message key="careers.candidates"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:checkboxlist name="candidatesWayIds" 
               list="candidatesList"
               listKey="id"
               listValue="caption_"
               value = "%{candidatesWayIds}"
            />       
             <span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('candidatesWayIds')"/></span>     
        </td>
    </tr>
   
   <!------------------------------------------------------------------------------------------------------------------------------------------------->
  

    <tr id="s1"><td class="cInputCaption1"><fmt:message key="careers.careersMemo"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.careersMemo" value="%{careers.careersMemo}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>

    <tr id="s2"><td class="cInputCaption1"><fmt:message key="careers.jobType"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.jobType" value="%{careers.jobType}" cssClass="cInputTextArea" cols="45" rows="8" />
        </td>
    </tr>

    <tr id="s3"><td class="cInputCaption1"><fmt:message key="careers.address"/></td>
        <td class="cInputColumn">
            <ww:textfield name="careers.address" value="%{careers.address}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr id="s4"><td class="cInputCaption1"><fmt:message key="careers.officeDate"/></td>
        <td class="cInputColumn">
            <ww:datepicker cssClass="cInputTextFieldShort" name="officeDate" id="officeDate" value="%{officeDate}" language="zh" format="%Y/%m/%d"/>
        </td>
    </tr>

    <tr id="s5"><td class="cInputCaption1"><fmt:message key="careers.travelMemo"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.travelMemo" value="%{careers.travelMemo}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>

    <tr id="s6"><td class="cInputCaption1"><fmt:message key="careers.officeTime"/></td>
        <td class="cInputColumn">
            <ww:textfield name="careers.officeTime" value="%{careers.officeTime}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr id="s7"><td class="cInputCaption1"><fmt:message key="careers.vacation"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.vacation" value="%{careers.vacation}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>


    <tr id="s8"><td class="cInputCaption1"><fmt:message key="careers.jobCondition"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.jobCondition" value="%{careers.jobCondition}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>

    <tr id="s9"><td class="cInputCaption1"><fmt:message key="careers.experience"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.experience" value="%{careers.experience}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>

    <tr id="s10"><td class="cInputCaption1"><fmt:message key="careers.otherCondition"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.otherCondition" value="%{careers.otherCondition}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>


    <tr id="s11"><td class="cInputCaption1"><fmt:message key="careers.description"/></td>
        <td class="cInputColumn">
            <ww:textarea name="careers.description" value="%{careers.description}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>


    <tr id="s12"><td class="cInputCaption1"><fmt:message key="careers.degree"/></td>
        <td class="cInputColumn">
            <ww:select name="careers.degreeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="degreeList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>

    

    <tr id="s13"><td class="cInputCaption1"><fmt:message key="careers.department"/></td>
        <td class="cInputColumn">
            <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="careers.department"/></style></th>
                <th>&nbsp;</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="careers.department"/></style></th>
            </tr><tr>
            <td >
                <ww:select id="allDepartment"
                list="departmentList"
                listKey="id"
                listValue="name"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                /></td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allDepartment, selectedDepartment);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allDepartment, selectedDepartment);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedDepartment, allDepartment);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedDepartment, allDepartment);"><br>
            </td><td align="center">
                <ww:select name="departmentIds" id="selectedDepartment"
                list="object_departmentList"
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

    <tr id="s14"><td class="cInputCaption1"><fmt:message key="common.pleaseSelect"/><fmt:message key="skill.skillClass"/></td>
        <td class="cInputColumn">     
           <ww:select id="allSkillClass" onchange="retrieveSecondOptions(this, 'allSkills', 'findSkills.do', 'key');"
                headerKey=""
                headerValue="%{getText('common.pleaseSelect')}..."
                list="skillClassList"
                listKey="id"
                listValue="name"   
                cssClass="cQueryFieldList"
            />              
        </td>
    </tr>
    
    <tr id="s15"><td class="cInputCaption1"><fmt:message key="careers.skills"/></td>
        <td class="cInputColumn">
            <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="careers.skills"/></style></th>
                <th>&nbsp;</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="careers.skills"/></style></th>
            </tr><tr>
            <td >
                <ww:select id="allSkills"
                list="skillsList"
                listKey="id"
                listValue="name"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                /></td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allSkills, selectedSkills);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allSkills, selectedSkills);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedSkills, allSkills);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedSkills, allSkills);"><br>
            </td><td align="center">
                <ww:select name="skillsIds" id="selectedSkills"
                list="object_skillsList"
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

     
     <tr id="s16"><td class="cInputCaption1"><fmt:message key="member.otherSkills"/></td>
        <td class="cInputColumn">
           <ww:textarea name="careers.otherSkills" value="%{careers.otherSkills}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>
 
     <tr id="s17"><td class="cInputCaption1"><fmt:message key="common.language.ability"/></td>
        <td class="cInputColumn">

   
<table width="100" border="0">
  <tr>
    <td nowrap="nowrap">&nbsp;</td>
    <td nowrap="nowrap"><fmt:message key="common.language.grade1"/></td>
    <td nowrap="nowrap"><fmt:message key="common.language.grade2"/></td>
    <td nowrap="nowrap"><fmt:message key="common.language.grade3"/></td>
    <td nowrap="nowrap"><fmt:message key="common.language.grade4"/></td>
    <td nowrap="nowrap"><fmt:message key="common.language.grade5"/></td>
    <td nowrap="nowrap"><fmt:message key="common.language.grade6"/></td>
  </tr>

  <tr>
    <td nowrap="nowrap" bgcolor="#C8C8E1"><fmt:message key="member.chinese"/></td>
    <td colspan="6" bgcolor="#C8C8E1">     
      <ww:radio name="careers.chineseId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"
      />     
    </td>
    </tr>

  <tr>
    <td nowrap="nowrap"><fmt:message key="member.english"/></td>
    <td colspan="6">
       <ww:radio name="careers.englishId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"              
       />    
    </td>
    </tr>
  <tr>
    <td nowrap="nowrap" bgcolor="#C8C8E1"><fmt:message key="member.japanese"/></td>
    <td colspan="6" bgcolor="#C8C8E1">        
      <ww:radio name="careers.japaneseId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"            
      />    
    </td>
    </tr>
  <tr>
    <td nowrap="nowrap"><fmt:message key="member.taiwanese"/></td>
    <td colspan="6">         
      <ww:radio name="careers.taiwaneseId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"               
      />          
    </td>
    </tr>
  <tr>
    <td nowrap="nowrap" bgcolor="#C8C8E1"><fmt:message key="member.hakka"/></td>
    <td colspan="6" bgcolor="#C8C8E1">
      <ww:radio name="careers.hakkaId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"               
      />         
    </td>
    </tr>

</table>

</td>
    </tr>
    
</div>    
<!------------------------------------------------------------------------------------------------------------------------------------------------->

    
    <tr><td class="cInputCaption1"><fmt:message key="careers.allow"/></td>
        <td class="cInputColumn">
            <ww:checkbox name="careers.allow" cssClass="cCheckboxField" />
        </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="careers.lastModifiedDate" /></span>
        </td>
    </tr>


    <tr><td class="cInputCaption1"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="careers.createdDate" /></span>
        </td>
    </tr>


    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="careers.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="careers.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button"  value="<fmt:message key='common.version.easy'/>" onClick="show()" class="cButton"/>
      </td>
    </tr>
  </table>
</ww:form>


<script>
function onSubmit() {
    mySelectAll(document.careersForm.departmentIds);
    mySelectAll(document.careersForm.skillsIds);
    return true;
}

 mySelectAll(document.careersForm.departmentIds);
 mySelectAll(document.careersForm.skillsIds);
 

function menuChange(td_id)
{
    if(td_id.style.display == "none")
   {
       td_id.style.display = "inline";
   }
    else
   {
     td_id.style.display = "none";
   }
}


function show()
{
    if(s1.style.display == "none")
   {      
        for(i=1;i<=17;i++){   
   		      var s = eval('s'+i) ;
   		      s.style.display = "inline";
   		  }
   }
    else
   {    
        for(i=1;i<=17;i++){   
   		      var s = eval('s'+i) ;
   		      s.style.display = "none";
   		  }
   }
}

</script>
