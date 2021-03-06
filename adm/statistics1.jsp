<%@ include file="/common/webtag.jsp"%>


<head>
    <title><fmt:message key="common.title"/></title>
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    
    <!--tips-->    
    <script src="${ctx}/scripts/jquery-1.3.2.min.js"></script>
    <script src="${ctx}/scripts/justthetip.js"></script>
    <!--tips-->
    <!--
    <script type="text/javascript" src="${ctx}/scripts/prototype.js"></script> 
   
    <script type="text/javascript" src="${ctx}/scripts/scriptaculous.js"></script>
     -->
    <script type="text/javascript" src="${ctx}/scripts/dependentList.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/ajax.js"></script> 
    <script type="text/javascript" src="${ctx}/scripts/common.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/menu.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/list.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/datetimepicker_css.js"></script>
    
    <link rel="stylesheet" type="text/css" href="${ctx}/css/flexigrid.pack.css"/>   
    <link rel="stylesheet" type="text/css" href="${ctx}/css/dhtmlXTabbar.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/dhtmlXGrid.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/menu.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />  
    <link rel="stylesheet" href="${ctx}/css/justthetip.css"> 
    <link href="<ww:url value="/webwork/jscalendar/calendar-blue.css" />" rel="stylesheet" type="text/css" media="all"/>
</head>

<c:set var="count" value="0" />
<c:set var="complete" value="0" />
<c:set var="fulljob" value="0" />  
<c:set var="parttime" value="0" />
<c:set var="school" value="0" />  
<c:set var="army" value="0" />  
<c:set var="exam" value="0" />  
<c:set var="waiting" value="0" />   
<c:set var="others" value="0" />    

<form name="form1"  method="post" action="statistics1.do">

<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="member.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
        
         <ww:select name="syear" 
                headerKey=""
                headerValue="起始畢業年度..."
                list="graduationYearList"                
                cssClass="cQueryFieldList"
            /> 
            
        <ww:select name="eyear" 
                headerKey=""
                headerValue="結束畢業年度..."
                list="graduationYearList"                
                cssClass="cQueryFieldList"
            />     
      
        
      
        <ww:select name="programId" onchange="form1.submit();"
                headerKey=""
                headerValue="請選擇學制..."
                list="programList"
                listKey="name"
                listValue="value"   
                cssClass="cQueryFieldList"
            /> 


         <ww:select name="departmentId" 
                headerKey=""
                headerValue="請選擇系所..."
                list="departmentList"
                listKey="id"
                listValue="name"   
                cssClass="cQueryFieldList"
            /> 

          
          <input type="submit" value="<fmt:message key="common.search"/>" class="cButton">
          
          
          
        </td>
      </tr>
      <tr>
        <td>
        



<table border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td  rowspan="3"><p align="center"><strong>畢</strong><strong><br>
      業<br>
      年<br>
      度</strong></p></td>
      
    <td  rowspan="3">系所</td>  
      
      
    <td  rowspan="3"><p align="center"><strong>畢</strong><strong><br>
      業<br>
      生<br>
      人<br>
      數</strong></p></td>
    <td  rowspan="3"><p align="center"><strong>完</strong><strong><br>
      成<br>
      資<br>
      料<br>
      調<br>
      查<br>
      人<br>
      數</strong></p></td>
    <td  rowspan="3"><p align="center"><strong>完</strong><strong><br>
      成<br>
      %<br>
      比</strong></p></td>
    <td colspan="7" rowspan="2"><p align="center"><strong>畢業流向</strong><strong> </strong></p></td>
    <td colspan="14"><p align="center"><strong>就業情形</strong><strong> </strong></p></td>
  </tr>
  <tr>
    <td colspan="7"><p align="center"><strong>全 職 工 作</strong><strong> </strong></p></td>
    <td colspan="7"><p align="center"><strong>部 份 工 時</strong><strong> </strong></p></td>
  </tr>
  <tr>
    <td ><p align="center"><strong>全</strong><strong> </strong><br>
            <strong>職</strong><strong> </strong><br>
            <strong>工</strong><strong> </strong><br>
            <strong>作</strong><strong> </strong></p></td>
    <td ><p><strong>部</strong><strong> </strong><br>
            <strong>份</strong><strong> </strong><br>
            <strong>工</strong><strong> </strong><br>
            <strong>時</strong><strong> </strong></p></td>
    <td><p align="center"><strong>升</strong><strong> </strong><br>
            <strong>學</strong><strong> </strong></p></td>
    <td><p align="center"><strong>服</strong><strong> </strong><br>
            <strong>役</strong><strong> </strong></p></td>
    <td><p><strong>準</strong><strong> </strong><br>
            <strong>備</strong><strong> </strong><br>
            <strong>考</strong><strong> </strong><br>
            <strong>試</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>待</strong><strong> </strong><br>
            <strong>業</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>其</strong><strong><br>
      他</strong></p></td>
    <td ><p align="center"><strong>私</strong><strong> </strong><br>
            <strong>人</strong><strong> </strong><br>
            <strong>企</strong><strong> </strong><br>
            <strong>業</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>政</strong><strong> </strong><br>
            <strong>府</strong><strong> </strong><br>
            <strong>部</strong><strong> </strong><br>
            <strong>門</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>學</strong><strong> </strong><br>
            <strong>校</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>非</strong><strong> </strong><br>
            <strong>營</strong><strong> </strong><br>
            <strong>利</strong><strong> </strong><br>
            <strong>機</strong><strong> </strong><br>
            <strong>構</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>創</strong><strong> </strong><br>
            <strong>業</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>自</strong><strong> </strong><br>
            <strong>由</strong><strong> </strong><br>
            <strong>工</strong><strong> </strong><br>
            <strong>作</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>其</strong><strong><br>
      他</strong></p></td>
    <td ><p align="center"><strong>私</strong><strong> </strong><br>
            <strong>人</strong><strong> </strong><br>
            <strong>企</strong><strong> </strong><br>
            <strong>業</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>政</strong><strong> </strong><br>
            <strong>府</strong><strong> </strong><br>
            <strong>部</strong><strong> </strong><br>
            <strong>門</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>學</strong><strong> </strong><br>
            <strong>校</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>非</strong><strong> </strong><br>
            <strong>營</strong><strong> </strong><br>
            <strong>利</strong><strong> </strong><br>
            <strong>機</strong><strong> </strong><br>
            <strong>構</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>創</strong><strong> </strong><br>
            <strong>業</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>自</strong><strong> </strong><br>
            <strong>由</strong><strong> </strong><br>
            <strong>工</strong><strong> </strong><br>
            <strong>作</strong><strong> </strong></p></td>
    <td ><p align="center"><strong>其</strong><strong><br>
      他</strong></p></td>
  </tr>
  
<ww:set name="ls" value="%{getStatisticsList()}"/>  
<c:forEach var="statistics" items="${ls}">  
  
  <tr>
    <td >${statistics.graduationYear}</td>
    
    <td ><font color="blue">${statistics.department.name}</font></td>
    
    
    <td >${statistics.count}</td>
    <td >${statistics.complete}</td>
    <td >${statistics.percentum}</td>
    <td>${statistics.fulljob}</td>
    <td >${statistics.parttime}</td>
    <td>${statistics.school}</td>
    <td>${statistics.army}</td>
    <td>${statistics.exam}</td>
    <td >${statistics.waiting}</td>
    <td >${statistics.others}</td>
    <td >${statistics.fulltimeEnterprise}</td>
    <td >${statistics.fulltimeGovernment}</td>
    <td >${statistics.fulltimeSchool}</td>
    <td >${statistics.fulltimeOrg}</td>
    <td >${statistics.fulltimeVenture}</td>
    <td >${statistics.fulltimeFreelance}</td>
    <td >${statistics.fulltimeOther}</td>
    <td >${statistics.parttimeEnterprise}</td>
    <td >${statistics.parttimeGovernment}</td>
    <td >${statistics.parttimeSchool}</td>
    <td >${statistics.parttimeOrg}</td>
    <td >${statistics.parttimeVenture}</td>
    <td >${statistics.parttimeFreelance}</td>
    <td >${statistics.parttimeOther}</td>
  </tr>
  

  <c:set var="count" value="${count+statistics.count}" />
  <c:set var="complete" value="${complete+statistics.complete}" />
  <c:set var="fulljob" value="${fulljob+statistics.fulljob}" />  
  <c:set var="parttime" value="${parttime+statistics.parttime}" />
  <c:set var="school" value="${school+statistics.school}" />  
  <c:set var="army" value="${army+statistics.army}" />  
  <c:set var="exam" value="${exam+statistics.exam}" />  
  <c:set var="waiting" value="${waiting+statistics.waiting}" />   
  <c:set var="others" value="${others+statistics.others}" />    
  
</c:forEach>  


<!------------------------- 統計 ------------------------->
<tr>
    <td ></td>    
    <td ></td>
    <td ><font color="blue">${count}</font></td>
    <td ><font color="blue">${complete}</font></td>
    <td ><font color="blue"><fmt:formatNumber type="percent" value="${complete/count}" /></font></td>
    <td><font color="blue">${fulljob}</font></td>
    <td ><font color="blue">${parttime}</font></td>
    <td><font color="blue">${school}</font></td>
    <td><font color="blue">${army}</font></td>
    <td><font color="blue">${exam}</font></td>
    <td ><font color="blue">${waiting}</font></td>
    <td ><font color="blue">${others}</font></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
    <td ></td>
</tr>

<!------------------------- 統計 ------------------------->
  
</table>



        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>

        </td>
      </tr>
</table>

</form>




