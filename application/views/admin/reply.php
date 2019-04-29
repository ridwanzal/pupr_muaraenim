<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" >
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Email
      <small>Reply  Email</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li>
      <li><a href="<?php echo base_url('admin/kontak_masuk') ?>">Inbox</a></li>
      <li class="active">Reply pesan</li>
      
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">

    <div class="box box-warning">
      <div class="box-body">
        <div class="col-md-6">
          <div class="form-group">
            <label>No. KTP</label>
            <input type="text" class="form-control" id="judul-pesan" value="<?php echo $pesan['ktp'] ?>" readonly/>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label>Nama</label>
            <input type="text" class="form-control" id="judul-pesan" value="<?php echo $pesan['nama'] ?>" readonly/>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label>Tanggal</label>
            <input type="text" class="form-control" id="judul-pesan" value="<?php echo date('d-m-Y',strtotime($pesan['tanggal'])) ?>" readonly/>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label>Telepon</label>
            <input type="text" class="form-control" id="judul-pesan" value="<?php echo $pesan['phone'] ?>" readonly/>
          </div>
        </div>
        <div class="col-md-12">
          <div class="form-group">
            <label>Pesan</label>
            <textarea class="form-control" readonly><?php echo $pesan['pesan'] ?></textarea>
          </div>
        </div>
        
        <form action="<?= base_url(); ?>AN_admin/reply_kontak" method="POST">
        <div class="form-group">
          <label >Balasan</label>
          <input type="hidden" class="form-control" name="kontak_id" value="<?php echo $pesan['id'] ?>" readonly/>
          <textarea  placeholder="Masukan balasan anda" class="form-control" name="reply_isi"></textarea>
          <!-- <textarea  id="pesan-email" name="reply_isi"></textarea>-->

        </div>


        <div class="form-group">
          <button class="btn btn-sm btn-primary">Kirim</button>
        </div>
        </form>
        
      </div>
    </div>

  </section><!-- /.content -->
</div><!-- /.content-wrapper -->





