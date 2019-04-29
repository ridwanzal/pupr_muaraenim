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
              <!-- Trigger the modal with a button -->
                  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                    <i class="fa-plus fa"></i>&nbsp Tambah Infrastruktur
                  </button>
                          <!-- Modal -->
                  <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                          <h4 class="modal-title">Data Infrastruktur</h4>
                        </div>
                        <div class="modal-body">
                          <table class="table ">
                            <form class="" method="post">
                              <table class="table table-bordered">
                                <tr>
                                  <td>Nama Kegiatan</td>
                                  <td><input class="form-control" name="nama_kegiatan"></td>
                                </tr>
                                <tr>
                                  <td>Anggaran</td>
                                  <td><input class="form-control" name="anggaran"></td>
                                </tr>
                                <tr>
                                  <td>Nilai Kontrak</td>
                                  <td><input class="form-control" name="nilai_kontrak"></td>
                                </tr>
                                <tr>
                                  <td>Realisasi Pekerjaan</td>
                                  <td><input class="form-control" name="progres"></td>
                                </tr>
                                <tr>
                                  <td>PPK</td>
                                  <td><input class="form-control" name="ppk"></td>
                                </tr>
                                <tr>
                                  <td>Nama Pelaksana</td>
                                  <td><input class="form-control" name="nama_pelaksana"></td>
                                </tr>
                                <tr>
                                  <td>Tahun</td>
                                  <td><input class="form-control" name="tahun"></td>
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
                    <th>Nama Kegiatan</th>
                    <th>Anggaran</th>
                    <th>Nilai Kontrak</th>
                    <th>Realisasi Pekerjaan</th>
                    <th>PPK</th>
                    <th>Nama Pelaksana</th>
                    <th>Tahun</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php $k=0; ?>
                  <?php foreach ($get_infrastruktur as $infrastruktur): ?>
                    <tr>
                      <td><?php echo $infrastruktur->nama_kegiatan ?></td>
                      <td><?php echo $infrastruktur->anggaran ?></td>
                      <td><?php echo $infrastruktur->nilai_kontrak ?></td>
                      <td><?php echo $infrastruktur->progres ?></td>
                      <td><?php echo $infrastruktur->ppk ?></td>
                      <td><?php echo $infrastruktur->nama_pelaksana ?></td>
                      <td><?php echo $infrastruktur->tahun ?></td>
                      <td>
                        <a href="<?php echo base_url() ?>admin/edit_data_infrastruktur/<?php echo $infrastruktur->id_infrastruktur ?>" class="btn btn-warning"><i class="fa fa-edit"></i>&nbspEdit</a>
                        <a href="<?php echo base_url() ?>admin/del_data_infrastruktur/<?php echo $infrastruktur->id_infrastruktur ?>" class="btn btn-danger"><i class="fa fa-trash"></i>&nbspHapus</a>
                      </td>
                    </tr>
                    <?php $k++; ?>
                  <?php endforeach; ?>
                  </tbody>
                </table>


          </div>
        </div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
