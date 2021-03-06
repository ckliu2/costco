<%@ include file="/common/taglibs.jsp"%>
  
<table width="100%" border="0">
  <tr>
    <td><div align="center">
    
<ww:form name="memberForm" action="saveGraduate" method="POST" enctype="multipart/form-data" onsubmit="return ck();">
  <input type="hidden" name="surveyUrl" id="surveyUrl"/>
  <ww:hidden name="member.id" value="${member.id}"/>   
  <ww:hidden name="member.workdays" value="${member.workdays}"/>   
  <table border="0" cellspacing="1" class="cContentTable1" >
  
    <tr><td class="cContentTitle" colspan="2" >畢業生填報資訊</td></tr>
    <tr class="cActionButtonLine">
      
      
     <td colspan="2">
        
     <table width="100%" border="0">
         <tr>
           <td width="15%" bordercolor="#000000">
             <input type="submit" value="儲&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存" class="cButton">&nbsp;  
           </td>        
      </tr>
     </table>
        
      </td>
      
    </tr>
    
   <tr>
      <td colspan="2">
      
      <table  border="0">
      
      <font color="red" size="2"> * 紅框為必填欄位</font></div>
      
        <tr>
          <td align="left" valign="top">
            <!----------------------------------------------------- start ----------------------------------------------------->
 <table>
 
    <tr><td class="cInputCaption"><fmt:message key="member.photo"/></td>
        <td class="cInputColumn">
        <ww:if test="member.photo != null">
            <input type="checkbox" name="removePhoto" onclick="if (this.checked == true) document.memberForm.filePhoto.style.display='inline'; else document.memberForm.filePhoto.style.display='none';" value="<ww:property value="member.photo.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="member.uploadPhoto.relativeUrl"/>/<ww:property value="member.id"/>/<ww:property value="member.photo.fileName"/>"><ww:property value="member.photo.fileName" /> (<ww:property value="member.photo.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="filePhoto" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="member.photoId" value="${member.photo.id}"/>
            <ww:hidden name="member.photoFileName" value="${member.photo.fileName}"/>
            <img src="${ctx}/<fmt:message key="member.uploadPhoto.relativeUrl"/>/<ww:property value="member.id"/>/<ww:property value="member.photo.fileName"/>" width="150">        
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="filePhoto" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>    
        </td>
    </tr>   
    
    
    <tr><td class="cInputCaption"><fmt:message key="member.rgno"/></td>
        <td class="cInputColumn">
          ${member.rgno}    
         </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="member.cname"/></td>
        <td class="cInputColumn">
          ${member.cname}        
         </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="member.sex"/></td>
        <td class="cInputColumn">    
           ${member.sexChinese}   
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="member.department"/></td>
        <td class="cInputColumn">
         ${member.departmentName}        
         </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.status"/></td>
        <td class="cInputColumn">
          ${member.status.valueTw}       
        </td>
    </tr>

    <tr><td class="cInputCaption" >通訊地址<span class="cRequired">*</span></td>
        <td class="cInputColumn">
        
           <ww:select name="member.countryId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="countryList"
               listKey="id"
               listValue="keyName+'-'+valueCh"
               cssClass="cInputListField"
            />
            
            <input type="text" name="member.address" id="address"  value="${member.address}" class="cInputTextFieldLongRequired"/>
         </td>
    </tr>
    
    <tr><td class="cInputCaption">戶籍地址</td>
        <td class="cInputColumn">
        
           <ww:select name="member.country1Id" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="country1List"
               listKey="id"
               listValue="keyName+'-'+valueCh"
               cssClass="cInputListField"
            />
            
            <input type="text" name="member.address1" id="address1"  value="${member.address1}" class="cInputTextField"/>
         </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.cellphone"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <input type="text" name="member.cellphone" id="cellphone" maxlength="20" value="${member.cellphone}" class="cInputTextFieldShortRequired" required/>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.phone"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">            
            <input type="text" name="member.phone" maxlength="20" id="phone" value="${member.phone}" class="cInputTextFieldShortRequired" required/>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.otherEmail1"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <input type="email" name="member.otherEmail1" maxlength="50" id="otherEmail1" value="${member.otherEmail1}" class="cInputTextFieldRequired" required/>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.otherEmail2"/></td>
        <td class="cInputColumn">
            <ww:textfield name="member.otherEmail2" value="%{member.otherEmail2}" maxlength="50" cssClass="cInputTextField" />        
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.majorSubject"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <textarea name="member.majorSubject" cols="45" rows="12" id="majorSubjec" class="cInputTextAreaRequired">${member.majorSubject}</textarea>
        </td>
    </tr>

    <tr id="s3"><td class="cInputCaption"><fmt:message key="member.portfolio"/></td>
        <td class="cInputColumn">
            <ww:textarea name="member.portfolio" value="%{member.portfolio}" cssClass="cInputTextArea" cols="45" rows="12" />        </td>
    </tr>
    
 </table>                      
            
            <!----------------------------------------------------- end ----------------------------------------------------->          </td>
          <td align="left" valign="top" id="s5">
            <!----------------------------------------------------- start ----------------------------------------------------->
 <table>  
 
 
   <tr><td class="cInputCaption"><fmt:message key="member.graduation"/><span class="cRequired">*</span></td>
        <td class="cInputColumnRequired">   
            
            <ww:checkboxlist name="mygraduationsIds" id="mygraduation" onchange="graduation();" cssClass="cInputTextArea"
               list="graduationList"
               listKey="id"
               listValue="caption_"
               value = "%{mygraduationsIds}"
            />
            
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.fulltimeWork"/></td>
        <td class="cInputColumn">
            <ww:select name="member.fulltimeWorkId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="fulltimeWorkList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="member.freeWork"/></td>
        <td class="cInputColumn">
            <ww:select name="member.freeWorkId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="freeWorkList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>
 
      
   <tr id="myJobPanel"><td class="cInputCaption"><fmt:message key="member.myJobs"/></td>
        <td class="cInputColumn">
           <a href="editMyJobs.do" target="_blank">
             <img src="./images/add.png" border="0"/>&nbsp;<fmt:message key="common.insert"/><fmt:message key="member.myJobs"/>
           </a>  
           <c:set var="i" value="1" />    
           <ww:if test="member.graduate == 1">
               <display:table name="myJobsList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
               <display:setProperty name="paging.banner.placement" value="bottom" />
               <display:column titleKey="common.id">
                ${i}            
               </display:column>
               <display:column property="industry.name" sortable="true" title="產業類別" style="text-align:left" />
               <display:column property="relation" sortable="true" title="就讀科系相關性" style="text-align:left" />
               
               <display:column titleKey="common.action">
                <a href="editMyJobs.do?myJobs.id=<c:out value="${row.id}"/>" target="_blank"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
               </display:column>
               <c:set var="i" value="${i+1}" />           
               </display:table> 
           </ww:if>
           <ww:else>               
               <display:table name="myJobsList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
               <display:setProperty name="paging.banner.placement" value="bottom" />
               <display:column titleKey="common.id">
                ${i}            
               </display:column>
               <display:column property="name" sortable="true" titleKey="myJobs.name" style="text-align:left" />
               <display:column property="department" sortable="true" titleKey="myJobs.department" style="text-align:left" />
               <display:column property="jobTitle" sortable="true" titleKey="myJobs.jobTitle" style="text-align:left" />
               <display:column property="status" sortable="true" titleKey="myJobs.status" style="text-align:left" />
               <display:column titleKey="common.action">
                <a href="editMyJobs.do?myJobs.id=<c:out value="${row.id}"/>" target="_blank"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
               </display:column>
               <c:set var="i" value="${i+1}" />           
               </display:table>           
           </ww:else>                
           
          </td>
    </tr>
       

      
    <tr id="mySchoolPanel"><td class="cInputCaption"><fmt:message key="member.mySchools"/></td>
        <td class="cInputColumn">
           <a href="editMySchools.do" target="_blank">
             <img src="./images/add.png" border="0"/>&nbsp;<fmt:message key="common.insert"/><fmt:message key="member.mySchools"/>
           </a> 
           <c:set var="j" value="1" />
           <display:table name="mySchoolsList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
             <display:setProperty name="paging.banner.placement" value="bottom" />
             <display:column titleKey="common.id">
               ${j}             
             </display:column>
             <display:column property="name" sortable="true" titleKey="mySchools.name" style="text-align:left" />
             <display:column property="department" sortable="true" titleKey="mySchools.department" style="text-align:left" />
             <display:column property="degree" sortable="true" titleKey="mySchools.degree" style="text-align:left" />
             <display:column property="status" sortable="true" titleKey="mySchools.status" style="text-align:left" />             
             <display:column titleKey="common.action">
               <a href="editMySchools.do?mySchools.id=<c:out value="${row.id}"/>" target="_blank"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
             </display:column>
            <c:set var="j" value="${j+1}" />           
          </display:table> 
          
         </td>
    </tr>


    <tr><td class="cInputCaption"><fmt:message key="member.experience"/></td>
        <td class="cInputColumn">
            <ww:textarea name="member.experience" value="%{member.experience}" cssClass="cInputTextArea" cols="45" rows="12" />        
        </td>
    </tr>
 
    
    
<tr><td class="cInputCaption"><fmt:message key="common.language.ability"/></td>
        <td class="cInputColumn">

<table width="100%" border="0">
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

<tr><td class="cInputCaption"><fmt:message key="member.otherLanguages"/></td>
        <td class="cInputColumn">
            <ww:textfield name="member.otherLanguages" value="%{member.otherLanguages}" maxlength="50" cssClass="cInputTextFieldShort" />
        </td>
</tr>
    
    <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="member.lastModifiedDate" /></span>        
        </td>
    </tr>


    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="member.createdDate" /></span>        
        </td>
    </tr>  
    
       
        </td>
    </tr>   

    
  </table>  
            <!----------------------------------------------------- end ----------------------------------------------------->         
       </td>
      </tr>
      
      
   </table>
      
      </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type="submit" value="儲&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存" class="cButton">&nbsp;  
      </td>
    </tr>
  </table>
  
<div id="hiddenPanel">  
  <ww:checkboxlist name="groupsIds" 
               list="groupsList"
               listKey="id"
               listValue="id"
               value = "%{groupsIds}"
  />
  <ww:checkboxlist name="mySchoolsIds" 
               list="mySchoolsList"
               listKey="id"
               listValue="id"
               value = "%{mySchoolsIds}"
  />
  <ww:checkboxlist name="myJobsIds" 
               list="myJobsList"
               listKey="id"
               listValue="id"
               value = "%{myJobsIds}"
  />
  


<ww:textfield name="member.email" value="%{member.email}" maxlength="50" cssClass="cInputTextField" />      
<ww:textfield name="member.ename" value="%{member.ename}" maxlength="30" cssClass="cInputTextFieldShort" />        
<ww:textfield name="member.password" value="%{member.password}" maxlength="0" cssClass="cInputTextField" />        
<ww:textfield name="member.zip" value="%{member.zip}" maxlength="10" cssClass="cInputTextFieldShort" />        
<ww:textfield name="member.blogUrl" value="%{member.blogUrl}" maxlength="100" cssClass="cInputTextFieldLong" />        
<ww:textfield name="member.msn" value="%{member.msn}" maxlength="50" cssClass="cInputTextField" />        
<ww:textfield name="member.minor" value="%{member.minor}" maxlength="100" cssClass="cInputTextFieldLong" />        
<ww:textarea name="member.autobiography" value="%{member.autobiography}" cssClass="cInputTextArea" cols="45" rows="12" />        
<ww:textarea name="member.licence" value="%{member.licence}" cssClass="cInputTextArea" cols="45" rows="8" />        

<ww:select id="allSkillClass" onchange="retrieveSecondOptions(this, 'allSkills', 'findSkills.do', 'key');"
      headerKey=""
      headerValue="%{getText('common.pleaseSelect')}..."
      list="skillClassList"
      listKey="id"
      listValue="name"   
      cssClass="cQueryFieldList"
  />   
  
<ww:select name="skillsIds" id="selectedSkills"
      list="skillList"
      listKey="id"
      listValue="name"
      multiple="true"
      size="15"
      cssClass="cQueryFieldList"
      />  
<ww:textarea name="member.otherSkills" value="%{member.otherSkills}" cssClass="cInputTextArea" cols="45" rows="12" />

<ww:select name="member.graduationId"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="graduationList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
/>

<ww:textfield name="member.survey" value="%{member.survey}" maxlength="50" cssClass="cInputTextField" />      
<ww:textfield name="member.graduate" value="%{member.graduate}" maxlength="50" cssClass="cInputTextField" />      

<div id="graduateCount">${fn:length(member.myJobs)}</div>
<div id="schoolCount">${fn:length(member.mySchools)}</div>   

</div>

</ww:form>

    </div></td>
  </tr>



<script>
 $("#hiddenPanel").hide();  
  
  function isCheck(a)
  {  
	  var myurl="graduateCheck.do?member.id=${member.id}&graduationId="+a;
	  //alert(myurl);	  
    var returnValue = null;
    $.ajax({   
     type:       "POST",
     async:      false,   
     url:            myurl,   
     //data:   { name: merk },   
     dataType: "html",  
     success:function(data)
     {
       returnValue = data;
     } 
   }); 
  return returnValue;    
 }
 
  function ck(){
  	mySelectAll(document.all.skillsIds);
   	var title='',i=0;
   	
 	  if($("#address").val()==''){
    	 title+='「聯絡地址」為必填欄位! \n';    	
    }    
    if($("#cellphone").val()==''){
    	 title+='「手機」為必填欄位! \n';    	
    }
    if($("#phone").val()==''){
    	 title+='「家裡市話」為必填欄位! \n';    	
    }
    if($("#otherEmail1").val()==''){
    	 title+='「備用信箱(一)」為必填欄位! \n';    	
    }    
    if($("#majorSubjec").val()==''){
    	 title+='「主修」為必填欄位! \n';    	
    }



 
    $("input[name='mygraduationsIds']").each(function() {
    	if ($(this).is(":checked"))
      {
      	i++;
      }
    }); 

    if(i==0){
    	title+='「畢業流向」為必填欄位! \n';    	
    }
   
    $("input[name='mygraduationsIds']").each(function() {    	
    	if ($(this).is(":checked"))
       {        
          var a=$(this).val();
          var x=isCheck(a);   
          if(x==0){
    	    var t="";
    	     if(a==33){
    		     t="工作資料";
    	     }else{
    		     t="就讀學校";
    	    } 
    	    title+=t+'至少需要填寫一筆資料! \n';   	
    	    return false;	   	
        }         
       }       
    }); 

 
   
   if(title.length==0){
   	$('#surveyUrl').val("1");
 	  return true;
   }else{
 	  alert(title);
    return false;
   }
}

<c:if test="${msg=='1'}">
 var a=isCheck(33);
 var b=isCheck(34);
 	 if(a==0 && b==0){
 	 	 alert("「畢業流向」為必填欄位!"); 
 	 } 
</c:if> 

window.setInterval(function(){clock()},1000);


function clock(){
  var graduateCount = $('#graduateCount').text();
  var schoolCount = $('#schoolCount').text();
 if(graduateCount>0){  
   $('input[id=mygraduationsIds-1]').attr('checked', true);
 }
 if(schoolCount>0){  
   $('input[id=mygraduationsIds-2]').attr('checked', true);
 }
}
</script>

