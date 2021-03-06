<?php
/**
* @package   Warp Theme Framework
* @file      default_core.php
* @version   5.5.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.user.helper');
?>

<fieldset id="users-profile-core">
	<legend>
		<?php echo JText::_('COM_USERS_PROFILE_CORE_LEGEND'); ?>
	</legend>
	<ul>
		<li><strong><?php echo JText::_('COM_USERS_PROFILE_NAME_LABEL'); ?>:</strong> <?php echo $this->data->name; ?></li>
		<li><strong><?php echo JText::_('COM_USERS_PROFILE_USERNAME_LABEL'); ?>:</strong> <?php echo $this->data->username; ?></li>
		<li><strong><?php echo JText::_('COM_USERS_PROFILE_REGISTERED_DATE_LABEL'); ?>:</strong> <?php echo JHTML::_('date',$this->data->registerDate); ?></li>
		<li><strong><?php echo JText::_('COM_USERS_PROFILE_LAST_VISITED_DATE_LABEL'); ?>:</strong> <?php echo ($this->data->lastvisitDate != '0000-00-00 00:00:00' ? JHTML::_('date', $this->data->lastvisitDate) : JText::_('COM_USERS_PROFILE_NEVER_VISITED')); ?></li>
	</ul>
</fieldset>