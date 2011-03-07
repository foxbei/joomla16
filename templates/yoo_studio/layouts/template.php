<?php
/**
* @package   yoo_studio Template
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

<body id="page" class="yoopage <?php echo $this->warp->config->get('columns'); ?> <?php echo $this->warp->config->get('itemcolor'); ?>">

	<?php if($this->warp->modules->count('absolute')) : ?>
	<div id="absolute">
		<?php echo $this->warp->modules->render('absolute'); ?>
	</div>
	<?php endif; ?>

	<div id="page-body">
		<div class="page-body-img">
			<div class="wrapper">
	
				<div id="header">
	
					<div id="toolbar">
					
						<?php if($this->warp->config->get('date')) : ?>
						<div id="date">
							<div class="module mod-toolbar"><div class="box-1"><div class="box-2"><div class="box-3 deepest">
								<?php echo $this->warp->config->get('actual_date'); ?>
							</div></div></div></div>
						</div>
						<?php endif; ?>
					
						<?php if($this->warp->modules->count('toolbarleft')) : ?>
						<div class="left">
							<?php echo $this->warp->modules->render('toolbarleft'); ?>
						</div>
						<?php endif; ?>
						
						<?php if($this->warp->modules->count('toolbarright')) : ?>
						<div class="right">
							<?php echo $this->warp->modules->render('toolbarright'); ?>
						</div>
						<?php endif; ?>
						
					</div>
	
								
					<div id="headerbar">
	
						<?php if($this->warp->modules->count('headerleft')) : ?>
						<div class="left">
							<?php echo $this->warp->modules->render('headerleft'); ?>
						</div>
						<?php endif; ?>
						
						<?php if($this->warp->modules->count('headerright')) : ?>
						<div class="right">
							<?php echo $this->warp->modules->render('headerright'); ?>
						</div>
						<?php endif; ?>
						
					</div>
	
					<?php if($this->warp->modules->count('logo')) : ?>		
					<div id="logo">
						<?php echo $this->warp->modules->render('logo'); ?>
					</div>
					<?php endif; ?>

					<?php if ($this->warp->modules->count('banner')) : ?>
					<div id="banner">
						<?php echo $this->warp->modules->render('banner'); ?>
					</div>
					<?php endif; ?>
	
				</div>
				<!-- header end -->
	
	
				<?php if ($this->warp->modules->count('top + topblock')) : ?>
				<div id="top">
	
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
	
				<div class="menubar">
	
					<?php if($this->warp->modules->count('menu')) : ?>
					<div id="menu">
                        <?php echo $this->warp->modules->render('menu'); ?>
					</div>
					<?php endif; ?>
	
					<?php if($this->warp->modules->count('search')) : ?>
					<div id="search" class="<?php if($this->warp->modules->count('left + right')) echo "sidebar-search"; ?>">
						<?php echo $this->warp->modules->render('search'); ?>
					</div>
					<?php endif; ?>
					
					<div class="content-wrapper-t1">
						<div class="content-wrapper-t2">
							<div class="content-wrapper-t3"></div>
						</div>
					</div>
					
				</div>
				
				<div class="content-wrapper-1">
					<div class="content-wrapper-2">
						<div class="content-wrapper-3">
							<div class="content-wrapper-4">
					
								<div id="middle">
									<div id="middle-expand">
					
										<div id="main">
											<div id="main-shift">
	
												<?php if ($this->warp->modules->count('breadcrumbs')) : ?>
												<div id="breadcrumbs">
													<?php echo $this->warp->modules->render('breadcrumbs'); ?>
												</div>
												<?php endif; ?>
	
												<?php if ($this->warp->modules->count('maintop + maintopblock')) : ?>
												<div id="maintop">
	
													<?php if($this->warp->modules->count('maintopblock')) : ?>
													<div class="maintopblock width100 float-left <?php if ($this->warp->modules->count('maintop')) echo "not-last"; ?>">
                                                        <?php echo $this->warp->modules->render('maintopblock'); ?>
													</div>
													<?php endif; ?>
												
													<?php if ($this->warp->modules->count('maintop')) : ?>
                                                        <?php echo $this->warp->modules->render('maintop', array('wrapper'=>"maintopbox float-left", 'layout'=>$this->warp->config->get('maintop'))); ?>
													<?php endif; ?>
	
												</div>
												<!-- maintop end -->
												<?php endif; ?>
	
												<div class="component-bg floatbox <?php if (!$this->warp->modules->count('mainbottom + mainbottomblock')) echo "last"; ?>">
													<jdoc:include type="message" />
													<?php echo $this->warp->template->render('content'); ?>
												</div>
	
												<?php if ($this->warp->modules->count('mainbottom + mainbottomblock')) : ?>
												<div id="mainbottom">
	
													<?php if ($this->warp->modules->count('mainbottom')) : ?>
														<?php echo $this->warp->modules->render('mainbottom', array('wrapper'=>"mainbottombox float-left", 'layout'=>$this->warp->config->get('mainbottom'))); ?>
                                                    <?php endif; ?>
	
													<?php if($this->warp->modules->count('mainbottomblock')) : ?>
													<div class="mainbottomblock width100 float-left">
														<?php echo $this->warp->modules->render('mainbottomblock'); ?>
													</div>
													<?php endif; ?>
	
												</div>
												<!-- maintop end -->
												<?php endif; ?>
	
											</div>
										</div>
										
										<?php if($this->warp->modules->count('left')) : ?>
										<div id="left" class="sidebar">
											<?php echo $this->warp->modules->render('left'); ?>
										</div>
										<?php endif; ?>
										
										<?php if($this->warp->modules->count('right')) : ?>
										<div id="right" class="sidebar">
											<?php echo $this->warp->modules->render('right'); ?>
										</div>
										<?php endif; ?>
								
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
	
				<div class="content-wrapper-b1">
					<div class="content-wrapper-b2">
						<div class="content-wrapper-b3"></div>
					</div>
				</div>
	
			</div>
		</div>
	</div>

	<div id="page-footer">
		<div class="wrapper">

			<?php if ($this->warp->modules->count('bottom + bottomblock')) : ?>
			<div id="bottom">
			
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
			<!-- footer end -->
			<?php endif; ?>
			
		</div>
	</div>

</body>
</html>