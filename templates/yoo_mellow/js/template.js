/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'diagonal', dropdownSelector: 'div.dropdown'}).dropdownMenu("matchUlHeight");

	/* set hover color */
	var hoverColor;
	switch (Warp.Settings.color) {
		case 'brownyellow':
			hoverColorMenu = '#FFD034';
			leaveColorMenu = '#463E38';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#959087';
			hoverColorSubmenu2 = '#f1eedf';
			hoverColorModule = '#D0CAB8';
			break;
		case 'whitegrey':
			hoverColorMenu = '#3F5C8C';
			leaveColorMenu = '#404858';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#989AA4';
			hoverColorSubmenu2 = '#F0EDF0';
			hoverColorModule = '#F8F6F6';
			break;
		case 'bluegrey':
			hoverColorMenu = '#D7C834';
			leaveColorMenu = '#547980';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#A9C4C7';
			hoverColorSubmenu2 = '#F0F0F0';
			hoverColorModule = '#D9E4E6';
			break;
		case 'lilacgreen':
			hoverColorMenu = '#5F9BAF';
			leaveColorMenu = '#514653';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#A099A1';
			hoverColorSubmenu2 = '#F0EDF0';
			hoverColorModule = '#DBD3DC';
			break;
		case 'greengrey':
			hoverColorMenu = '#835F68';
			leaveColorMenu = '#5F858C';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#8E9E92';
			hoverColorSubmenu2 = '#F2F8ED';
			hoverColorModule = '#8E9E92';
			break;
		case 'bluegreen':
			hoverColorMenu = '#9C9910';
			leaveColorMenu = '#434F58';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#858D96';
			hoverColorSubmenu2 = '#EDECEB';
			hoverColorModule = '#E0E1DF';
			break;
		case 'beigegreen':
			hoverColorMenu = '#D89C26';
			leaveColorMenu = '#59665D';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#A4ACA2';
			hoverColorSubmenu2 = '#EFF2E7';
			hoverColorModule = '#D9D0BC';
			break;
		case 'yellow':
			hoverColorMenu = '#FFF032';
			leaveColorMenu = '#323232';
			hoverColorSubmenu = '#141414';
			leaveColorSubmenu1 = '#323232';
			hoverColorSubmenu2 = '#FFF89D';
			hoverColorModule = '#FFDC14';
			break;
		case 'beigeblue':
			hoverColorMenu = '#E08257';
			leaveColorMenu = '#535251';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#C0BAA5';
			hoverColorSubmenu2 = '#F2F0E6';
			hoverColorModule = '#E1DDC8';
			break;
		default:
			hoverColorMenu = '#82B400';
			leaveColorMenu = '#535251';
			hoverColorSubmenu = hoverColorMenu;
			leaveColorSubmenu1 = '#C0C0C0';
			hoverColorSubmenu2 = '#F0F0F0';
			hoverColorModule = '#D7D7D7';
	}

	/* Morph: main menu - level2 (color) */
	var menuEnter = { 'background-color': hoverColorMenu};
	var menuLeave = { 'background-color': leaveColorMenu};

	$('div#menu .hover-box1').morph(menuEnter, menuLeave,
		{ transition: 'linear', duration: 0, ignore: 'div#menu li li.separator .hover-box1, div#menu .mod-dropdown .hover-box1' },
		{ transition: 'easeInSine', duration: 500 });

	/* Morph: mod-blank sub menu - level1 */
	var submenuEnter = { 'background-color': hoverColorSubmenu};
	var submenuLeave = { 'background-color': leaveColorSubmenu1};

	$('div.mod-menu-blank ul.menu a.level1, div.mod-menu-blank ul.menu span.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0, ignore: 'div.mod-menu-blank ul.menu li.active a.level1, div.mod-menu-blank ul.menu li.active span.level1' },
		{ transition: 'easeInSine', duration: 200 });

	/* Morph: mod-line sub menu - level1 */
	var submenuEnter = { 'background-color': hoverColorSubmenu2, 'padding-left': 5};
	var submenuLeave = { 'background-color': '#ffffff', 'padding-left': 0};

	$('div.mod-line ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 100 },
		{ transition: 'easeInSine', duration: 300 });

	/* Morph: mod-hover */
	var submenuEnter = { 'background-color': '#ffffff'};
	var submenuLeave = { 'background-color': hoverColorModule};

	$('div.mod-hover').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 300 },
		{ transition: 'easeInSine', duration: 300 }, '.box-1, .box-b1');

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