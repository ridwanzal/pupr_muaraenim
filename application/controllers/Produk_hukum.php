<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk_hukum extends AN_Apricot

{


	function __construct(){
		parent::__construct();
		$this->load->model("admin/Data_produk_hukum","produk_hukum");

	}


	function index(){

		$data=$this->public_data;


		$data["informasi"]["title"]=$this->title->about_us("Tentang Kami");
		$data["informasi"]["current_page"]="Produk hukum";
		$data["informasi"]["uniqueid"]="produk-hukum";

		$data["informasi"]["og-url"]=current_url();
		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		$data["get_produk_hukum"] = $this->produk_hukum->get_produk_hukum();
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/produk_hukum",$data);
		$this->load->view($this->tema."/footer",$data);


	}



}
