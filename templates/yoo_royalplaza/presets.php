<?php
/**
* @package   yoo_royalplaza Template
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

$warp->config->addPreset('default', 'Royal',array_merge($default_preset,array(
	'color' => 'default'
)));

$warp->config->addPreset('royalplain', 'Royal Plain', array_merge($default_preset,array(
	'color' => 'royalplain'
)));

$warp->config->addPreset('vintage', 'Vintage', array_merge($default_preset,array(
	'color' => 'vintage'
)));

$warp->config->addPreset('vintageplain', 'Vintage Plain', array_merge($default_preset,array(
	'color' => 'vintageplain'
)));

$warp->config->addPreset('business', 'Business', array_merge($default_preset,array(
	'color' => 'business'
)));

$warp->config->addPreset('businessplain', 'Business Plain', array_merge($default_preset,array(
	'color' => 'businessplain'
)));

$warp->config->applyPreset();