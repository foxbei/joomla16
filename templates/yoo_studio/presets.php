<?php
/**
* @package   yoo_studio Template
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

$warp->config->addPreset('default', 'Bluegrey', array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('white', 'White', array_merge($default_preset,array(
	'color' => 'white'
)));

$warp->config->addPreset('blue', 'Blue', array_merge($default_preset,array(
	'color' => 'blue'
)));

$warp->config->addPreset('ecru', 'Ecru', array_merge($default_preset,array(
	'color' => 'ecru'
)));

$warp->config->addPreset('brown', 'Brown', array_merge($default_preset,array(
	'color' => 'brown'
)));

$warp->config->addPreset('green', 'Green', array_merge($default_preset,array(
	'color' => 'green'
)));

$warp->config->addPreset('red', 'Red', array_merge($default_preset,array(
	'color' => 'red'
)));

$warp->config->addPreset('ocean', 'Ocean', array_merge($default_preset,array(
	'color' => 'ocean'
)));

$warp->config->applyPreset();