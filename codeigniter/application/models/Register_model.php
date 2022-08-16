<?php

class Register_model extends CI_Model {
    public function __construct() {
        parent::__construct();

        $this->load->database();
    }

    public function device_registration($info) {
        $this->db->insert('device_reg', $info);
    }
}

?>