<%@ include file="/common/taglibs.jsp"%>


<span class="cLabel5"><fmt:message key="company.talent.msg2"/></sapn>
<ww:form name="talentList" action="talentQuery" method="POST"  onsubmit="onSubmit()"> 
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="company.talent.List"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
      
                    
          <input type="submit" value="<fmt:message key="common.search"/>" class="cButton">       
          
      </td>
    </tr>

  
    
    <tr><td class="cInputCaption1"><fmt:message key="common.pleaseSelect"/><fmt:message key="skill.skillClass"/></td>
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
    
    
     <tr>
     <td class="cInputCaption1">
     <fmt:message key="common.pleaseSelect"/><fmt:message key="skill.name"/>     
    
     </td>
        <td class="cInputColumn">
            <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="skill.name"/></style></th>
                <th>&nbsp;</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="skill.name"/></style></th>
            </tr><tr>
            <td>          
                <select name="allSkills" multiple="true" size="8" class="cQueryFieldList"/>                      
                </td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allSkills, selectedSkills);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allSkills, selectedSkills);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedSkills, allSkills);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedSkills, allSkills);"><br>
            </td>
            
            <td align="center">
                
                <ww:select name="skillsIds" id="selectedSkills"
                list="querySkillList"
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
    
    <tr><td class="cInputCaption1"><fmt:message key="member.otherSkills"/></td>
        <td class="cInputColumn">
            <ww:textfield name="member.otherSkills" value="%{member.otherSkills}" maxlength="100" cssClass="cInputTextFieldLong" />  
        </td>
    </tr>
   
     <tr><td class="cInputCaption1"><fmt:message key="company.talent.workexperience"/></td>
        <td class="cInputColumn"> 
                 <ww:select name="years"
                 headerKey=""
                 headerValue="%{getText('common.pleaseSelect')}..."
                 list="workingYearsList"
                 cssClass="cInputListField"
                />            
                <fmt:message key="common.year"/>  
 
                <ww:select name="months"
                 headerKey=""
                 headerValue="%{getText('common.pleaseSelect')}..."
                 list="monthList"
                 cssClass="cInputListField"
                />                
                <fmt:message key="common.month"/>
                
        </td>
    </tr>
    
    
    
    
  
    <tr><td class="cInputCaption1"><fmt:message key="common.language.ability"/></td>
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
      <ww:radio name="member.chineseId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"
      /> 
    </td>
    </tr>
  <tr>
    <td nowrap="nowrap"><fmt:message key="member.english"/></td>
    <td colspan="6">
      <ww:radio name="member.englishId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"
       />    
    </td>
    </tr>
  <tr>
    <td nowrap="nowrap" bgcolor="#C8C8E1"><fmt:message key="member.japanese"/></td>
    <td colspan="6" bgcolor="#C8C8E1">
        <ww:radio name="member.japaneseId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"
        /> 
    </td>
    </tr>
  <tr>
    <td nowrap="nowrap"><fmt:message key="member.taiwanese"/></td>
    <td colspan="6">
       <ww:radio name="member.taiwaneseId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"
        />    
    </td>
    </tr>
  <tr>
    <td nowrap="nowrap" bgcolor="#C8C8E1"><fmt:message key="member.hakka"/></td>
    <td colspan="6" bgcolor="#C8C8E1">
       <ww:radio name="member.hakkaId" 
               list="languageList"
               listKey="id"
               listValue="valueTw"
        /> 
    </td>
    </tr>
</table>
  </td>
</tr>

<tr><td class="cInputCaption1"><fmt:message key="member.otherLanguages"/></td>
        <td class="cInputColumn">
            <ww:textfield name="member.otherLanguages" value="%{member.otherLanguages}" maxlength="50" cssClass="cInputTextFieldLong" />
        </td>
</tr>

    <tr id="s4"><td class="cInputCaption1"><fmt:message key="member.licence"/></td>
        <td class="cInputColumn">     
             <ww:textfield name="member.licence" value="%{member.licence}" maxlength="100" cssClass="cInputTextFieldLong" />  
         </td>
    </tr>
    
   <tr><td class="cInputCaption"><fmt:message key="mySchools.degree"/></td>
        <td class="cInputColumn">
            <ww:select name="mySchools.degreeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="degreeList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('mySchools.degreeId')"/></span>
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
                list="queryDepartmentList"
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
    


    <tr class="cActionButtonLine">
      <td colspan="2">
           <input type="submit" value="<fmt:message key="common.search"/>" class="cButton">
      </td>
    </tr>
  </table>
</ww:form>


<script>
  function onSubmit() {
    mySelectAll(document.all.skillsIds);
    mySelectAll(document.all.departmentIds);    
    return true;
  }
</script>
