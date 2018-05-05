<%@ include file="/common/taglibs.jsp"%>
    <ww:form name="unitForm" action="saveUnit" method="POST" onsubmit="onSubmit()">
        <ww:hidden name="unit.id" value="${unit.id}" />
        <table border="0" cellspacing="1" class="cContentTable">
            <tr>
                <td class="cContentTitle" colspan="2">
                    <fmt:message key="unit.form" />
                </td>
            </tr>
            <tr class="cActionButtonLine">
                <td colspan="2">
                    <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>">
                    <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
                    <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
                    <ww:if test="unit.id != null">
                        <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
                    </ww:if>
                </td>
            </tr>
            <tr>
                <td class="cInputCaption">
                    <fmt:message key="unit.name" /><span class="cRequired">*</span></td>
                <td class="cInputColumn">
                    <ww:textfield name="unit.name" value="%{unit.name}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('unit.name')"/></span>
                </td>
            </tr>
            <tr>
                <td class="cInputCaption">
                    <fmt:message key="unit.members" />
                </td>
                <td class="cInputColumn">
                    <tr>
                        <td class="cInputCaption">
                            <fmt:message key="function.authority" />
                        </td>
                        <td class="cInputColumn">
                            <table>
                                <tr>
                                    <th align="center"><span style="font-size:10pt"><fmt:message key="common.available"/><fmt:message key="function.authority"/></style></th>
                <th>&nbsp</th>
                <th align="center"><span style="font-size:10pt"><fmt:message key="common.selected"/><fmt:message key="function.authority"/></style></th>
            </tr><tr>
            <td >
                <ww:select id="allMembers"
                list="memberList"
                listKey="id"
                listValue="name"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                /></td><td>
                <input type="button" value=">>" class="cSelectButton" onclick="moveAll(allMembers, selectedMembersIds);"><br>
                <input type="button" value=">"  class="cSelectButton" onclick="moveOne(allMembers, selectedMembersIds);"><br>
                <input type="button" value="<"  class="cSelectButton" onclick="moveOne(selectedMembersIds, allMembers);"><br>
                <input type="button" value="<<" class="cSelectButton" onclick="moveAll(selectedMembersIds, allMembers);"><br>
            </td><td align="center">
                <ww:select name="membersIds" id="selectedMembersIds"
                list="object_memberList"
                listKey="id"
                listValue="name"
                multiple="true"
                size="8"
                cssClass="cQueryFieldList"
                />
            </td>
            </tr>
            </table>        </td>
    </tr>

        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="unit.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
      </td>
    </tr>
  </table>
</ww:form>

<script>
var frm = eval("document.unitForm");
function onSubmit() {
    mySelectAll(document.unitForm.membersIds);
    return true;
}

</script>
