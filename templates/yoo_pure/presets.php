<?php
/**
* @package   yoo_pure Template
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

$warp->config->addPreset('default', 'White Pink', array_merge($default_preset,array(
	'style' => 'default',
	'color' => 'default',
	'texture' => 'default',
	'font' => 'default'
)));

$warp->config->addPreset('blue', 'White Blue', array_merge($default_preset,array(
	'style' => 'default',
	'color' => 'blue',
	'texture' => 'stripes',
	'font' => 'default'
)));

$warp->config->addPreset('green', 'White Green', array_merge($default_preset,array(
	'style' => 'default',
	'color' => 'green',
	'texture' => 'splatter',
	'font' => 'default'
)));

$warp->config->addPreset('orange', 'White Orange', array_merge($default_preset,array(
	'style' => 'default',
	'color' => 'orange',
	'texture' => 'gradient',
	'font' => 'default'
)));

$warp->config->addPreset('lilac', 'White Lilac', array_merge($default_preset,array(
	'style' => 'default',
	'color' => 'lilac',
	'texture' => 'brushes',
	'font' => 'default'
)));

$warp->config->addPreset('blackpink', 'Black Pink', array_merge($default_preset,array(
	'style' => 'black',
	'color' => 'default',
	'texture' => 'gradient',
	'font' => 'default'
)));
$warp->config->addPreset('blackblue', 'Black Blue', array_merge($default_preset,array(
	'style' => 'black',
	'color' => 'blue',
	'texture' => 'brushes',
	'font' => 'default'
)));

$warp->config->addPreset('blackgreen', 'Black Green', array_merge($default_preset,array(
	'style' => 'black',
	'color' => 'green',
	'texture' => 'squares',
	'font' => 'default'
)));

$warp->config->addPreset('blackorange', 'Black Orange', array_merge($default_preset,array(
	'style' => 'black',
	'color' => 'orange',
	'texture' => 'curls',
	'font' => 'default'
)));

$warp->config->addPreset('blacklilac', 'Black Lilac', array_merge($default_preset,array(
	'style' => 'black',
	'color' => 'lilac',
	'texture' => 'splatter',
	'font' => 'default'
)));

$warp->config->applyPreset();