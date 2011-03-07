/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	correctPngBackground('.correct-png', 'crop');
	
	// layout
	fixPngBackground('div#page-body');
	fixPngBackground('div#search');
	fixPngBackground('div#header, div.header-2, div.header-3');
	fixPngBackground('div.wrapper-1, div.wrapper-2, div.wrapper-3');
	fixPngBackground('div.footer-t1, div.footer-t2, div.footer-t3, div.footer-1, div.footer-2, div.shadow-1, div.shadow-2, div.shadow-3');
	fixPngBackground('#footer a.anchor');
	fixPngBackground('div.mainmiddle-wrapper-t1, div.mainmiddle-wrapper-t2, div.mainmiddle-wrapper-t3, div.mainmiddle-wrapper-1, div.mainmiddle-wrapper-2, div.mainmiddle-wrapper-3, div.mainmiddle-wrapper-b1, div.mainmiddle-wrapper-b2, div.mainmiddle-wrapper-b3');
	fixPngBackground('#breadcrumbs a, #breadcrumbs span.separator');
	
	// typography & joomla
	fixPngBackground('div.info, div.alert, div.download, div.tip, span.info, span.alert, span.download, span.tip');
	fixPngBackground('ul.arrow li, ul.checkbox li, ul.check li, ul.star li');
	fixPngBackground('blockquote.quotation, blockquote.quotation p');
	fixPngBackground('ol.disc');
	fixPngBackground('a.readmore, a.readon');
	fixPngBackground('.default-search div.searchbox');

	// menu
	fixPngBackground('#menubar, #menu, #menu li.level1, #menu a.level1, #menu span.level1');
	fixPngBackground('#menu li.active a.level1, #menu li.active span.level1, #menu li.active a.level1 span.bg, #menu li.active span.level1 span.bg ');
	fixPngBackground('#menu .dropdown-t1, #menu .dropdown-t2, #menu .dropdown-1, #menu .dropdown-2, #menu .dropdown-b1, #menu .dropdown-b2, #menu .dropdown-b3');
	fixPngBackground('#menu a.level3 span.bg, #menu span.level3 span.bg');
	fixPngBackground('div.mod-transparent ul.menu li, div.mod-header ul.menu li');
	
	// module
	fixPngBackground('div.module div.badge');
	fixPngBackground('div.module h3.header span.icon');
	fixPngBackground('div.mod-headerbar div.box-1, div.mod-headerbar div.box-2, div.mod-headerbar div.box-3');
	fixPngBackground('div.mod-transparent div.box-t1, div.mod-transparent div.box-t2, div.mod-transparent div.box-t3, div.mod-transparent div.box-1, div.mod-transparent div.box-2, div.mod-transparent div.box-3, div.mod-transparent div.box-b1, div.mod-transparent div.box-b2, div.mod-transparent div.box-b3');
	fixPngBackground('div.mod-dottedborder div.box-1');
	fixPngBackground('div.mod-dottedbox div.box-t1, div.mod-dottedbox div.box-1, div.mod-dottedbox div.box-2, div.mod-dottedbox div.box-b1');
	fixPngBackground('div.mod-stripedbox div.box-1, div.mod-stripedbox div.box-2');
	fixPngBackground('div.mod-glass div.box-t1, div.mod-glass div.box-t2, div.mod-glass div.box-t3, div.mod-glass div.box-1, div.mod-glass div.box-2, div.mod-glass div.box-3, div.mod-glass div.box-b1, div.mod-glass div.box-b2, div.mod-glass div.box-b3');
	fixPngBackground('div.mod-frame div.box-t1, div.mod-frame div.box-t2, div.mod-frame div.box-t3, div.mod-frame div.box-1, div.mod-frame div.box-2, div.mod-frame div.box-3, div.mod-frame div.box-b1, div.mod-frame div.box-b2, div.mod-frame div.box-b3, div.mod-frame div.header-1, div.mod-frame h3.header');
	fixPngBackground('div.mod-polaroid div.box-b1, div.mod-polaroid div.box-b2, div.mod-polaroid div.box-b3, div.mod-polaroid div.badge-tape');
	fixPngBackground('div.mod-postit div.box-b1, div.mod-postit div.box-b2, div.mod-postit div.box-b3');
	fixPngBackground('div.mod-shadowline div.box-1');

	DD_belatedPNG.fix('.png_bg');
	
	// menu
	addHover('#menu li.level1, #menu .hover-box1');
	
	// search
	addHover('.default-search div.searchbox');
	addFocus('.default-search div.searchbox input');

});

/* Add functions on window load */
jQuery(window).bind('load', correctPngInline);