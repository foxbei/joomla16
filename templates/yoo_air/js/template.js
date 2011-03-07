/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* Dropdown menu */
	$('#menu').dropdownMenu({ mode: 'height', duration: 300, dropdownSelector: 'div.dropdown', fancy:{ mode: 'fade', duration: 300, transition: 'easeOutBack' } });
	//dropdown.matchHeight();
	
	var submenuEnter = '#EDEDEE';
	var submenuLeave = '#F7F7F8';

	/* Morph: sub menu - level1 (bg) */
	var submenuEnter = { 'background-color': submenuEnter };
	var submenuLeave = { 'background-color': submenuLeave };

	$('div.mod-shadowbox ul.menu li.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'linear', duration: 0 },
		{ transition: 'easeInSine', duration: 300 });

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
	$('#left, #right, div.right-3, div.left-3').matchHeight(20);

});