<?php
/**
* @package   yoo_pure Template
* @file      default_items.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.DS.'helpers');
$params = &$this->params;

?>

<div class="items">

	<?php foreach ($this->items as $i => $item) : ?>
	<div class="item">

		<?php if ($params->get('show_create_date')) : ?>
		<div class="date">
			<div class="month"><?php echo JHTML::_('date',$item->created, JText::_('F')); ?></div>
			<div class="day"><?php echo JHTML::_('date',$item->created, JText::_('d')); ?></div>
		</div>
		<?php endif; ?>

		<h1 class="title">
	
			<?php if ($params->get('link_titles')): ?>
				<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug,$item->catslug)); ?>" title="<?php echo $this->escape($item->title); ?>"><?php echo $this->escape($item->title); ?></a>
			<?php else : ?>
				<?php echo $this->escape($item->title); ?>
			<?php endif; ?>
	
		</h1>

		<?php if (($params->get('show_author') && !empty($this->item->author)) || $params->get('show_category')) : ?>
		<p class="meta">
	
			<?php
				
				if ($params->get('show_author') && !empty($item->author )) {
					
					$author = $item->author;
					$author = ($item->created_by_alias ? $item->created_by_alias : $author);
					
					if (!empty($item->contactid ) &&  $params->get('link_author') == true) {
						echo '<span><span>'.JText::_('JAUTHOR').':</span> '.JHTML::_('link',JRoute::_('index.php?option=com_contact&view=contact&id='.$item->contactid),$author).'</span>';
					} else {
						echo '<span><span>'.JText::_('JAUTHOR').':</span> '.$author.'</span>';
					}
	
				}
	
				if ($params->get('show_category')) {
					echo '<span><span>'.JText::_('TPL_WARP_POSTED_IN').':</span> ';
					$title = $this->escape($item->category_title);
					$url = '<a href="' . JRoute::_(ContentHelperRoute::getCategoryRoute($item->catslug)).'">'.$title.'</a>';
					if ($params->get('link_category')) {
						echo $url.'</span>';
					} else {
						echo $title.'</span>';
					}
				}
	
			?>	
		
		</p>
		<?php endif; ?>

		<?php if ($params->get('show_intro')) :?>
		<div class="content"><?php echo JHTML::_('string.truncate', $item->introtext, $params->get('introtext_limit')); ?></div>		
		<?php endif; ?>

	</div>
	<?php endforeach; ?>

</div>

<?php echo $this->pagination->getPagesLinks(); ?>