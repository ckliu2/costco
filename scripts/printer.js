var __footer;
var __header;
var __margin_bottom;
var __margin_top;
var __margin_left;
var __margin_right;
var __path = "HKEY_CURRENT_USER\\Software\\Microsoft\\Internet Explorer\\PageSetup\\";
var __old_header = "&w&b第 &p 頁，共 &P 頁";
var __old_footer = "&u&b&d";

function readPageSetting() 
{
  try {
    var wsh=new ActiveXObject("WScript.Shell");
    __footer        = wsh.RegRead(__path + "footer");
    __header        = wsh.RegRead(__path + "header");
    __margin_bottom = wsh.RegRead(__path + "margin_bottom");
    __margin_top    = wsh.RegRead(__path + "margin_top");
    __margin_left   = wsh.RegRead(__path + "margin_left");
    __margin_right  = wsh.RegRead(__path + "margin_right");
    //alert(__footer + "  " + __header + "   " + __margin_bottom + "   " + __margin_top + "   " +__margin_left + "   " +__margin_right);

    return true;
  } catch(e) {
    if ( e.description.indexOf("伺服程式無法產生物件") != -1 ) {
        alert("請調整IE瀏覽器的安全性\n網際網路選項＼安全性＼自訂層級\n「起始不標示為安全的ActiveX控制項」設定為啟用或提示。"); 
    }
    else {
        //alert("ERR="+e.description); 
    }
  }
  
  return false;
}

function writePageSetting(ft, hd, mb, mt, ml, mr) {
  try {
    var wsh=new ActiveXObject("WScript.Shell");
    wsh.RegWrite(__path + "footer",       ft);
    wsh.RegWrite(__path + "header",       hd);
    if (mb > 0) wsh.RegWrite(__path + "margin_bottom",mb);
    if (mt > 0) wsh.RegWrite(__path + "margin_top",   mt);
    if (ml > 0) wsh.RegWrite(__path + "margin_left",  ml);
    if (mr > 0) wsh.RegWrite(__path + "margin_right", mr);
    return true;
  } catch(e) {
    if ( e.description.indexOf("伺服程式無法產生物件") != -1 ) {
        alert("請調整IE瀏覽器的安全性\n網際網路選項＼安全性＼自訂層級\n「起始不標示為安全的ActiveX控制項」設定為啟用或提示。"); 
    }
    else {
        //alert("ERR="+e.description); 
    }
  }
  return false;
}

function restoreSetting()
{
    return writePageSetting(__footer, __header, __margin_bottom, __margin_top, __margin_left, __margin_right);
}

function saveAndClearSetting()
{
    var b = readPageSetting();
    if (b) {
        b = writePageSetting("", "", 0, 0, 0.5, 0.5);
    }
    
    return b;
}

function fnPrint() {
    try    {
        var ret = saveAndClearSetting();
        window.print();
        if ( ret ) {
            restoreSetting();
        }
    } catch (e) { 
        //alert("err="+e.description); 
    }
}

