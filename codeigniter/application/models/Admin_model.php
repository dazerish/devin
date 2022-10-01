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
        // pie chart query
        $pie_sql = "SELECT dev_model, COUNT(dev_model) AS device_count
        FROM devices
        GROUP BY dev_model
        HAVING COUNT(*)>0";
        $pie_query = $this->db->query($pie_sql);
        $pie_data = $pie_query->result();

        // DEVICE IN

        // count the number of devices where the status is available
        $device_in_sql = "SELECT COUNT(*) AS device_count
        FROM devices
        WHERE cur_status='Available'";
        $device_in_query = $this->db->query($device_in_sql);
        $device_in_data = $device_in_query->result();

        // DEVICE OUT

        // count the number of devices where the status is borrowed
        $device_out_sql = "SELECT COUNT(*) AS device_count
        FROM devices
        WHERE cur_status='Borrowed'";
        $device_out_query = $this->db->query($device_out_sql);
        $device_out_data = $device_out_query->result();

        // RESERVED

        // count the number of devices where the status is reserved
        $reserved_sql = "SELECT COUNT(*) AS device_count
        FROM devices
        WHERE cur_status='Reserved'";
        $reserved_query = $this->db->query($reserved_sql);
        $reserved_data = $reserved_query->result();

        // BROKEN DEVICES

        //count the number of devices where the status is broken
        $broken_sql = "SELECT COUNT(*) AS device_count
        FROM devices
        WHERE cur_status='Broken'";
        $broken_query = $this->db->query($broken_sql);
        $broken_data = $broken_query->result();

        // DEVICES IN MAINTENANCE

        //count the number of devices where the status is maintenance
        $maintenance_sql = "SELECT COUNT(*) AS device_count
        FROM devices
        WHERE cur_status='Maintenance'";
        $maintenance_query = $this->db->query($maintenance_sql);
        $maintenance_data = $maintenance_query->result();

        // pass data to dashboard
        $results = array($pie_data, $device_in_data, $device_out_data, $reserved_data, $broken_data, $maintenance_data);
        return $results;
    }
}