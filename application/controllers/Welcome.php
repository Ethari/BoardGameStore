<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('admin_loader');
        $this->load->model('Products_Model');
    }


	public function index()
	{
        $page = 'index';
        $this->admin_loader->generatePage($page);

	}
}
