<?php // example: rider ?>
<div class="module <?php echo $style; ?> <?php echo $color; ?> <?php echo $yootools; ?> <?php echo $first; ?> <?php echo $last; ?>">

	<?php if ($showtitle) : ?>
	<h3 class="header"><span class="header-2"><span class="header-3"><?php echo $title; ?></span></span></h3>
	<?php endif; ?>
	
	<?php echo $badge; ?>
	
	<div class="box-t1">
		<div class="box-t2"></div>
	</div>
	
	<div class="box-1 deepest <?php if ($showtitle) echo 'with-header'; ?>">
		<?php echo $content; ?>
	</div>

	<div class="box-b1">
		<div class="box-b2"></div>
	</div>

</div>