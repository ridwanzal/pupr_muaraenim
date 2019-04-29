<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

?>

     <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" >
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Produk Hukum
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Semua Page</li>

          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <div class="box box-warning">
          	<div class="box-body">
              <!-- Trigger the modal with a button -->
              <table class="table ">
                <form class="" method="post" enctype="multipart/form-data">
                  <table class="table table-bordered">
                    <tr>
                      <td>Nama file</td>
                      <td><input class="form-control" name="nama_file" value="<?php echo $data->nama_file ?>"></td>
                    </tr>
                    <tr>
                      <td>File</td>
                      <td><input class="form-control" name="file" type="file"></td>
                    </tr>
                    <tr>
                      <td>tahun</td>
                      <td>
                          <select class="form-control" name="tahun">
                            <?php for ($i=1950; $i <2050 ; $i++) { ?>
                                <option <?php if ($data->tahun==$i): ?> selected <?php endif; ?> value="<?php echo $i ?>">
                                  <?php echo $i ?>
                                </option>
                            <?php } ?>
                          </select>
                      </td>
                    </tr>
                    <tr>
                      <td>Keterangan</td>
                      <td><textarea name="keterangan" class="form-control"><?php echo $data->keterangan ?></textarea></td>
                    </tr>
                    <tr>
                      <input type="hidden" name="id_produk_hukum" value="<?php echo $data->id_produk_hukum ?>">
                      <td colspan="2"><input type="submit" name="submit" value="Edit" class="btn btn-primary" /></td>
                    </tr>
                  </table>
                </form>
              </table>

          </div>
        </div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
