<%@ include file="/common/taglibs.jsp"%>

<script src="${ctx}/scripts/jquery-1.9.1.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />  
<link rel="shortcut icon" href="${ctx}/images/favicon.ico" />
    
<form name="form1">

<table width="50%" border="1" align="center"  class="cContentTable2">
  <tr>
    <td nowrap="nowrap"><div align="center"><strong>類別</strong></div></td>
    <td nowrap="nowrap"><div align="center"><strong>工作性質</strong></div></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">一、音樂及表演藝術 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="339"/> 音樂、舞蹈、戲劇、影視等表演、創作、導演、教學與訓練 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="340"/> 表演藝術設計(舞台、燈光、音響、道具、服裝、造型等) <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="341"/> 表演藝術行銷與管理 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="342"/> 藝術治療 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="343"/> 其它 <input type="text" id="others343" name="others" onkeyup="workOthers();" disabled onblur="bye();"/> 
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">二、視覺藝術 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="344"/>  藝術創作 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="345"/>  策展 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="346"/>  畫廊等藝術行銷與管理 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="347"/>  藝術品修復 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="348"/>  藝術治療 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="349"/> 其它 <input type="text" id="others349" name="others" onkeyup="workOthers();" disabled onblur="bye();"/> 
   </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">三、文化資產應用及展演設施 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="350"/>  文化資產場域經營管理 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="351"/>  展演場域(劇院、音樂廳、博物館等)行政 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="352"/>  展演場域(劇院、音樂廳、博物館等)技術 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="353"/>  其它 <input type="text" id="others353" name="others" onkeyup="workOthers();" disabled onblur="bye();"/> 
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">四、電影及動畫 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="354"/>導演 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="355"/>製片 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="356"/>編劇 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="357"/>技術類(攝影、錄音、剪輯、美術、特效等)<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="358"/>其它 <input type="text" id="others358" name="others" onkeyup="workOthers();" disabled onblur="bye();"/> 
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">五、教育學術及文化相關機構 </td>
    <td nowrap="nowrap" class="cInputCaption1">     
      <input type="radio" onClick="javascript:work();"  name="workType" value="359"/>各級學校教師 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="360"/>安親、才藝教師 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="361"/>研究人員 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="362"/>行政人員(含學校、公部門及基金會等)<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="363"/>其它 <input type="text" id="others363" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">六、數位內容 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="364"/>程式設計(多媒體、網路等)<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="365"/>數位媒體設計(動態網頁、電腦繪圖等) <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="366"/>其它 <input type="text" id="others366" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">七、流行音樂及文化內容 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="367"/>創作 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="368"/>展演 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="369"/>時尚設計(服裝、造型、彩妝等)<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="370"/>出版與發行 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="371"/>經紀 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="372"/>其它 <input type="text" id="others372" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">八、廣播電視 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="373"/>節目製作 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="374"/>主持 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="375"/>導播 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="376"/>配音 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="377"/>記者 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="378"/>技術類(攝影、錄音、剪輯等)<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="379"/>其它 <input type="text" id="others379" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">九、建築設計 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="380"/>建築設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="381"/>室內設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="382"/>其它 <input type="text" id="others382" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">十、出版及發行 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="383"/>文字記者 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="384"/>企劃、編輯 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="385"/>行銷 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="386"/>其它 <input type="text" id="others386" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">十一、創意生活 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="387"/>飲食文化 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="388"/>民宿經營 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="389"/>活動設計(自然生態、生活教育等)<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="390"/>非實體店鋪經營 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="391"/>其它 <input type="text" id="others391" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">十二、設計品牌時尚 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="392"/>品牌設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="393"/>品牌製造 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="394"/>品牌行銷 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="395"/>其它 <input type="text" id="others395" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  
  
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">十三、產品設計 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="400"/>外觀設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="401"/>人機介面設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="402"/>原型與模型製作 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="403"/>其它 <input type="text" id="others403" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
  
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">十四、視覺傳達設計 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="396"/>商業包裝設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="397"/>平面視覺設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="398"/>品牌形象設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="399"/>其它 <input type="text" id="others399" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  
 
  
    <td nowrap="nowrap" class="cInputCaption2">十五、廣告 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="404"/>廣告設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="405"/>宣傳物設計製作 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="406"/>廣告行銷 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="407"/>其它 <input type="text" id="others407" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">十六、工藝 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="408"/>工藝創作、設計 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="409"/>工藝品生產 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="410"/>工藝品展售 <br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="411"/>其它 <input type="text" id="others411" name="others" onkeyup="workOthers();" disabled onblur="bye();"/>
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">十七、其它 </td>
    <td nowrap="nowrap" class="cInputCaption1">
      <input type="radio" onClick="javascript:work();"  name="workType" value="412"/>建築營造<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="413"/>製造與加工<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="414"/>科學、技術、工程及數學<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="415"/>物流運輸<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="416"/>天然資源、食品與農業<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="417"/>醫療保健<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="418"/>資訊科技<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="419"/>金融財務<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="420"/>企業經營管理<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="421"/>行銷與銷售<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="422"/>政府公共安全事務<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="423"/>教育與訓練<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="424"/>個人及社會服務<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="425"/>休閒與觀光旅遊<br>
      <input type="radio" onClick="javascript:work();"  name="workType" value="426"/>司法、法律與公共安全<br>
    </td>
  </tr>
</table>

</form>


<script>

  function bye()
  {
  	window.close();
  }

  function workOthers(){
  	var item=$('input[name=workType]:checked').val();
  	var value = $("#others"+item).val();
  	window.opener.document.all.natureworkOthers.value=value;  
  	window.opener.document.all.worktypeOthers.innerHTML=value;  	
  }
  
  function work(){
   var arr = [ "343", "349", "353", "358", "363","366","372","379","382","386","391","395","399","403","407","411","421" ]; 
   var item=$('input[name=workType]:checked').val();
   var u="selectIndustryInfo.do?workType.id="+item;
   var i=$.inArray(item, arr);
   if(i!=-1)
   {
   	  jQuery.each( arr, function( i, val ) {
       $( "#others" + val ).attr('disabled', true);
      });   	
   	  $('#others'+item).attr('disabled', false);   	
   } 
   
   $.ajax({
    url: u,
    type: "GET",
    dataType: "json",
    success: function(data) {       
    	var industryId=data[0].industryId;     
      var industryName=data[0].industryName;
      var workName=data[0].workName;  
      window.opener.document.all.naturework1Id.value=item;
      window.opener.document.all.industry.value=industryId; 
      window.opener.document.all.worktype.innerHTML=industryName;      
      window.opener.document.all.worktype1.innerHTML=workName;                
      if(i==-1){
      	window.close();
      }
     }
   });   
    window.opener.document.all.natureworkOthers.value='';
    window.opener.document.all.worktypeOthers.innerHTML='';  
 }
 
 
 
</script>



 