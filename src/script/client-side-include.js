/** 
 * Replace element
 * @function
 * @name replaceElement 
 * Replace current page (element) to new page by @function @name replaceElement in content space by element URL, if it exist.
 */
function replaceElement(el, url, outer, callback) {
   var xmlhttp = new XMLHttpRequest();

   xmlhttp.onreadystatechange = function() {
   	if (xmlhttp.readyState !== 4)
		return;
	
	if (xmlhttp.status < 200 || xmlhttp.status >= 300) {
		callback && callback(false, el);
		return;
	}

	if (outer) {
		el.outerHTML = xmlhttp.responseText;
	} else {
		el.innerHTML = xmlhttp.responseText;
	}
	callback && callback(true, el);
   }

   try { 
   	xmlhttp.open("GET", url, true);
   	xmlhttp.send();
   } catch(err) {
        callback && callback(false, el);
   }
}


/** 
 * Element initialization
 * @function
 * @name initElements 
 * Initialize elements by 'div' tag, when window is loading.
 */
function initElements () {
	var elements = document.getElementsByTagName('div'), i;
	for (i in elements) {
	        const el = elements[i];
		if (el.hasAttribute && el.hasAttribute('data-include')) {
			replaceElement(el, el.getAttribute('data-include'), true);
		}
	}
}

window.onload = initElements;
