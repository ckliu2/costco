<%@ include file="/common/taglibs.jsp"%>

<ww:form name="miscCodeForm" action="saveMiscCode" method="POST">
  <ww:if test="miscCode.id != null">
    <input type="hidden" name="action" value="update"/>
  </ww:if>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="miscCode.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="miscCode.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="miscCode.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
    <tr><td class="cInputCaption"><fmt:message key="common.id"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="miscCode.id" value="%{miscCode.id}" maxlength="10" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('miscCode.id')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="miscCode.codeName"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="miscCode.codeName" value="%{miscCode.codeName}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('miscCode.codeName')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="miscCode.keyName"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="miscCode.keyName" value="%{miscCode.keyName}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('miscCode.keyName')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="miscCode.valueCh"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="miscCode.valueCh" value="%{miscCode.valueCh}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('miscCode.valueCh')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="miscCode.valueEn"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="miscCode.valueEn" value="%{miscCode.valueEn}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('miscCode.valueEn')"/></span>
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="miscCode.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="miscCode.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>
