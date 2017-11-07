<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('admin_loader');
        $this->load->model('Products_Model');
    }
	public function view($product_id){
        $page = 'product';
        $product = $this->Products_Model->getProductInfo($product_id);

        $params = array(
            'product' => $product
        );

        ChromePhp::log($params);

        $this->admin_loader->generatePage($page, $params);
    }

}
