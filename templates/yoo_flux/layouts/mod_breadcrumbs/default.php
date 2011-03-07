<?php
/**
* @package   yoo_flux Template
* @file      default.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
?>
<div class="breadcrumbs"><?php

	if (!$params->get('showLast', 1)) array_pop($list);

	$count = count($list);

	for ($i = 0; $i < $count; $i ++) {
	
		// clean subtitle from breadcrumb
		if ($pos = strpos($list[$i]->name, '||')) {
			$name = trim(substr($list[$i]->name, 0, $pos));
		} else {
			$name = $list[$i]->name;
		}
		
		// mark-up last item as strong
		if ($i < $count-1) {
			if(!empty($list[$i]->link)) {
				echo '<a class="box-1" href="'.$list[$i]->link.'"><span class="box-2"><span class="box-3">'.$name.'</span></span></a>';
			} else {
				echo '<span class="box-1"><span class="box-2"><span class="box-3">'.$name.'</span></span></span>';
			}
		} else {
			echo '<span class="box-1 current"><span class="box-2"><span class="box-3">'.$name.'</span></span></span>';
		}

	}

?></div>