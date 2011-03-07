/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	correctPngBackground('.correct-png', 'crop');
	
	// layout
	fixPngBackground('div#search');
	fixPngBackground('div.mainmiddle-wrapper-tl, div.mainmiddle-wrapper-tr, div.mainmiddle-wrapper-bl, div.mainmiddle-wrapper-br');
	
	// typography & joomla
	fixPngBackground('div.info, div.alert, div.download, div.tip, span.info, span.alert, span.download, span.tip');
	fixPngBackground('ul.arrow li, ul.checkbox li, ul.check li, ul.star li');
	fixPngBackground('blockquote.quotation, blockquote.quotation p');
	fixPngBackground('ol.disc');
	fixPngBackground('a.readmore, a.readon');
	fixPngBackground('.default-search div.searchbox');

	// menu
	fixPngBackground('#menu a.level3 span.bg, #menu span.level3 span.bg');
	fixPngBackground('#menu span.icon');
	
	// module
	fixPngBackground('div.module div.badge');
	fixPngBackground('div.module h3.header span.icon');
	fixPngBackground('div.mod-headerbar div.box-1, div.mod-headerbar div.box-2, div.mod-headerbar div.box-3');
	fixPngBackground('div.mod-rounded div.box-t1, div.mod-rounded div.box-t2, div.mod-rounded div.box-b1, div.mod-rounded div.box-b2');
	fixPngBackground('div.mod-rounded-header div.header-1, div.mod-rounded-header div.header-2, div.mod-rounded-header div.header-3');
	fixPngBackground('div.mod-dashed div.box-t1, div.mod-dashed div.box-t2, div.mod-dashed div.box-b1, div.mod-dashed div.box-b2');
	fixPngBackground('div.mod-tab h3.header, div.mod-tab span.header-2');
	fixPngBackground('div.mod-polaroid div.box-b1, div.mod-polaroid div.box-b2, div.mod-polaroid div.box-b3, div.mod-polaroid div.badge-tape');
	fixPngBackground('div.mod-postit div.box-b1, div.mod-postit div.box-b2, div.mod-postit div.box-b3');
	fixPngBackground('div.mod-line h3.header');

	fixPngBackground('#page div.yoo-search div.resultbox');

	DD_belatedPNG.fix('.png_bg');
	
	// menu
	addHover('#menu li.level1, #menu .hover-box1');
	
	// search
	addHover('.default-search div.searchbox');
	addFocus('.default-search div.searchbox input');

	// yooaccordion
	addHover('#mainmiddle div.whitespace div.yoo-accordion dt');

});

/* Add functions on window load */
jQuery(window).bind('load', correctPngInline);