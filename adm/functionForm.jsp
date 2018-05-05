<%@ include file="/common/taglibs.jsp"%>

<ww:form name="functionForm" action="saveFunction" method="POST" onsubmit="onSubmit()">
  <ww:hidden name="function.id" value="${function.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="function.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="function.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="function.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>            </ww:if>
        </ww:else>      </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.seqNo"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="function.seqNo" value="%{function.seqNo}" cssClass="cInputTextFieldTiny" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('function.seqNo')"/></span>        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.funKey"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="function.funKey" value="%{function.funKey}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('function.funKey')"/></span>        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.funNameCh"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="function.funNameCh" value="%{function.funNameCh}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('function.funNameCh')"/></span>        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.funNameEn"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="function.funNameEn" value="%{function.funNameEn}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('function.funNameEn')"/></span>        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.funUrl"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield id="function_funUrl" name="function.funUrl" maxlength="100" value="%{function.funUrl}" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('function.funUrl')"/></span>        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.descCh"/></td>
        <td class="cInputColumn">
          <ww:textarea name="function.descCh" value="%{function.descCh}" cssClass="cInputTextArea" cols="60" rows="6" />        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.descEn"/></td>
        <td class="cInputColumn">
            <ww:textarea name="function.descEn" value="%{function.descEn}" cssClass="cInputTextArea" cols="60" rows="6" />        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.editBegin"/></td>
        <td class="cInputColumn">
            <ww:datepicker cssClass="cInputTextFieldShort" name="editBegin" id="editBegin" value="%{editBegin}" language="zh" format="%Y/%m/%d"/>        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.editEnd"/></td>
        <td class="cInputColumn">
            <ww:datepicker cssClass="cInputTextFieldShort" name="editEnd" id="editEnd" value="%{editEnd}" language="zh" format="%Y/%m/%d"/>        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.disabled"/></td>
        <td class="cInputColumn">
            <ww:checkbox name="function.disabled" cssClass="cCheckboxField" />        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.category"/></td>
        <td class="cInputColumn">
            <ww:select name="function.categoryId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="categoryList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="function.authority"/></td>
        <td class="cInputColumn">
            <table>
            <tr>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="function.authority"/></style></th>
                <th>&nbsp</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="function.authority"/></style></th>
            </tr><tr>
            <td >
                <ww:select id="allGroup"
                list="groupList"
                listKey="id"
                listValue="caption_"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                /></td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allGroup, selectedGroup);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allGroup, selectedGroup);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedGroup, allGroup);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedGroup, allGroup);"><br>
            </td><td align="center">
                <ww:select name="groupIds" id="selectedGroup"
                list="object_groupList"
                listKey="id"
                listValue="caption_"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                />
            </td>
            </tr>
            </table>        </td>
    </tr>
    
    
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="function.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="function.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>            </ww:if>
        </ww:else>      </td>
    </tr>
  </table>
</ww:form>
<script>
var frm = eval("document.functionForm");
function onSubmit() {
    mySelectAll(document.functionForm.groupIds);

    return true;
}

</script>
