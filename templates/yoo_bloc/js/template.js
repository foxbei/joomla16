/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'diagonal', dropdownSelector: 'div.dropdown', fancy: { mode: 'move', duration: 500, transition: 'easeOutExpo' } });

	/* set hover color */
	switch (Warp.Settings.color) {
		case 'stripes':
			var menuEnter = '#8c8c8c';
			var menuLeave = '#919191';
			break;
		case 'caribbean':
			var menuEnter = '#e64f55';
			var menuLeave = '#fc575d';
			break;
		case 'retro':
			var menuEnter = '#d76010';
			var menuLeave = '#e7791c';
			break;
		case 'spaceship':
			var menuEnter = '#f47005';
			var menuLeave = '#fe7f04';
			break;
		case 'curly':
			var menuEnter = '#9f38ba';
			var menuLeave = '#ad3dcb';
			break;
		case 'stadium':
			var menuEnter = '#5f8e00';
			var menuLeave = '#669900';
			break;
		case 'distortion':
			var menuEnter = '#8babec';
			var menuLeave = '#96b9ff';
			break;
		case 'architecture':
			var menuEnter = '#797d90';
			var menuLeave = '#818599';
			break;
		case 'robot':
			var menuEnter = '#9DB670';
			var menuLeave = '#AAC579';
			break;	
		default:
			var menuEnter = '#3F92D0';
			var menuLeave = '#429ADB';
	}

	/* Morph: main menu - level2 (bg) */
	var menuEnter = { 'background-color': menuEnter };
	var menuLeave = { 'background-color': menuLeave };

	$('#menu a.level2').morph(menuEnter, menuLeave,
		{ transition: 'swing', duration: 0, ignore: '#menu li.level2 a.parent' },
		{ transition: 'easeInSine', duration: 500 });

	/* Morph: mod-fading sub menu - level1 (bg) */
	var submenuEnter = { 'background-color': submenuEnter };
	var submenuLeave = { 'background-color': submenuLeave };

	$('div.mod-sidebar ul.menu li.level2 a, div.mod-sidebar ul.menu li.levek2 span.separator').morph(submenuEnter, submenuLeave,
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