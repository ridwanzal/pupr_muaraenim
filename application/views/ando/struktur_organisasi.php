<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//455
?>

	<link rel="stylesheet" type="text/css" href="<?php echo assets_url('struktur_style.css') ?>" />


<div class='container'>
<div class='row'>

	<div class='col-md-12' id="header-page">
			<h1><span><?php // echo $heading; ?></span></h1>
	</div>



	<div class='col-md-12 left-side'>

		<div class="artikel">

			<?php //if($page["foto"]!=""){
			//	echo "<img class='img-responsive' alt='$page[judul]' src='$page[foto]' />";
		//	} 



foreach($so as $cb):
			?>
<img src="<?= base_url();?>uploads/bidang/<?= $cb['so_foto']; ?>"  class="<?= $cb['jabatan_kd'];?>">


<div class="t_<?= $cb['jabatan_kd']; ?>">
 <p><?= $cb['so_nama']; ?><br></p>  
 <div class="ca">
 NIP : <?= $cb['so_nip']; ?>   
</div>
</div>
<?php endforeach; ?>





		<img class='img-responsive' src='uploads/bidang/strukturfoto.jpg' />	
		
			
		 <div class='konten'>
			<div class="isi">
				<?php // echo reversequote($page['isi'],'all'); ?>
			</div>

		 </div>
		</div>

	</div>