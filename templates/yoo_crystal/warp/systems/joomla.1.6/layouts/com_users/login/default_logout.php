<?php
/**
* @package   Warp Theme Framework
* @file      default_logout.php
* @version   5.5.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
?>

<div id="system" class="<?php echo $this->pageclass_sfx; ?>">
	
	<?php if ($this->params->get('show_page_heading')) : ?>
	<h1 class="title"><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
	<?php endif; ?>

	<?php if ($this->params->get('logoutdescription_show') || $this->params->get('logout_image')) : ?>
	<div class="description">
		<?php if ($this->params->get('logout_image')) : ?>
			<img src="<?php $this->escape($this->params->get('logout_image')); ?>" alt="<?php echo JText::_('COM_USER_LOGOUT_IMAGE_ALT')?>" />
		<?php endif; ?>
		<?php if ($this->params->get('logoutdescription_show')) echo $this->params->get('logout_description'); ?>
	</div>
	<?php endif; ?>

	<form action="<?php echo JRoute::_('index.php?option=com_users&task=user.logout'); ?>" method="post" class="submission">
		<button type="submit" class="button"><?php echo JText::_('JLOGOUT'); ?></button>
		<input type="hidden" name="return" value="<?php echo base64_encode($this->params->get('logout_redirect_url',$this->form->getValue('return'))); ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</form>
	
</div>