<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class='container'>
<div class='row'>
	<div class='col-md-12' id="header-page">
			<h1><span>Produk Hukum</span></h1>
	</div>

		<div class='col-md-12 left-side'>

			<div class="artikel">
				<div class="konten">
					<h2 class="title">Data Produk Hukum</h2>
					<ul>
          <?php foreach ($get_produk_hukum as $produk_hukum): ?>
              <li>
								<h4 style="font-weight:600;">
									<?php if (!empty($produk_hukum->file) && file_exists(FCPATH . $produk_hukum->file)): ?>
									<a href="<?php echo site_url().$produk_hukum->file ?>"> <?= $produk_hukum->nama_file ?> [tahun : <?= $produk_hukum->tahun ?>] </a>
									<?php else: ?>
										<?= $produk_hukum->nama_file ?> [tahun : <?= $produk_hukum->tahun ?>
									<?php endif; ?>
								</h4>
								<p><?php echo $produk_hukum->keterangan ?></p>

							</li>
          <?php endforeach; ?>
        </ul>


				</div>
			</div>

		</div>
