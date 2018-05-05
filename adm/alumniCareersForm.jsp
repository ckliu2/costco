<%@ include file="/common/taglibs.jsp"%>

<ww:form name="careersForm" action="saveCareers" method="POST" onsubmit="onSubmit()">
  <ww:hidden name="careers.id" value="${careers.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="careers.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:window.location='alumniCareersList.do'" class="cButton" value="<fmt:message key="common.back"/>" >        
        <input type="button"  value="<fmt:message key='common.version.easy'/>" onClick="show()" class="cButton"/>
      </td>
    </tr>
    

    
   <tr><td class="cInputCaption1"><fmt:message key="careers.company"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            ${careers.company.name}
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.name"/></td>
        <td class="cInputColumn">
            ${careers.name}
        </td>
    </tr>
    

    
     <tr><td class="cInputCaption1"><fmt:message key="careers.beginDate"/></td>
        <td class="cInputColumn">
            ${careers.beginDate}
        </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="careers.endDate"/></td>
        <td class="cInputColumn">
           ${careers.endDate}
        </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="careers.timeover"/></td>
        <td class="cInputColumn">
            ${careers.timeover}
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.content"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">            
            <ww:set name="content" value="%{newline2Br(careers.content)}"/>
            ${content}           
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.contactsEmail"/></td>
        <td class="cInputColumn">
            ${careers.contactsEmail}
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.treatment"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
           ${careers.treatment}
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.contacts"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            ${careers.contacts}
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="careers.jobStatus"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            ${careers.jobStatus}
        </td>
    </tr>

   <tr><td class="cInputCaption1"><fmt:message key="careers.candidates"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            ${careers.candidatesWay}
        </td>
    </tr>
   
   <!------------------------------------------------------------------------------------------------------------------------------------------------->
  

    <tr id="s1"><td class="cInputCaption1"><fmt:message key="careers.careersMemo"/></td>
        <td class="cInputColumn">
            <ww:set name="careersMemo" value="%{newline2Br(careers.careersMemo)}"/>
            ${careersMemo}
        </td>
    </tr>

    <tr id="s2"><td class="cInputCaption1"><fmt:message key="careers.jobType"/></td>
        <td class="cInputColumn">           
            <ww:set name="jobType" value="%{newline2Br(careers.jobType)}"/>
            ${jobType}
        </td>
    </tr>

    <tr id="s3"><td class="cInputCaption1"><fmt:message key="careers.address"/></td>
        <td class="cInputColumn">
            ${careers.address}
        </td>
    </tr>

    <tr id="s4"><td class="cInputCaption1"><fmt:message key="careers.officeDate"/></td>
        <td class="cInputColumn">
            ${careers.officeDate}            
        </td>
    </tr>

    <tr id="s5"><td class="cInputCaption1"><fmt:message key="careers.travelMemo"/></td>
        <td class="cInputColumn">
           <ww:set name="travelMemo" value="%{newline2Br(careers.travelMemo)}"/>
           ${travelMemo}           
        </td>
    </tr>

    <tr id="s6"><td class="cInputCaption1"><fmt:message key="careers.officeTime"/></td>
        <td class="cInputColumn">
            ${careers.officeTime}
        </td>
    </tr>

    <tr id="s7"><td class="cInputCaption1"><fmt:message key="careers.vacation"/></td>
        <td class="cInputColumn">
            <ww:set name="vacation" value="%{newline2Br(careers.vacation)}"/>
            ${vacation}            
        </td>
    </tr>


    <tr id="s8"><td class="cInputCaption1"><fmt:message key="careers.jobCondition"/></td>
        <td class="cInputColumn">
            <ww:set name="jobCondition" value="%{newline2Br(careers.jobCondition)}"/>
            ${jobCondition}
        </td>
    </tr>

    <tr id="s9"><td class="cInputCaption1"><fmt:message key="careers.experience"/></td>
        <td class="cInputColumn">
            <ww:set name="experience" value="%{newline2Br(careers.experience)}"/>
            ${experience}            
        </td>
    </tr>

    <tr id="s10"><td class="cInputCaption1"><fmt:message key="careers.otherCondition"/></td>
        <td class="cInputColumn">
            <ww:set name="otherCondition" value="%{newline2Br(careers.otherCondition)}"/>
            ${otherCondition}            
        </td>
    </tr>


    <tr id="s11"><td class="cInputCaption1"><fmt:message key="careers.description"/></td>
        <td class="cInputColumn">
            <ww:set name="description" value="%{newline2Br(careers.description)}"/>
            ${description}                
        </td>
    </tr>


    <tr id="s12"><td class="cInputCaption1"><fmt:message key="careers.degree"/></td>
        <td class="cInputColumn">
            ${careers.degree}
        </td>
    </tr>

    

    <tr id="s13"><td class="cInputCaption1"><fmt:message key="careers.department"/></td>
        <td class="cInputColumn">
            <ww:set name="careersDepartmentList" value="%{careersDepartmentList()}"/>
            ${careersDepartmentList}
        </td>
    </tr>

    
    <tr id="s14"><td class="cInputCaption1"><fmt:message key="careers.skills"/></td>
        <td class="cInputColumn">            
            <ww:set name="careersSkillsList" value="%{careersSkillsList()}"/>
            ${careersSkillsList}
        </td>
    </tr>

     
     <tr id="s15"><td class="cInputCaption1"><fmt:message key="member.otherSkills"/></td>
        <td class="cInputColumn">
            <ww:set name="otherSkills" value="%{newline2Br(careers.otherSkills)}"/>
            ${otherSkills}             
        </td>
    </tr>
 
     <tr id="s16"><td class="cInputCaption1"><fmt:message key="common.language.ability"/></td>
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
            <ww:set name="allow" value="%{isYesNoString(careers.allow)}"/>
            ${allow}
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
        <input type=button onclick="javascript:window.location='alumniCareersList.do'" class="cButton" value="<fmt:message key="common.back"/>" >        
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
        for(i=1;i<=16;i++){   
   		      var s = eval('s'+i) ;
   		      s.style.display = "inline";
   		  }
   }
    else
   {    
        for(i=1;i<=16;i++){   
   		      var s = eval('s'+i) ;
   		      s.style.display = "none";
   		  }
   }
}


</script>
