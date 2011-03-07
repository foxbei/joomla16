/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'slide', dropdownSelector: 'div.dropdown' });

	/* set hover color */
	switch (Warp.Settings.color) {
		case 'plainflowers':
			var menuEnter = '#F7F6F5';
			var menuLeave = '#FFFFFF';
			var submenuEnter = '#F4F4F3';
			var submenuLeave = '#F9F9F8';
			break;
		case 'retropaper':
		case 'retrolandscape':
		case 'retrobeige':
			var menuEnter = '#F0EFEF';
			var menuLeave = '#FAFAF6';
			var submenuEnter = '#F1F0EF';
			var submenuLeave = '#FAFAF6';
			break;
		case 'gradientblue':
		case 'gradientbusiness':
		case 'gradientspace':
		case 'gradientribbon':
		case 'gradientred':
			var menuEnter = '#E3E4E5';
			var menuLeave = '#EEEFF0';
			var submenuEnter = '#E3E4E5';
			var submenuLeave = '#EEEFF0';
			break;
		default:
			var menuEnter = '#F5F6F7';
			var menuLeave = '#FFFFFF';
			var submenuEnter = '#F3F4F5';
			var submenuLeave = '#F8F9FA';
	}

	/* Morph: main menu - level2 (bg) */
	var menuEnter = { 'background-color': menuEnter };
	var menuLeave = { 'background-color': menuLeave };

	$('#menu a.level2').morph(menuEnter, menuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 200 });
		
	/* Morph: sub menu - level1 (bg) */
	var submenuEnter = { 'background-color': submenuEnter };
	var submenuLeave = { 'background-color': submenuLeave };

	$('div.mod-line ul.menu span.level1, div.mod-line ul.menu a.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
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