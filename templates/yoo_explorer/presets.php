<?php
/**
* @package   yoo_explorer Template
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

$warp->config->addPreset('default', 'Business', array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('adventure', 'Adventure',  array_merge($default_preset,array(
	'color' => 'adventure'
)));

$warp->config->addPreset('travel', 'Travel',  array_merge($default_preset,array(
	'color' => 'travel'
)));

$warp->config->addPreset('sports', 'Sports',  array_merge($default_preset,array(
	'color' => 'sports'
)));

$warp->config->addPreset('blogging', 'Blogging',  array_merge($default_preset,array(
	'color' => 'blogging'
)));

$warp->config->applyPreset();