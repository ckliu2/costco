<%@ include file="/common/taglibs.jsp"%>


<script language="javascript">
function retrievePropertyOptions(obj)
{
    if (obj.selectedIndex >= 0) {
        var selectedOption = obj.options[obj.selectedIndex].value;
        document.form2.propertyKind.value = selectedOption;
    }
    document.form2.submit();
}

</script>

<table border="0" cellspacing="1" >

    <tr>
        <td class="cContentTitle"><fmt:message key="appProperty.form"/></td>
    </tr>
    <tr class="cActionButtonLine">
        <td height="12">
            <span class="cLabel3"><fmt:message key="appProperty.item"/>:</span>
            <ww:select  name="propertyKind" onchange="retrievePropertyOptions(this)"
                headerKey=""
                headerValue="%{getText('common.pleaseSelect')}..."
                list="appPropertyList"
                value="propertyKind"
            />
        <ww:if test="propertyKind != null">
            <input type="button" class="cButton" value="<fmt:message key="common.new"/>&lt;&lt;<ww:property value="propertyKindName"/>&gt;&gt;<fmt:message key="appProperty.propertyValue"/>" onclick="document.form3.submit();">
        </ww:if>
        
        
        

        </td>
    </tr>
    <tr>
        <td>
<display:table name="appPropertyValueList" class="list" cellspacing="1" requestURI="" id="appPropertyValueList" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />
    <display:column property="seqNo"        sortable="true"     titleKey="appProperty.seqNo"/>
    <display:column property="kind"        sortable="true"     titleKey="appProperty.kind" style="text-align:left"/>
    <display:column property="value"        sortable="true"     titleKey="appProperty.valueTw" style="text-align:left"/>
    <display:column titleKey="common.action">
        <a href="editAppProperty.do?appProperty.id=<c:out value="${appPropertyValueList.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
        <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${appPropertyValueList.value}"/><fmt:message key="common.confirmDelete2"/>', 'form1', 'appProperty.id', '${appPropertyValueList.id}')"><fmt:message key="common.delete"/></a>
    </display:column>
</display:table>
<script type="text/javascript">highlightTableRows("appPropertyValueList");</script>
        </td>
    </tr>
    <tr class="cActionButtonLine">
        <td height="12">&nbsp;
        </td>
    </tr>
</table>
<form name="form1" action="saveAppProperty.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="appProperty.id" value="">
    <input type="hidden" name="appProperty.kind" value="<ww:property value="propertyKind"/>">
</form>
<form name="form2" action="appPropertyList.do">
    <input type="hidden" name="propertyKind" value="<ww:property value="propertyKind"/>">
</form>
<form name="form3" action="editAppProperty.do" method="get">
    <input type="hidden" name="propertyKind" value="<ww:property value="propertyKind"/>">
</form>