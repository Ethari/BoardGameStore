<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

	public function index()
	{
        $this->load->model('admin_loader');
        $page = 'index';
        $this->admin_loader->generatePage($page);

	}

	public function category($id){

    }

}
