<%@ include file="/common/taglibs.jsp"%>

<ww:form name="vendorForm" action="saveVendor" method="POST">
  <ww:hidden name="vendor.id" value="${vendor.id}"/>
  <table border="0" cellspacing="1" class="cContentTable">
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="vendor.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="vendor.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="vendor.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="vendor.no"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.no" value="%{vendor.no}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.deptNo"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.deptNo" value="%{vendor.deptNo}"  cssClass="cInputTextField" />
        </td>
    </tr>
    
     <tr><td class="cInputCaption"><fmt:message key="vendor.name"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.name" value="%{vendor.name}" maxlength="50" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('vendor.name')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.product1"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.product1" value="%{vendor.product1}"  cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.product2"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.product2" value="%{vendor.product2}"  cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.product3"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.product3" value="%{vendor.product3}"  cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.product4"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.product4" value="%{vendor.product4}"  cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.product5"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.product5" value="%{vendor.product5}"  cssClass="cInputTextFieldLong" />
        </td>
    </tr>
    
   

    <tr><td class="cInputCaption"><fmt:message key="vendor.address"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.address" value="%{vendor.address}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.contact"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.contact" value="%{vendor.contact}" maxlength="30" cssClass="cInputTextFieldShort" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.title"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.title" value="%{vendor.title}" maxlength="30" cssClass="cInputTextFieldShort" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="vendor.phone"/></td>
        <td class="cInputColumn">
            <ww:textfield name="vendor.phone" value="%{vendor.phone}" maxlength="30" cssClass="cInputTextFieldShort" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="vendor.lastModifiedDate" /></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="vendor.createdDate" /></span>
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="vendor.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="vendor.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>
