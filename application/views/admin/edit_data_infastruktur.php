<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

?>

     <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" >
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Data Infrastruktur
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Semua Page</li>

          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <div class="box box-warning">
          	<div class="box-body">

                <table class="table ">
                  <form class="" method="post">
                    <table class="table table-bordered">
                      <tr>
                        <td>Nama Kegiatan</td>
                        <td><input class="form-control" name="nama_kegiatan" value="<?php echo $data->nama_kegiatan ?>"></td>
                      </tr>
                      <tr>
                        <td>Anggaran</td>
                        <td><input class="form-control" name="anggaran" value="<?php echo $data->anggaran ?>"></td>
                      </tr>
                      <tr>
                        <td>Nilai Kontrak</td>
                        <td><input class="form-control" name="nilai_kontrak" value="<?php echo $data->nilai_kontrak ?>"></td>
                      </tr>
                      <tr>
                        <td>Realisasi Pekerjaan</td>
                        <td><input class="form-control" name="progres" value="<?php echo $data->progres ?>"></td>
                      </tr>
                      <tr>
                        <td>PPK</td>
                        <td><input class="form-control" name="ppk" value="<?php echo $data->ppk ?>"></td>
                      </tr>
                      <tr>
                        <td>Nama Pelaksana</td>
                        <td><input class="form-control" name="nama_pelaksana" value="<?php echo $data->nama_pelaksana ?>"></td>
                      </tr>
                      <tr>
                        <td>Tahun</td>
                        <td><input class="form-control" name="tahun" value="<?php echo $data->tahun ?>"></td>
                      </tr>
                      <tr>
                        <input type="hidden" name="id_infrastruktur" value="<?php echo $data->id_infrastruktur ?>">
                        <td colspan="2"><input type="submit" name="submit" value="Submit" class="btn btn-primary" /></td>
                      </tr>
                    </table>
                  </form>
                </table>

          </div>
        </div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
