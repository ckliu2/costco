<%@ include file="/common/taglibs.jsp"%>

<ww:form name="carouselForm" action="saveCarousel" method="POST" enctype="multipart/form-data">
  <ww:hidden name="carousel.id" value="${carousel.id}"/>
  <table border="0" cellspacing="1" class="cContentTable">
    <tr><td class="cContentTitle" colspan="2" >Carousel Form</td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="carousel.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
      </td>
    </tr>
    
    <tr><td class="cInputCaption">type</td>
        <td class="cInputColumn">
            <ww:select name="carousel.typeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="carouselTypes"
               listKey="id"
               listValue="valueTw"
               cssClass="cInputListField"
            />
        </td>
    </tr>
    
    <tr><td class="cInputCaption">seqNo<span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="carousel.seqNo" value="%{carousel.seqNo}" cssClass="cInputTextFieldTiny" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('carousel.seqNo')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption">name</td>
        <td class="cInputColumn">
         
            	
            <FCK:editor instanceName="carousel.name">
			         	<jsp:attribute name="value">
				           <c:out value="${carousel.name}" escapeXml="false"/>
				        </jsp:attribute>
				        <jsp:body>
					          <FCK:config SkinPath="skins/office2003/"/>
				        </jsp:body>
			          </FCK:editor> 	
            	
            	
        </td>
    </tr>

    <tr><td class="cInputCaption">content</td>
        <td class="cInputColumn">        	
            <FCK:editor instanceName="carousel.content">
			         	<jsp:attribute name="value">
				           <c:out value="${carousel.content}" escapeXml="false"/>
				        </jsp:attribute>
				        <jsp:body>
					          <FCK:config SkinPath="skins/office2003/"/>
				        </jsp:body>
			          </FCK:editor>  			          	
        </td>
    </tr>

    <tr><td class="cInputCaption">url</td>
        <td class="cInputColumn">
            <ww:textfield name="carousel.url" value="%{carousel.url}"  cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption">photo</td>
        <td class="cInputColumn">
        <ww:if test="carousel.photo != null">
            <input type="checkbox" name="removePhoto" onclick="if (this.checked == true) document.carouselForm.filePhoto.style.display='inline'; else document.carouselForm.filePhoto.style.display='none';" value="<ww:property value="carousel.photo.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="carousel.uploadPhoto.relativeUrl"/>/<ww:property value="carousel.id"/>/<ww:property value="carousel.photo.fileName"/>"><ww:property value="carousel.photo.fileName" /> (<ww:property value="carousel.photo.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="filePhoto" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="carousel.photoId" value="${carousel.photo.id}"/>
            <ww:hidden name="carousel.photoFileName" value="${carousel.photo.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="filePhoto" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>

        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="carousel.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
      </td>
    </tr>
  </table>
</ww:form>
