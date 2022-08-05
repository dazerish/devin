<?php 

class Login extends CI_Controller{

    public function login_view() {
        $this->load->view('include/header.php');
        $this->load->view('login_view');
        $this->load->view('include/footer.php');
    }

}




?>