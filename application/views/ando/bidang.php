<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

	<link rel="stylesheet" type="text/css" href="<?php echo assets_url('struktur_style.css') ?>" />

<div class='container'>
<div class='row'>

	<div class='col-md-12' id="header-bidang">
      <div class="pu-title">
			     <h1 style="color:white;"><span><?php echo $heading; ?></span></h1>
      </div>
	</div>



	<div class='col-md-12 left-side'>

		<div class="col-md-12">
			<div class="artikel">
				<div class="konten">
					<div class="isi">
					    
					    
					 
<?php  
echo "&ensp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";



if($bidang['id'] == '2783'){
    $jkel='1';
} else if($bidang['id'] == '3899'){
    $jkel='2';
} else if($bidang['id'] == '4454'){
    $jkel='3';
} else if($bidang['id'] == '3187'){
    $jkel='4';
} else if($bidang['id'] == '2750'){
    $jkel='5';
} else if($bidang['id'] == '7549'){
    $jkel='6';
} else if($bidang['id'] == '7822'){
    $jkel='7';
} else {
    $jkel='0';
}



$ck = $this->db->query("SELECT * FROM struktur_organisasi inner join jabatan on struktur_organisasi.jabatan_id = jabatan.jabatan_id && jabatan.jabatan_kelompok='$jkel'")->result_array();
foreach($ck as $ca): 
			?>
			
<img src="<?=base_url();?>uploads/bidang/<?= $ca['so_foto']; ?>"  class="bd_img_<?= $ca['jabatan_kd'];?>">

<div class="bd_<?= $ca['jabatan_kd']; ?>">
 <p><?= $ca['so_nama']; ?><br></p>  
 <div class="ca">
 NIP : <?= $ca['so_nip']; ?>   
</div>
</div>
<?php endforeach; 	 ?>
					    
					    
						<img src="<?php echo site_url().$bidang['foto'] ?>" alt="">
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="pu-title">
				<h3 style="color:white">Tugas dan Fungsi</h3>
			</div>
		</div>

		<div class="col-md-12">
			<div class="artikel">

			 <div class='konten'>
				<div class="isi" style="margin:20px;">
						    <div class="row">
						      <h4 style="font-weight:600;font-style:bold;">Tugas</h4>
									<?php echo html_entity_decode($bidang['tugas']) ?> <br>
									<h4 style="font-weight:600;font-style:bold;">Fungsi</h4>
									<?php echo html_entity_decode($bidang['fungsi']) ?>
						    </div>
				</div>

			 </div>
			</div>
		</div>
		<div class="col-md-12">

	    <div class="pu-title">
	      <h3 style="color:white">List Berita</h3>
	    </div>
		</div>
		<div class="col-md-12">
			<div class="artikel">

			 <div class='konten'>
				<div class="isi">

							<div class="row list-berita">
								<ul>
									<?php foreach ($artikel_kategori as $kategori){ ?>
										<li>
											<?php echo "<h4><a href='".artikel_url($kategori['id'],$kategori['slug'])."'>".$kategori['judul']."</a></h4>"; ?>
											<p>posted by <?php echo $kategori['nama_admin'] ?> <?php format_tanggal($kategori['tanggal']) ?></p>
										</li>
									<?php } ?>
								</ul>
							</div>
				</div>

			 </div>
			</div>

		</div>
		<div class="col-md-12">

	  <div class="pu-title">
      <h3 style="color:white">Galeri Foto</h3>
    </div>

	</div>
<div class="col-md-12">

		<div class="row galeri-foto">
        <div class="col-md-12">
							<?php $i = 0; ?>
							<?php foreach ($get_galeri as $galeri): ?>
								<?php if ($i<6): ?>

                <div class="col-md-4" style="margin-top:10px;">
                	<div style="width:100%;height:auto;background-color:#77848e;">
										<?php echo  "<a href='".galeri_url($galeri['id'],$galeri['slug'])."'><img class='img-responsive img' src='".img_galeri_url($galeri['foto'])."' alt='$galeri[nama]' /></a>";  ?>

                  </div>
                </div>
							<?php endif; ?>
							<?php $i++; ?>
							<?php endforeach; ?>


        </div>
    </div>
	</div>

	</div>
