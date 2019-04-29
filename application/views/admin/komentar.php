<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>



<div class='content-wrapper'>

	<div class="content-header">
	<h1>Komentar</h1>
	<ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Komentar </li>

          </ol>
	</div>
	<div class="content">

	<div class="row">
		<div class="col-sm-12">
			<div class="box box-success">
				<div class="box-header with-border">
					<h4>Komentar</h4>
				</div>
				<div class="box-body">
					<table class="slug-table table table-bordered table-striped">
						<thead>
							<tr>
								<th>No</th>
								<th>No. KTP</th>
								<th>Nama</th>
								<th>Telepon</th>
								<th>Komentar</th>
								<th>Tanggal</th>
								<th>Aksi</th>
							</tr>
						</thead>
						<tbody>
							<?php
							echo $hasil;
							?>
						</tbody>
						<tfoot>
							<tr>
								<th>No</th>
								<th>No. KTP</th>
								<th>Nama</th>
								<th>Telepon</th>
								<th>Komentar</th>
								<th>Tanggal</th>
								<th>Aksi</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>

		</div>
	</div>
 </div>
</div>
