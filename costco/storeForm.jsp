<%@ include file="/common/taglibs.jsp"%>

<ww:form name="storeForm" action="saveStore" method="POST">
  <ww:hidden name="store.id" value="${store.id}"/>
  <table border="0" cellspacing="1" class="cContentTable">
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="store.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="store.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="store.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
    <tr><td class="cInputCaption"><fmt:message key="store.name"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="store.name" value="%{store.name}" maxlength="30" cssClass="cInputTextFieldShort" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('store.name')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.address"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.address" value="%{store.address}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.contact"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.contact" value="%{store.contact}" maxlength="30" cssClass="cInputTextFieldShort" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.title"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.title" value="%{store.title}" maxlength="30" cssClass="cInputTextFieldShort" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.phone"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.phone" value="%{store.phone}" maxlength="30" cssClass="cInputTextFieldShort" />
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="store.no"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.no" value="%{store.no}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.deptNo"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.deptNo" value="%{store.deptNo}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.product1"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.product1" value="%{store.product1}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.product2"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.product2" value="%{store.product2}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.product3"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.product3" value="%{store.product3}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.product4"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.product4" value="%{store.product4}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="store.product5"/></td>
        <td class="cInputColumn">
            <ww:textfield name="store.product5" value="%{store.product5}"  cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="store.lastModifiedDate" /></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="store.createdDate" /></span>
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="store.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="store.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>
