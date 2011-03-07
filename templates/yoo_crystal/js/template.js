/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'slide', dropdownSelector: 'div.dropdown', fancy: { mode: 'fade', duration: 500 } });

	/* set hover color */
	var enterColor;
	switch (Warp.Settings.color) {
		case 'neon':
			switch(Warp.Settings.itemColor) {
				case 'blue':
					enterColor = '#047199';
					leaveColor = '#05BCFF';
					break;
				case 'green':
					enterColor = '#658301';
					leaveColor = '#A8DB00';
					break;
				case 'orange':
					enterColor = '#985206';
					leaveColor = '#FD8708';
					break;
				case 'lilac':
					enterColor = '#7A0892';
					leaveColor = '#CC0BF4';
					break;
				default:
					enterColor = '#7B1B45';
					leaveColor = '#D91668';
					break;
			}
			break;
		case 'green':
			enterColor = '#737047';
			leaveColor = '#BEB976';
			break;
		case 'brown':
			enterColor = '#765B28';
			leaveColor = '#C59741';
			break;
		case 'lilac':
			enterColor = '#776074';
			leaveColor = '#C69FC2';
			break;
		case 'pink':
			enterColor = '#820D3E';
			leaveColor = '#D91467';
			break;
		case 'blue':
			enterColor = '#4A5966';
			leaveColor = '#7A95AA';
			break;
		case 'beige':
			enterColor = '#74736A';
			leaveColor = '#C2BFB0';
			break;
		default:
			enterColor = '#7C321A';
			leaveColor = '#CF5329';
	}

	/* Morph: main menu - level2 (background-color) */
	var menuEnter = { 'background-color': enterColor};
	var menuLeave = { 'background-color': leaveColor};

	$('div#menu .hover-box1').morph(menuEnter, menuLeave,
		{ transition: 'linear', duration: 100, ignore: 'div#menu li.separator .hover-box1' },
		{ transition: 'easeInSine', duration: 300 });

	/* Morph: sub menu - level1 */
	var submenuEnter = { 'color': '#ffffff', 'margin-left': 10};
	var submenuLeave = { 'color': '#C8C8C8', 'margin-left': 0};

	$('div.mod-menu ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 200 },
		{ transition: 'easeInSine', duration: 400 });

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