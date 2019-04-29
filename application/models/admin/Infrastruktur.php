<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Infrastruktur extends CI_Model {

	public $hasil;

	function __construct(){
		parent::__construct();
	}

	function get_infrastruktur(){
    $query = $this->db->get('infrastruktur');
    return $query->result();
	}
	
	
	function get_year_infra(){
	    $this->db->select('tahun');
	    $this->db->group_by("tahun");
	    $query = $this->db->get('infrastruktur');
	    return $query->result_array();
	    
	}
	
	function upd_data_infrastruktur($data, $id_infrastruktur){
		$this->db->where('id_infrastruktur',$id_infrastruktur);
		$this->db->update('infrastruktur',$data);
		redirect('admin/data_infastruktur');	
	}
function get_infrastruktur_by_id($id_infrastruktur)
{
	$this->db->where('id_infrastruktur',$id_infrastruktur);
	return $this->db->get('infrastruktur')->row();
}
  function del_infrastruktur($id_infrastruktur)
  {
    $this->db->where('id_infrastruktur',$id_infrastruktur);
    $query = $this->db->delete('infrastruktur');
    if ($query) {
      return true;
    }
    else{
      return false;
    }
  }
  function ins_data_infrastruktur($data)
  {
    $query  = $this->db->insert('infrastruktur',$data);
    if ($query) {
      return true;
    }
    else{
      return false;
    }
  }

}
