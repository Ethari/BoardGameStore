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
        $comments = $this->Products_Model->getProductComments($product_id);

        $params = array(
            'product' => $product,
            'comments' => $comments
        );

        ChromePhp::log($params);

        $this->admin_loader->generatePage($page, $params);
    }

    public function add_comment(){
	    $params = $_POST;

	    $this->Products_Model->insertComment($params);
	    header("Location: " . base_url('/product/view/'.$params['product_id']));
    }

}
