<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class AN_admin extends CI_Controller {
	protected $login=false;
	//user data
	protected $id_user;
	protected $name_user;
	protected $password_user;
	protected $level_user;
	protected $avatar_user;

	protected $c;



	function __construct(){
		parent::__construct();


	//session_start();
		//$_SESSION["test"]="nando";


		//Panggil database
		$this->load->database();

		//session
		$this->load->library(array(''));
		$this->login=$this->session->userdata('login');


		//panggil helper
		$this->load->helper(array('filter','url','text'));

		$this->load->model("admin/myuser","user");

		$this->load->model("admin/otorisasi");

		$this->login= $this->user->set($this->session->userdata('id_user'),$this->session->userdata('name_user'),$this->session->userdata('password_user'));

		$this->id_user=$this->user->id;
		$this->name_user=$this->user->name;
		$this->password_user=$this->user->password;
		$this->level_user=$this->user->level;
		$this->avatar_user=$this->user->avatar;

	}

	private function home(){ //Halaman Home

		if(!$this->login){
			redirect("admin/login");
		}
		else {

			$this->load->model("admin/main");

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>'Home',
				'user'=>"$this->name_user",
				'user_level'=>$this->level_user,
				'npage'=>1,
				'burl'=>base_url()."admin",
				'data'=>$this->main->get()
				);
			$this->load->view('admin/header',$data);
			$this->load->view('admin/main',$data);
			$this->load->view('admin/footer',$data);
		}

	}


	function index(){
		$this->home();
	}


	function kategori(){
		if(!$this->login){
			redirect("admin/login");
		}

		else{
			$this->load->model('admin/list_kategori');
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>'Kategori artikel',
				'user'=>"$this->name_user",
				'user_level'=>$this->level_user,
				'npage'=>2,
				'burl'=>base_url()."admin",
				'list'=>$this->list_kategori->kategori()
				);
			$this->load->view('admin/header',$data);
			$this->load->view('admin/kategori',$data);
			$this->load->view('admin/footer',$data);
		}

	}



	function user_baru(){
		if(!$this->login){
			redirect("admin/login");
		}

		else{
			if($this->level_user==1){
				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>'User Baru',
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>3,
					'burl'=>base_url()."admin",
					);

				$this->load->view('admin/header',$data);
				$this->load->view('admin/user',$data);
				$this->load->view('admin/footer',$data);

			} else {
				show_404();
			}
		}
	}

	function all_user(){
		if(!$this->login){
			redirect("admin/login");
		}

		else {
			if($this->level_user==1){
				$this->load->model("admin/daftar_user");
				$this->daftar_user->show();
				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					"title"=>"Managemen User",
					"user"=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>4,
					'burl'=>base_url()."admin",
					'table'=>$this->daftar_user->hasil
					);
				$this->load->view('admin/header',$data);
				$this->load->view('admin/all_user',$data);
				$this->load->view('admin/footer',$data);
			} else {
				show_404();
			}
		}

	}

	function profil_user(){
		if(!$this->login){
			redirect("admin/login");
		}

		else {

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				"title"=>"Profil Anda",
				"user"=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>5,
				'burl'=>base_url()."admin"
				);
			$this->load->view('admin/header',$data);
			$this->load->view('admin/profil_user',$data);
			$this->load->view('admin/footer',$data);
		}

	}

	function artikel($id=0){
		if(!$this->login){
			redirect("admin/login");
		}

		else {
			$this->load->model("admin/artikel","modul");
			$this->modul->get_kategori();
			$this->modul->get_tags();

			if($id!==0){
				$hasil=$this->modul->get_data($id,$this->id_user);
				if($hasil==false){
					show_404();
				} else {
					$_data=array(
						'avatar'=>$this->avatar_user,
						'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
						'path_art_photo_thumb'=>base_url()."an-component/media/upload-gambar-artikel-thumbs",
						"title"=>"Edit Baru",
						"user"=>$this->name_user,
						'user_level'=>$this->level_user,
						'npage'=>6,
						'burl'=>base_url()."admin",
						'id_user'=>$this->id_user,
						'list_kategori'=>$this->modul->get_artikel_kategori($id),
						'tag_kategori'=>$this->modul->list_tag,
						'data'=>$hasil,
						'modul'=>"edit"
						);

					$data=array_merge($_data,$hasil);
				}

			} else {

				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					"title"=>"Artikel Baru",
					"user"=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>6,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'list_kategori'=>$this->modul->list_kategori,
					'tag_kategori'=>$this->modul->list_tag,
					'modul'=>"new",
					"artikel_id"=>0,
					"artikel_judul"=>'',
					"artikel_isi"=>'',
					"artikel_kategori"=>false,
					"artikel_tags"=>false,
					"artikel_foto"=>false,
					"artikel_sbg_headline"=>false,
					"artikel_id_user"=>false,
					"artikel_editable"=>false,
					"artikel_seo_url"=>'',
					"artikel_meta_description"=>'',
					"artikel_meta_author"=>'',
					"artikel_meta_keyword"=>'',
					"artikel_og_image"=>'',
					"artikel_og_title"=>'',
					"artikel_og_description"=>'',
					"artikel_in_draft"=>false,
					"artikel_status"=>false,
					"artikel_aktif"=>false,
					"artikel_photos"=>false
					);
			}

			$this->load->view('admin/header',$data);
			$this->load->view('admin/artikel_baru',$data);
			$this->load->view('admin/footer',$data);
		}



	}

	function all_artikel(){
		if(!$this->login){
			redirect("admin/login");
		}

		else {

			$artikel=$this->load->model('admin/all_artikel','articles');


			$data= array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				"title"=>"Semua Artikel",
				"user"=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>7,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'artikels'=>$this->articles->get_artikel()
				);


			$this->load->view('admin/header',$data);
			$this->load->view('admin/all_artikel',$data);
			$this->load->view('admin/footer',$data);
		}


	}


	function tags(){
		if(!$this->login){
			redirect("admin/login");
		}

		else {
			$this->load->model("admin/all_tags");
			$hasil=$this->all_tags->get_tags();
			$hasil=$this->all_tags->hasil;

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				"title"=>"Tags",
				"user"=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>8,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$hasil
				);
			$this->load->view('admin/header',$data);
			$this->load->view('admin/tags',$data);
			$this->load->view('admin/footer',$data);
		}
	}
	
	
	
	function komentar(){
		if(!$this->login){
			redirect("admin/login");
		}

		else {
			$this->load->model("admin/all_komen");
			$hasil=$this->all_komen->get_komen();
			$hasil=$this->all_komen->hasil;

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				"title"=>"Tags",
				"user"=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>112,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$hasil
				);
			$this->load->view('admin/header',$data);
			$this->load->view('admin/komentar',$data);
			$this->load->view('admin/footer',$data);
		}
	}



	function media(){
		if(!$this->login){
			redirect("admin/login");
		}

		else {
			$this->load->helper('file');
			$this->load->helper('number');
			$this->load->helper('date');
			$this->load->model("admin/media","show_media");

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Media",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>9,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$this->show_media->all_media(),
				'daftar_foto'=>$this->show_media->foto_pendukung()
				);
			$this->load->view('admin/header',$data);
			$this->load->view('admin/media',$data);
			$this->load->view('admin/footer',$data);


		}

	}



	function informasi(){
		if(!$this->login){
			redirect("admin/login");
		}

		else {

			$this->load->model("admin/informasi","info");

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Pengaturan",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>10,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'data'=>$this->info->get_informasi()
				);
			$this->load->view('admin/header',$data);
			$this->load->view('admin/informasi',$data);
			$this->load->view('admin/footer',$data);

		}
	}

	function biodata(){
		if(!$this->login){
			redirect("admin/login");
		}
		else {
			$this->load->model("admin/biodata","bio");
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Biodata",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>11,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'data'=>$this->bio->get_biodata()
				);

			$this->load->view('admin/header',$data);
			$this->load->view('admin/biodata',$data);
			$this->load->view('admin/footer',$data);

		}
	}


	function page($id=0){
		$id=abs($id);
		if(!$this->login){
			redirect("admin/login");
		}
		else {
			if($this->level_user==1){
				$this->load->model("admin/page","halaman");

				if(!$this->halaman->get_page($id)){
					show_404();
				} else {

					$data=array(
						'avatar'=>$this->avatar_user,
						'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
						'title'=>($id==0)?"Page Baru":"Edit Page",
						'user'=>$this->name_user,
						'user_level'=>$this->level_user,
						'npage'=>12,
						'burl'=>base_url()."admin",
						'id_user'=>$this->id_user,
						'data'=>$this->halaman->hasil
						);
					$this->load->view('admin/header',$data);
					$this->load->view('admin/page',$data);
					$this->load->view('admin/footer',$data);
				}

			} else {
				show_404();
			}
		}
	}





	function all_page(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			if($this->level_user==1){
				$this->load->model("admin/all_page","all_halaman");
				$this->all_halaman->all_pages();
				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Semua Page",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>13,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'hasil'=>$this->all_halaman->hasil,
					);

				$this->load->view('admin/header',$data);
				$this->load->view('admin/all_page',$data);
				$this->load->view('admin/footer',$data);

			} else {
				show_404();
			}
		}
	}

	function del_data_infrastruktur($id_infrastruktur){
		$this->load->model("admin/infrastruktur","infrastruktur");
		$delete = $this->infrastruktur->del_infrastruktur($id_infrastruktur);
		if ($delete==TRUE) {
			redirect('admin/data_infastruktur');
		}
	}
	function edit_data_infrastruktur($id_infrastruktur)
	{
		if(!$this->login){
			redirect("admin/login");
		} else {
			if($this->level_user==1){
				$this->load->model("admin/all_page","all_halaman");
				$this->load->model("admin/infrastruktur","infrastruktur");
				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Semua Page",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>13,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'hasil'=>$this->all_halaman->hasil,
					'data'=>$this->infrastruktur->get_infrastruktur_by_id($id_infrastruktur)
					);
				$this->load->view('admin/header',$data);
				$this->load->view('admin/edit_data_infastruktur',$data);
				$this->load->view('admin/footer',$data);
				if ($this->input->post('submit')) {
					$id_infrastruktur = $this->input->post('id_infrastruktur');
					$nama_kegiatan = $this->input->post('nama_kegiatan');
					$nama_pelaksana = $this->input->post('nama_pelaksana');
					$anggaran = $this->input->post('anggaran');
					$nilai_kontrak = $this->input->post('nilai_kontrak');
					$progres = $this->input->post('progres');
					$ppk = $this->input->post('ppk');
					$tahun = $this->input->post('tahun');
					$data = array(
						"nama_kegiatan"=>$nama_kegiatan,
						"nama_pelaksana"=>$nama_pelaksana,
						"anggaran"=>$anggaran,
						"nilai_kontrak"=>$nilai_kontrak,
						"progres"=>$progres,
						"ppk"=>$ppk,
						"tahun"=>$tahun
						);
					$query = $this->infrastruktur->upd_data_infrastruktur($data,$id_infrastruktur);
					if ($query==true) {
						redirect('admin/data_infastruktur');
					}
				}
			} else {
				show_404();
			}
		}
	}
	function data_infastruktur()
	{
		if(!$this->login){
			redirect("admin/login");
		} else {
			if($this->level_user==1){
				$this->load->model("admin/all_page","all_halaman");
				$this->load->model("admin/infrastruktur","infrastruktur");
				$data=array(

					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Semua Page",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>13,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'hasil'=>$this->all_halaman->hasil,
					'get_infrastruktur'=>$this->infrastruktur->get_infrastruktur()
					);
				$this->load->view('admin/header',$data);
				$this->load->view('admin/data_infastruktur',$data);
				$this->load->view('admin/footer',$data);
				if ($this->input->post('submit')) {
					$id_infrastruktur = rand(00000,99999);
					$nama_kegiatan = $this->input->post('nama_kegiatan');
					$nama_pelaksana = $this->input->post('nama_pelaksana');
					$anggaran = $this->input->post('anggaran');
					$nilai_kontrak = $this->input->post('nilai_kontrak');
					$progres = $this->input->post('progres');
					$ppk = $this->input->post('ppk');
					$tahun = $this->input->post('tahun');
					$data = array(
						"id_infrastruktur"=>$id_infrastruktur,
						"nama_kegiatan"=>$nama_kegiatan,
						"nama_pelaksana"=>$nama_pelaksana,
						"anggaran"=>$anggaran,
						"nilai_kontrak"=>$nilai_kontrak,
						"progres"=>$progres,
						"ppk"=>$ppk,
						"tahun"=>$tahun
						);
					$query = $this->infrastruktur->ins_data_infrastruktur($data);
					if ($query==true) {
						redirect('admin/data_infastruktur');
					}
				}
			} else {
				show_404();
			}
		}
	}
	function edit_data_produk_hukum($id_produk_hukum)
	{
		if(!$this->login){
			redirect("admin/login");
		} else {
			if($this->level_user==1){
				$this->load->model("admin/all_page","all_halaman");
				$this->load->model("admin/data_produk_hukum","produk_hukum");
				$data=array(

					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Produk Hukum",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>13,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'hasil'=>$this->all_halaman->hasil,
					'data'=>$this->produk_hukum->get_produk_hukum_by_id($id_produk_hukum)
					);
				$this->load->view('admin/header',$data);
				$this->load->view('admin/edit_produk_hukum',$data);
				$this->load->view('admin/footer',$data);
				if ($this->input->post('submit')) {

					$id_produk_hukum = $this->input->post('id_produk_hukum');
					if ($this->input->post('userfile'!="")) {
						// start edit images
						$config['upload_path']          = './uploads/produkhukum';
						$config['allowed_types']        = 'pdf|doc|docx';
						$config['max_size']             = 1000000;

						$this->load->library('upload', $config);

						if ( ! $this->upload->do_upload('userfile'))
						{
							echo $this->upload->display_errors();
						
						}
						else
						{
							$res_data = $this->upload->data();
							$result = 'uploads/produkhukum/'.$res_data['file_name'];
						}
						$dataFile['file'] = $result;
						$this->produk_hukum->upd_file_produk_hukum($dataFile,$id_produk_hukum);
						// end edit images		
					}		
				

					$nama_file = $this->input->post('nama_file');
					$tahun = $this->input->post('tahun');
					$keterangan = $this->input->post('keterangan');
					$date = date("Y-m-d");
					$data = array(
						"nama_file"=>$nama_file,
						"tahun"=>$tahun,
						"keterangan"=>$keterangan,
						"date"=>$date
						);
					$query = $this->produk_hukum->upd_data_produk_hukum($data,$id_produk_hukum);
					if ($query==true) {
						redirect('admin/produk_hukum');
					}
				}
			// EDIT FILE

			} else {
				show_404();
			}
		}
	}
	function produk_hukum()
	{
		if(!$this->login){
			redirect("admin/login");
		} else {
			if($this->level_user==1){
				$this->load->model("admin/all_page","all_halaman");
				$this->load->model("admin/data_produk_hukum","produk_hukum");
				$data=array(

					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Produk Hukum",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>13,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'hasil'=>$this->all_halaman->hasil,
					'get_produk_hukum'=>$this->produk_hukum->get_produk_hukum()
					);
				$this->load->view('admin/header',$data);
				$this->load->view('admin/produk_hukum',$data);
				$this->load->view('admin/footer',$data);
				$result = "";
				if ($this->input->post('submit')) {

					$config['upload_path']          = './uploads/produkhukum';
					$config['allowed_types']        = 'pdf|doc|docx';
					$config['max_size']             = 1000000;
					$config['max_width']            = 1024;
					$config['max_height']           = 768;

					$this->load->library('upload', $config);

					if ( ! $this->upload->do_upload('userfile'))
					{
						echo $this->upload->display_errors();
									// $error = array('error' => $this->upload->display_errors());
									//
									// $this->load->view('upload_form', $error);
					}
					else
					{
						$res_data = $this->upload->data();
						$result = 'uploads/produkhukum/'.$res_data['file_name'];
							// print("<pre>".print_r($result,true)."</pre>");
									// $data = array('upload_data' => $this->upload->data());
									//
									// $this->load->view('upload_success', $data);
					}

					$id_produk_hukum = rand(00000,99999);
					$nama_file = $this->input->post('nama_file');
					$file = $result;
					$tahun = $this->input->post('tahun');
					$keterangan = $this->input->post('keterangan');
					$date = date("Y-m-d");
					$data = array(
						"id_produk_hukum"=>$id_produk_hukum,
						"nama_file"=>$nama_file,
						"tahun"=>$tahun,
						"file"=>$file,
						"keterangan"=>$keterangan,
						"date"=>$date
						);
					$query = $this->produk_hukum->ins_data_produk_hukum($data);
					if ($query==true) {
						redirect('admin/produk_hukum');
					}
				}
			// EDIT FILE

			} else {
				show_404();
			}
		}
	}
	function del_data_produk_hukum($id_produk_hukum){
		$this->load->model("admin/data_produk_hukum","produk_hukum");
		$delete = $this->produk_hukum->del_produk_hukum($id_produk_hukum);
		if ($delete==TRUE) {
			redirect('admin/produk_hukum');
		}
	}
	function proses_edit_bidang()
	{
		$bidang_id = $this->input->post('bidang_id');
		$kategori_id = $this->input->post('kategori_bidang');
		$bidang_judul = $this->input->post('judul_bidang');
		$bidang_tugas = $this->input->post('tugas_bidang');
		$bidang_fungsi = $this->input->post('fungsi_bidang');
		$expBidang = explode(" ",$bidang_judul);

		if (count($expBidang)>1){
			array_pop($expBidang);
			$tampung = implode("-",$expBidang);
			$url = $tampung;
		}
		else{
			echo	"exp bidang =1";

			$url = $bidang_judul;
		}
		$bidang_url = base_url()."bidang/".$bidang_id."-".$tampung;

		$data = array(
			'bidang_id'=>$bidang_id,
			'kategori_id'=>$kategori_id,
			'bidang_judul'=>$bidang_judul,
			'bidang_tugas'=>$bidang_tugas,
			'bidang_url'=>$bidang_url,
			'bidang_fungsi'=>$bidang_fungsi);

		//
// print("<pre>".print_r($data,true)."</pre>");
		$this->db->where('bidang_id',$bidang_id);
		$query = $this->db->update('bidang',$data);
		if ($query) {
			redirect('admin/all_bidang');
		}

	}
	function delete_bidang($bidang_id)
	{
		$this->db->where('bidang_id',$bidang_id);
		$this->db->delete("bidang");
		redirect('admin/all_bidang');
	}
	function save_bidang()
	{
		$bidang_id = rand(0000,9999);
		$kategori_id = $this->input->post('kategori_bidang');
		$bidang_judul = $this->input->post('judul_bidang');
		$bidang_tugas = $this->input->post('tugas_bidang');
		$bidang_fungsi = $this->input->post('fungsi_bidang');
		$expBidang = explode(" ",$bidang_judul);

		if (count($expBidang)>1){
			array_pop($expBidang);
			$tampung = implode("-",$expBidang);
			$url = $tampung;
		}
		else{

			$url = $bidang_judul;
		}
		$bidang_url = base_url()."bidang/".$bidang_id."-".$tampung;

	// START UPLOAD
		$result = "";
		$config['upload_path']          = './uploads/bidang';
		$config['allowed_types']        = 'png|jpg|jpeg|gif';
		$config['max_size']             = 1000000;

		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('userfile'))
		{
			echo $this->upload->display_errors();
		}
		else
		{
			$res_data = $this->upload->data();
			$result = 'uploads/bidang/'.$res_data['file_name'];

		}
// END UPLOAD
		$bidang_foto = $result;
		$data = array(
			'bidang_id'=>$bidang_id,
			'kategori_id'=>$kategori_id,
			'bidang_judul'=>$bidang_judul,
			'bidang_tugas'=>$bidang_tugas,
			'bidang_url'=>$bidang_url,
			'bidang_foto'=>$bidang_foto,
			'bidang_fungsi'=>$bidang_fungsi);

	// print("<pre>".print_r($data,true)."</pre>");
		$this->db->insert('bidang',$data);
		redirect('admin/all_bidang');

	}
	function bidang($id=0){
		$id=abs($id);
		if(!$this->login){
			redirect("admin/login");
		}
		else {
			if($this->level_user==1){
				$this->load->model("admin/bidang","halaman_bidang");
				$this->load->model("admin/artikel","modul");
				$this->modul->get_kategori();
				if(!$this->halaman_bidang->get_bidang($id)){
					show_404();
				} else {

					$data=array(
						'avatar'=>$this->avatar_user,
						'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
						'title'=>($id==0)?"Bidang Baru":"Edit Bidang",
						'user'=>$this->name_user,
						'user_level'=>$this->level_user,
						'npage'=>99,
						'burl'=>base_url()."admin",
						'id_user'=>$this->id_user,
						'data'=>$this->halaman_bidang->hasil,
						'list_kategori'=>$this->modul->list_kategori,
						);
					$this->load->view('admin/header',$data);
					$this->load->view('admin/bidang',$data);
					$this->load->view('admin/footer',$data);


				}

			} else {
				show_404();
			}
		}
	}

	function edit_bidang($bidang_id)
	{
		$id = $bidang_id;
		if(!$this->login){
			redirect("admin/login");
		}
		else {
			if($this->level_user==1){
				$this->load->model("admin/bidang","halaman_bidang");
				$this->load->model("admin/artikel","modul");
				$this->modul->get_kategori();

				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>($id==0)?"Bidang Baru":"Edit Bidang",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>99,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'data'=>$this->halaman_bidang->get_bidang_by_id($bidang_id),
					'list_kategori'=>$this->modul->list_kategori,
					);
				$this->load->view('admin/header',$data);
				$this->load->view('admin/edit_bidang',$data);
				$this->load->view('admin/footer',$data);


			} else {
				show_404();
			}
		}
	}
	function all_bidang(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			if($this->level_user==1){
				$this->load->model("admin/all_bidang","all_halaman_bidang");
				$this->all_halaman_bidang->all_bidang();
				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Semua Page",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>13,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'hasil'=>$this->all_halaman_bidang->hasil,
					);

				$this->load->view('admin/header',$data);
				$this->load->view('admin/all_bidang',$data);
				$this->load->view('admin/footer',$data);

			} else {
				show_404();
			}
		}
	}


	function galeri($id=0){
		$id=abs($id);
		if(!$this->login){
			redirect("admin/login");
		} else {
			$this->load->model("admin/galeri","galeri_foto");


			if($this->galeri_foto->get_galeri($id)){
				$cek_gambar=$this->galeri_foto->ambil_gambar();
				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>($id==0)?"Gallery Baru":"Edit Galeri",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>14,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'data'=>$this->galeri_foto->hasil,
					'foto'=>($cek_gambar==true)?$this->galeri_foto->photos:false,
					'kategori'=>$this->galeri_foto->ambil_kategori_umum()
					);

				$this->load->view("admin/header",$data);
				$this->load->view("admin/galeri",$data);
				$this->load->view("admin/footer",$data);
			} else {
				show_404();
			}

		}

	}


	function all_galeri(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model("admin/all_galeri","semua_galeri");
			$this->semua_galeri->get_galeri();

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Daftar Galeri",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>15,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'galeri'=>$this->semua_galeri->hasil
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/all_galeri",$data);
			$this->load->view("admin/footer",$data);
		}
	}


	function menu($id=0){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model("admin/menu","set_menu");

			if(!$this->set_menu->get_menu($id)){
				show_404();
				exit();
			}

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Pengaturan Menu",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>16,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$this->set_menu->hasil,
				'id'=>$id,
				'nama_menu'=>$this->set_menu->namaMenu,
				);


			$this->load->view("admin/header",$data);
			$this->load->view("admin/menu",$data);
			$this->load->view("admin/footer",$data);

		}
	}


	function all_menu(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model("admin/all_menu","semua_menu");
			$this->semua_menu->get_all_menu();

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Menu",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>17,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$this->semua_menu->hasil
				);


			$this->load->view("admin/header",$data);
			$this->load->view("admin/all_menu",$data);
			$this->load->view("admin/footer",$data);
		}
	}



	function kategori_galeri(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			if($this->level_user==1){

				$this->load->model("admin/kategori_galeri","kat");

				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Kategori Galeri",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>18,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'hasil'=>$this->kat->get()
					);


				$this->load->view("admin/header",$data);
				$this->load->view("admin/kategori_galeri",$data);
				$this->load->view("admin/footer",$data);
			}	else {
				show_404();
			}

		}
	}


	function kategori_produk(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model("admin/kategori_produk","kategori");
			$this->kategori->get_kategori();

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Kategori Produk",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>19,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$this->kategori->hasil
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/kategori_produk",$data);
			$this->load->view("admin/footer",$data);


		}
	}


	function banner_depan(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model("admin/banner_depan","banner");

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Banner Depan",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>20,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$this->banner->get_banner()
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/banner_depan",$data);
			$this->load->view("admin/footer",$data);
		}
	}


	function news_ticker(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model('admin/news_ticker','newsTicker');

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"News Ticker",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>21,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'hasil'=>$this->newsTicker->get_news()
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/news_ticker",$data);
			$this->load->view("admin/footer",$data);

		}
	}

	function pihak_ketiga(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model('admin/pihak_ketiga','pihakketiga');

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Pihak Ketiga",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>22,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'pihakketiga'=>$this->pihakketiga->get_data()
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/pihak_ketiga",$data);
			$this->load->view("admin/footer",$data);

		}
	}


	function kontak_masuk(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			$this->load->model('admin/kontak_masuk','inbox');

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Kontak Masuk",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>23,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'kontakmasuk'=>$this->inbox->get_data()
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/kontak_masuk",$data);
			$this->load->view("admin/footer",$data);

		}

	}



	function agenda($id='0'){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Input Agenda",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>26,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				);

			$agenda=$this->db->where('id',$id)->get("agenda");
			if($agenda->num_rows()>0 || $id=='0' ){

				if($agenda->num_rows()>0){
					$d=$agenda->row();

					$data['agenda_id']=$id;
					$data['agenda_judul']=$d->judul;
					$data['agenda_deskripsi']=$d->deskripsi;
					$data['agenda_tanggal_mulai']=$d->tanggal_mulai;
					$data['agenda_tanggal_selesai']=$d->tanggal_selesai;
					$data['agenda_foto']=$d->foto;

				} else {

					$data['agenda_id']=$id;
					$data['agenda_judul']="";
					$data['agenda_deskripsi']="";
					$data['agenda_tanggal_mulai']="";
					$data['agenda_tanggal_selesai']="";
					$data['agenda_foto']="";


				}

				$this->load->view("admin/header",$data);
				$this->load->view("admin/agenda",$data);
				$this->load->view("admin/footer",$data);

			} else {
				show_404();
			}
		}
	}

	function semua_agenda(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Input Agenda",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>27,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'agendas'=>$this->db->order_by("id","desc")->get("agenda")->result_array()
				);
			$this->load->view("admin/header",$data);
			$this->load->view("admin/semua_agenda",$data);
			$this->load->view("admin/footer",$data);
		}
	}



	function semua_download(){

		$data=array(
			'avatar'=>$this->avatar_user,
			'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
			'title'=>"Semua Download",
			'user'=>$this->name_user,
			'user_level'=>$this->level_user,
			'npage'=>28,
			'burl'=>base_url()."admin",
			'id_user'=>$this->id_user,
			'download'=>$this->db->order_by("id","desc")->get("download")->result_array()
			);

		$this->load->view("admin/header",$data);
		$this->load->view("admin/semua_download",$data);
		$this->load->view("admin/footer",$data);

	}


	function download($id="0"){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Download",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>29,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				);

			$download=$this->db->where("id",$id)->get("download");
			if($download->num_rows()>0 || $id=="0"){

				if($download->num_rows()>0){

					$file=$download->row();
					$data['file_id']=$file->id;
					$data['file']=$file->file;
					$data['file_nama']=$file->nama_file;
					$data['deskripsi_file']=$file->deskripsi;

				} else {

					$data['file_id']="";
					$data['file']="";
					$data['file_nama']="";
					$data['deskripsi_file']="";

				}

				$this->load->view("admin/header",$data);
				$this->load->view("admin/download",$data);
				$this->load->view("admin/footer",$data);


			} else {
				show_404();
			}
		}
	}
	function reply($id){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$pesan=$this->db->get_where("kontak_masuk",array("id"=>$id));
			if($pesan->num_rows()>0){

				$data=array(
					'avatar'=>$this->avatar_user,
					'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
					'title'=>"Balas Email",
					'user'=>$this->name_user,
					'user_level'=>$this->level_user,
					'npage'=>33,
					'burl'=>base_url()."admin",
					'id_user'=>$this->id_user,
					'pesan'=>$pesan->row_array(),
					);

				$this->load->view("admin/header",$data);
				$this->load->view("admin/reply",$data);
				$this->load->view("admin/footer",$data);
			} else {
				show_404();
			}
		}
	}

	function semua_faq(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$faq=$this->db->order_by('id','desc')->get("faq");
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"FAQ",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>34,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'faq'=>$faq->result_array(),
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/semua_faq",$data);
			$this->load->view("admin/footer",$data);
		}
	}
	function faq($id=0){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$datas=array(
				'id'=>0,
				'pertanyaan'=>'',
				'jawaban'=>'',
				);

			$faq=$this->db->get_where('faq',array('id'=>$id));
			if($id > 0 && !($faq->num_rows()>0)){
				show_404();
				exit();
			}

			if($faq->num_rows()>0){
				$datas= $faq->row_array();
			}

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"FAQ Baru",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>35,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'faq'=>$datas,
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/faq",$data);
			$this->load->view("admin/footer",$data);
		}
	}


	function group_banner(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$groups=$this->db->order_by('id_group	','desc')->get("group_banner");
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Group banner",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>36,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'groups'=>$groups->result_array(),
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/group_banner",$data);
			$this->load->view("admin/footer",$data);
		}
	}

	function banner($id=0){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$banner=array(
				"id_group"=>0,
				"nama"=>""
				);

			$item_banner=array();

			$cari=$this->db->get_where("group_banner",array("id_group"=>$id));
			if($id > 0 && !($cari->num_rows()>0)){
				show_404();
				exit();
			} else {
				$banner=$cari->row_array();
				$item_banner=$this->db->order_by('id','asc')->get_where("banner_item",array("id_group"=>$id))->result_array();
			}

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Buat group banner",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>37,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'banner'=>$banner,
				'item_banner'=>$item_banner,
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/banner",$data);
			$this->load->view("admin/footer",$data);
		}
	}

	function distribusi_tema(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$this->load->model('admin/distribusi_tema','distribusi');

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Distribusi Tema",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>24,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'temas'=>$this->distribusi->get_tema()
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/distribusi_tema",$data);
			$this->load->view("admin/footer",$data);
		}
	}

	function pengaturan_tema(){
		if(!$this->login){
			redirect("admin/login");
		} else {
			$this->load->model('admin/pengaturan_tema','pengatuan_tem');
			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"Pengaturan Tema",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>25,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'tema_terinstal'=>$this->pengatuan_tem->get_tema()
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/pengaturan_tema",$data);
			$this->load->view("admin/footer",$data);
		}
	}

	function smtp_email(){
		if(!$this->login){
			redirect("admin/login");
		} else {

			if($this->level_user!=1){
				show_404();
				exit;
			}


			$smtp=$this->db->get_where("smtp_email",array("id"=>"1"));
			if($smtp->num_rows()<1){
				$this->db->insert("smtp_email",array("id"=>"1"));
				$smtp=$this->db->get_where("smtp_email",array("id"=>"1"));
			}

			$data=array(
				'avatar'=>$this->avatar_user,
				'path_avatar'=>base_url()."an-component/media/upload-user-avatar/".$this->avatar_user,
				'title'=>"SMTP Email",
				'user'=>$this->name_user,
				'user_level'=>$this->level_user,
				'npage'=>32,
				'burl'=>base_url()."admin",
				'id_user'=>$this->id_user,
				'smtp'=>$smtp->row_array(),
				);

			$this->load->view("admin/header",$data);
			$this->load->view("admin/smtp_email",$data);
			$this->load->view("admin/footer",$data);
		}
	}
	function layout_widget(){

		if(!$this->login){
			redirect("admin/login");
		} else {

		}

	}






	function login($x=''){
		if($this->login){
			redirect('admin');
		}
		$data['status']=$x;
		$this->load->view("admin/login",$data);
	}

	function proseslogin(){
		if($this->input->post()){
			$user=($this->input->post("username"));
			$pass=md5($this->input->post("password"));
			echo "Username : ".$user."<br>";
			echo "Password : ".$pass."<br>";

			$cari=$this->db->get_where("user",array("name_user"=>$user,"password_user"=>$pass,"status_user"=>"Y","terhapus"=>"N"));

			 // $cari=$this->db->get_where("user",array("name_user"=>$user,"status_user"=>"Y","terhapus"=>"N"));

			if(!($cari->num_rows()>0)){
				redirect("admin/login/1");
				// echo "Username : ".$user."<br>";
				// echo "Password : ".$pass."<br>";
			} else {
				$row=$cari->row();

				 // if(password_verify($pass,$row->password_user)){

				$data_sessi=array('login'=>true,
					'id_user'=>$row->id_user,
					'name_user'=>$row->name_user,
					'password_user'=>$row->password_user,
					'level_user'=>$row->level_user);
				$this->session->set_userdata($data_sessi);
				redirect("admin");

				 // } else {
					// redirect("admin/login/1");
				 // }

			}

		}
		else{
			show_404();
		}
	}




	function logout(){
		$data= array("login","id_user","name_user","password_user","level_user","random_filemanager_key");
		$this->session->unset_userdata($data);
		redirect("admin");
	}

function reply_kontak(){
    $kontak_id = $this->input->post('kontak_id');
    $reply_isi = $this->input->post('reply_isi');
    
    	$data = [
    	    'kontak_id' => $kontak_id,
    	    'reply_isi' => $reply_isi
    	    ];
		$this->db->insert('reply',$data);
			redirect("admin/kontak_masuk");
}


function input_kontak(){
    $ktp = $this->input->post('ktp');
    $nama = $this->input->post('nama');
    $phone = $this->input->post('phone');
    $pesan = $this->input->post('pesan');
    
    	$data = [
    	    'ktp' => $ktp,
    	    'nama' => $nama,
    	    'phone' => $phone,
    	    'pesan' => $pesan
    	    ];
		$this->db->insert('kontak_masuk',$data);
			redirect("kontak");
}

}

?>
