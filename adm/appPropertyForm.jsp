<%@ include file="/common/taglibs.jsp"%>
<%@ page import="java.util.*" %>


<ww:form name="appPropertyForm" action="saveAppProperty" method="post" validate="true">
<ww:hidden name="appProperty.id" value="%{appProperty.id}"/>
<ww:hidden name="appProperty.kind" value="%{appProperty.kind}"/>
<ww:hidden name="propertyKind" value="%{propertyKind}"/>
    <table border="0" cellspacing="1" >
      <tr>
          <td class="cContentTitle" colspan="2" ><fmt:message key="appProperty.form"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td colspan="2">
          <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
          <input type="submit" class="cButton" value="<fmt:message key="common.save"/>" >&nbsp;
          <input type="reset" class="cButton" value="<fmt:message key="common.reset"/>" >&nbsp;
          <ww:if test="appProperty.id != null">
            <input type="submit" name="delete" class="cButton" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>">
          </ww:if>
        </td>
      </tr>
      <tr>
        <td class="cSubContentTitle" colspan="2" ><fmt:message key="appProperty.item"/>: <ww:property value="propertyKindName" /></td>
      </tr>
      <tr>
        <td class="cInputCaption"><fmt:message key="appProperty.seqNo"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="appProperty.seqNo" value="%{appProperty.seqNo}" cssClass="cInputTextFieldShort" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('appProperty.seqNo')"/></span>
        </td>
      </tr>
      
      <tr>
        <td class="cInputCaption"><fmt:message key="appProperty.kind"/></td>
        <td class="cInputColumn">
          <ww:textfield name="appProperty.kind" value="%{appProperty.kind}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
      </tr>

      <tr>
        <td class="cInputCaption"><fmt:message key="appProperty.valueTw"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
          <ww:textfield name="appProperty.valueTw" value="%{appProperty.valueTw}" maxlength="350" cssClass="cInputTextFieldLarge" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('appProperty.valueTw')"/></span>
        </td>
      </tr>
      <tr>
        <td class="cInputCaption"><fmt:message key="appProperty.valueUs"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
          <ww:textfield name="appProperty.valueUs" value="%{appProperty.valueUs}" maxlength="350" cssClass="cInputTextFieldLarge" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('appProperty.valueUs')"/></span>
        </td>
      </tr>
      <tr class="cActionButtonLine">
        <td colspan="2">
          <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
          <input type="submit" class="cButton" value="<fmt:message key="common.save"/>" >&nbsp;
          <input type="reset" class="cButton" value="<fmt:message key="common.reset"/>" >&nbsp;
          <ww:if test="appProperty.id != null">
            <input type="submit" name="delete" class="cButton" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>">
          </ww:if>
        </td>
      </tr>
    </table>
</ww:form>
