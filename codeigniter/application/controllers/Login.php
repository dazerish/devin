<?php 

class Login extends CI_Controller{
    public function __construct() {
        parent::__construct();

    public function index() {
        $data['title'] = 'Calibr8 - LOGIN';
        $this->load->view('include/header.php', $data);
        $this->load->view('login_view');
        $this->load->view('include/footer.php');
    }

    public function logout() {
        
    }

}




?>