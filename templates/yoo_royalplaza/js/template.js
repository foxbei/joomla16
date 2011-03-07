/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'slide', dropdownSelector: 'div.dropdown'});

	/* set hover color */
	switch (YtSettings.color) {
		case 'business':
		case 'businessplain':
			var menuEnter = '#E6E7E8';
			var menuLeave = '#ffffff';
			var submenuEnter = '#D7D8D9';
			var submenuLeave = '#ebeced';
			break;
		case 'vintage':
		case 'vintageplain':
			var menuEnter = '#e3ddc3';
			var menuLeave = '#f5f2e1';
			var submenuEnter = '#e3ddc3';
			var submenuLeave = '#f5f2e1';
			break;
		default:
			var menuEnter = '#E6E7E8';
			var menuLeave = '#F5F5F5';
			var submenuEnter = '#D7D8D9';
			var submenuLeave = '#ebeced';
	}


	/* Morph: main menu - level2 (bg) */
	var menuEnter = { 'background-color': menuEnter };
	var menuLeave = { 'background-color': menuLeave };

	$('#menu a.level2').morph(menuEnter, menuLeave,
		{ transition: 'linear', duration: 0 },
		{ transition: 'easeInSine', duration: 100 });

	/* Morph: mod-fading sub menu - level1 (bg) */
	var submenuEnter = { 'background-color': submenuEnter };
	var submenuLeave = { 'background-color': submenuLeave };

	$('div.mod-rounded ul.menu li.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'linear', duration: 100 },
		{ transition: 'easeInSine', duration: 100 });

	/* Smoothscroll */
	$('a[href="#page"]').smoothScroller({ duration: 500 });

	/* Match height of div tags */
	$('div.headerbox div.deepest').matchHeight(20);
	$('div.topbox div.deepest').matchHeight(20);
	$('#bottom div.bottombox div.deepest').matchHeight(20);
	$('#bottom2 div.bottombox div.deepest').matchHeight(20);
	$('div.maintopbox div.deepest').matchHeight(20);
	$('div.mainbottombox div.deepest').matchHeight(20);
	$('div.contenttopbox div.deepest').matchHeight(20);
	$('div.contentbottombox div.deepest').matchHeight(20);
	$('#left, #right, #contentleft, #contentright').matchHeight(20);
	
});