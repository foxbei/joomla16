/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'slide', dropdownSelector: 'div.dropdown'});

	/* set hover color */
	var hoverColorMenu;
	var leaveColorMenu;
	var hoverColorSubmenu;
	var leaveColor1Submenu;
	var leaveColor2Submenu;
	switch (Warp.Settings.color) {
		case 'blogging':
			hoverColorMenu = '#D9D3CA';
			leaveColorMenu ='#ffffff';
			hoverColorSubmenu = '#483030';
			leaveColor1Submenu ='#EBE7E4';
			leaveColor2Submenu ='#804640';
			break;
		case 'travel':
			hoverColorMenu = '#DCD2C3';
			leaveColorMenu ='#ffffff';
			hoverColorSubmenu = '#3E8ABA';
			leaveColor1Submenu ='#FAF5E9';
			leaveColor2Submenu ='#207ab2';
			break;
		case 'sports':
			hoverColorMenu = '#D7D4D4';
			leaveColorMenu ='#ffffff';
			hoverColorSubmenu = '#3B3939';
			leaveColor1Submenu ='#e9e8e7';
			leaveColor2Submenu ='#525050';
			break;
		case 'adventure':
			hoverColorMenu = '#dbdacf';
			leaveColorMenu ='#fffffa';
			hoverColorSubmenu = '#AA9777';
			leaveColor1Submenu ='#eeece0';
			leaveColor2Submenu ='#675543';
			break;
		default:
			hoverColorMenu = '#EBEBEB';
			leaveColorMenu ='#FFFFFF';
			hoverColorSubmenu = '#8A9CA7';
			leaveColor1Submenu ='#F5F5F5';
			leaveColor2Submenu ='#5f6b7c';
	}

	/* Morph: main menu - level1 (tab) */
	var submenuEnter = { 'padding-top': '0px', 'height': '50px' };
	var submenuLeave = { 'padding-top': '3px', 'height': '47px' };

	$('#menu a.level1 span.bg, #menu span.level1 span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 200 },
		{ transition: 'easeInSine', duration: 200 });

	/* Morph: main menu - level2 (color) */
	var menuEnter = { 'background-color': hoverColorMenu};
	var menuLeave = { 'background-color': leaveColorMenu};

	$('div#menu .hover-box1').morph(menuEnter, menuLeave,
		{ transition: 'swing', duration: 0, ignore: 'div#menu li li.separator .hover-box1, div#menu .mod-dropdown .hover-box1' },
		{ transition: 'easeOutQuart', duration: 600 });

	/* Morph: mod-rounded sub menu - level1 (bg) */
	var submenuEnter = { 'background-color': hoverColorSubmenu };
	var submenuLeave = { 'background-color': leaveColor1Submenu };

	$('div.mod-rounded ul.menu a.level1, div.mod-rounded ul.menu span.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 0 },
		{ transition: 'easeOutQuint', duration: 200 });

	/* Morph: mod-rounded sub menu - level1 (color) */
	var submenuEnter = { 'color': '#ffffff' };
	var submenuLeave = { 'color': leaveColor2Submenu };

	$('div.mod-rounded ul.menu a.level1 span.bg, div.mod-rounded ul.menu span.level1 span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 0 },
		{ transition: 'easeOutQuint', duration: 200 });

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