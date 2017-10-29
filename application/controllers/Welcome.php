<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
        $this->load->model('admin_loader');
        $page = 'index';
        $this->admin_loader->generatePage($page);

	}
}
