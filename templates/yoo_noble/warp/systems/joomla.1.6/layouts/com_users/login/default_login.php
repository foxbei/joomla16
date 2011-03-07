<?php
/**
* @package   Warp Theme Framework
* @file      default_login.php
* @version   5.5.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

JHtml::_('behavior.keepalive');
	
?>

<div id="system" class="<?php $this->pageclass_sfx; ?>">
	
	<?php if ($this->params->get('show_page_heading')) : ?>
	<h1 class="title"><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
	<?php endif; ?>

	<?php if ($this->params->get('logindescription_show') || $this->params->get('login_image')) : ?>
	<div class="description">
		<?php if ($this->params->get('login_image')) : ?>
			<img src="<?php $this->escape($this->params->get('login_image')); ?>" alt="<?php echo JText::_('COM_USER_LOGIN_IMAGE_ALT')?>" />
		<?php endif; ?>
		<?php if ($this->params->get('logindescription_show')) echo $this->params->get('login_description'); ?>
	</div>
	<?php endif; ?>

	<form action="<?php echo JRoute::_('index.php?option=com_users&task=user.login'); ?>" method="post" class="submission">
	
		<fieldset>
			<legend><?php echo JText::_('JLOGIN') ?></legend>
			<?php foreach ($this->form->getFieldset('credentials') as $field): ?>
				<?php if (!$field->hidden): ?>
					<div><?php echo $field->label.$field->input; ?></div>
				<?php endif; ?>
			<?php endforeach; ?>
		</fieldset>
		
		<div class="submit">
			<button type="submit" class="button"><?php echo JText::_('JLOGIN'); ?></button>
		</div>	

		<input type="hidden" name="return" value="<?php echo base64_encode($this->params->get('login_redirect_url',$this->form->getValue('return'))); ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</form>

</div>