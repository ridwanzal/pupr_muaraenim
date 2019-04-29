<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends AN_Apricot{

	public function __construct(){
		parent::__construct();

	}

	function index(){
		$kategori_pengumuman = '7';
		$kategori_agenda = '8';

		//ambil banner depan
		$this->load->library("banner_depan");
		$this->load->library("user_agent");
		$this->load->model('visitor');

		$data=$this->public_data;
		$data["informasi"]["title"]=$this->title->home();
		$data["informasi"]["current_page"]="home";
		$data["informasi"]["uniqueid"]="home-page";

		$data["informasi"]["og-title"]=$data["informasi"]["title"];



		$data["banner_depan"]=$this->banner_depan->banner;
		$data["artikel_headline"]=$this->artikel->artikel_headline($this->system_info["max_headline_artikel"]);
		$data["artikel_pengumuman"]=$this->artikel->artikel_kategori($kategori_pengumuman);
		$data["artikel_berita"]=$this->artikel->artikel_berita(6);
		$data["artikel_random"]=$this->artikel->artikel_random();
		$data["artikel_agenda"]=$this->artikel->artikel_kategori($kategori_agenda);
		$data['get_galeri'] = $this->galeri->get_all_galeri();
		$data['galeri_rand'] = $this->galeri->get_galeri_random();
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/home",$data);
		$this->load->view($this->tema."/footer",$data);
		
				$user_ip=$_SERVER['REMOTE_ADDR'];
		if ($this->agent->is_browser()){
		    $agent = $this->agent->browser();
		}elseif ($this->agent->is_robot()){
		    $agent = $this->agent->robot(); 
		}elseif ($this->agent->is_mobile()){
		    $agent = $this->agent->mobile();
		}else{
			$agent='Other';
		}

$tanggal = date("Ymd"); 
$waktu   = time(); //
 

$this->load->model('visitor');

$where=[
'visitor_ip' => $user_ip,
'visitor_tanggal' => $tanggal,
];

$cek = $this->visitor->CekDataRows('visitor',$where)->num_rows();

if($cek ==0){
$data=[
'visitor_ip'=>$user_ip,
'visitor_tanggal'=>$tanggal,
'visitor_hits'=>'1',
'visitor_online'=>$waktu,
'visitor_perangkat' =>$agent,
];
$rd=$this->visitor->InsertData('visitor',$data);
}else {
    
$data=[
'visitor_hits '=>'+1',
'visitor_online'=>$waktu,
]; 
$where = [
    'visitor_ip' => $user_ip,
    'visitor_tanggal' => $tanggal
    ];
$UpdateData=$this->visitor->UpdateData('visitor',$data,$where);

}


	}
}
