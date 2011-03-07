<?php
/**
* @package   Warp Theme Framework
* @file      default.php
* @version   5.5.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
?>

<div id="system" class="<?php $this->pageclass_sfx; ?>">
	
	<?php if ($this->params->get('show_page_heading')) : ?>
	<h1 class="title"><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
	<?php endif; ?>

	<form action="<?php echo JRoute::_('index.php?option=com_users&task=reset.request'); ?>" method="post" class="submission">
		<?php foreach ($this->form->getFieldsets() as $fieldset): ?>
		<p><?php echo JText::_($fieldset->label); ?></p>
		<fieldset>
			<?php foreach ($this->form->getFieldset($fieldset->name) as $name => $field): ?>
				<div><?php echo $field->label.$field->input; ?></div>
			<?php endforeach; ?>
		</fieldset>
		<?php endforeach; ?>

		<div class="submit">
			<button type="submit"><?php echo JText::_('JSUBMIT'); ?></button>
		</div>

		<?php echo JHtml::_('form.token'); ?>
	</form>

</div>