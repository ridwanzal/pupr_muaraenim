<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class All_komen extends CI_Model{
	public $hasil="";
	function __construct(){
		parent::__construct();
	}

	function get_komen(){
		$query=$this->db->query("SELECT * FROM komentar ORDER BY komentar_id DESC");
		if($query->num_rows()>0){
			$data=$query->result_array();
			$no=1;
			foreach($data as $val){
				$this->hasil.="<tr id='$val[komentar_id]'>";

				$this->hasil.="<th class='no'>";
				$this->hasil.=$no;
				$this->hasil.="</th>";

				$this->hasil.="<td class='nama_tag'>";
				$this->hasil.="<span>".$val["komentar_ktp"]."</span>";
				$this->hasil.="</td>";

				$this->hasil.="<td class='slug_tag'>";
				$this->hasil.="<span>".$val["komentar_nama"]."</span>";
				$this->hasil.="</td>";
				$this->hasil.="<td class='slug_tag'>";
				$this->hasil.="<span>".$val["komentar_tel"]."</span>";
				$this->hasil.="</td>";
				$this->hasil.="<td class='slug_tag'>";
				$this->hasil.="<span>".$val["komentar_pesan"]."</span>";
				$this->hasil.="</td>";
				$this->hasil.="<td class='slug_tag'>";
				$this->hasil.="<span>".$val["komentar_tanggal"]."</span>";
				$this->hasil.="</td>";

				$this->hasil.="<td class='hapus_tag'>";
				$this->hasil.='<a href="'.base_url().'admin/reply/'.$val["komentar_id"].'" class="btn btn-primary">Reply</a>';
				$this->hasil.="</td>";

				$this->hasil.="</tr>";
				$no++;
			}
		}
	}


}



?>