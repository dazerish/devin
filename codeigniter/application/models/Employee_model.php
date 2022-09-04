<?php 

class Admin_model extends CI_Model {
    public function __construct() {
        parent::__construct();

        $this->load->database();
    }

        //Borrowable Device List
        public function get_devices_table($limit, $start, $st = NULL) {
            if ($st == "NIL") $st = "";
            $sql = "select * from devices where dev_name like '%$st%' 
                    or dev_model like '%$st%'
                    or manufacturer like '%$st%'  
                    limit " . $start . ", " . $limit;
            $query = $this->db->query($sql);
            return $query->result();
        }
        public function get_devices_count($st = NULL) {
            if ($st == "NIL") $st = "";
            $sql = "select * from devices where dev_name like '%$st%' 
                    or dev_model like '%$st%'
                    or manufacturer like '%$st%'";
            $query = $this->db->query($sql);
            return $query->num_rows();
        }
        public function get_dCount() {
            return $this->db->count_all('devices');
        }
}

?>