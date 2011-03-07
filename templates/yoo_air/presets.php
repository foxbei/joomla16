<?php
/**
* @package   yoo_air Template
* @file      presets.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

/*
 * Presets
 */

$default_preset = array();

$warp->config->addPreset('greenmountains', 'Green Mountains', array_merge($default_preset,array(
	'color' => 'green',
	'menubar' => 'default',
	'background' => 'mountains',
	'font' => 'trebuchet'
)));

$warp->config->addPreset('default', 'Red Glitter', array_merge($default_preset,array(
	'color' => 'red',
	'menubar' => 'glass',
	'background' => 'glitter',
	'font' => 'lucida'
)));

$warp->config->addPreset('lilacspace', 'Lilac Space', array_merge($default_preset,array(
	'color' => 'lilac',
	'menubar' => 'glossy',
	'background' => 'space',
	'font' => 'default'
)));

$warp->config->addPreset('brownlandscape', 'Brown Landscape', array_merge($default_preset,array(
	'color' => 'brown',
	'menubar' => 'destructed',
	'background' => 'landscape',
	'font' => 'georgia'
)));

$warp->config->addPreset('turquoisegradient', 'Turquoise Gradient', array_merge($default_preset,array(
	'color' => 'turquoise',
	'menubar' => 'default',
	'background' => 'default',
	'font' => 'default'
)));


$warp->config->addPreset('redaurora', 'Red Aurora', array_merge($default_preset,array(
	'color' => 'red',
	'menubar' => 'glass',
	'background' => 'aurora',
	'font' => 'trebuchet'
)));

$warp->config->addPreset('blueglitter', 'Blue Glitter', array_merge($default_preset,array(
	'color' => 'default',
	'menubar' => 'glass',
	'background' => 'glitter',
	'font' => 'lucida'
)));

$warp->config->addPreset('redlandscape', 'Red Landscape', array_merge($default_preset,array(
	'color' => 'red',
	'menubar' => 'default',
	'background' => 'landscape',
	'font' => 'default'
)));

$warp->config->addPreset('lilacbubbles', 'Lilac Bubbles', array_merge($default_preset,array(
	'color' => 'lilac',
	'menubar' => 'default',
	'background' => 'bubbles',
	'font' => 'georgia'
)));

$warp->config->addPreset('brownmountains', 'Brown Mountains', array_merge($default_preset,array(
	'color' => 'brown',
	'menubar' => 'destructed',
	'background' => 'mountains',
	'font' => 'default'
)));

$warp->config->addPreset('bluephoto', 'Blue Photo', array_merge($default_preset,array(
	'color' => 'vlue',
	'menubar' => 'default',
	'background' => 'photo',
	'font' => 'trebuchet'
)));

$warp->config->addPreset('greenaurora', 'Green Bubbles', array_merge($default_preset,array(
	'color' => 'green',
	'menubar' => 'glossy',
	'background' => 'aurora',
	'font' => 'lucida'
)));

$warp->config->applyPreset();