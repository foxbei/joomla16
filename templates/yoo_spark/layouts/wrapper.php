<?php
/**
* @package   yoo_spark Template
* @file      wrapper.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// init propotions
$propotions['default'] = array(
			1 => array('width100'),
			2 => array('width50', 'width50'),
			3 => array('width33', 'width34', 'width33'),
			4 => array('width25', 'width25', 'width25', 'width25'),
			5 => array('width20', 'width20', 'width20', 'width20', 'width20'));

$propotions['goldenratio'] = array(
			1 => array('width100'),
			2 => array('width67', 'width33'),
			3 => array('width54', 'width23', 'width23'),
			4 => array('width46', 'width18', 'width18', 'width18'),
			5 => array('width40', 'width15', 'width15', 'width15', 'width15'));

// set propotion and class
$propotion = $propotions[array_key_exists($layout, $propotions) ? $layout : 'default'];
$class     = array($wrapper);

// set width
if (isset($propotion[$params['count']][$params['order'] - 1])) {
	$class[] = $propotion[$params['count']][$params['order'] - 1];
}

// set separator
if (!$params['last']) {
	$class[] = 'separator';
}

printf('<div class="%s">%s</div>', implode(' ', $class), $output);