	var http_request = false;
	var currentPos = null;
	function send_request(url) {   //初始化、指定處理函數、發送請求函數
		http_request = false;
		//初始化XMLHttpRequest對象
		if(window.XMLHttpRequest) { //BROWSER＝Mozilla 
			http_request = new XMLHttpRequest();
			if (http_request.overrideMimeType) {//設置MiME類別
				http_request.overrideMimeType('text/xml');
			}
		}
		else if (window.ActiveXObject) { // BROWSER＝IE
			try {
				http_request = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					http_request = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {}
			}
		}
		if (!http_request) { // 請求異常
			window.alert("XMLHttpRequest失敗！.");
			return false;
		}
		http_request.onreadystatechange = processRequest;
		//確定發送請求的方式是否、URL 判斷是否同步執行		
		http_request.open("GET", url, true);
		http_request.send(null);
	}
	
	
	// 處理返回信息涵數
    function processRequest() {    
        if (http_request.readyState == 4) { // SERVER已完全傳送完畢
            if (http_request.status == 200) { // BROWSER已接收完畢            	
                document.getElementById(currentPos).innerHTML = http_request.responseText;  //顯示資料
 			 } else { //傳回不正常
                alert("你所請求的頁面不正常！");
            }
        }
    }
	
	function getMessage(id,page) {		
		document.getElementById(id).parentNode.style.display = "";
		document.getElementById(id).innerHTML = "wait..."
		currentPos = id;
		send_request(page);
	}

