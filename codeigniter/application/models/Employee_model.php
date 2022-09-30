<?php

class Employee_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();

        $this->load->database();
    }

    public function get_emp_row($id)
    {
        return $this->db->get_where('users', ['id' => $id])->row();
    }

    public function update_employee($id, $info)
    {
        $this->db->update('users', $info, ['id' => $id]);
    }

    //Borrowable Device List
    public function get_devices_table($limit, $start, $st = NULL)
    {
        if ($st == "NIL") $st = "";
        $sql = "select * from devices where dev_name like '%$st%' 
                or dev_model like '%$st%'
                or manufacturer like '%$st%'  
                limit " . $start . ", " . $limit;
        $query = $this->db->query($sql);
        return $query->result();
    }
    public function get_devices_count($st = NULL)
    {
        if ($st == "NIL") $st = "";
        $sql = "select * from devices where dev_name like '%$st%' 
                or dev_model like '%$st%'
                or manufacturer like '%$st%'";
        $query = $this->db->query($sql);
        return $query->num_rows();
    }

    public function get_dCount()
    {
        return $this->db->count_all('devices');
    }

    public function count_devModel()
    {
        // include other column names after AS
        $sql = "SELECT dev_name, COUNT(dev_name) AS stock 
        FROM devices
        GROUP BY dev_name
        HAVING COUNT(*)>0";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function get_devModel($limit, $start)
    {
        $sql = "SELECT dev_name, COUNT(dev_name) AS stock 
        FROM devices
        GROUP BY dev_name
        HAVING COUNT(*)>0
        LIMIT $limit, $start";
        $query = $this->db->query($sql);
        return $query->result();
    }

    // public function count_devModel() {
    //     $this->db->select('*');
    //     $this->db->from('devices');
    //     $this->db->like('dev_model', 'Server');
    //     return $this->db->count_all_results();
    // }
}
