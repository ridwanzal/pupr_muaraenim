<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Struktur_organisasi extends AN_Apricot

{


	function __construct(){
		parent::__construct();
		
		$this->load->model("admin/Struktur_o","Struktur_o");

	}

	function index(){

		$data=$this->public_data;


	//	$data["informasi"]["title"]=$this->title->struktur-organisasi("Struktur Organisasi");
		$data["informasi"]["current_page"]="Struktur-organisasi";
		$data["informasi"]["uniqueid"]="Struktur Organisasi";

		$data["informasi"]["og-url"]=current_url();
		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		
		$data["so"] = $this->Struktur_o->get_data();
		//$data["get_kontak"] = $this->Kontak_masuk->get_data();
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/struktur_organisasi",$data);
		$this->load->view($this->tema."/footer",$data);


	}



}
