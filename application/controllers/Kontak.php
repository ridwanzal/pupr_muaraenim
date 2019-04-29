<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kontak extends AN_Apricot

{


	function __construct(){
		parent::__construct();
		$this->load->model('admin/Kontak_masuk');

	}

	function index(){

		$data=$this->public_data;


		$data["informasi"]["title"]=$this->title->about_us("Kontak");
		$data["informasi"]["current_page"]="Kontak";
		$data["informasi"]["uniqueid"]="Kontak";

		$data["informasi"]["og-url"]=current_url();
		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		$data["get_kontak"] = $this->Kontak_masuk->get_data();
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/kontak",$data);
		$this->load->view($this->tema."/footer",$data);


	}



}
