<?php

class Admin extends CI_Controller{
    public function __construct() {
        parent::__construct();

        $this->load->helper(['form', 'url', 'string']);
        $this->load->library(['form_validation']);
        $this->load->library('session');
        $this->load->model('Register_model');
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
        $this->load->view('admin_devReg_view'); //Temporary view to be loaded
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

    public function device_registration() {
        $image_config = array(
            'upload_path' => './assets/device_image',
            'allowed_types' => 'gif|jpg|png',
            'max_size' => 5000000000,
            'max_width' => 204800,
            'max_height' => 204800
        );

        $this->load->library('upload', $image_config);
        $this->upload->initialize($image_config);

        $this->form_validation->set_rules('uniquenum', 'Device Unique Number', 'required|alpha_numeric', array(
            'required' => '%s is required.',
            'alpha_numeric' => '%s should only contain alpha numeric characters.'
        ));
        $this->form_validation->set_rules('devicename', 'Device Name', 'required|alpha', array(
            'required' => '%s is required.',
            'alpha' => '%s should only contain alphabets.'
        ));
        $this->form_validation->set_rules('model', 'Device Model', 'required|alpha_numeric_spaces', array(
            'required' => '%s is required.',
            'alpha_numeric' => '%s should only contain alpha numeric characters.'
        ));
        $this->form_validation->set_rules('roles', 'Allowed Roles', 'required', array(
            'required' => 'Please set %s',
        ));
        $this->form_validation->set_rules('manuf', 'Manufacturer', 'required|alpha_numeric', array(
            'required' => '%s is required.',
            'alpha_numeric' => '%s should only contain alpha numeric characters.'
        ));
        $this->form_validation->set_rules('specs', 'Specifications', 'required', array(
            'required' => '%s is required.',
        ));

        if($this->upload->do_upload('device_image') == FALSE) {
            $this->form_validation->set_rules('device_image', 'Device Image', 'required');
        }

        if($this->form_validation->run() == FALSE) {
            $this->devReg_view();
        } else {
            $image_name = (!$this->upload->do_upload('device_image')) ? null : $this->upload->data('file_name');
            $register = $this->input->post('reg-dev');

            if(isset($register)) {

                $info = array(
                    'unique_num' => $this->input->post('uniquenum'),
                    'dev_name' => $this->input->post('devicename'),
                    'dev_model' => $this->input->post('model'),
                    'allowed_roles' => $this->input->post('roles'),
                    'manufacturer' => $this->input->post('manuf'),
                    'specs' => $this->input->post('specs'),
                    'dev_image' => $image_name
                );

                $this->Register_model->device_registration($info);

                $success = "Device is registered successfully";
                $this->session->set_flashdata('success', $success);
                redirect('Admin/device_registration');
            }
        }
    }
}

?>