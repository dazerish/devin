<?php

class Admin extends CI_Controller{
    public function __construct() {
        parent::__construct();

        $this->load->helper(['form', 'url']);
        $this->load->library('session');
        // $this->load->model('');
    }

    public function index() {
        if (!$this->session->userdata('logged_in')) {
            redirect('Login');
        }

        if ($this->session->userdata('role') == 'employee') {
            redirect('Employee');
        }
        
        $data['title'] = 'Calibr8 - Admin Dashboard';
        $this->load->view('include/header', $data);
        $this->load->view('admin_empReg_view'); //Temporary view to be loaded
        $this->load->view('include/footer');
    }

    public function empReg_view() {


        $data['title'] = 'Calibr8 - Employee Registration';
        $this->load->view('include/header', $data);
        $this->load->view('admin_empReg_view');
        $this->load->view('include/footer');
    }

    public function devReg_view() {


        $data['title'] = 'Calibr8 - Device Registration';
        $this->load->view('include/header', $data);
        $this->load->view('admin_devReg_view');
        $this->load->view('include/footer');
    }
}

?>