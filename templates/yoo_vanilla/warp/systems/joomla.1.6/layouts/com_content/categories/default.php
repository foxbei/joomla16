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
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers');

?>

<div id="system" class="<?php $this->pageclass_sfx; ?>">

	<?php if ($this->params->get('show_page_heading', 1)) : ?>
	<h1 class="title"><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
	<?php endif; ?>
	
	<?php
		if ($this->params->get('show_base_description')) {
		
			//If there is a description in the menu parameters use that
			if($this->params->get('categories_description')) {
				JHtml::_('content.prepare',$this->params->get('categories_description'));
			} else {
				
				//Otherwise get one from the database if it exists
				if ($this->parent->description) {
					echo '<div class="category-desc">'.JHtml::_('content.prepare', $this->parent->description).'</div>';
				}
				
			}
		}
	?>
	
	<?php echo $this->loadTemplate('items'); ?>

</div>