
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>


<div class='container'>
<div class='row'>

<div class='col-md-12' id="header-page">
  <h1><span>Contact Us</span></h1>
</div>

<div class='col-md-12 left-side'>

  <div class="artikel">
    <div class="konten">
      <h2 class="title">Contact Us</h2>
      
      <p style="text-align: center;"><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d995.4256638888642!2d103.77722515982957!3d-3.6550789666388654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e39f6357ba7c49b%3A0x56c40cc246bc9212!2sDinas+Bina+Marga!5e0!3m2!1sid!2sid!4v1544771457196" width="700" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>
      <p style="padding-left: 30px;"><strong>Dinas Pekerjaan Umum &amp; Penataan Ruangan Kab. Muara Enim</strong></p>
      <p class="padding-left:30px;" style="padding-left: 30px;">Jl. Mayor Tjik Agus Kiemas (Islamic Center) Muara Enim,</p>
      <p class="padding-left:30px;" style="padding-left: 30px;">Kec. Muara Enim, Kab. Muara Enim,</p>
      <p class="padding-left:30px;" style="padding-left: 30px;">Sumatera Selatan - 31313</p>
      <p class="padding-left:30px;" style="padding-left: 30px;">Telp: (0734) 421099</p>
      
      <hr>
      <div class="row">
        <div class="col-md-12">

          <form action="<?= base_url(); ?>AN_admin/input_kontak" method="POST">
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label>No. KTP</label> 
                  <input name="ktp" class="form-control" type="text" >
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Nama</label> 
                  <input name="nama" class="form-control" type="text" >
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Telepon</label> 
                  <input name="phone" class="form-control"  type="text" >
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label>Pesan</label>
                  <textarea class="form-control" name="pesan"></textarea>
                </div>
              </div>     
            </div>
            
            
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <input type="submit" value="Submit" class="btn btn-primary col-md-6 col-md-offset-3">
                </div>
              </div>     
            </div>

          </form>
        </div>
      </div>
<hr>

<div class="panel-group" id="accordion">
    <?php foreach($get_kontak as $i) :?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?= $i['id']; ?>">
             <div class="row">
              <div class="col-md-6"><?= $i['nama']; ?></div>
              <div class="col-md-6 text-right"><?= date("d-m-Y H:i:s",strtotime($i['tanggal'])); ?></div>
              </div>
            </a>
        </h4>
      </div>
      <div id="collapse<?= $i['id']; ?>" class="panel-collapse collapse ">
        <div class="panel-body">
            <?= $i['pesan']; ?>
      
            </div>
            <?php  
			$pesan=$this->db->get_where("reply",array("kontak_id"=>$i['id']))->row_array();
			
            ?>
        <div class="panel-body">
   <?= strip_tags($pesan['reply_isi']); ?>   
    
       </div>
       
      </div>
    </div>
    <?php endforeach; ?>
    
  </div> 


    </div>
  </div>

</div>
