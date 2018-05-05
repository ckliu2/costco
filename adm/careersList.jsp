<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="careers.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editCareers.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editCareers.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>
        </ww:else>
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="careersList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />    
    <display:column titleKey="company.name" sortable="true">    
      ${row.company.name}
    </display:column>
    <display:column property="name" sortable="true" titleKey="careers.name" style="text-align:left" />
    <display:column property="jobStatus" sortable="true" titleKey="careers.jobStatus" style="text-align:left" />
    <display:column property="candidatesWay" sortable="true" titleKey="careers.candidates" style="text-align:left" />
    <display:column property="address" sortable="true" titleKey="careers.address" style="text-align:left" />
    <display:column property="timeover" sortable="true" titleKey="careers.timeover" style="text-align:left" decorator="com.base.web.displaytag.YesNoDecorator"/>
    <display:column property="allow" sortable="true" titleKey="careers.allow" style="text-align:left" decorator="com.base.web.displaytag.YesNoDecorator"/>    
    <ww:set name="careersAllow" value="%{getText('careers.allow')}"/>
    <display:column title="${careersAllow} <input type='checkbox' name='selectall' onClick='javascript:selectAll();'/>" >
        <ww:checkbox name="${row.id}" id="Ids_${count}"  cssClass="cCheckboxField" value="${row.allow}" onclick="allow('${count}','${row.id}')" /> 
    </display:column>       
    <display:column property="lastModifiedDate" sortable="true" titleKey="common.lastModifiedDate" style="text-align:left" />
    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editCareers.do?careers.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.company.name}/${row.name}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'careers.id', '${row.id}')"><fmt:message key="common.delete"/></a>
        </ww:if>
        <ww:else>
           <a href="editCareers.do?careers.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
        </ww:else>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
        <ww:if test="recordEditable == true">
            <button onclick="location.href='editCareers.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
        </ww:if>
        <ww:else>
            <button onclick="location.href='editCareers.do'" DISABLED class="cButton"><fmt:message key="common.new"/></button><span class="cLabel2">(<fmt:message key="common.function.openPeriodExceed"/> )</span>
        </ww:else>
        </td>
      </tr>
</table>
<form name="form1" action="saveCareers.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="careers.id" value="">
    <select name="selectedCareersIds" multiple="true" style="display:none"></select>
</form>


<script>
  var idx="";
  
  function allow(count,id){  	  
  	  var s = eval('document.all.Ids_'+count) ;   
  	  //alert(id+'---s='+s.checked+'---idx='+idx);
  	  sendRequest("careersAllow.do?careers.id="+id+"&careers.allow="+s.checked);  	 
  }
  
  function selectAll(){
  idx="";	
	var c=${count};
  var result; 
  var tall = eval('document.all.selectall') ;   
     if(tall.checked==true){
  	   result=true;
     }else{
  	   result=false;
     }	   
	for(j=0;j<c;j++){	
		var s = eval('document.all.Ids_'+j) ; 		
		if(s.disabled==false){
		   s.checked=result;
		   idx+=s.name+',';
		   //alert("s.name="+s.name);
		   //s.onclick();		  
   	}
	}
	sendRequest("careersAllowAll.do?idx="+idx+"&careers.allow="+tall.checked);
	//alert(idx);	  
	alert("<fmt:message key='common.save'/><fmt:message key='common.successful'/>");
}	 
</script>