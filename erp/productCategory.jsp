<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="productTypes" value="%{getProductTypeList()}"/>  
<ww:set name="productType" value="%{getProductTypeById()}"/>  
<ww:set name="products" value="%{getProductClassByCategory()}"/>  	
		
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head><link rel="stylesheet" href="${ctx}/css/search.css" />
<link type="text/css" href="${ctx}/css/main.css" rel="stylesheet" />
<script src="${ctx}/scripts/jquery-1.7.2.js"></script> 
<title>${productType.name} - Sanyuh Technology </title>
</head>
<body>
<div class="topBar">
<div class="logo"><a href="index.do"><img src="images/logo.png" alt="Cypress Technology Logo" /></a>
</div>

<div class="topBarContent">
  <div class="search">
<div class="sc_store_searchBox ">    
    <form method="post" action="productCategory.do?productType.id=${productType.id}">
        <div class="sc_store_searchBoxLeft">
            <input type="text" id="keyword" name="keyword" class="sc_store_searchBoxInput" />
        </div>
        <div class="sc_store_searchBoxRight">
            <button type="button" class="sc_store_searchBoxButton" onClick="mysearch()">
                <div class="sc_store_searchBoxIcon"></div> Search
            </button>
        </div>
    </form>
</div></div>
 </div>

</div>

<div class="menuBar">
	<h1 align="center">${productType.name}</h1>
</div>

<div class="mainContent">
  <div class="categoryHeader">   
     
     </div>
     <div class="categorySubcategoryList">
    <span>Categories</span>        
       <c:forEach var="productype" items="${productTypes}" varStatus="status">    
         <div class="subCategory"><a href="productCategory.do?productType.id=${productype.id}">${productype.name}</a></div>
       </c:forEach>
    </div>  
        
  <div id="productList" class="productListSmall">
  
 <c:forEach var="product" items="${products}" varStatus="status"> 
  
  <div class="productItem">
     <div class="productImage">
     	<p><p>
               <a href="product.do?product.id=${product.id}">               	
                  <img src="/sanyuh/<fmt:message key="product.uploadLogo1.relativeUrl"/>/${product.id}/${product.productPhoto1.fileName}" alt="${product.no}" width="130" height="71"/>
               </a>
     </div>    
     <div class="salesText">
      <h3><a href="product.do?product.id=${product.id}">${product.no} - ${product.name}</a></h3>  
      
      <span id="p${product.id}" style="display:none">
        ${product.overview}
      </span>   
      <span id="msg${product.id}"></span>
      <script>
        var m${product.id}=$('#p${product.id}').text();
        var text${product.id}=m${product.id}.substring(0,300)+'...';
        $('#msg${product.id}').text(text${product.id}); 
	    </script>	    
        
     </div>
  </div>
  
  </c:forEach>
 
</div>

<script>
 function mysearch(){
    var keyword=$('#keyword').val();
    var myurl="productSearch.do?keyword="+keyword;
    window.location.href ="productSearch.do?keyword="+keyword;            	
  }
</script>	

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





</body>

</html>
