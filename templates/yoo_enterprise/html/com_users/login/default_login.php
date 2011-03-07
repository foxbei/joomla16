<?php
/**
* @package   yoo_enterprise Template
* @file      default_login.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// include config and layout
$base = dirname(dirname(dirname(__FILE__)));
include($base.'/config.php');
include($warp->path->path('layouts:'.preg_replace('/'.preg_quote($base, '/').'/', '', __FILE__, 1)));