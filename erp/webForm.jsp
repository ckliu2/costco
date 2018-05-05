<%@ include file="/common/taglibs.jsp"%>

<ww:form name="webForm" action="saveWeb" method="POST">
  <ww:hidden name="web.id" value="${web.id}"/>
  <table border="0" cellspacing="1" class="cContentTable">
    <tr><td class="cContentTitle" colspan="2" >web content</td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
         <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">
      </td>
    </tr>
    <tr><td class="cInputCaption">Home</td>
        <td class="cInputColumn">
        	
            
            	
            <FCK:editor instanceName="web.home">
			         	<jsp:attribute name="value">
				           <c:out value="${web.home}" escapeXml="false"/>
				        </jsp:attribute>
				        <jsp:body>
					          <FCK:config SkinPath="skins/office2003/"/>
				        </jsp:body>
			          </FCK:editor> 	
			          	
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
         <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">
      </td>
    </tr>
  </table>
</ww:form>
