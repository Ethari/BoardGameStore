<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('admin_loader');
        $this->load->model('Products_Model');
    }


	public function products($category_id)
	{
        ChromePhp::log($category_id);

        $params = array();
        $params['products'] = $this->Products_Model->getProductsOfCategory($category_id);
        $params['category'] = $this->Products_Model->getCategoryInfo($category_id);

        ChromePhp::log($params);
        $this->admin_loader->generatePage('category', $params);

	}
}
