<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="product" value="%{getProductById()}"/>
	
<!DOCTYPE html>
<html>

	<link rel="stylesheet" href="${ctx}/css/colorbox.css" />
	<link rel="stylesheet" href="${ctx}/css/jquery-ui-1.9.1.custom.min.css" />
	<link rel="stylesheet" href="${ctx}/css/search.css" />
	<link type="text/css" href="${ctx}/css/main.css" rel="stylesheet" />
	
	
	<script src="${ctx}/scripts/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/scripts/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="${ctx}/scripts/jquery-ui.js"></script>
  <script type="text/javascript" src="${ctx}/scripts/jquery.colorbox.js"></script>
  <script type="text/javascript" src="${ctx}/scripts/product.js"></script>  
  <!--
  <script type="text/javascript" src="${ctx}/scripts/cloud-zoom.1.0.2.min.js"></script>
  <link type="text/css" href="${ctx}/css/cloud-zoom.css" rel="stylesheet" media="screen" />
  -->
	<title>${product.no} - ${product.description} </title>
	
<style type="text/css">
<!--
li {
  //list-style: none;
  position: relative;
}
li a > img {
  display: none;
  position: absolute;
  top: 10px;
  left: 150px;
}
li a:hover > img {
  display: block;
}

.cloud-zoom { display:block; border: 4px solid #ccc; width:240px; height:320px;}
   .cloud-zoom img { border:0 none;}
-->
</style>


	
<div class="topBar">
   <div class="logo"><a href="index.do"><img src="images/logo.png" alt="sanyuh Technology Logo" /></a>
</div>

<div class="topBarContent"> 
  <div class="search">

<div class="sc_store_searchBox ">    
    <form method="GET" action="">
        <div class="sc_store_searchBoxLeft">
            <input type="text" name="searchTerm" class="sc_store_searchBoxInput" />
        </div>
        <div class="sc_store_searchBoxRight">
            <button type="submit" class="sc_store_searchBoxButton">
                <div class="sc_store_searchBoxIcon"></div> Search
            </button>
        </div>
    </form>
</div></div>
 </div>

</div>

<div><a href="javascript:history.back()"><img src="images/back.png" border="0"/></a></div>	

<div class="menuBar1">
	


<div class="mainContent">

<div class="productDescription"><h1>${product.description}</h1></div>
    <div class="productSku">${product.no}</div>
    <div class="productTagline"></div>

<div class="productLeft">
    <div class="productImageBox">
 <div class="productImageMain">
 	
 	<c:forEach var="productPhoto" items="${product.productPhotos}" varStatus="status"> 
 		
 			<ww:if test = "${status.count == 1}">  	
         <c:set var="style" value="position: relative;" />
      </ww:if>	
      <ww:else>	
         <c:set var="style" value="position: absolute; display: none;" />
      </ww:else>
 		
    <div id="productImageMain${status.count-1}" style="${style}">  	
  	   <a class="productLightbox" href="${ctx}/<fmt:message key="product.uploadProductPhoto1.relativeUrl"/>/${product.id}/${productPhoto.fileName}">
  	     <img src="${ctx}/<fmt:message key="product.uploadProductPhoto1.relativeUrl"/>/${product.id}/${productPhoto.fileName}" />
  	   </a>
  	</div>
  	
 </c:forEach> 
 
  
  </div>

 <div class="productImageRight">
 	
 	<c:forEach var="productPhoto" items="${product.productPhotos}" varStatus="status">    
   <div class="productImageThumbnail"> 
  	  <img id="productImageThumb${status.count-1}" src="${ctx}/<fmt:message key="product.uploadProductPhoto1.relativeUrl"/>/${product.id}/${productPhoto.fileName}" width="100"/>
   </div>
  </c:forEach> 
    

  	
  	
</div>
    
    
   </div>

 
  

<div id="productInfoData">
	
   <div class="scTabTitle">Overview</div><div class="scTabContent"><p class="MsoNormal"><span lang="EN-US">
 	    ${product.overview}
	 </div>
	
	
	
	 <div class="scTabTitle">Specification</div><div class="scTabContent">
 	    ${product.specification}
	 </div>
	 
	 
	 <div class="scTabTitle">Diagrams</div><div class="scTabContent">	 	
 	   <c:forEach var="diagram" items="${product.diagrams}" varStatus="status">   	   
 	   	<span class="productDownloadLink">
        <a href="${ctx}/<fmt:message key="product.uploadDiagram1.relativeUrl"/>/${product.id}/${diagram.fileName}" target="_blank">
          <img src="${ctx}/<fmt:message key="product.uploadDiagram1.relativeUrl"/>/${product.id}/${diagram.fileName}" width="100%"/>
        </a>                    
       </span>  
 	    </c:forEach> 
	 </div>
	 
	 
	 <div class="scTabTitle">Downloads</div><div class="scTabContent">  
 	   <c:forEach var="download" items="${product.downloads}" varStatus="status">  
 	   	<span class="productDownloadLink">
        <a href="${ctx}/<fmt:message key="product.uploadDownload1.relativeUrl"/>/${product.id}/${download.fileName}" target="_blank">
          ${download.fileName}</a>                    
       </span>  
 	    </c:forEach>   	    
	 </div>

	

          
          
</div>


    <div id="productInfoJs">     
        <ul></ul>
    </div>


 
 

</div>


  <div class="productRight">
    <div class="productRightBar"> 
    	<%--
     <c:forEach var="logo" items="${product.logos}" varStatus="status">   
    	<div class="productLogo"><img src="${ctx}/<fmt:message key="product.uploadLogo1.relativeUrl"/>/${product.id}/${logo.fileName}" width="100" height="60"/></div>
     </c:forEach> 		
    	--%>
       
    </div>

  </div>
  
</div>



<div class="footer">

<div class="footerLeft">
 <img src="images/logo.png" alt="Cypress Technology Logo" /><br />
 Copyright Ac 2017 Sanyuh Technology Pty.Ltd. All rights reserved.<br />
 Add : PO BOX 4326 Eight Mile Plains QLD 4113 Australia
</div>
<div class="footerRight">
 0401916587 (Jeffrey Yeh) / 0432280779 (Cindy Jan)
</div>

</div>



<script>
	
function showImage(u){
	window.open(u);
}

</script>	


</body>
</html>
