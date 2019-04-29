<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

?>

     <!-- Content Wrapper. Contains bidang content -->
      <div class="content-wrapper" >
        <!-- Content Header (bidang header) -->
        <section class="content-header">
          <h1>
            bidang
            <small><?php echo $title; ?></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active"><?php echo $title; ?></li>

          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <form class="" action="<?php echo base_url('admin/proses_edit_bidang/') ?>" method="post">
          <div class="box box-warning">
            <div class="box-body">
              <div class="form-group">
                <label for="judul_bidang">Judul bidang</label>
                <input type="text" class="form-control" id="judul_bidang" name="judul_bidang" value="<?php echo $data->bidang_judul; ?>" />
                <input name="bidang_id" type="hidden" id="bidang_id" value="<?php echo $data->bidang_id; ?>"/>
              </div>

              <div class="form-group">
                <label for="tugas_bidang">Tugas bidang</label>
                <textarea class="form-control" id="tugas_bidang" name="tugas_bidang"><?php echo $data->bidang_tugas ;?></textarea>
              </div>
              <div class="form-group">
                <label for="fungsi_bidang">Fungsi bidang</label>
                <textarea class="form-control" id="fungsi_bidang" name="fungsi_bidang"><?php echo $data->bidang_fungsi ;?></textarea>
              </div>

              <div class="form-group">
                <label for="kategori_bidang">Kategori</label>
                <select name="kategori_bidang" id="kategori_bidang" class="form-control">
                  <option value="0" selected>Pilih kategori</option>
                  <?php
                  if($list_kategori!=false){
                    echo $list_kategori;
                  }
                   ?>
                </select>
              </div>

              <div class="form-group">
                <label for="status_bidang">Status</label>
                <select class="form-control" id="status_bidang">
                <option value="published">published</option>
                <option value="draft">draft</option>
                </select>
              </div>

              <div class="form-group">
                <!-- <button class="btn btn-sm btn-primary" id="save-bidang">Simpan</button> -->
                <input type="submit" class="btn btn-sm btn-primary" id="save-bidang" value="Simpan" />

              </div>

          </div>
        </div>
          </form>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
