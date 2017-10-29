<?php

class Admin_loader extends CI_Model {

    /*
     * This method generates an admin page wrapped in all necessary elements.
     */
    public function generatePage($page, $args = null){

        $current_page = array(
            'page' => $page
        );

        $this->load->view('header');
        $this->load->view('navbar', $data = array('page' => $page));

        $this->load->view($page, $args);
        $this->load->view('footer');
    }
}