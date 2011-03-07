<?php
/**
* @package   yoo_noble Template
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

$warp->config->addPreset('default', 'Red', array_merge($default_preset,array(
	'color' => 'yellow',
	'background' => 'red',
	'texture' => 'none',
	'illustration' => 'none',
	'font' => 'georgia'
)));

$warp->config->addPreset('green', 'Green',  array_merge($default_preset,array(
	'color' => 'beige',
	'background' => 'green',
	'texture' => 'bigstripes',
	'illustration' => 'none',
	'font' => 'lucida'
)));

$warp->config->addPreset('blue', 'Blue',  array_merge($default_preset,array(
	'color' => 'default',
	'background' => 'blue',
	'texture' => 'none',
	'illustration' => 'none',
	'font' => 'default'
)));

$warp->config->addPreset('grey', 'Grey',  array_merge($default_preset,array(
	'color' => 'white',
	'background' => 'grey',
	'texture' => 'noise',
	'illustration' => 'pen',
	'font' => 'trebuchet'
)));

$warp->config->addPreset('ochre', 'Ochre',  array_merge($default_preset,array(
	'color' => 'beige',
	'background' => 'ochre',
	'texture' => 'stripes',
	'illustration' => 'coffee',
	'font' => 'lucida'
)));

$warp->config->addPreset('lilac', 'Lilac',  array_merge($default_preset,array(
	'color' => 'default',
	'background' => 'lilac',
	'texture' => 'flowers',
	'illustration' => 'none',
	'font' => 'trebuchet'
)));

$warp->config->addPreset('beige', 'Beige',  array_merge($default_preset,array(
	'color' => 'beige',
	'background' => 'beige',
	'texture' => 'linnen',
	'illustration' => 'biscuit',
	'font' => 'default'
)));

$warp->config->addPreset('brown', 'Brown',  array_merge($default_preset,array(
	'color' => 'yellow',
	'background' => 'brown',
	'texture' => 'none',
	'illustration' => 'none',
	'font' => 'georgia'
)));

$warp->config->applyPreset();