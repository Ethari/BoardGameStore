<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payment extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('admin_loader');
        $this->load->model('Products_Model');
        $this->load->model('PayPal');

    }


	public function startPayment()
	{
	    $shipping_info = $_POST;
	    $product_info = $this->Products_Model->getProductInfo($shipping_info['product_id']);
	    ChromePhp::log($shipping_info);
	    ChromePhp::log($product_info);
        $link = $this->PayPal->pay($product_info);
        echo $link;

	}

	public function endPayment(){
        $page = 'payment_success';
        $this->admin_loader->generatePage($page);
    }
}
