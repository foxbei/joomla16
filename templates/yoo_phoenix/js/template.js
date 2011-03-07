/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'slide', dropdownSelector: 'div.dropdown'}).dropdownMenu('matchUlHeight');

	/* set hover color */
	var hoverColor;
	switch (Warp.Settings.color) {
		case 'combsblue':
		case 'waveblue':
			hoverColor = '#00a8ff';
			break;
		case 'barblue':
			hoverColor = '#00c0ff';
			break;
		case 'barorange':
		case 'waveyellow':
			hoverColor = '#ff7800';
			break;
		case 'bargreen':
		case 'wavegreen':
			hoverColor = '#83c500';
			break;
		default:
			hoverColor = '#C8001E';
	}

	/* Morph: main menu - level2 (color) */
	var menuEnter = { 'color': hoverColor};
	var menuLeave = { 'color': '#323232'};

	$('div#menu a.level2 span.bg').morph(menuEnter, menuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 500 });

	/* Morph: mod-chrome sub menu - level1 */
	var submenuEnter = { 'color': hoverColor};
	var submenuLeave = { 'color': '#C8C8C8'};

	$('div.mod-chrome-white ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 300 });

	/* Morph: mod-chrome sub menu (color variations) - level1 */
	var submenuEnter = { 'color': hoverColor};
	var submenuLeave = { 'color': '#323232'};

	$('div.mod-chrome-black ul.menu span.bg, div.mod-chrome-blue ul.menu span.bg, div.mod-chrome-green ul.menu span.bg, div.mod-chrome-orange ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 300 });

	/* Morph: mod-line sub menu - level1 */
	var submenuEnter = { 'color': hoverColor, 'background-color': '#F5F5F5', 'padding-left': 5};
	var submenuLeave = { 'color': '#646464', 'background-color': '#ffffff', 'padding-left': 0};

	$('div.mod-line ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 100 },
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