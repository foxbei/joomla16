<?php
/**
* @package   yoo_air Template
* @file      blog_item.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die;

// Create a shortcut for params.
$params		= &$this->item->params;
$canEdit	= $this->item->params->get('access-edit');
JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::core();

?>

<div class="item">

	<?php if ($params->get('show_email_icon')) : ?>
	<div class="icon email"><?php echo JHtml::_('icon.email', $this->item, $params); ?></div>
	<?php endif; ?>

	<?php if ($params->get('show_print_icon')) : ?>
	<div class="icon print"><?php echo JHtml::_('icon.print_popup', $this->item, $params); ?></div>
	<?php endif; ?>
	
	<?php if ($params->get('show_create_date')) : ?>
	<div class="date">
		<div class="month"><?php echo JHTML::_('date',$this->item->created, JText::_('M')); ?></div>
		<div class="day"><?php echo JHTML::_('date',$this->item->created, JText::_('d')); ?></div>
	</div>
	<?php endif; ?>

	<?php if ($params->get('show_title')) : ?>
	<h1 class="title">

		<?php if ($params->get('link_titles') && $params->get('access-view')) : ?>
			<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid)); ?>" title="<?php echo $this->escape($this->item->title); ?>"><?php echo $this->escape($this->item->title); ?></a>
		<?php else : ?>
			<?php echo $this->escape($this->item->title); ?>
		<?php endif; ?>

	</h1>
	<?php endif; ?>

	<?php
	
		if (!$params->get('show_intro')) {
			echo $this->item->event->afterDisplayTitle;
		}
	
		echo $this->item->event->beforeDisplayContent;

	?>

	<div class="content"><?php echo $this->item->introtext; ?></div>

	<?php if ($params->get('show_readmore') && $this->item->readmore) : ?>
	<p class="links">
	
		<?php
		
			if ($params->get('access-view')) {
				$link = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid));
			} else {
				$menu = JFactory::getApplication()->getMenu();
				$active = $menu->getActive();
				$itemId = $active->id;
				$link1 = JRoute::_('index.php?option=com_users&view=login&Itemid=' . $itemId);
				$returnURL = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug));
				$link = new JURI($link1);
				$link->setVar('return', base64_encode($returnURL));
			}
			
		?>

		<a href="<?php echo $link; ?>" title="<?php echo $this->escape($this->item->title); ?>">
			<?php
				
				if (!$params->get('access-view')) {
					echo JText::_('COM_CONTENT_REGISTER_TO_READ_MORE');
				} elseif ($readmore = $this->item->alternative_readmore) {
					echo $readmore;
				} else {
					echo JText::_('TPL_WARP_CONTINUE_READING');
				}
				
			?>
		</a>
		
	</p>
	<?php endif; ?>
	
	<?php if (($params->get('show_author') && !empty($this->item->author)) || $params->get('show_category')) : ?>
	<p class="meta">

		<?php
			
			if ($params->get('show_author') && !empty($this->item->author )) {
				
				$author =  $this->item->author;
				$author = ($this->item->created_by_alias ? $this->item->created_by_alias : $author);
				
				if (!empty($this->item->contactid ) &&  $params->get('link_author') == true) {
					echo JText::sprintf('COM_CONTENT_WRITTEN_BY', JHTML::_('link',JRoute::_('index.php?option=com_contact&view=contact&id='.$this->item->contactid),$author));
				} else {
					echo JText::sprintf('COM_CONTENT_WRITTEN_BY', $author);
				}

			}
	
			echo '. ';

			if ($params->get('show_category')) {
				echo JText::_('TPL_WARP_POSTED_IN').' ';
				$title = $this->escape($this->item->category_title);
				$url = '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->catid)).'">'.$title.'</a>';
				if ($params->get('link_category')) {
					echo $url;
				} else {
					echo $title;
				}
			}

		?>	
	
	</p>
	<?php endif; ?>

	<?php if ($canEdit) : ?>
	<p class="edit"><?php echo JHtml::_('icon.edit', $this->item, $params); ?> <?php echo JText::_('TPL_WARP_EDIT_ARTICLE'); ?></p>
	<?php endif; ?>

	<?php echo $this->item->event->afterDisplayContent; ?>
	
</div>