<?php

    class Sample_model extends CI_model {
        public function __construct() {
            parent:: __construct();

            $this->load->database();
        }

        public function display() {
            $query = $this->db->get('devices')->result_array();
            echo json_encode($query);
        }

        public function display_emp() {
            $query = $this->db->get('users')->result_array();
            echo json_encode($query);
        }

        public function display_dev() {
            $query = $this->db->get('devices')->result_array();
            echo json_encode($query);
        }
    }
?>
