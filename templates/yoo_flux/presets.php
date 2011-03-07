<?php
/**
* @package   yoo_flux Template
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

$warp->config->addPreset('default', 'Blue', array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('orange', 'Orange',  array_merge($default_preset,array(
	'color' => 'orange'
)));

$warp->config->addPreset('red', 'Red',  array_merge($default_preset,array(
	'color' => 'red'
)));

$warp->config->addPreset('green', 'Green',  array_merge($default_preset,array(
	'color' => 'green'
)));

$warp->config->addPreset('pink', 'Pink',  array_merge($default_preset,array(
	'color' => 'pink'
)));

$warp->config->addPreset('turquoise', 'Turquoise', array_merge($default_preset,array(
	'color' => 'turquoise'
)));

$warp->config->addPreset('carbon', 'Carbon',  array_merge($default_preset,array(
	'color' => 'carbon'
)));

$warp->config->addPreset('comboblue', 'Combo Blue',  array_merge($default_preset,array(
	'color' => 'comboblue'
)));

$warp->config->addPreset('combogold', 'Combo Gold',  array_merge($default_preset,array(
	'color' => 'combogold'
)));

$warp->config->addPreset('comboleather', 'Combo Leather',  array_merge($default_preset,array(
	'color' => 'comboleather'
)));

$warp->config->addPreset('combosunset', 'Combo Sunset',  array_merge($default_preset,array(
	'color' => 'combosunset'
)));

$warp->config->addPreset('comboorange', 'Combo Orange',  array_merge($default_preset,array(
	'color' => 'comboorange'
)));

$warp->config->applyPreset();