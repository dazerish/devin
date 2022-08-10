<?php 

class Register extends CI_Controller {
    public function __construct() {
        parent::__construct();

        $this->load->helper(['form', 'url']);
        $this->load->library(['form_validation']);
        $this->load->model('');
    }

    public function index() {
        $data['title'] = 'Calibr8 - REGISTER';
        $this->load->view('include/header', $data);
        $this->load->view('register_view');
        $this->load->view('include/footer');
    }




?>