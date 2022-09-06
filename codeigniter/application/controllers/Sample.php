<?php 
    class Sample extends CI_Controller {
        public function __construct() {
            parent::__construct();
    
            $this->load->helper(['form', 'url', 'string']);
            $this->load->library(['form_validation', 'session', 'pagination',]);
            $this->load->model('Sample_model');
        }

        public function index() {
            header('Content-Type: application/json');
            echo json_encode(['name' => 'John Doe']);
    
        }

        

        public function create() {
            header('Content-Type: application/json');


            $email = $this->input->post('email');
            $password = $this->input->post('password');
    
            $this->load->model('Login_model');
            $account = $this->Login_model->login($email, $password);


            if(isset($account)) {
                echo json_encode(['success' =>'True', 'email' => $email]);
            } else {
                echo json_encode(['error' => 'Invalid username/password']);
            }

            // if(isset($submit)) {
            //     $email = $this->input->post('email');
            //     $password = $this->input->post('password');
    
            //     $this->load->model('Login_model');
            //     $account = $this->Login_model->login($email, $password);
    
            //     if(isset($account)) {
            //         if($account->emp_role == 'administrator') {
            //             $sess_data = array(
            //                 'id' => $account->id,
            //                 'role' => $account->emp_role,
            //                 'logged_in' => TRUE
            //             );
    
            //             // $this->session->set_userdata($sess_data);
            //             // redirect('Admin');
            //         }
    
            //         // FOR EXECUTIVE
            //         // if($account->emp_role == 'executive') {
            //         //     $sess_data = array(
            //         //         'id' => $account->id,
            //         //         'role' => $account->emp_role,
            //         //         'logged_in' => TRUE
            //         //     );
    
            //         //     $this->session->set_userdata($sess_data);
            //         //     redirect('');
            //         // }
    
            //         if($account->emp_role == 'employee') {
            //             $sess_data = array(
            //                 'id' => $account->id,
            //                 'role' => $account->emp_role,
            //                 'logged_in' => TRUE
            //             );
    
            //             // $this->session->set_userdata($sess_data);
            //             // redirect('Employee');
            //         }
            //     }
    
            //     // $error = 'Invalid username or password';
            //     // $this->session->set_flashdata('error', $error);
            //     // redirect('Login');
            // }
        }

        public function display() {
            header('Content-Type: application/json');

            $this->load->model('Sample_model');
            $this->Sample_model->display();
        }

        public function display_emp() {
            header('Content-Type: application/json');

            $this->load->model('Sample_model');
            $this->Sample_model->display_emp();
        }

        public function display_dev() {
            header('Content-Type: application/json');

            $this->load->model('Sample_model');
            $this->Sample_model->display_dev();
        }
    }
?>