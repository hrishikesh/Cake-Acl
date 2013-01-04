<?php
/**
 * @var $this view
 */
?>
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><?php echo $title_for_layout; ?></title>

		<!--[if lt IE 9]>
      		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    	<![endif]-->

    	<?php
    		//Load Bootstrap:
            echo $this->Jquery->load("dev");
    		echo $this->Bootstrap->load("dev");


			echo $this->fetch('meta');
			echo $this->fetch('css');
			echo $this->fetch('script');
    	?>

	</head>
	<body>

	    <div class="navbar navbar-fixed-top">
	      <div class="navbar-inner">
	        <div class="container">
	          <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </a>
	          <?php echo $this->Html->link('Roles Management', '/', array('class' => 'brand')); ?>
	          <div class="container nav-collapse">
	            <ul class="nav">
                    <li><?php echo $this->Html->link(__('List Groups'), array('controller'=> 'groups','action' => 'index')); ?></li>
                    <li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?></li>
                    <li><?php echo $this->Html->link(__('List Posts'), array('controller' => 'posts', 'action' => 'index')); ?></li>
	            </ul>
                  <ul class="nav pull-right">
                      <li class="dropdown">
                          <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
                          <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                              <li><a tabindex="-1" href="#"><?php echo $this->Html->link('Logout', '/users/logout'); ?></a></li>
                          </ul>

                      </li>
                  </ul>
	          </div><!--/.nav-collapse -->
	        </div>
	      </div>
	    </div>

	    <div class="container-fluid" style="margin-top: 70px;">
	        <div class="row-fluid">
	            <div class="span3">
	              <div class="well sidebar-nav">
	                <h3>Sidebar</h3>
	                <ul class="nav nav-list">
	                  <li class="nav-header">Sidebar</li>
                        <li><?php echo $this->Html->link(__('List Groups'), array('controller'=> 'groups','action' => 'index')); ?></li>
                        <li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?></li>
                        <li><?php echo $this->Html->link(__('List Posts'), array('controller' => 'posts', 'action' => 'index')); ?></li>
	                </ul>
	              </div><!--/.well -->
	            </div><!--/span-->

	           	<div id="main-content" class="span9">

					<?php echo $this->Session->flash(); ?>

					<?php echo $this->fetch('content'); ?>

	            </div><!--/span-->

	        </div><!--/row-->

	      <footer>
	        <p>&copy; Weboise Lab <?php echo date('Y'); ?></p>
	      </footer>

	    </div> <!-- /container -->

	</body>
</html>
