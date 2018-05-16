<%@ include file="/common/taglibs.jsp"%>

<ww:form name="rentForm" action="saveRent" method="POST" enctype="multipart/form-data">
  <ww:hidden name="rent.id" value="${rent.id}"/>
  <table border="0" cellspacing="1" class="cContentTable">
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="rent.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="rent.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="rent.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="rent.isUpToDate"/></td>
        <td class="cInputColumn">
            <ww:checkbox name="rent.isUpToDate" cssClass="cCheckboxField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="rent.year"/></td>
        <td class="cInputColumn">
            <ww:select name="rent.year" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="yearList"
               cssClass="cInputListField"
            />
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="rent.billboard"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="rent.billboardId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="billboardList"
               listKey="id"
               listValue="store.name+'/'+no+'/'+size.valueTw"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('rent.billboardId')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="rent.vendor"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="rent.vendorId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="vendorList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('rent.vendorId')"/></span>
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="rent.photo"/></td>
        <td class="cInputColumn">
        <ww:if test="rent.photo != null">
            <input type="checkbox" name="removePhoto" onclick="if (this.checked == true) document.rentForm.filePhoto.style.display='inline'; else document.rentForm.filePhoto.style.display='none';" value="<ww:property value="rent.photo.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="rent.uploadPhoto.relativeUrl"/>/<ww:property value="rent.id"/>/<ww:property value="rent.photo.fileName"/>"><ww:property value="rent.photo.fileName" /> (<ww:property value="rent.photo.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="filePhoto" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="rent.photoId" value="${rent.photo.id}"/>
            <ww:hidden name="rent.photoFileName" value="${rent.photo.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="filePhoto" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>

        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="rent.cover"/></td>
        <td class="cInputColumn">
        <ww:if test="rent.cover != null">
            <input type="checkbox" name="removeCover" onclick="if (this.checked == true) document.rentForm.fileCover.style.display='inline'; else document.rentForm.fileCover.style.display='none';" value="<ww:property value="rent.cover.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="rent.uploadCover.relativeUrl"/>/<ww:property value="rent.id"/>/<ww:property value="rent.cover.fileName"/>"><ww:property value="rent.cover.fileName" /> (<ww:property value="rent.cover.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileCover" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="rent.coverId" value="${rent.cover.id}"/>
            <ww:hidden name="rent.coverFileName" value="${rent.cover.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileCover" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>

        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="rent.lastModifiedDate" /></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="rent.createdDate" /></span>
        </td>
    </tr>


    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="rent.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="rent.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>
