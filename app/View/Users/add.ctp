<?php
/**
 * @var $this view
 */
?>
<div class="users form">
<?php echo $this->Form->create('User', array('class'=>'form-horizontal')); ?>
	<fieldset>
		<legend><?php echo __('Add User'); ?></legend>
	<?php
		echo $this->MyForm->inputHorizontalFrom('username');
		echo $this->MyForm->inputHorizontalFrom('password');
		echo $this->MyForm->inputHorizontalFrom('group_id');
        echo $this->Form->submit(__('Submit'), array('before'=>'<div class="controls">','after'=>'</div>','div'=>'control-group','class'=>'btn btn-primary'))
	?>
	</fieldset>
<?php echo $this->Form->end(); ?>
</div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List Users'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Groups'), array('controller' => 'groups', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Group'), array('controller' => 'groups', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Posts'), array('controller' => 'posts', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Post'), array('controller' => 'posts', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
