<?php
/**
* @package   yoo_enterprise Template
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

$warp->config->addPreset('default', 'Blue/White', array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('green', 'Green/White', array_merge($default_preset,array(
	'color' => 'green'
)));

$warp->config->addPreset('red', 'Red/White', array_merge($default_preset,array(
	'color' => 'red'
)));

$warp->config->addPreset('orange', 'Orange/White', array_merge($default_preset,array(
	'color' => 'orange'
)));

$warp->config->addPreset('redblack', 'Red/Black', array_merge($default_preset,array(
	'color' => 'redblack'
)));

$warp->config->addPreset('blackred', 'Black/Red', array_merge($default_preset,array(
	'color' => 'blackred'
)));

$warp->config->addPreset('browngreen', 'Brown/Green', array_merge($default_preset,array(
	'color' => 'browngreen'
)));

$warp->config->addPreset('blueorange', 'Blue/Orange', array_merge($default_preset,array(
	'color' => 'blueorange'
)));

$warp->config->addPreset('orangeblack', 'Orange/Black', array_merge($default_preset,array(
	'color' => 'orangeblack'
)));

$warp->config->addPreset('crystal', 'Crystal', array_merge($default_preset,array(
	'color' => 'crystal'
)));

$warp->config->addPreset('energy', 'Energy', array_merge($default_preset,array(
	'color' => 'energy'
)));

$warp->config->addPreset('office', 'Office', array_merge($default_preset,array(
	'color' => 'office'
)));

$warp->config->applyPreset();