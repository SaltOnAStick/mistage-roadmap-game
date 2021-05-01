var NAV_ITEM_ELEMENT = 'a';

function navHandler(e) {
  e.preventDefault();

  var el = e.srcElement;
  if (el.tagName.toLowerCase() !== NAV_ITEM_ELEMENT)
    return;

  navToggle(el, el.parentNode);
}

const MAP_ITEM_ELEMENT = 'a';

function roadmapNavHandler(e, navId) {
  e.preventDefault();

  var el = e.srcElement;
  if (el.tagName.toLowerCase() !== MAP_ITEM_ELEMENT)
    el = el.parentNode;

  if (el.tagName.toLowerCase() !== MAP_ITEM_ELEMENT)
    return;

  navToggle (el, document.getElementById(navId));
}

function navToggle(el, nav) {
  var items = nav.getElementsByTagName(NAV_ITEM_ELEMENT);

  var anchor = getAnchor(el);
  var currentItem = null;
  for (var item of items) {
    if (getAnchor(item) === anchor) {
      currentItem = item;
      continue;
    }
    item.className = "";
  }

  if (currentItem) 
    currentItem.className = "active";

  loadPage(anchor);
}

function getAnchor(el) {
  var href = el.href.baseVal ? el.href.baseVal : el.href;
  return href.split('#')[1];
} 

function loadPage(name) {
  var area = document.getElementById("mainArea");
    replaceElement(area, '/pages/'+name+'.html', false, 
    function(success, el) {
      if (success)
        return;

      area.innerHTML = '<div class="error">Error loading page: <b>'+name+'</b></span>';
    }
  );
}

