<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_infrastruktur extends AN_Apricot

{


	function __construct(){
		parent::__construct();
	}


	function index(){

		$data=$this->public_data;
		$data["informasi"]["title"]=$this->title->about_us("Tentang Kami");
		$data["informasi"]["current_page"]="Data Infrastruktur";
		$data["informasi"]["uniqueid"]="data-infrastruktur";

		$data["informasi"]["og-url"]=current_url();
		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		$this->load->model('admin/infrastruktur');
		$data["get_infrastruktur"] = $this->infrastruktur->get_infrastruktur();
		$data["get_year_infra"] = $this->infrastruktur->get_year_infra();
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/data_infrastruktur",$data);
		$this->load->view($this->tema."/footer",$data);


	}



}
