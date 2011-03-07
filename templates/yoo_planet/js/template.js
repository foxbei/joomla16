/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function($){

	/* Accordion menu */
	$('.menu-accordion').accordionMenu({ mode:'slide' });

	/* set hover color */
	var pulseColors;
	var fancyColors;
	var aniBgPosition;
	var hoverColorMenuBg;
	var leaveColorMenuBg;
	var hoverColorSubmenuBg;
	var leaveColorSubmenuBg;
	var hoverColorSubmenu;
	var leaveColorSubmenu;
	
	// basic color settings
	switch (Warp.Settings.color) {
		case 'bluewhite':
		case 'blueyellow':
			hoverColorMenuBg = '#0A4E74';
			leaveColorMenuBg ='#066A9B';
			hoverColorSubmenuBg = '#073E5A';
			leaveColorSubmenuBg ='#0A4E74';
			leaveColorSubmenu ='#96D7FF';
			break;
	
		case 'greenorange':
		case 'greenwhite':
			hoverColorMenuBg = '#444235';
			leaveColorMenuBg ='#575846';
			hoverColorSubmenuBg = '#333228';
			leaveColorSubmenuBg ='#444235';
			leaveColorSubmenu ='#BFAC90';
			break;

		case 'blackblue':
		case 'blackgreen':
		case 'blacklilac':
		case 'blackorange':
			hoverColorMenuBg = '#000000';
			leaveColorMenuBg ='#141619';
			hoverColorSubmenuBg = '#000000';
			leaveColorSubmenuBg ='#05070A';
			leaveColorSubmenu ='#5a646e';
			break;
			
		case 'whiteorange':
		default:
			hoverColorMenuBg = '#ffffff';
			leaveColorMenuBg ='#F0F5FF';
			hoverColorSubmenuBg = '#e6ebf5';
			leaveColorSubmenuBg ='#DCE1EB';
			leaveColorSubmenu ='#646E82';
	}
	
	// glow color settings
	switch (Warp.Settings.color) {
		case 'whiteorange':
			pulseColors = ['#EE3232', '#F64A1B', '#FF6600', '#FF890B', '#FFA514', '#FF890B', '#FF6600', '#F64A1B'];
			fancyColors = ['#EB474D', '#EB524A', '#F2793F', '#F69138', '#F8AC30', '#F69138', '#F2793F', '#EB524A'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#F69138';
			break;

		case 'blueyellow':
			pulseColors = ['#FFA000', '#FFC300', '#FFE600', '#F7F300', '#F0FF00', '#F7F300', '#FFE600', '#FFC300'];
			fancyColors = ['#F8AC0B', '#F6BF12', '#EBCC13', '#EBDD13', '#E4E513', '#EBDD13', '#EBCC13', '#F6BF12'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#E4E513';
			break;
		
		case 'bluewhite':
			pulseColors = ['#9AC4FF', '#CCE1FF', '#FFFFFF', '#D3DAFF', '#A8B6FF', '#D3DAFF', '#FFFFFF', '#CCE1FF'];
			fancyColors = ['#78D8FF', '#A4DFFF', '#C5E3FD', '#DEE4FD', '#D8CCFD', '#DEE4FD', '#C5E3FD', '#A4DFFF'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#ffffff';
			break;
		
		case 'greenwhite':
			pulseColors = ['#E4CDFF', '#F2E6FF', '#FFFFFF', '#F8FFE6', '#F1FFCC', '#F8FFE6', '#FFFFFF', '#F2E6FF'];
			fancyColors = ['#D1BDE5', '#DFD0E5', '#E5D9D9', '#E5DFCB', '#E3E5C5', '#E5DFCB', '#E5D9D9', '#DFD0E5'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#E3E5C5';
			break;
		
		case 'greenorange':
			pulseColors = ['#FFC800', '#FFAF00', '#FF9600', '#FF7C00', '#FF6400', '#FF7C00', '#FF9600', '#FFAF00'];
			fancyColors = ['#E39F19', '#E99006', '#E97D0C', '#E95F13', '#E94C13', '#E95F13', '#E97D0C', '#E99006'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#E39F19';
			break;
		
		case 'blacklilac':
			pulseColors = ['#AA00FF', '#C200FF', '#DC00FF', '#EF00E1', '#FF00C8', '#EF00E1', '#DC00FF', '#C200FF'];
			fancyColors = ['#AA00FF', '#C200FF', '#DC00FF', '#EF00E1', '#FF00C8', '#EF00E1', '#DC00FF', '#C200FF'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#F211BE';
			break;
		
		case 'blackgreen':
			pulseColors = ['#34BD06', '#76CA06', '#78DC00', '#B1ED00', '#F0FF00', '#B1ED00', '#78DC00', '#76CA06'];
			fancyColors = ['#74BA0C', '#76CB06', '#78DC00', '#AAED00', '#DCFF00', '#AAED00', '#78DC00', '#76CB06'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#DCFF00';
			break;
		
		case 'blackblue':
			pulseColors = ['#0050FF', '#0082FF', '#00B4FF', '#00D7FF', '#00FAFF', '#00D7FF', '#00B4FF', '#0082FF'];
			fancyColors = ['#0078FF', '#0094FF', '#00B4FF', '#00CDFF', '#00E6FF', '#00CDFF', '#00B4FF', '#0094FF'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#00CDFF';
			break;

		case 'blackorange':
			pulseColors = ['#FF0064', '#FF3232', '#FF6400', '#FF9600', '#FFB400', '#FF9600', '#FF6400', '#FF3232'];
			fancyColors = ['#FF0064', '#FF3232', '#FF6400', '#FF9600', '#FFB400', '#FF9600', '#FF6400', '#FF3232'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#FFB400';
			break;

		default:
			pulseColors = ['#0091FF', '#00C5E7', '#00FFCD', '#00F3B4', '#00E99E', '#00F3B4', '#00FFCD', '#00C5E7'];
			fancyColors = ['#3F92EB', '#3997D2', '#2CA5C5', '#19BDD2', '#13D2BF', '#19BDD2', '#2CA5C5', '#3997D2'];
			aniBgPosition = '1500px 0px';
			hoverColorSubmenu ='#19BDD2';
	}

	/* Set background animations */
	animateBackgroungPos('div#header div.header-bg', '0px 0px', aniBgPosition, { duration: 10000 });
	animateBackgroungColor('div.mod-fading-glow div.box-t1, div.mod-monitor div.box-b1, #system div.article-separator', { colors: pulseColors, duration: 700 });

	/* Morph: main menu - level2 (bg) */
	var menuEnter = { 'background-color': hoverColorMenuBg };
	var menuLeave = { 'background-color': leaveColorMenuBg };

	$('div#menu .group-box1').morph(menuEnter, menuLeave,
		{ transition: 'swing', duration: 0, ignore: 'div#menu li li.separator .hover-box1, div#menu .mod-dropdown .hover-box1' },
		{ transition: 'easeInSine', duration: 600 });

	/* Morph: mod-fading sub menu - level1 (bg) */
	var submenuEnter = { 'background-color': hoverColorSubmenuBg };
	var submenuLeave = { 'background-color': leaveColorSubmenuBg };

	$('div.mod-fading ul.menu li.level1').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 600 });

	/* Morph: mod-fading sub menu - level1 (color) */
	var submenuEnter = { 'color': hoverColorSubmenu };
	var submenuLeave = { 'color': leaveColorSubmenu };

	$('div.mod-fading ul.menu span.bg').morph(submenuEnter, submenuLeave,
		{ transition: 'swing', duration: 0 },
		{ transition: 'easeInSine', duration: 600 });
	
	/* Morph: readmore */
	var submenuEnter = { 'color': hoverColorSubmenu, 'background-color': hoverColorSubmenu };
	var submenuLeave = { 'color': leaveColorSubmenu, 'background-color': leaveColorSubmenu };

	$('a.readmore').morph(submenuEnter, submenuLeave,
		{ transition: 'easeOutExpo', duration: 500 },
		{ transition: 'easeOutExpo', duration: 500 });

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

	/* Animate background position */
	function animateBackgroungPos(selector, startpos, endpos, options) {
		var elements = $(selector);

		var options = $.extend({
			transition: 'swing',
			duration: 5000,
			wait: false,
			repeat: true
		}, options);

		function animate() {
			$(elements).each(function(i){
				$(this).css('background-position', startpos).stop().animate({ 
					'background-position': endpos 
				}, options.duration);
			});
		}
		
		animate();
		
		if (options.repeat) {
			window.setInterval(animate, options.duration);
		}
	}

	/* Animate background color */
	function animateBackgroungColor(selector, options) {
		var elements = $(selector);
		
		var options = $.extend({
			transition: 'swing',
			duration: 9000,
			wait: false,
			repeat: true,
			colors: ['#FFFFFF', '#999999']
		}, options);

		var colindex = 0;
		
		function animate() {
			$(elements).each(function(i){
				$(this).stop().animate({ 'background-color': options.colors[colindex] }, options.duration);
				colindex = (colindex + 1 >= options.colors.length) ? 0:colindex + 1;
			});
		}
		
		animate();
		
		if (options.repeat) {
			window.setInterval(animate, options.duration * 2);
		}
	}
	
	var _backColor = null;
	
	/* Dropdown menu */
	$('#menu').dropdownMenu({ 
	    mode: 'slide',
		dropdownSelector: 'div.dropdown', 
	    'fancy': { mode: 'move',  duration: 700, transition: 'easeOutExpo',
			
			onEnter: function(item, i, fancy){
				if(!_backColor) fancy.css('background-color');
				
				var color = fancyColors[i] ? fancyColors[i] : _backColor;
				fancy.css({ 'background-color': color });
			},
			
			onLeave: function(item, i, fancy){
				fancy.css({ 'background-color': _backColor });
			}
			
		}
	 }).dropdownMenu("matchUlHeight");
	 
	_backColor = $('#menu').find(".fancy:first").css("background-color");

});