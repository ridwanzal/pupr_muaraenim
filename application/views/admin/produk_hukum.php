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
                  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                    <i class="fa-plus fa"></i>&nbsp Tambah produk hukum
                  </button>

                  <!-- Modal -->
                  <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                          <h4 class="modal-title">Produk Hukum</h4>
                        </div>
                        <div class="modal-body">
                          <table class="table ">
                            <form class="" method="post" enctype="multipart/form-data">
                              <table class="table table-bordered">
                                <tr>
                                  <td>Nama file</td>
                                  <td><input class="form-control" name="nama_file"></td>
                                </tr>
                                <tr>
                                  <td>File</td>
                                  <td><input class="form-control" name="userfile" type="file"></td>
                                </tr>
                                <tr>
                                  <td>tahun</td>
                                  <td>
                                      <select class="form-control" name="tahun">
                                        <?php for ($i=1950; $i <2050 ; $i++) { ?>
                                            <option value="<?php echo $i ?>"><?php echo $i ?></option>
                                        <?php } ?>
                                      </select>
                                  </td>
                                </tr>
                                <tr>
                                  <td>Keterangan</td>
                                  <td><textarea name="keterangan" class="form-control"></textarea></td>
                                </tr>
                                <tr>
                                  <td colspan="2"><input type="submit" name="submit" value="Submit" class="btn btn-primary" /></td>
                                </tr>
                              </table>
                            </form>
                          </table>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div>

                    </div>
                  </div>
                 <br><br>
                <table class="slug-table table table-bordered table-striped dt-responsive">
                  <thead>
                  <tr>
                    <th>Nama File</th>
                    <th>Tahun</th>
                    <th>File</th>
                    <th>Keterangan</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php $i=0; ?>
                  <?php foreach ($get_produk_hukum as $produk_hukum): ?>
                    <tr>
                      <td><?php echo $produk_hukum->nama_file ?></td>
                      <td><?php echo $produk_hukum->tahun ?></td>
                      <td>
                        <?php if ($produk_hukum->file!=""): ?>
                          <a href="<?php echo base_url().$produk_hukum->file ?>"><i class="fa fa-file"></i>&nbsp</a>
                            
                        <?php endif; ?>
                      </td>
                      <td><?php echo $produk_hukum->keterangan ?></td>
                      <td>

                        <a href="<?php echo base_url() ?>admin/edit_data_produk_hukum/<?php echo $produk_hukum->id_produk_hukum ?>" class="btn btn-warning"><i class="fa fa-edit"></i>&nbspEdit</a>
                        <a href="<?php echo base_url() ?>admin/del_data_produk_hukum/<?php echo $produk_hukum->id_produk_hukum ?>" class="btn btn-danger"><i class="fa fa-trash"></i>&nbspHapus</a>

                        <!-- Modal -->


                      </td>
                    </tr>
                    <?php $i++; ?>
                  <?php endforeach; ?>
                  </tbody>
                </table>


          </div>
        </div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
