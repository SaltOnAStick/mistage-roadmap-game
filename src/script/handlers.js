var NAV_ITEM_ELEMENT = 'a';

/**
 * Handler for navigation in Sidebar menu
 * @function
 * @name navHandler 
 * Toggle to new page (element) with content by @function @name navToggle from Sidebar menu
 */
function navHandler(e) {
  e.preventDefault();

  var el = e.srcElement;
  if (el.tagName.toLowerCase() !== NAV_ITEM_ELEMENT)
    return;

  navToggle(el, el.parentNode);
}

const MAP_ITEM_ELEMENT = 'a';

/**
 * Handler for navigation in Roadmap menu
 * @function
 * @name roadmapNavHandler 
 * Toggle to new page (element) with content by @function @name navToggle from Roadmap menu
 */
function roadmapNavHandler(e, navId) {
  e.preventDefault();

  var el = e.srcElement;
  if (el.tagName.toLowerCase() !== MAP_ITEM_ELEMENT)
    el = el.parentNode;

  if (el.tagName.toLowerCase() !== MAP_ITEM_ELEMENT)
    return;

  navToggle (el, document.getElementById(navId));
}

/** 
 * Toggle in navigation menu from Roadmap and Sindebar:
 * @function
 * @name navToggle 
 * Toggle and load (loading by @function @name loadPage and @function @name getAnchor) to new page (element) 
 * with content by @function @name navToggle
 * from Roadmap menu (by @function @name roadmapNavHandler)
 * or 
 * from Sidebar menu (by @function @name navHandler).
 */
 
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

/** 
 * Anchor getter:
 * @function
 * @name getAnchor 
 * Get anchor by @function @name getAnchor of current page (element) with content.
 * @return anchor tag link.
 */
 
function getAnchor(el) {
  var href = el.href.baseVal ? el.href.baseVal : el.href;
  return href.split('#')[1];
} 

/** 
 * Load page from /pages/ directoriy by anchor from @function @name getAnchor:
 * @function
 * @name loadPage 
 * Replace current page to new page by @function @name replaceElement in content space, if it exist.
 * else write about error loading page
 */
 
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

