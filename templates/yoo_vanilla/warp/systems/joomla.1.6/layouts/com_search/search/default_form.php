<?php
/**
* @package   Warp Theme Framework
* @file      default_form.php
* @version   5.5.12
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access'); ?>

<form id="searchForm" action="<?php echo JRoute::_('index.php?option=com_search');?>" method="post" name="searchForm">

	<fieldset>
		<legend><?php echo JText::_('COM_SEARCH_SEARCH'); ?></legend>
	
		<div>
			<label for="search_searchword"><?php echo JText::_('COM_SEARCH_SEARCH_KEYWORD'); ?></label>
			<input type="text" name="searchword" id="search_searchword" size="30" maxlength="20" value="<?php echo $this->escape($this->searchword); ?>" class="inputbox" />
			<button name="Search" onclick="this.form.submit()" class="button"><?php echo JText::_('COM_SEARCH_SEARCH'); ?></button>
		</div>
		
		<div>
			<?php echo $this->lists['searchphrase']; ?>
		</div>
		
		<div>
			<label for="ordering"><?php echo JText::_('COM_SEARCH_ORDERING'); ?></label>
			<?php echo $this->lists['ordering'];?>
		</div>
		
		<?php if ($this->params->get('search_areas', 1)) : ?>
		<div>
			<?php echo JText::_('COM_SEARCH_SEARCH_ONLY'); ?>
			<?php foreach ($this->searchareas['search'] as $val => $txt) : ?>
				<?php  $checked = is_array($this->searchareas['active']) && in_array($val, $this->searchareas['active']) ? 'checked="checked"' : ''; ?>
				<input type="checkbox" name="areas[]" value="<?php echo $val;?>" id="area_<?php echo $val;?>" <?php echo $checked;?> />
				<label for="area_<?php echo $val;?>">
					<?php echo JText::_($txt); ?>
				</label>
			<?php endforeach; ?>
		</div>
		<?php endif; ?>

		<?php if (!empty($this->searchword)): ?>
		<div>
			<?php echo JText::plural('COM_SEARCH_SEARCH_KEYWORD_N_RESULTS', $this->total);?>
		</div>
		<?php endif;?>
			
	</fieldset>

	<?php if ($this->total > 0) : ?>
	<div class="filter">
		<label for="limit"><?php echo JText::_('JGLOBAL_DISPLAY_NUM'); ?></label>
		<?php echo $this->pagination->getLimitBox(); ?>
		<?php echo $this->pagination->getPagesCounter(); ?>
	</div>
	<?php endif; ?>

	<input type="hidden" name="task" value="search" />
</form>