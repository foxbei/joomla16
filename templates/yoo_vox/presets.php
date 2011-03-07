<?php
/**
* @package   yoo_vox Template
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

$warp->config->addPreset('default', 'Grey', array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('landscape', 'Landscape',  array_merge($default_preset,array(
	'color' => 'landscape'
)));

$warp->config->addPreset('beige', 'Beige',  array_merge($default_preset,array(
	'color' => 'beige'
)));

$warp->config->addPreset('blue', 'Blue',  array_merge($default_preset,array(
	'color' => 'blue'
)));

$warp->config->addPreset('orange', 'Orange',  array_merge($default_preset,array(
	'color' => 'orange'
)));

$warp->config->addPreset('flaresblue', 'Flares Blue',  array_merge($default_preset,array(
	'color' => 'flaresblue'
)));

$warp->config->addPreset('flaresred', 'Flares Red',  array_merge($default_preset,array(
	'color' => 'flaresred'
)));

$warp->config->addPreset('technology', 'Technology',  array_merge($default_preset,array(
	'color' => 'technology'
)));

$warp->config->addPreset('music', 'Music',  array_merge($default_preset,array(
	'color' => 'music'
)));

$warp->config->addPreset('city', 'City',  array_merge($default_preset,array(
	'color' => 'city'
)));

$warp->config->applyPreset();