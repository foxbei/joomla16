<?php
/**
* @package   yoo_noble Template
* @file      template.php
* @version   5.5.0 January 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// get template configuration
include(dirname(__FILE__).'/template.config.php');
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->warp->config->get('language'); ?>" lang="<?php echo $this->warp->config->get('language'); ?>" dir="<?php echo $this->warp->config->get('direction'); ?>" >
<head>
<?php echo $this->warp->template->render('head'); ?>
<link rel="apple-touch-icon" href="<?php echo $this->warp->path->url('template:apple_touch_icon.png'); ?>" />
</head>

<body id="page" class="yoopage <?php echo $this->warp->config->get('columns'); ?> <?php echo $this->warp->config->get('itemcolor'); ?> <?php echo $this->warp->config->get('toolscolor'); ?> <?php echo $this->warp->config->get('webfonts'); ?> <?php echo 'background-'.$this->warp->config->get('background'); ?> <?php echo 'texture-'.$this->warp->config->get('texture'); ?> <?php echo 'illustration-'.$this->warp->config->get('illustration'); ?> <?php echo 'font-'.$this->warp->config->get('font'); ?>">

	<?php if ($this->warp->modules->count('absolute')) : ?>
	<div id="absolute">
		<?php echo $this->warp->modules->render('absolute'); ?>
	</div>
	<?php endif; ?>

	<div id="page-body">

		<div class="wrapper">
		
			<?php if ($this->warp->modules->count('logo')) : ?>		
			<div id="logo">
				<?php echo $this->warp->modules->render('logo'); ?>
			</div>
			<?php endif; ?>
			
			<?php if ($this->warp->modules->count('banner')) : ?>
			<div id="banner">
				<?php echo $this->warp->modules->render('banner'); ?>
			</div>
			<?php endif;  ?>
			
			<div id="middle">
				<div id="middle-expand">

					<div id="main">
						<div id="main-shift">
						
							<div class="main-wrapper-1">
								<div class="main-wrapper-2">
									
										<div class="contentleft-bg">
											<div class="contentright-bg">

												<div id="mainmiddle">
		
													<div id="mainmiddle-expand">

														<div id="content">
															<div id="content-shift">
															
																<div class="content-wrapper-1">
																	<div class="content-wrapper-2">
																	
																		<div id="header">
																		
																			<div id="toolbar">
																			
																				<?php if($this->warp->config->get('date')) : ?>
																				<div id="date">
																					<?php echo $this->warp->config->get('actual_date'); ?>
																				</div>
																				<?php endif; ?>
																			
																				<?php if ($this->warp->modules->count('toolbarleft')) : ?>
																				<div class="left">
																					<?php echo $this->warp->modules->render('toolbarleft'); ?>
																				</div>
																				<?php endif; ?>
																				
																				<?php if ($this->warp->modules->count('toolbarright')) : ?>
																				<div class="right">
																					<?php echo $this->warp->modules->render('toolbarright'); ?>
																				</div>
																				<?php endif; ?>
																				
																				
																				
																			</div>
																			
																			<?php if ($this->warp->modules->count('search')) : ?>
																			<div id="search">
																				<?php echo $this->warp->modules->render('search'); ?>
																			</div>
																			<?php endif; ?>
															
																			<?php  if ($this->warp->modules->count('menu')) : ?>
																			<div class="menubar">
																				<div class="menubar-2">
																					<div id="menu">
																						<?php echo $this->warp->modules->render('menu'); ?>
																					</div>
																				</div>
																			</div>
																			<?php endif; ?>
															
																		</div>
																		<!-- header end -->
																		
																		<?php  if ($this->warp->modules->count('top + topblock')) : ?>
																		<div id="top" class="<?php if(!$this->warp->modules->count('topblock')) echo "no-topblock"; ?> <?php if(!$this->warp->modules->count('top')) echo "no-topbox"; ?>">

																			<?php if($this->warp->modules->count('topblock')) : ?>
																			<div class="topblock width100 float-left">
																				<?php echo $this->warp->modules->render('topblock'); ?>
																			</div>
																			<?php endif; ?>
																
																			<?php if ($this->warp->modules->count('top')) : ?>
																				<?php echo $this->warp->modules->render('top', array('wrapper'=>"topbox float-left", 'layout'=>$this->warp->config->get('top'))); ?>
																			<?php endif; ?>

																		</div>
																		<!-- top end -->
																		<?php endif; ?>
																		
																		<?php if ($this->warp->modules->count('breadcrumbs')) : ?>
																		<div id="breadcrumbs">
																			<?php echo $this->warp->modules->render('breadcrumbs'); ?>
																		</div>
																		<?php endif; ?>
							
																		<div id="component" class="floatbox">
																			<?php echo $this->warp->template->render('content'); ?>
																		</div>
																		<div class="cleardiv"></div>
											
																		<?php if ($this->warp->modules->count('bottom + bottomblock')) : ?>
																		<div id="bottom" class="<?php if(!$this->warp->modules->count('bottom')) echo "no-bottombox"; ?>">

																			<?php if ($this->warp->modules->count('bottom')) : ?>
																				<?php echo $this->warp->modules->render('bottom', array('wrapper'=>"bottombox float-left", 'layout'=>$this->warp->config->get('bottom'))); ?>
																			<?php endif; ?>
																			
																			<?php if($this->warp->modules->count('bottomblock')) : ?>
																			<div class="bottomblock width100 float-left">
																				<?php echo $this->warp->modules->render('bottomblock'); ?>
																			</div>
																			<?php endif; ?>

																		</div>
																		<!-- bottom end -->
																		<?php endif; ?>
																		
																		<?php if ($this->warp->modules->count('footer + debug')) : ?>
																		<div id="footer">
																			<a class="anchor" href="#page"></a>
																			<?php echo $this->warp->modules->render('footer'); ?>
																			<?php echo $this->warp->modules->render('debug'); ?>
																		</div>
																		<?php endif; ?>

																	</div>
																</div>
															
															</div>
														</div>
														<!-- content end -->
														
														<?php if($this->warp->modules->count('contentleft')) : ?>
														<div id="contentleft">
															<?php echo $this->warp->modules->render('contentleft'); ?>
														</div>
														<?php endif; ?>
														
														<?php if($this->warp->modules->count('contentright')) : ?>
														<div id="contentright">
															<?php echo $this->warp->modules->render('contentright'); ?>
														</div>
														<?php endif; ?>
														
													</div>
		
												</div>
												<!-- mainmiddle end -->

											</div>												
										</div>
										
								</div>
							</div>
							
						</div>
					</div>

					<?php if($this->warp->modules->count('left')) : ?>
					<div id="left">
						<?php echo $this->warp->modules->render('left'); ?>
					</div>
					<?php endif; ?>
					
					<?php if($this->warp->modules->count('right')) : ?>
					<div id="right">
						<?php echo $this->warp->modules->render('right'); ?>
					</div>
					<?php endif; ?>

				</div>
			</div>
			
		</div>

	</div>
	
	<?php echo $this->render('footer'); ?>
	
</body>
</html>