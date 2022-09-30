<?php

class Admin_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();

        $this->load->database();
    }

    //View Section (Employee)
    public function get_users_table($limit, $start, $st = NULL)
    {
        if ($st == "NIL") $st = "";
        $sql = "select * from users where emp_name like '%$st%' limit " . $start . ", " . $limit;
        $query = $this->db->query($sql);
        return $query->result();
    }
    public function get_users_count($st = NULL)
    {
        if ($st == "NIL") $st = "";
        $sql = "select * from users where emp_name like '%$st%'";
        $query = $this->db->query($sql);
        return $query->num_rows();
    }
    public function get_uCount()
    {
        return $this->db->count_all('users');
    }

    public function get_emp_row($id)
    {
        return $this->db->get_where('users', ['id' => $id])->row();
    }

    public function remove_employee($id)
    {
        $this->db->delete('users', ['id' => $id]);
    }

    public function update_employee($id, $info)
    {
        $this->db->update('users', $info, ['id' => $id]);
    }

    //View Section (Device)
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

    // public function get_device_table($limit, $start) {
    //     $this->db->limit($limit, $start);
    //     $this->db->order_by('id', 'DESC');
    //     return $this->db->get('devices')->result();
    // }


    // public function get_device_count() {
    //     return $this->db->count_all('devices');
    // }

    public function get_dev_row($id)
    {
        return $this->db->get_where('devices', ['id' => $id])->row();
    }

    public function remove_device($id)
    {
        $this->db->delete('devices', ['id' => $id]);
    }

    public function update_device($id, $info)
    {
        $this->db->update('devices', $info, ['id' => $id]);
    }




    //Registration Section (Employee)
    public function employee_registration($info)
    {
        $this->db->insert('users', $info);
    }

    //Registration Section (Device)
    public function device_registration($info)
    {
        $this->db->insert('devices', $info);
    }



    // Made by JL for admin dashboard, please move where appropriate
    public function admin_dashboard()
    {
        $sql = "SELECT dev_model, COUNT(dev_model) AS device_count
        FROM devices
        GROUP BY dev_model
        HAVING COUNT(*)>1";
        $query = $this->db->query($sql);
        return $query->result();
    }
}
