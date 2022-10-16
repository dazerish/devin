<?php

class Executive_model extends CI_Model
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

    //Device Masterlist
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

    public function get_dev_row($id)
    {
        return $this->db->get_where('devices', ['id' => $id])->row();
    }


    public function get_devModel($limit, $start)
    {   // include other column names after AS and add AND allowed_roles = 'Executive'
        $sql = "SELECT dev_name, COUNT(dev_name) AS stock, cur_status
        FROM devices
        WHERE cur_status = 'available' AND allowed_roles = 'Executive'
        GROUP BY dev_name
        HAVING COUNT(*)>0
        LIMIT $start , $limit";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function count_devModel()
    {
        // include other column names after AS and add AND allowed_roles = 'Executive'
        $sql = "SELECT dev_name, COUNT(dev_name) AS stock, cur_status
        FROM devices
        WHERE cur_status = 'available' AND allowed_roles = 'Executive'
        GROUP BY dev_name
        HAVING COUNT(*)>0";
        $query = $this->db->query($sql);
        return $query->num_rows();
    }

    public function reserveDev($dev_name)
    {

        $sql = "SELECT * FROM devices 
        WHERE dev_name = '$dev_name' AND cur_status = 'available'
        ORDER BY RAND()
        LIMIT 1";
        $query = $this->db->query($sql);
        return $query->result();

    }

    public function set_reserveDate($info)
    {
        $this->db->insert('transaction', $info);
    }


    // public function count_devModel() {
    //     $this->db->select('*');
    //     $this->db->from('devices');
    //     $this->db->like('dev_model', 'Server');
    //     return $this->db->count_all_results();
    // }
}
?>