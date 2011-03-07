/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'diagonal', dropdownSelector: 'div.dropdown', fancy: { mode: 'move', transition: 'easeOutExpo', duration: 500 } }).dropdownMenu("matchUlHeight");

	/* set hover color */
	switch (Warp.Settings.color) {
		case 'ocean':
			var menuEnter = '#cbdbe1';
			var menuLeave = '#DEEAEF';
			var submenuEnter = '#273c48';
			var submenuLeave = '#2e4552';
			break;	
		case 'red':
			var menuEnter = '#e6e3e1';
			var menuLeave = '#EFEEED';
			var submenuEnter = '#292222';
			var submenuLeave = '#312828';
			break;	
		case 'green':
			var menuEnter = '#dadcc1';
			var menuLeave = '#E6E8D0';
			var submenuEnter = '#2f2f27';
			var submenuLeave = '#36362e';
			break;	
		case 'brown':
			var menuEnter = '#d0cdbc';
			var menuLeave = '#DBD9CC';
			var submenuEnter = '#45403b';
			var submenuLeave = '#4e4943';
			break;	
		case 'ecru':
			var menuEnter = '#cdccb7';
			var menuLeave = '#D8D7C7';
			var submenuEnter = '#2a2a22';
			var submenuLeave = '#313128';
			break;	
		case 'blue':
			var menuEnter = '#d9e8f7';
			var menuLeave = '#EBF3FF';
			var submenuEnter = '#154d85';
			var submenuLeave = '#1b558f';
			break;	
		case 'white':
			var menuEnter = '#c9d1d9';
			var menuLeave = '#D7DEE6';
			var submenuEnter = '#576069';
			var submenuLeave = '#646e78';
			break;	
		default:
			var menuEnter = '#C8D0D7';
			var menuLeave = '#D8DEE2';
			var submenuEnter = '#262A2D';
			var submenuLeave = '#2B2F32';
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