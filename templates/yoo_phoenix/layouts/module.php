<?php
/**
* @package   yoo_phoenix Template
* @file      module.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// init vars
$id        = $module->id;
$position  = $module->position;
$title     = $module->title;
$showtitle = $module->showtitle;
$content   = $module->content;

// init params
$first = $params['first'] ? 'first' : null;
$last  = $params['last'] ? 'last' : null;
foreach (array('suffix', 'style', 'badge', 'color', 'icon', 'yootools', 'header', 'dropdownwidth') as $var) {
	$$var = isset($params[$var]) ? $params[$var] : null;
}

// create title
$pos = mb_strpos($title, ' ');
if ($pos !== false) {
	$title = '<span class="color">'.mb_substr($title, 0, $pos).'</span>'.mb_substr($title, $pos);
}

// create subtitle
$pos = mb_strpos($title, '||');
if ($pos !== false) {
	$title = '<span class="title">'.mb_substr($title, 0, $pos).'</span><span class="subtitle">'.mb_substr($title, $pos + 2).'</span>';
}

// legacy compatibility
if ($suffix == 'blank' || $suffix == '-blank') $style = 'blank';
if ($suffix == 'menu' || $suffix == '_menu') $style = 'menu';

// set default module types
if ($style == '') {
	if ($module->position == 'topblock') { $style = 'rounded'; $color = 'grey'; }
	if ($module->position == 'top') { $style = 'rounded'; $color = 'grey'; }
	if ($module->position == 'left') { $style = 'header'; $color = 'grey'; }
	if ($module->position == 'right') $style = 'header';
	if ($module->position == 'maintop') $style = 'rounded';
	if ($module->position == 'contenttop') $style = 'tab';
	if ($module->position == 'contentleft') $style = 'line';
	if ($module->position == 'contentright') $style = 'line';
	if ($module->position == 'contentbottom') $style = 'tab';
	if ($module->position == 'mainbottom') $style = 'rounded';
	if ($module->position == 'bottom') { $style = 'rounded'; $color = 'grey'; }
	if ($module->position == 'bottomblock') { $style = 'rounded'; $color = 'grey'; }
}

// to test a module set the style, color, badge and icon here
//$style = '';
//$color = '';
//$badge = '';
//$icon = '';
//$header = '';

// force module style
if (in_array($module->position,array('absolute' ,'breadcrumbs','logo','banner','search','footer','debug'))) $style = 'raw';
if ($module->position == 'toolbarleft' || $module->position == 'toolbarright')  $style = 'blank';
if ($module->position == 'headerleft' || $module->position == 'headerright')  $style = 'blank';
if ($module->position == 'menu') {
	$style = ($style == 'menu') ? 'raw' : 'dropdown';
}

// set badge if exists
if ($badge) {
	$badge = '<div class="badge badge-'.$badge.'"></div>';
}

// set icon if exists
if ($icon) {
	$title = '<span class="icon icon-'.$icon.'"></span>'.$title.'';
}

// set yootools color if exists
if ($yootools == 'black') {
	$yootools = 'yootools-black';
}

// set dropdownwidth if exists
if ($dropdownwidth) {
	$dropdownwidth = 'style="width: '.$dropdownwidth.'px;"';
}

// set module template using the style
switch ($style) {

	case 'rounded':
		$template  = '3-1-3';
		$style     = 'mod-'.$style;
		$color     = ($color) ? $style.'-'.$color : ''; // grey
		break;

	case 'header':
		$template  = '3-1-3_h';
		$style     = 'mod-rounded mod-rounded-header';
		$color     = ($color) ? 'mod-rounded-'.$color.' mod-rounded-header-'.$color : ''; // grey
		break;

	case 'chrome':
		$template  = '3-2-3_h';
		$style     = 'mod-'.$style;
		$color     = ($color) ? $style.'-'.$color : ''; // black, green, orange, blue
		break;

	case 'tab':
		$template = '0-4-0_tab';
		$style   = 'mod-' . $style;
		break;

	case 'polaroid':
		$template  = '0-3-3_polaroid';
		$style     = 'mod-'.$style;
		$badge	  .= '<div class="badge-tape"></div>';
		break;
		
	case 'postit':
		$template  = '0-2-3';
		$style     = 'mod-'.$style;
		break;

	case 'line':
		$template  = '0-1-0';
		$style     = 'mod-'.$style;
		break;

	case 'menu':
		if ($module->position == 'contentleft' || $module->position == 'contentright') {
			$template  = '0-1-0';
			$style     = 'mod-line mod-menu mod-menu-line';
		} else {
			$template  = '3-2-3_h';
			$style     = 'mod-chrome mod-menu mod-menu-chrome';
			$color     = ($color) ? 'mod-chrome-'.$color : 'mod-chrome-white'; // black, green, orange, blue
		}
		break;
		
	case 'dropdown':
		$template  = 'dropdown';
		$style     = 'mod-'.$style;
		break;

	case 'blank':
		$template  = 'default';
		$style     = 'mod-'.$style;
		break;

	case 'raw':
		$template  = 'raw';
		break;

	default:
		$template  = 'default';
		$style     = $suffix;
}

// render menu template
if ($params['menu']) {
    //echo $module->content;
	$content = $this->warp->menu->process($module,array('pre','default',$params['menu'],'post'));
}

// render module template
echo $this->render("modules/{$template}", compact('style', 'color', 'yootools', 'first', 'last', 'badge', 'showtitle', 'title', 'content', 'dropdownwidth'));