
/****************************************************/
/*           OpenPath PageBuilder                   */
/*       WRITTEN BY Chih-Shyang Chang, Richard      */
/*           2000/12/13                             */
/*      ???????????????              */
/****************************************************/
// Purpose: Implement list control

function moveOne(xfrom, xto)
{
	if (xfrom == null || xto == null) return;

	if (xfrom.selectedIndex < 0) return;
	var opt;
	var newOpt;
	var idx = 0;
	var next = true;

	while (next) {
		opt = xfrom.options[idx];
		if (opt.selected)
		{
			newOpt = document.createElement("OPTION");
			newOpt.text = opt.text;
			newOpt.value = opt.value;
			xto.add(newOpt);
			xfrom.options.remove(idx);
		}
		else
		{
			idx++;
		}

		if ((xfrom.options.length-1) < idx)
			next = false;
		else
			next = true;
	}
}


function moveAll(xfrom, xto)
{
	if (xfrom == null || xto == null) return;

	var newOpt;
	var opt;
	var txt;
	var val;
	var idx = 0;
	var next = (xfrom.options.length > 0);

	while (next) {
		opt = xfrom.options[idx];
		newOpt = document.createElement("OPTION");
		newOpt.text = opt.text;
		newOpt.value = opt.value;
		xto.add(newOpt);
		xfrom.options.remove(idx);
		idx = 0;
		next = (xfrom.options.length > 0);
	}
}

function removeSelected(sel)
{
  	if (sel == null) return;

	var opt;
	var idx = 0;

  	while (idx < sel.options.length) {
    	opt = sel.options[idx];
		if (opt.selected)
		{
			sel.options.remove(idx);
		} else {
			idx++;
		}
  	}
}

function removeAll(sel)
{
  	if (sel == null) return;

  	var next = (sel.options.length > 0);

  	while (next) {
    	sel.options.remove(0);
    	next = (sel.options.length > 0);
  	}
}


function myCopyList(xfrom, xto)
{
  	if (xfrom == null || xto == null) return;

	xto.options.length = 0;
  	var newOpt;
  	var opt;
  	var idx = 0;
 
  	while (idx < xfrom.options.length) {
    	opt = xfrom.options[idx];
    	newOpt = document.createElement("OPTION");
    	newOpt.text = opt.text;
    	newOpt.value = opt.value;
    	xto.add(newOpt);
    	idx++;
  	}
}

function myClearList(sel)
{
	removeAll(sel);
}

function myDeleteOptionFromSelectList(sel, value)
{
  	if (sel == null) return;

	var idx = __OptExists(sel, value);
	
	if (idx == -1)
		return;

	sel.options.remove(idx);
}

function myInsertOptionToSelectList(sel, value, text)
{
  	if (sel == null) return;

	if (__OptExists(sel, value) >= 0)
		return;
		
  	var newOpt = document.createElement("OPTION");
  	newOpt.text = text;
  	newOpt.value = value;
    sel.add(newOpt);
}

function __OptExists(sel, val)
{
  	if (sel == null) return -1;

  	for(var i=0; i < sel.options.length; i++) {
    	var opt = sel.options[i];
    	if (opt.value == val)
    	{
      		return i;
    	}
  	}

  	return -1;
}


function moveUp(sel)
{
	  if (sel == null) return;
	
	  var idx = sel.selectedIndex;
	
	  if (idx <= 0) return;
	
	  var pre = sel.options(idx -1);
	
	  sel.remove(idx -1);
	  sel.add(pre, idx);
	  sel.selectedIndex = idx-1;
}


function moveDown(sel)
{
	  if (sel == null) return;
	
	  var l = sel.options.length;
	  var idx = sel.selectedIndex;
	
	  if (idx < 0 || idx >= (l-1)) return;
	
	  var nxt = sel.options(idx + 1);
	
	  sel.remove(idx + 1);
	  sel.add(nxt, idx);
	  sel.selectedIndex = idx + 1;

}

function myGetOptionTexts(selObj)
{
	  var ary = new Array();
	  if (selObj == null) return ary;
	
	  try {
	    ary = new Array(selObj.options.length);
	    for (var i=0; i < selObj.options.length; i++)
	      ary[i] = selObj.options[i].text;
	    return ary;
	  } catch (e) {
	    return ary;
	  }
}

function myGetOptionValues(selObj)
{
	  var ary = new Array();
	  if (selObj == null) return ary;
	
	  try {
	    ary = new Array(selObj.options.length);
	    for (var i=0; i < selObj.options.length; i++)
	      ary[i] = selObj.options[i].value;
	
	    return ary;
	  } catch (e) {
	    return ary;
	  }
}


function addOne(xfrom, xto)
{
	  	opt = xfrom.value;
			newOpt = document.createElement("OPTION");
			newOpt.text = opt;
			newOpt.value = opt;
			xto.add(newOpt);
			xfrom.value="";
}

function disOne(xfrom)
{
	  	var idx = xfrom.selectedIndex;
	  	xfrom.remove(idx);
}


function removeItem(sel,xto,v)
{
	var opt,newOpt;
	var idx = 0;
  	while (idx < sel.options.length) {
    	opt = sel.options[idx];
		  if (opt.value==v){			  
			  newOpt = document.createElement("OPTION");
			  newOpt.text = opt.text;
			  newOpt.value = opt.value;
			  xto.add(newOpt);
			  //alert(opt.text+"---"+opt.value);
			  sel.options.remove(idx);
		  } 		  
		  idx++;
	}	
}