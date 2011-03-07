/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'slide', dropdownSelector: 'div.dropdown', fancy: { mode: 'fade', duration: 500 } });

	/* set hover color */
	var hoverColor;
	switch (Warp.Settings.color) {
		case 'green':
			hoverColor = '#8dc92a';
			break;
		case 'red':
			hoverColor = '#dd3321';
			break;
		case 'orange':
			hoverColor = '#ed771a';
			break;
		case 'pink':
			hoverColor = '#c92197';
			break;
		case 'turquoise':
			hoverColor = '#33b1cd';
			break;
		case 'carbon':
			hoverColor = '#515764';
			break;
		case 'comboblue':
			hoverColor = '#00bee5';
			break;
		case 'combogold':
			hoverColor = '#e9b44d';
			break;
		case 'comboleather':
			hoverColor = '#52412e';
			break;
		case 'combosunset':
			hoverColor = '#d36800';
			break;
		case 'comboorange':
			hoverColor = '#ed771a';
			break;
		default:
			hoverColor = '#2B86CA';
	}

	/* Morph: mod-black sub menu - level1 */
	var submenuEnter = { 'background-color': hoverColor };
	var submenuLeave = { 'background-color': '#ffffff' };

	$('div.mod-black ul.menu a.level1, div.mod-black ul.menu span.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 300 });
	
	/* Morph: mod-black sub menu - all levels */
	var submenuEnter = { 'color': '#000000' };
	var submenuLeave = { 'color': '#646464' };

	$('div.mod-black ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 300 });

	/* Morph: mod-line sub menu - level1 */
	var submenuEnter = { 'color': '#000000', 'padding-left': 5};
	var submenuLeave = { 'color': '#646464', 'padding-left': 0};

	$('div.mod-band ul.menu span.bg').morph(submenuEnter, submenuLeave,
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