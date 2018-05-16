<%@ include file="/common/taglibs.jsp"%>

<ww:form name="billboardForm" action="saveBillboard" method="POST" enctype="multipart/form-data">
  <ww:hidden name="billboard.id" value="${billboard.id}"/>
  <table border="0" cellspacing="1" class="cContentTable">
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="billboard.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="billboard.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="billboard.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
    <tr><td class="cInputCaption"><fmt:message key="billboard.no"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="billboard.no" value="%{billboard.no}" cssClass="cInputTextFieldTiny" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('billboard.no')"/></span>
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="billboard.width"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="billboard.width" value="%{billboard.width}" cssClass="cInputTextFieldTiny" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('billboard.width')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="billboard.height"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="billboard.height" value="%{billboard.height}" cssClass="cInputTextFieldTiny" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('billboard.height')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="billboard.size"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
        	
        	
            <ww:select name="billboard.sizeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="billboardSizes"
               listKey="id"
               listValue="valueTw"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('billboard.sizeId')"/></span>
          
        </td>
    </tr>

    

    <tr><td class="cInputCaption"><fmt:message key="billboard.store"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">        	
            <ww:select name="billboard.storeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="storeList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('billboard.storeId')"/></span>
           
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="billboard.location1"/></td>
        <td class="cInputColumn">
        <ww:if test="billboard.location1 != null">
            <input type="checkbox" name="removeLocation1" onclick="if (this.checked == true) document.billboardForm.fileLocation1.style.display='inline'; else document.billboardForm.fileLocation1.style.display='none';" value="<ww:property value="billboard.location1.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="billboard.uploadLocation1.relativeUrl"/>/<ww:property value="billboard.id"/>/<ww:property value="billboard.location1.fileName"/>"><ww:property value="billboard.location1.fileName" /> (<ww:property value="billboard.location1.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileLocation1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="billboard.location1Id" value="${billboard.location1.id}"/>
            <ww:hidden name="billboard.location1FileName" value="${billboard.location1.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileLocation1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>

        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="billboard.location2"/></td>
        <td class="cInputColumn">
        <ww:if test="billboard.location2 != null">
            <input type="checkbox" name="removeLocation2" onclick="if (this.checked == true) document.billboardForm.fileLocation2.style.display='inline'; else document.billboardForm.fileLocation2.style.display='none';" value="<ww:property value="billboard.location2.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="billboard.uploadLocation2.relativeUrl"/>/<ww:property value="billboard.id"/>/<ww:property value="billboard.location2.fileName"/>"><ww:property value="billboard.location2.fileName" /> (<ww:property value="billboard.location2.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileLocation2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="billboard.location2Id" value="${billboard.location2.id}"/>
            <ww:hidden name="billboard.location2FileName" value="${billboard.location2.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileLocation2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>

        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="billboard.location3"/></td>
        <td class="cInputColumn">
        <ww:if test="billboard.location3 != null">
            <input type="checkbox" name="removeLocation3" onclick="if (this.checked == true) document.billboardForm.fileLocation3.style.display='inline'; else document.billboardForm.fileLocation3.style.display='none';" value="<ww:property value="billboard.location3.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="billboard.uploadLocation3.relativeUrl"/>/<ww:property value="billboard.id"/>/<ww:property value="billboard.location3.fileName"/>"><ww:property value="billboard.location3.fileName" /> (<ww:property value="billboard.location3.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileLocation3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="billboard.location3Id" value="${billboard.location3.id}"/>
            <ww:hidden name="billboard.location3FileName" value="${billboard.location3.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileLocation3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>

        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="billboard.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="billboard.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>
