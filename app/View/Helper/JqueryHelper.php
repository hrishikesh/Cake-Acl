<?php
/**
 * Created by JetBrains PhpStorm.
 * User: webonise
 * Date: 4/1/13
 * Time: 3:14 PM
 * To change this template use File | Settings | File Templates.
 */
App::uses('AppHelper', 'View');
class JqueryHelper extends AppHelper
{
    public $helpers = array('Html');

    /*
     * laod($type = 'min') - Load all jQuery Files
     *
     * @access public
     * @param String $type - The type for the Twitter Bootstrap Version (min: compressed, dev: uncompressed)
     * @return html
     */
    public function load($type = 'min') {
        //Create the html tags:
        echo $this->Html->css('jquery/'.$this->filename($type).'');
        echo $this->Html->script('jquery/'.$this->filename($type).'');
    }

    /*
     * css($type = 'min') - Load Twitter jQuery CSS File
     *
     * @access public
     * @param String $type - The type for the Twitter Bootstrap Version (min: compressed, dev: uncompressed)
     * @return html
     */
    public function css($type = 'min') {
        //Load CSS and create html tag:
        echo $this->Html->css('jquery/'.$this->filename($type).'');
    }

    /*
     * js($type = 'min') - Load Twitter jQuery JS File
     *
     * @access public
     * @param String $type - The type for the jQuery Version (min: compressed, dev: uncompressed)
     * @return html
     */
    public function js($type = 'min') {
        //Load JS and create html tag:
        echo $this->Html->script('jquery/'.$this->filename($type).'');
    }

    /*
     * filename($type) - Returns the specific filename for compressed or uncompressed jQuery Files
     *
     * @access private
     * @param String $type - dev for uncompressed or min for compressed files
     * @return String
     */
    private function filename($type) {
        $type = strtolower($type);
        $filename = '';

        if($type == 'dev' || $type == 'min') {
            if($type == 'dev') $filename = 'jquery';
            else $filename = 'jquery.min';
        }
        else $filename = 'jquery.min';

        return $filename;
    }
}
