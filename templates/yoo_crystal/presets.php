<?php
/**
* @package   yoo_crystal Template
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

$warp->config->addPreset('default', 'Dove', array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('neon', 'Theme Neon',  array_merge($default_preset,array(
	'color' => 'neon'
)));

$warp->config->addPreset('brown', 'Brown',  array_merge($default_preset,array(
	'color' => 'brown'
)));

$warp->config->addPreset('blue', 'Blue',  array_merge($default_preset,array(
	'color' => 'blue'
)));

$warp->config->addPreset('lilac', 'Lilac',  array_merge($default_preset,array(
	'color' => 'lilac'
)));

$warp->config->addPreset('green', 'Green',  array_merge($default_preset,array(
	'color' => 'green'
)));

$warp->config->addPreset('pink', 'Pink',  array_merge($default_preset,array(
	'color' => 'pink'
)));

$warp->config->addPreset('beige', 'Beige',  array_merge($default_preset,array(
	'color' => 'beige'
)));

$warp->config->applyPreset();