<?php
/**
* @package   yoo_intro Template
* @file      0-2-0_h.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// example: angled module with border

?>
<div class="module <?php echo $style; ?> <?php echo $color; ?> <?php echo $yootools; ?> <?php echo $first; ?> <?php echo $last; ?>">

	<?php if ($showtitle) : ?>
	<h3 class="header"><span class="header-2"><span class="header-3"><?php echo $title; ?></span></span></h3>
	<?php endif; ?>

	<?php echo $badge; ?>
	
	<div class="box-1">
		<div class="box-2 deepest <?php if ($showtitle) echo 'with-header'; ?>">

			<?php echo $content; ?>
			
		</div>
	</div>
		
</div>