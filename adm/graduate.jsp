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
            <div align="center">
             <input type="submit" value="儲&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存" class="cButton" >&nbsp;  
            </div>
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
          <td align="left" valign="top" width="40%">
            <!----------------------------------------------------- start ----------------------------------------------------->
 <table>
 
    <tr><td class="cInputCaption1"><fmt:message key="member.photo"/></td>
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
            <ww:file cssClass="cInputTextField" cssStyle="height:20px" name="filePhoto" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>    
        </td>
    </tr>   
    
    
    <tr><td class="cInputCaption1"><fmt:message key="member.rgno"/></td>
        <td class="cInputColumn">
          ${member.rgno}    
         </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="member.cname"/></td>
        <td class="cInputColumn">
          ${member.cname}        
         </td>
    </tr>
    
    <tr><td class="cInputCaption1"><fmt:message key="member.sex"/></td>
        <td class="cInputColumn">    
           ${member.sexChinese}   
        </td>
    </tr>
    
    <tr><td class="cInputCaption1">系所</td>
        <td class="cInputColumn">
         ${member.departmentName}        
         </td>
    </tr>
    
    <tr><td class="cInputCaption1">備註</td>
        <td class="cInputColumn">
         ${member.remark}        
         </td>
    </tr>
    
    

    <tr><td class="cInputCaption1"><fmt:message key="member.status"/></td>
        <td class="cInputColumn">
          ${member.status.valueTw}       
        </td>
    </tr>

    <tr><td class="cInputCaption1" >通訊地址<span class="cRequired">*</span></td>
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
    
    <tr><td class="cInputCaption1">戶籍地址</td>
        <td class="cInputColumn">
        
           <ww:select name="member.country1Id" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="country1List"
               listKey="id"
               listValue="keyName+'-'+valueCh"
               cssClass="cInputListField"
            />
            
            <input type="text" name="member.address1" id="address1"  value="${member.address1}" class="cInputTextFieldMedium"/>
         </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="member.cellphone"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <input type="text" name="member.cellphone" id="cellphone" maxlength="20" value="${member.cellphone}" class="cInputTextFieldShortRequired" required/>
        </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="member.phone"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">            
            <input type="text" name="member.phone" maxlength="20" id="phone" value="${member.phone}" class="cInputTextFieldShortRequired" required/>
        </td>
    </tr>

    <tr><td class="cInputCaption1">常用信箱<span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <input type="email" name="member.otherEmail1" maxlength="50" id="otherEmail1" value="${member.otherEmail1}" class="cInputTextFieldRequired" required/>
        </td>
    </tr>

    <tr><td class="cInputCaption1">備用信箱</td>
        <td class="cInputColumn">
            <ww:textfield name="member.otherEmail2" value="%{member.otherEmail2}" maxlength="50" cssClass="cInputTextField" />        
        </td>
    </tr>

    <tr><td class="cInputCaption1"><fmt:message key="member.majorSubject"/><br>(若無請填畢業系所)</td>
        <td class="cInputColumn">
            <textarea name="member.majorSubject" cols="45" rows="12" id="majorSubjec" class="cInputTextArea">${member.majorSubject}</textarea>
        </td>
    </tr>

    <tr id="s3"><td class="cInputCaption1">得獎記錄<br>展演經驗</td>
        <td class="cInputColumn">
            <ww:textarea name="member.portfolio" value="%{member.portfolio}" cssClass="cInputTextArea" cols="45" rows="12" />        </td>
    </tr>
    
 </table>                      
            
            <!----------------------------------------------------- end ----------------------------------------------------->          </td>
          <td align="left" valign="top" id="s5">
            <!----------------------------------------------------- start ----------------------------------------------------->
 <table>  
 
 
   <tr><td class="cInputCaption1">現況<span class="cRequired">*</span></td>
        <td class="cInputColumnRequired">     
            <ww:radio  name="graduation" id="graduation" onclick="grad();"            
               list="graduationList"
               listKey="id"
               listValue="caption_"
               
            />
        <span class="cRequired"><br>註：每週工作32小時以上為全職工作；每週工作32小時以下為部份工時</span>    
        </td>
    </tr>
    
    <tr><td class="cInputCaption1"></td>
        <td class="cInputColumnRequired">
        <!--
          //全職工作 33 部分工時 34 準備考試 37 待業 57
        -->
      <br>   
      <span id="graduationPanel">
      
        <c:choose>  
        
              <c:when test="${member.graduation.id==33}">
                
                  <span class="memo-title">您任職的機構性質為：</span>  <span class="memo-content">${member.fulljob} / ${member.fulljobOther} </span><br>
                  <span class="memo-title">您花了多久時間找到第1份工作：</span>  <span class="memo-content">${member.fulljobDays.valueUs}</span>  <br>
                  <span class="memo-title">您現在平均年薪是：</span>  <span class="memo-content">${member.fulljobSalary.valueUs}</span>  <br>
                  <span class="memo-title">您現在工作主要所在地為何：</span>  <span class="memo-content">${member.fulljobArea.valueUs}</span> 
                   <c:choose>
                      <c:when test="${member.fulljobArea.id==480}">	
                         <span class="memo-content">( ${member.fulljobLocation.valueUs} )</span>  <br>
                      </c:when>                      
                      <c:when test="${member.fulljobArea.id==482}">	
                         <span class="memo-content">( ${member.jobCountry.valueCh} )</span>  <br>
                      </c:when>                      
                      <c:otherwise>
                       <br>
                      </c:otherwise>                      
                   </c:choose>	                  	
                  <span class="memo-title">您的工作需要證照嗎?：</span>  <span class="memo-content">${member.fulljobLicence.valueUs}</span>  <br>                  
              </c:when>
            
              <c:when test="${member.graduation.id==34}">              
                  <span class="memo-title">您任職的機構性質為：</span>  <span class="memo-content">${member.fulljob} / ${member.fulljobOther} </span><br>
                  <span class="memo-title">一週工作時數：</span>  <span class="memo-content">${member.parttimeHours}</span>  <br>
                  <span class="memo-title">您花了多久時間找到第1份工作：</span>  <span class="memo-content">${member.fulljobDays.valueUs}</span>  <br>
                  <span class="memo-title">您現在平均年薪是：</span>  <span class="memo-content">${member.fulljobSalary.valueUs}</span>  <br>
                  <span class="memo-title">您現在工作主要所在地為何：</span>  <span class="memo-content">${member.fulljobArea.valueUs}</span> 
                   <c:choose>
                      <c:when test="${member.fulljobArea.id==480}">	
                         <span class="memo-content">( ${member.fulljobLocation.valueUs} )</span>  <br>
                      </c:when>                      
                      <c:when test="${member.fulljobArea.id==482}">	
                         <span class="memo-content">( ${member.jobCountry.valueCh} )</span>  <br>
                      </c:when>                      
                      <c:otherwise>
                       <br>
                      </c:otherwise>                      
                   </c:choose>	                  	
                  <span class="memo-title">您的工作需要證照嗎：</span>  <span class="memo-content">${member.fulljobLicence.valueUs}</span>  <br>                  
              </c:when>
                 
              <c:when test="${member.graduation.id==37}">              
                  <span class="memo-title">您主要準備何種考試：</span>  <span class="memo-content">${member.exam} / ${member.examOther} </span><br>
              </c:when>
              
              <c:when test="${member.graduation.id==57}">   
                  <span class="memo-title">目前待業最大的可能原因：</span>  <span class="memo-content">${member.waiting} / ${member.waitingOther} </span><br>
                  <span class="memo-title">目前找工作時間多久：</span>  <span class="memo-content">${member.waitingDays}</span>  <br>
              </c:when>
                         
            </c:choose>  
             
         </span>       
              
           <br>           
        </td>
    </tr>
      
   <tr id="myJobPanel"><td class="cInputCaption1"><fmt:message key="member.myJobs"/></td>
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
               <display:column property="industry.name" sortable="true" title="產業類別" style="text-align:left" />
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
       

      
    <tr id="mySchoolPanel"><td class="cInputCaption1"><fmt:message key="member.mySchools"/></td>
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


    <tr><td class="cInputCaption1"><fmt:message key="member.experience"/></td>
        <td class="cInputColumn">
            <ww:textarea name="member.experience" value="%{member.experience}" cssClass="cInputTextArea" cols="45" rows="12" />        
        </td>
    </tr>
    
    
    <tr><td class="cInputCaption1"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="member.lastModifiedDate" /></span>        
        </td>
    </tr>


    <tr><td class="cInputCaption1"><fmt:message key="common.createdDate"/></td>
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
       <div align="center">
        <input type="submit" value="儲&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存" class="cButton">&nbsp;  
       </div>
      </td>
    </tr>
  </table>
  
<div id="hiddenPanel">  

  <ww:textfield name="member.fulljobId" value="%{member.fulljobId}" />   
  <ww:textfield name="member.fulljobOther" value="%{member.fulljobOther}"/>
  <ww:textfield name="member.fulljobDaysId" value="%{member.fulljobDaysId}" /> 
  <ww:textfield name="member.fulljobSalaryId" value="%{member.fulljobSalaryId}" /> 
  <ww:textfield name="member.fulljobAreaId" value="%{member.fulljobAreaId}" /> 
  <ww:textfield name="member.fulljobLocationId" value="%{member.fulljobLocationId}" /> 
  <ww:textfield name="member.fulljobLicenceId" value="%{member.fulljobLicenceId}" /> 
  <ww:textfield name="member.jobCountryId" value="%{member.jobCountryId}" /> 
  <ww:textfield name="member.parttimeHours" value="%{member.parttimeHours}"/>
  <ww:textfield name="member.examId" value="%{member.examId}" /> 
  <ww:textfield name="member.examOther" value="%{member.examOther}"/>
  <ww:textfield name="member.waitingId" value="%{member.waitingId}" />    
  <ww:textfield name="member.waitingOther" value="%{member.waitingOther}"/>   
  <ww:textfield name="member.waitingDaysId" value="%{member.waitingDaysId}"/>  
  
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
<ww:textfield name="member.survey1" value="%{member.survey1}" maxlength="50" cssClass="cInputTextField" />      
<ww:textfield name="member.graduate" value="%{member.graduate}" maxlength="50" cssClass="cInputTextField" />      

<div id="jobsCount">${fn:length(member.myJobs)}</div>
<div id="schoolCount">${fn:length(member.mySchools)}</div>   

</div>

</ww:form>

    </div></td>
  </tr>



<script>
 $("#hiddenPanel").hide(); 
 
  function ck(){
  	mySelectAll(document.all.skillsIds);
   	var title='',i=0;
   	
   	var graduation=radioClick('graduation');
   	var graduationId=$('input[name=graduation]:checked').val();
   	var jobsCount = $('#jobsCount').text();
    var schoolCount = $('#schoolCount').text();    

    if( (parseInt(graduationId)==33 || parseInt(graduationId)==34) && jobsCount==0){  
  		 title+='至少填寫一筆「工作資料」!\n';  
  		 window.open('editMyJobs.do');
  	}
  	
  	if( parseInt(graduationId)==35  && schoolCount==0){  
  		 title+='至少填寫一筆「就讀學校」!\n';  
  		 window.open('editMySchools.do');
  	}
   	
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
    	 title+='「常用信箱」為必填欄位! \n';    	
    }
    if(graduation==0){
  		 title+='「現況」為必填欄位!\n';    		
  	}
    
   if(title.length==0){
   	$('#surveyUrl').val("1");
 	  return true;
   }else{
 	  alert(title);
    return false;
   }
}


function grad(){
	var id=$('input[name=graduation]:checked').val();	
	switch(parseInt(id)){
    case 33: 
     window.open("fulljob.do"); //全職工作
     window.memberForm.action="saveGraduate1.do";
     window.memberForm.submit();     
    break;
    case 34:
     window.open("parttime.do"); //部分工時
     window.memberForm.action="saveGraduate1.do";
     window.memberForm.submit(); 
    break;
    case 37:
     window.open("exam.do"); //準備考試
     window.memberForm.action="saveGraduate1.do";
     window.memberForm.submit(); 
    break;
    case 57:
     window.open("waiting.do"); //待業
     window.memberForm.action="saveGraduate1.do";
     window.memberForm.submit(); 
    break;    
    default:
     $("#graduationPanel").hide();
    break;  
  }
}

function radioClick(name){
  	var i=0;  	
  	$("input[name='"+name+"']").each(function() {
    	if ($(this).is(":checked"))
      {
      	i++;
      }
    });
    return i;
  }


  
</script>

