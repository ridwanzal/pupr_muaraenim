<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class='container'>
<div class='row'>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<nav class="navbar navbar-light bg-light">
  <span class=" mb-0 h3" style="color:black">Index Berita</span><br>
  <span class=" mb-0 h5" style="color:black">Home</span>
</nav>

<!--
<div class='col-md-12' id="header-page">
			<h1><span>Produk Hukum</span></h1>
	</div>
-->
		<div class='col-md-12 left-side'>

			<div class="artikel">
				<div class="konten">
			
							 <table id="tabled" class="table table-hovered display">
                                <thead>
                                    <tr>
                                        <th class="text-center">Thumbail</th>
                                        <th>Judul Berita</th>
                                        <th>Tanggal Posting</th>
                                        <th><i class='fa fa-eye'></i></th>
                                    </tr>
                                </thead>
                                    
 
        <tbody>
             <?php foreach ($semua_artikel as $key => $artikel) { ?>
        <tr>
            <td style="text-align: center; vertical-align: middle;"><?= "<img  src='".img_artikel_url($artikel['foto'])."' alt='$artikel[judul]' width='50px' height='30px' />" ?></td>
            <td><?= "<a href='".artikel_url($artikel['id'],$artikel['slug'])."'>$artikel[judul]</a>";?></td>
            <td><?= date("d M Y",strtotime($artikel['tanggal'])); ?></td>
            <td><?= "$artikel[dibaca]"; ?></td>
        </tr>
<?php } ?>
        </tbody>
    </table>	


				</div>
			</div>

		</div>
		
		
   
    <!-- format_tanggal($artikel['tanggal']) -->



<div style='width:100%;text-align: center'>
  <?php echo $pagination; ?>

</div>

     <script src="https://code.jquery.com/jquery-3.3.1.js" ></script>

  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<script>
    $(document).ready( function () {
    $('#tabled').DataTable();
} );
</script>
