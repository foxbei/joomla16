/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });
	
	/* Follower */
	$('div.mod-line ul.menu').follower({effect: {transition: 'linear', duration: 200}})

	/* Smoothscroll */
	$('a[href="#page"]').smoothScroller({ duration: 500 });
      
    $(window).bind('load',function() {
	
		/* Dropdown menu */
		$('#menu').dropdownMenu({ mode: 'slide', dropdownSelector: 'div.dropdown', fancy:{ mode: 'move', duration: 500, transition: 'easeOutBack' } });
		
		/* Match height of div tags */
		$('div.topbox div.deepest').matchHeight(20);
		$('div.bottombox div.deepest').matchHeight(20);
		$('.content-wrapper-2, #contentleft, #contentright, #left, #right').matchHeight($(window).height()-40);
	
	});

});