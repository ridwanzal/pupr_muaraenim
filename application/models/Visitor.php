<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Visitor extends CI_Model{
  
    public function CekDataRows($table,$where){
        $res=$this->db->get_where($table,$where);
        return $res;
    }
    
        public function InsertData($table,$data){
        $res = $this->db->insert($table, $data);
        return $res;
    }
    
        public function UpdateData($table, $data, $where){
        $res = $this->db->update($table, $data, $where);
        return $res;
    }

        public function get_group($table,$group,$where){    
        $this->db->select($table);
        $this->db->group_by($group); 
        $res = $this->db->get($where);
        return $res;
    }
    
    
}
    ?>