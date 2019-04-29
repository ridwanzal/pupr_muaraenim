<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

?>

     <!-- Content Wrapper. Contains bidang content -->
      <div class="content-wrapper" >
        <!-- Content Header (bidang header) -->
        <section class="content-header">
          <h1>
            bidang
            <small>Semua bidang</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Semua bidang</li>

          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <div class="box box-warning">
          	<div class="box-body">

                <table class="slug-table table table-bordered table-striped dt-responsive">
                  <thead>
                  <tr>
                    <th>Judul bidang</th>
                    <th>Status</th>
                    <th>Url</th>
                    <th>Action</th>
                  </tr>
                  </thead>

                  <tbody>
                    <?php
                   echo $hasil;
                    ?>
                  </tbody>
                </table>


          </div>
        </div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
