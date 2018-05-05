<%@ include file="/common/taglibs.jsp"%>

<ww:form name="companyForm" action="saveCompany" method="POST">
  <ww:hidden name="company.id" value="${company.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="company.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="company.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
      </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="company.mail"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="company.mail" value="%{company.mail}" maxlength="50" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('company.mail')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="common.password"/></td>
        <td class="cInputColumn">
            <ww:textfield name="company.password" value="%{company.password}" maxlength="20" cssClass="cInputTextField" />
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="company.name"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="company.name" value="%{company.name}" maxlength="50" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('company.name')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="company.address"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="company.address" value="%{company.address}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('company.address')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="company.phone"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="company.phone" value="%{company.phone}" maxlength="20" cssClass="cInputTextFieldShort" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('company.phone')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="company.website"/></td>
        <td class="cInputColumn">
            <ww:textfield name="company.website" value="%{company.website}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="company.contacts"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="company.contacts" value="%{company.contacts}" maxlength="10" cssClass="cInputTextFieldShort" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('company.contacts')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="company.idea"/></td>
        <td class="cInputColumn">
            <ww:textarea name="company.idea" value="%{company.idea}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="company.welfare"/></td>
        <td class="cInputColumn">
            <ww:textarea name="company.welfare" value="%{company.welfare}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="company.service"/></td>
        <td class="cInputColumn">
            <ww:textarea name="company.service" value="%{company.service}" cssClass="cInputTextArea" cols="45" rows="12" />
        </td>
    </tr>

   

    <tr><td class="cInputCaption"><fmt:message key="company.industry"/></td>
        <td class="cInputColumn">
           <ww:select name="industryClassId"  onchange="retrieveSecondOptions(this, 'industryId', 'findIndustrys.do', 'industryClassId');"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="industryClassList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            />
            
            <ww:select name="company.industryId"  id="industryId"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="industryList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            />
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="company.allow"/></td>
        <td class="cInputColumn">
            <ww:checkbox name="company.allow" cssClass="cCheckboxField" />
        </td>
    </tr>
    
     <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="company.lastModifiedDate" /></span>
        </td>
    </tr>


    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="company.createdDate" /></span>
        </td>
    </tr>


    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
        <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="company.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
      </td>
    </tr>
  </table>
</ww:form>


<script>
 <%
 String msg=request.getParameter("msg");
  if (msg != null && msg.equals("1")) {
 %>
   alert("<fmt:message key='common.save'/><fmt:message key='common.successful'/>");
 <%
 }
 %>
</script> 