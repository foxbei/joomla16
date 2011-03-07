<?php
/**
* @package   yoo_mellow Template
* @file      default.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.DS.'helpers');

// Create shortcuts to some parameters.
$params		= $this->item->params;
$canEdit	= $this->item->params->get('access-edit');

?>

<div id="system" class="<?php $this->pageclass_sfx; ?>">

	<?php if ($this->params->get('show_page_heading', 1)) : ?>
	<h1 class="title"><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
	<?php endif; ?>

	<div class="item">

		<?php if (!$this->print) : ?>
			<?php if ($params->get('show_email_icon')) : ?>
			<div class="icon email"><?php echo JHtml::_('icon.email',  $this->item, $params); ?></div>
			<?php endif; ?>
		
			<?php if ($params->get('show_print_icon')) : ?>
			<div class="icon print"><?php echo JHtml::_('icon.print_popup',  $this->item, $params); ?></div>
			<?php endif; ?>
		<?php else : ?>
			<div class="icon printscreen"><?php echo JHtml::_('icon.print_screen',  $this->item, $params); ?></div>
		<?php endif; ?>

		<?php if ($params->get('show_title')|| $params->get('access-edit')) : ?>
		<div class="headline">
			<h1 class="title">

				<?php if ($params->get('link_titles') && !empty($this->item->readmore_link)) : ?>
					<a href="<?php echo $this->item->readmore_link; ?>"><?php echo $this->escape($this->item->title); ?></a>
				<?php else : ?>
						<?php echo $this->escape($this->item->title); ?>
				<?php endif; ?>
				
			</h1>
		</div>
		<?php endif; ?>
		
		<?php if ($params->get('show_create_date') || ($params->get('show_author') && !empty($this->item->author)) || $params->get('show_category')) : ?>
		<p class="meta">
	
			<?php
				
				if ($params->get('show_author') && !empty($this->item->author )) {
					
					$author =  $this->item->author;
					$author = ($this->item->created_by_alias ? $this->item->created_by_alias : $author);
					
					if (!empty($this->item->contactid ) &&  $params->get('link_author') == true) {
						echo JText::sprintf('COM_CONTENT_WRITTEN_BY' , JHTML::_('link',JRoute::_('index.php?option=com_contact&view=contact&id='.$this->item->contactid),$author));
					} else {
						echo JText::sprintf('COM_CONTENT_WRITTEN_BY', $author);
					}

				}

				if ($params->get('show_create_date')) {
					echo ' '.JText::_('TPL_WARP_ON').' '.JHTML::_('date',$this->item->created, JText::_('DATE_FORMAT_LC3'));
				}

				echo '. ';
			
				if ($params->get('show_category')) {
					echo JText::_('TPL_WARP_POSTED_IN').' ';
					$title = $this->escape($this->item->category_title);
					$url = '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->catslug)).'">'.$title.'</a>';
					if ($params->get('link_category') AND $this->item->catslug) {
						echo $url;
					} else {
						echo $title;
					}
				}
			
			?>	
		
		</p>
		<?php endif; ?>

		<?php
		
			if (!$params->get('show_intro')) {
				echo $this->item->event->afterDisplayTitle;
			}
		
			echo $this->item->event->beforeDisplayContent;

			if (isset ($this->item->toc)) {
				echo $this->item->toc;
			}
			
		?>

		<div class="content"><?php echo $this->item->text; ?></div>

		<?php if ($canEdit) : ?>
		<p class="edit"><?php echo JHtml::_('icon.edit', $this->item, $params); ?> <?php echo JText::_('TPL_WARP_EDIT_ARTICLE'); ?></p>
		<?php endif; ?>

		<?php echo $this->item->event->afterDisplayContent; ?>
	
	</div>

</div>