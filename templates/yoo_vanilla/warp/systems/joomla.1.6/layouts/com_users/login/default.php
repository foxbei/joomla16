<?php 
/**
* @package   Warp Theme Framework
* @file      default.php
* @version   5.5.12
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// logged in ?
echo $this->loadTemplate($this->user->get('guest') ? 'login' : 'logout');