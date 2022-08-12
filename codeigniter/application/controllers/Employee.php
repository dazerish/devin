<?php

class Employee extends CI_Controller{
    public function __construct() {
        parent::__construct();

        $this->load->helper(['form', 'url']);
        $this->load-library('session');
    }

    public function index() {
        if (!$this->session->userdata('logged_in')) {
            redirect('Login');
        }

        if ($this->session->userdata('role') == 'admin') {
            redirect('Admin');
        }

        // Not yet done
        // $data['title'] = 'Calibr8 - Employee Registration';
        // $this->load->view('include/header', $data);
        // $this->load->view('admin_empReg_view');
        // $this->load->view('include/footer');
    }
}

?>