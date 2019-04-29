<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class All_bidang extends CI_Model {

	public $hasil;

	function __construct(){
		parent::__construct();
	}

	function all_bidang(){
		$query=$this->db->query("SELECT * FROM bidang ORDER BY bidang_id DESC");

		if($query->num_rows()>0){
			$no=1;
			foreach($query->result_array() as $value){
				$url="<div class='input-group'>
				<span class='input-group-addon'><i class='fa fa-hand-o-up pilih-url' style='cursor:pointer'></i></span>
				<input type='text' class='form-control area-url' value='".base_url()."bidang/$value[bidang_id]-$value[bidang_url]'/><span class='input-group-addon'><a href='".base_url()."bidang/$value[bidang_id]-$value[bidang_url]' target='_blank'><i class='fa fa-mail-forward'></i></a></span>
				</div>";

				$this->hasil.="<tr>";
				$this->hasil.="<td>$value[bidang_judul]</td>";
				$this->hasil.="<td>$value[bidang_status]</td>";
				$this->hasil.="<td>$value[bidang_url]</td>";

				$this->hasil.="<td><a href='".base_url()."admin/edit_bidang/$value[bidang_id]'><i class='fa fa-edit btn-edit-bidang'></i>
				</a> &nbsp;<a href='".base_url()."admin/delete_bidang/$value[bidang_id]'><i style='cursor:pointer;color:red' class='fa fa-times-circle hapus-bidang' id='$value[bidang_id]'></i></a></td>";
				$this->hasil.="</tr>";

			}
		}

	}

}
