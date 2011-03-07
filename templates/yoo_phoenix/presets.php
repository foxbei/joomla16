<?php
/**
* @package   yoo_phoenix Template
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

$warp->config->addPreset('default', 'White', array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('waveblue', 'Wave Blue',  array_merge($default_preset,array(
	'color' => 'waveblue'
)));

$warp->config->addPreset('wavegreen', 'Wave Green',  array_merge($default_preset,array(
	'color' => 'wavegreen'
)));

$warp->config->addPreset('waveyellow', 'Wave Yellow',  array_merge($default_preset,array(
	'color' => 'waveyellow'
)));

$warp->config->addPreset('combsblue', 'Combs Blue',  array_merge($default_preset,array(
	'color' => 'combsblue'
)));

$warp->config->addPreset('combsblack', 'Combs Black', array_merge($default_preset,array(
	'color' => 'combsblack'
)));

$warp->config->addPreset('combsred', 'Combs Red',  array_merge($default_preset,array(
	'color' => 'combsred'
)));

$warp->config->addPreset('barblue', 'Bar Blue',  array_merge($default_preset,array(
	'color' => 'barblue'
)));

$warp->config->addPreset('barorange', 'Bar Orange',  array_merge($default_preset,array(
	'color' => 'barorange'
)));

$warp->config->addPreset('bargreen', 'Bar Green',  array_merge($default_preset,array(
	'color' => 'bargreen'
)));

$warp->config->applyPreset();