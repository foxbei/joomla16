/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'diagonal', dropdownSelector: 'div.dropdown' }).dropdownMenu("matchUlHeight");

	/* set hover color */
	var submenuEnter = '#31302F';
	var submenuLeave = '#41403F';
	var submenu2Enter = '#303030';
	var submenu2Leave = '#393837';

	/* Morph: main menu - level2 (bg) */
	var menuEnter = { 'background-color': submenuEnter };
	var menuLeave = { 'background-color': submenuLeave };

	$('#menu a.level2, #menu a.level3').morph(menuEnter, menuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 500 });

	/* Morph: mod-fading sub menu - level1 (bg) */
	var submenuEnter = { 'background-color': submenuEnter };
	var submenuLeave = { 'background-color': submenuLeave };

	$('div.mod-sidebar ul.menu a.level1, div.mod-sidebar ul.menu span.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 300 });

	/* Morph: mod-fading sub menu - level2 (bg) */
	var submenuEnter = { 'background-color': submenu2Enter };
	var submenuLeave = { 'background-color': submenu2Leave };

	$('div.mod-sidebar ul.menu a.level2').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 300 });

	/* Smoothscroll */
	$('a[href="#page"]').smoothScroller({ duration: 500 });

	/* Match height of div tags */
	$('div.headerbox div.deepest').matchHeight(20);
	$('div.topbox div.deepest').matchHeight(20);
	$('div.bottombox div.deepest').matchHeight(20);
	$('div.maintopbox div.deepest').matchHeight(20);
	$('div.mainbottombox div.deepest').matchHeight(20);
	$('div.contenttopbox div.deepest').matchHeight(20);
	$('div.contentbottombox div.deepest').matchHeight(20);

});