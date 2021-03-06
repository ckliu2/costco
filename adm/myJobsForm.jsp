<%@ include file="/common/taglibs.jsp"%>

<script type="text/javascript" src="${ctx}/scripts/jquery.blockUI.js"></script> 
<script type="text/javascript" src="${ctx}/scripts/jquery.min.js"></script> 
<link rel="stylesheet" href="${ctx}/css/jquery.ui.theme.css">
<link type="text/css" rel="stylesheet" href="${ctx}/css/demos.css"  />
<script type="text/javascript" src="${ctx}/scripts/jquery-1.3.2.js"></script>
<script type="text/javascript" src="${ctx}/scripts/ui.core.js"></script>
<script type="text/javascript" src="${ctx}/scripts/ui.datepicker.js"></script>
<script type="text/javascript" src="${ctx}/scripts/ui.datepicker-zh-TW.js"></script>




<script type="text/javascript">
	$(function() {
		$('#beginDate').datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat:"yy/mm/dd"
		});		
		$.datepicker.setDefaults($.datepicker.regional["zh-TW"]);
	}); 
	
  $(function() {
		$('#endDate').datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat:"yy/mm/dd"
		});		
		$.datepicker.setDefaults($.datepicker.regional["zh-TW"]);
	});
	
</script> 


<c:set var="required" value="" />
<c:set var="required1" value="" />
<ww:if test="member.graduate == false">
 <c:set var="required" value="<span class='cRequired'>*</span>" /> 
</ww:if>
<ww:else>
 <c:set var="required1" value="<span class='cRequired'>*</span>" /> 
</ww:else>

<ww:form name="myJobsForm" action="saveMyJobs" method="POST">
  <ww:hidden name="myJobs.id" value="${myJobs.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="myJobs.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2"> 
             
        <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" onClick="javascript:return ck();">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="myJobs.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
      </td>
    </tr>
    <tr><td class="cInputCaption"><fmt:message key="myJobs.name"/>${required}</td>
        <td class="cInputColumn">
            <input type="text" name="myJobs.name" id="name" maxlength="100" value="${myJobs.name}" class="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.department"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.department" value="%{myJobs.department}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.jobTitle"/>${required}</td>
        <td class="cInputColumn">
            <input type="text" name="myJobs.jobTitle" id="jobTitle" maxlength="30" value="${myJobs.jobTitle}"  class="cInputTextFieldShort" ${rq}/>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.phone"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.phone" value="%{myJobs.phone}" maxlength="20" cssClass="cInputTextFieldShort" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.email"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.email" value="%{myJobs.email}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.website"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.website" value="%{myJobs.website}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.address"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.address" value="%{myJobs.address}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.beginDate"/>${required}</td>
        <td class="cInputColumn">        
         <input name="beginDate" value="${beginDate}" id="beginDate" type="text" Class="cInputTextFieldShort" class="hasDatepicker" readonly="true" />
         <span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('beginDate')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.endDate"/></td>
        <td class="cInputColumn">  
            <input name="endDate" value="${endDate}" id="endDate" type="text" Class="cInputTextFieldShort" class="hasDatepicker" readonly="true" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            迄今: <ww:checkbox name="myJobs.endDate1" cssClass="cCheckboxField" />
        </td>
    </tr>
    
    
    <tr><td class="cInputCaption">產業類別及工作性質${required}${required1}</td>
        <td class="cInputColumn">
        <input type="button" value="選取工作性質" id="selectIndustry" /> 
        <ww:hidden name="myJobs.industryId" id="industry" value="${myJobs.industryId}"/>
        <ww:hidden name="myJobs.naturework1Id" id="naturework1Id" value="${myJobs.naturework1Id}"/>
        <ww:hidden name="myJobs.natureworkOthers" id="natureworkOthers" value="%{myJobs.natureworkOthers}" cssClass="cInputTextField" />
        </td>
    </tr>
    
    <tr><td class="cInputCaption"></td>
        <td class="cInputColumn">
       產業類別 : <span id="worktype" class="cLabelworktype1" /> 
      </td>
    </tr> 
    
     <tr><td class="cInputCaption"></td>
        <td class="cInputColumn">
       工作性質 : <span id="worktype1" class="cLabelworktype2" /> 
      </td>
    </tr> 
    
    <tr><td class="cInputCaption"></td>
        <td class="cInputColumn">
        其他 : <span id="worktypeOthers" class="cLabelworktype3"/>        
      </td>
    </tr>   
    
    <tr><td class="cInputCaption">年收入${required}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.salaryId" id="salary"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="salaryList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>
    
    <tr><td class="cInputCaption">就讀科系相關性${required}${required1}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.relationId" id="relation"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="relationList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption">具有管理責任${required}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.manageId" id="manage" onchange="mymanage();"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="manageList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption">管理人數</td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.managePeople" id="managePeople" value="%{myJobs.managePeople}" cssClass="cInputTextFieldTiny" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('myJobs.managePeople')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.status"/>${required}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.statusId" id="status"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="statusList"
               listKey="id"
               listValue="value"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('myJobs.statusId')"/></span>
        </td>
    </tr>
    
    
    <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="myJobs.lastModifiedDate" /></span>
        </td>
    </tr>


    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="myJobs.createdDate" /></span>
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
       
       <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" onClick="javascript:return ck();">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="myJobs.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        
      </td>
    </tr>
  </table>
</ww:form>



<script>
 
 function reflash(count){
 	
 	 $('#graduateCount', opener.document).do(count); 	 	 	 
 	 if(count==0){ 	 		
 	 	 $('input[id=mygraduationsIds-1]', opener.document).attr("checked",false);
 	 }else{
     $('input[id=mygraduationsIds-1]', opener.document).attr("checked",true);
   }         
   window.opener.parent.memberForm.action="saveGraduate1.do";
   window.opener.parent.memberForm.submit();
    
   alert("<fmt:message key='common.save'/><fmt:message key='common.successful'/>");
   window.close();   
 }

 <%
 String reload=request.getParameter("reload");
 String count=request.getParameter("count");
 //out.println("reload="+reload);
  if (reload != null && reload.equals("1")) {
 %>
   reflash('<%=count%>');
 <%
 }
 %> 
</script>



<script>

 function mymanage(){
 	 
 	 if($("select#manage").val()!=66){  	
    $('#managePeople').val("0");
   }else{   	
   	$('#managePeople').val("");
   }
 }

 function ck(){
 	var title='';
 	
    if($("#industry").val()==''){	
    	title+='「產業類別及工作性質」為必填欄位! \n';    
    }  
    /*
    if($("select#naturework1Id").val()==''){
    	title+='「工作性質1」為必填欄位! \n';    
    } 
    if($("select#naturework2Id").val()==''){
    	title+='「工作性質2」為必填欄位! \n';    
    }
    if($("select#naturework3Id").val()==''){
    	title+='「工作性質3」為必填欄位! \n';    
    }
    */
    if($("select#relation").val()==''){
    	 title+='「就讀科系相關性」為必填欄位! \n';    	
    } 
 	
 <ww:if test="member.graduate == false">
    if($("#name").val()==''){
    	title+='「服務公司」為必填欄位! \n';
    }
    if($("select#salary").val()==''){
    	 title+='「年收入」為必填欄位! \n';    	
    }
    if($("#jobTitle").val()==''){
    	 title+='「工作職稱」為必填欄位! \n';    	
    }
    if($("#beginDate").val()==''){
    	 title+='「到職時間」為必填欄位! \n';    	
    }
    if($("select#status").val()==''){
    	 title+='「任職狀態」為必填欄位! \n';    	
    }
    if($("select#manage").val()==''){
    	 title+='「具有管理責任」為必填欄位! \n';    	
    }    
 </ww:if>
 
    if($("select#manage").val()==66 && $('#managePeople').val()==''){
     	title+='請輸入「管理人數」\n';    	     	
    }
 
 if(title.length==0){
 	return true;
 }else{
 	alert(title);
 	return false;
 } 
}

$("#selectIndustry").click(function() {  
	window.open("selectIndustry.do");
});


//產業類別工作性質
document.all.worktype.innerHTML='${myJobs.industry.name}';
document.all.worktype1.innerHTML='${myJobs.naturework1.valueTw}';
document.all.worktypeOthers.innerHTML='${myJobs.natureworkOthers}';
</script>




 