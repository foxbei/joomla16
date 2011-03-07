/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	correctPngBackground('.correct-png', 'crop');
	
	// layout
	fixPngBackground('#menubar, div.menubar-2, div.menubar-3');
	fixPngBackground('#search, div.default div.yoo-search div.searchbox');
	fixPngBackground('div.wrapper-t1, div.wrapper-t2, div.wrapper-t3, div.wrapper-1, div.wrapper-2, div.wrapper-b1, div.wrapper-b2, div.wrapper-b3');
	fixPngBackground('div.wrapper-inner-1, div.wrapper-inner-2, div.wrapper-inner-b1, div.wrapper-inner-b2, div.wrapper-inner-b3, div.wrapper-inner-b1-last');
	fixPngBackground('#footer a.anchor');
	
	// typography & joomla
	fixPngBackground('div.info, div.alert, div.download, div.tip, span.info, span.alert, span.download, span.tip');
	fixPngBackground('ul.arrow li, ul.checkbox li, ul.check li, ul.star li');
	fixPngBackground('blockquote.quotation, blockquote.quotation p');
	fixPngBackground('ol.disc');
	fixPngBackground('a.readmore, a.readon');
	fixPngBackground('.default-search div.searchbox');

	// menu
	fixPngBackground('#menu a.level1 span.bg, #menu span.level1 span.bg');
	fixPngBackground('#menu .dropdown-t1, #menu .dropdown-t2, #menu .dropdown-t3, #menu .dropdown-1, #menu .dropdown-2, #menu .dropdown-b1, #menu .dropdown-b2, #menu .dropdown-b3');
	fixPngBackground('#menu a.level3 span.bg, #menu span.level3 span.bg');
	fixPngBackground('#menu span.icon');
	fixPngBackground('#date, #toolbar .menu li a, #footer .menu li a');
	fixPngBackground('div.mod-rounded ul.menu a.level1, div.mod-rounded ul.menu span.level1');
	
	// module
	fixPngBackground('div.module div.badge');
	fixPngBackground('div.module h3.header span.icon');
	fixPngBackground('div.mod-rounded div.box-t1, div.mod-rounded div.box-t2, div.mod-rounded div.box-t3, div.mod-rounded div.box-1, div.mod-rounded div.box-2, div.mod-rounded div.box-b1, div.mod-rounded div.box-b2, div.mod-rounded div.box-b3, div.mod-rounded h3.header');
	fixPngBackground('div.mod-line h3.header');
	fixPngBackground('div.mod-headerbar span');
	fixPngBackground('div.mod-polaroid div.box-b1, div.mod-polaroid div.box-b2, div.mod-polaroid div.box-b3, div.mod-polaroid div.badge-tape');
	fixPngBackground('div.mod-postit div.box-b1, div.mod-postit div.box-b2, div.mod-postit div.box-b3');
	fixPngBackground('div.mod-tab h3.header, div.mod-tab span.header-2');

	DD_belatedPNG.fix('.png_bg');
	
	// menu
	addHover('#menu li.level1, #menu .hover-box1');
	
	// search
	addHover('.default-search div.searchbox');
	addFocus('.default-search div.searchbox input');
	
});

/* Add functions on window load */
jQuery(window).bind('load', correctPngInline);