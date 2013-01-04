<?php
/**
 * Created by JetBrains PhpStorm.
 * User: webonise
 * Date: 4/1/13
 * Time: 6:26 PM
 * To change this template use File | Settings | File Templates.
 */
App::uses('FormHelper', 'View');
class MyFormHelper extends FormHelper
{
    public function inputHorizontalFrom($fieldName, $options = array()) {
        $this->setEntity($fieldName);

        $options = array_merge(
            array('between'=>'<div class="controls">','after'=>'</div>','div'=>'control-group','label'=>array('class'=>'control-label')),
            $this->_inputDefaults,
            $options
        );
        return parent::input($fieldName,$options);
    }
}
