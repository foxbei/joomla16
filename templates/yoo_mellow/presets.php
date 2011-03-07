<?php
/**
* @package   yoo_mellow Template
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

$warp->config->addPreset('beigeblue', 'Beige Blue',  array_merge($default_preset,array(
	'color' => 'beigeblue'
)));

$warp->config->addPreset('beigegreen', 'Beige Green',  array_merge($default_preset,array(
	'color' => 'beigegreen'
)));

$warp->config->addPreset('bluegreen', 'Blue Green',  array_merge($default_preset,array(
	'color' => 'bluegreen'
)));

$warp->config->addPreset('yellow', 'Yellow',  array_merge($default_preset,array(
	'color' => 'yellow'
)));

$warp->config->addPreset('bluegrey', 'Blue Grey', array_merge($default_preset,array(
	'color' => 'bluegrey'
)));

$warp->config->addPreset('whitegrey', 'White Grey',  array_merge($default_preset,array(
	'color' => 'whitegrey'
)));

$warp->config->addPreset('brownyellow', 'Brown Yellow',  array_merge($default_preset,array(
	'color' => 'brownyellow'
)));

$warp->config->addPreset('greengrey', 'Green Grey',  array_merge($default_preset,array(
	'color' => 'greengrey'
)));

$warp->config->addPreset('lilacgreen', 'Lilac Green',  array_merge($default_preset,array(
	'color' => 'lilacgreen'
)));

$warp->config->applyPreset();