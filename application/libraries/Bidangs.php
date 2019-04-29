<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bidangs {

	protected $CI;

	function __construct(){

		$this->CI=& get_instance();
	}

	function detail_bidang($id){
		$id = intval($id);
		$data=$this->CI->db->query("SELECT bidang_id AS id,
			bidang_judul AS judul,
			kategori_id AS kategori,
			bidang_tugas AS tugas,
			 bidang_fungsi AS fungsi,
			 bidang_url AS slug,
			 bidang_isi AS isi,
			 bidang_foto AS foto,
			 bidang_javascript AS javascript ,
			 bidang_meta_keywords AS meta_keywords,
			 bidang_meta_description AS meta_description
			 FROM bidang WHERE bidang_id='$id' AND bidang_status='published' ");

			$data=array('jumlah'=>$data->num_rows(),'data'=>$data->row_array());


		if($data['jumlah']>0){
			$hasil= $data['data'];
			$hasil['judul']= ($hasil['judul']);
			$hasil['kategori']= ($hasil['kategori']);
			$hasil['fungsi']= ($hasil['fungsi']);
			$hasil['tugas']= ($hasil['tugas']);
			$hasil['javascript']= ($hasil['javascript']);
			$hasil['meta_keywords']=trim($hasil['meta_keywords']);
			$hasil['meta_description']=trim($hasil['meta_description']);
			$hasil['foto']=trim($hasil['foto']);

			return $hasil;

		} else {
			return FALSE;
		}
	}

}
