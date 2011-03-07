/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'diagonal', dropdownSelector: 'div.dropdown' }).dropdownMenu("matchUlHeight");

	/* set hover color */
	var menuEnter;
	var menuLeave;
	var submenuEnter;
	var submenuLeave;

	switch (Warp.Settings.color) {
		case 'brown':
			var menuEnter = '#8E8578';
			var menuLeave = '#968C7E';
			var submenuEnter = '#39372D';
			var submenuLeave = '#5E574C';
			break;	
		case 'blue':
			var menuEnter = '#BAD2D7';
			var menuLeave = '#C4DDE3';
			var submenuEnter = '#5A8A96';
			var submenuLeave = '#86ACB3';
			break;
		case 'greyblue':
		case 'greyred':
		case 'greygrey':
		case 'greyorange':
			var menuEnter = '#D6DADA';
			var menuLeave = '#E2E6E6';
			var submenuEnter = '#6C7279';
			var submenuLeave = '#9DA0AA';
			break;
		case 'khakiblue':
		case 'khakigreen':
		case 'khakired':
		case 'khakiorange':
			var menuEnter = '#B4B2A5';
			var menuLeave = '#BEBCAE';
			var submenuEnter = '#595746';
			var submenuLeave = '#857F6C';
			break;
		case 'beigeblue':
		case 'beigegreen':
		case 'beigered':
		default:
			var menuEnter = '#dfded5';
			var menuLeave = '#E9E8DF';
			var submenuEnter = '#797971';
			var submenuLeave = '#A9A59F';
	}

	/* Morph: main menu - level2 (bg) */
	var menuEnter = { 'background-color': menuEnter };
	var menuLeave = { 'background-color': menuLeave };

	$('#menu a.level2').morph(menuEnter, menuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 600 });

	/* Morph: mod-headline sub menu - level1 (bg) */
	var submenuEnter = { 'color': submenuEnter };
	var submenuLeave = { 'color': submenuLeave };

	$('div.mod-headline ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0, ignore: 'div.mod-headline ul.menu a.current span.bg' },
		{ transition: 'easeInSine', duration: 200 });

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