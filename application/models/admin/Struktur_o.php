<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Struktur_o extends CI_Model {

	public $hasil;

	function __construct(){
		parent::__construct();
	}
	
	function get_data()
	{
	    $this->db->select('*');
        $this->db->from('struktur_organisasi');
        $this->db->join('jabatan', 'struktur_organisasi.jabatan_id = jabatan.jabatan_id');
        return $this->db->get()->result_array();
	}

}
