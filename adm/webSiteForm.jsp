<%@ include file="/common/taglibs.jsp"%>

<ww:form name="webSiteForm" action="saveWebSite" method="POST" onsubmit="onSubmit()">
  <ww:hidden name="webSite.id" value="${webSite.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="webSite.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="webSite.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="webSite.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.code"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="webSite.code" value="%{webSite.code}" maxlength="40" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('webSite.code')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.name"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="webSite.name" value="%{webSite.name}" maxlength="40" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('webSite.name')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.title"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="webSite.seoTitleId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="seoTitleList"
               listKey="id"
               listValue="subKind"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('webSite.seoTitleId')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.keyword"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="webSite.seoKeywordId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="seoKeywordList"
               listKey="id"
               listValue="subKind"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('webSite.seoKeywordId')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.description"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="webSite.seoDescId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="seoDescList"
               listKey="id"
               listValue="subKind"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('webSite.seoDescId')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.homeUri"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="webSite.homeUri" value="%{webSite.homeUri}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('webSite.homeUri')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.domain"/></td>
        <td class="cInputColumn">
            <ww:textfield name="webSite.domain" value="%{webSite.domain}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.country"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="webSite.countryId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="countryList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('webSite.countryId')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="webSite.functionCategory"/></td>
        <td class="cInputColumn">
            <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="webSite.functionCategory"/></style></th>
                <th>&nbsp</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="webSite.functionCategory"/></style></th>
            </tr><tr>
            <td>
                <ww:select id="allFunctionCategory"
                list="functionCategoryList"
                listKey="id"
                listValue="caption_"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                /></td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allFunctionCategory, selectedFunctionCategory);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allFunctionCategory, selectedFunctionCategory);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedFunctionCategory, allFunctionCategory);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedFunctionCategory, allFunctionCategory);"><br>
            </td><td align="center">
                <ww:select name="functionCategoryIds" id="selectedFunctionCategory"
                list="object_functionCategoryList"
                listKey="id"
                listValue="caption_"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                />
            </td>
            </tr>
            </table>
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="webSite.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="webSite.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>
<script>
function onSubmit() {
    mySelectAll(document.webSiteForm.functionCategoryIds);

    return true;
}
</script>
