<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Data_produk_hukum extends CI_Model {

	public $hasil;

	function __construct(){
		parent::__construct();
	}

	function get_produk_hukum(){
    $query = $this->db->get('produk_hukum');
    return $query->result();
	}
	function get_produk_hukum_by_id($id_produk_hukum){
		$this->db->where('id_produk_hukum',$id_produk_hukum);
		$query = $this->db->get('produk_hukum');
		return $query->row();
	}
  function del_produk_hukum($id_produk_hukum)
  {
    $this->db->where('id_produk_hukum',$id_produk_hukum);
    $query = $this->db->delete('produk_hukum');
    if ($query) {
      return true;
    }
    else{
      return false;
    }
  }
	function upd_data_produk_hukum($data,$id_produk_hukum)
	{
		$this->db->where('id_produk_hukum', $id_produk_hukum);
		$query = $this->db->update('produk_hukum',$data);
		if ($query) {
			return true;
		}
		else{
			return false;
		}
		redirect('admin/produk_hukum');
	}
	function upd_file_produk_hukum($data,$id_produk_hukum)
	{
		$this->db->where('id_produk_hukum',$id_produk_hukum);
		$this->db->update('produk_hukum',$data);
			
	}
  function ins_data_produk_hukum($data)
  {
    $query  = $this->db->insert('produk_hukum',$data);
    if ($query) {
      return true;
    }
    else{
      return false;
    }
  }

}
