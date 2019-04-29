<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


<div class='container'>
<div class='row'>

	<div class='col-md-12' id="header-page">
			<h1><span>Semua Galeri</span></h1>
	</div>

		<div class='col-md-12 left-side'>

			<div class="row">
<?php 

foreach ($semua_galeri as $galeri) {
	echo '<div class="col-md-4" style="padding: 3px !important;">';
  echo "<div class='artikel' style='height: 320px !important;'>";

  echo "<img style='width: 100%;' src='".img_galeri_url($galeri['foto'])."' alt='$galeri[nama]' />";

  echo "<div class='konten' style='text-align: center;padding:'>";
  	echo "<a href='".galeri_url($galeri['id'],$galeri['slug'])."'><h5>$galeri[nama]</h5></a>";
	// echo "<a href='".galeri_url($galeri['id'],$galeri['slug'])."'><button class='btn btn-info btn-xs btn-effect'>Lihat Galeri</button></a>";

	echo "</div>";
	echo "</div>";
	echo '</div>';

}

 ?>					
			</div>	
		<div style='width:100%;text-align: center'>
		  <?php echo $pagination; ?>

		</div>

		</div>