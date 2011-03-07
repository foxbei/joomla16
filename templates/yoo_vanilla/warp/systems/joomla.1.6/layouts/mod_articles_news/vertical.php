<?php
/**
* @package   Warp Theme Framework
* @file      vertical.php
* @version   5.5.12
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright  2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// no direct access
defined('_JEXEC') or die;

?>

<?php if (count($list) > 0) : ?>
	<ul class="newsflash line">
		<?php for ($i = 0, $n = count($list); $i < $n; $i ++) : ?>
		<?php $item = $list[$i]; ?>
		<li class="item <?php if ($i == $n - 1) echo 'last'; ?>">
			<?php require JModuleHelper::getLayoutPath('mod_articles_news', '_item'); ?>
		</li>
		<?php endfor; ?>
	</ul>
<?php endif; ?>
