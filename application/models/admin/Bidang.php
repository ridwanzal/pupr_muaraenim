<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class bidang extends CI_Model {

	public $hasil;

	function __construct(){
		parent::__construct();
	}
	function get_bidang_by_id($bidang_id)
	{
		$this->db->where('bidang_id',$bidang_id);
		return $this->db->get("bidang")->row();
	}
	
	
	function get_bidang($id){
		if($id>0){
		$query=$this->db->query("SELECT * FROM bidang WHERE bidang_id='$id'");
		if($query->num_rows()>0){
			$row=$query->row();
		
			
			$this->hasil= array(
				"id"=>$row->bidang_id,
				"judul"=>$row->bidang_judul,
				"fungsi"=>$row->bidang_fungsi,
				"tujuan"=>$row->bidang_tujuan,
				"foto"=>$row->bidang_foto,
				"url"=>$row->bidang_url,
				"isi"=>($row->bidang_isi),
				"javascript"=>($row->bidang_javascript),
				"status"=>$row->bidang_status,
				"keywords"=>$row->bidang_meta_keywords,
				"description"=>$row->bidang_meta_description
				);
			return true;
		} else {
			return false;
		}
	 } else {
	 	$this->hasil= array(
				"id"=>0,
				"judul"=>"",
				"foto"=>"",
				"url"=>"",
				"isi"=>"",
				"javascript"=>"",
				"status"=>"",
				"keywords"=>"",
				"description"=>""
	 		);
	 		return true;
	 }
	}

}
