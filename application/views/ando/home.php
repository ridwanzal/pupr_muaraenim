<style>
    /* Carousel Styles */
    
    .carousel-indicators .active {
        background-color: #2980b9;
    }
    
    .carousel-inner img {
        width: 100%;
        max-height: 460px
    }
    
    .carousel-control {
        width: 0;
    }
    
    .carousel-control.left,
    .carousel-control.right {
        opacity: 1;
        filter: alpha(opacity=100);
        background-image: none;
        background-repeat: no-repeat;
        text-shadow: none;
    }
    /*
.carousel-control.left span {
	padding: 15px;
}

.carousel-control.right span {
	padding: 15px;
}
*/
    
    .carousel-control .glyphicon-chevron-left,
    .carousel-control .glyphicon-chevron-right,
    .carousel-control .icon-prev,
    .carousel-control .icon-next {
        position: absolute;
        top: 45%;
        z-index: 5;
        display: inline-block;
    }
    
    .carousel-control .glyphicon-chevron-left,
    .carousel-control .icon-prev {
        left: 0;
    }
    
    .carousel-control .glyphicon-chevron-right,
    .carousel-control .icon-next {
        right: 0;
    }
    
    .carousel-control.left span,
    .carousel-control.right span {
        background-color: #000;
    }
    
    .carousel-control.left span:hover,
    .carousel-control.right span:hover {
        opacity: .7;
        filter: alpha(opacity=70);
    }
    /* Carousel Header Styles */
    
    .header-text {
        position: absolute;
        top: 20%;
        left: 1.8%;
        right: auto;
        width: 96.66666666666666%;
        color: #fff;
    }
    
    .header-text h2 {
        font-size: 50px;
    }
    
    .header-text h2 span {
        -webkit-text-stroke: 1px black;
        color: #f9af4a;
        text-shadow: 3px 3px 0 #000, -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
    }
    
    .header-text h3 span {
        padding: 15px;
        font-size: 40px;
        color: #03a9f4;
        -webkit-text-stroke: 0.2px white;
    }
    
    .btn-min-block {
        min-width: 170px;
        line-height: 26px;
    }
    
    .btn-theme {
        color: #fff;
        background-color: transparent;
        border: 2px solid #fff;
        margin-right: 15px;
    }
    
    .btn-theme:hover {
        color: #000;
        background-color: #fff;
        border-color: #fff;
    }
</style>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" width="100%;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <?php  $no=0; foreach ($banner_depan as $key => $value) { $no++; ?>
            <!-- <? print_r($banner_depan) ?> -->
            <div class="item <?php if($no==1){ ?>active <?php } ?>">
                <img src="<?= $value['gambar']; ?>" alt="First slide">
                <!-- Static Header -->
                <div class="header-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h2>
                            	<span><?= $value['header']; ?></span>
                            </h2>
                        <br>
                        <div class="col-lg-8 col-md-8">
                            <p style="bottom:0px ; font-size: 39px; letter-spacing: 0.5px; text-align:left; line-height:40px; left: -29px !important; float:left; color : #fff; position: relative; top:235px; font-weight:bold;">
                                <?= $value['caption']; ?>
                            </p>
                        </div>
                        <!--<div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="#">Register</a></div> -->
                    </div>
                </div>
            </div>
            <?php } ?>
    </div>
    <!-- Controls -->
    <a title="Slide Sebelumnya" class="left carousel-control" style="padding:5px;" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" style="background: transparent; left: 25px;"></span>
    </a>
    <a title="Slide Sesudahnya" class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" style="background: transparent; right: 25px;"></span>
        <span>Next</span>
    </a>
</div>
<!-- /carousel -->
<div style="background: #fad605; color:#2055a2; opacity : 0.8; height:auto; padding : 10px;">
    <span style="color:#2055a2;font-weight:600; margin-left:16px;"><span class="fa fa-exclamation-circle">
    </span>&nbsp;&nbsp;Pengumuman : <?php print_r($artikel_pengumuman[0]['judul']) ?>,&nbsp;&nbsp;<span><?php echo format_tanggal($artikel_pengumuman[0]['tanggal']) ?></span>
    <a href=""><span class="fa fa-caret-right pull-right" style="margin-right:25px; margin-top:5px;"></span></span>
</div>
<div class="container">
    <div class="row" style="margin-top:20px;margin-bottom:20px;">
        <div class="col-lg-5 col-md-5">
            <br/>
            <img src="<?php echo assets_url('img/logopupr.svg') ?>">
            <h4>Dinas Pekerjaan Umum & Penataan Ruang Kab. Muara Enim</h4>
        </div>
        <div class="col-lg-7 col-md-7">
            <h3>Visi Instansi</h3>
            <p>Terwujudnya Infrastruktur Pekerjaan Umum dan Perumahan Rakyat yang 
            Handal dalam Mendukung Indonesia  yang Berdaulat, Mandiri, dan 
            Berkepribadian Berlandaskan Gotong Royong</p>
        </div>
    </div>
    <hr>
    <div class="row container_bidang">
            <div id="heads_unit" class="col-lg-3 col-md-3 col-xs-12">
               <p>Unit Dinas&nbsp;&nbsp;&nbsp;<span class="fa fa-caret-right"></span></p>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-12">
               <a href="<?php echo baseURL('index.php/bidang/2783-'); ?>"><p>Bidang Sekretariat</p></a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-12">
               <a href="<?php echo baseURL('index.php/bidang/3899-Bidang-Pembangunan-Jalan-Dan'); ?>"><p>Bidang Pembangunan Jalan & Jembatan</p></a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-12">
                <a href="<?php echo baseURL('index.php/bidang/4454-Bidang-Preservasi-Jalan-Dan'); ?>"><p>Bidang Preservasi Jalan dan Jembatan</p></a>
            </div>
        </div>
        <br/>
        <div class="row container_bidang">
            <div class="col-lg-3 col-md-3 col-xs-12">
                <a href="<?php echo baseURL('index.php/bidang/3187-Bidang-Tata-Bangunan-dan-Jas'); ?>"><p>Bidang Tata Bangunan dan Jasa Konstruksi</p></a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-12">
                <a href="<?php echo baseURL('index.php/bidang/2750-Bidang-Air-Minum-dan-Penyehatan-Lingkungan'); ?>"><p>Bidang Air Minum dan Penyehatan Lingkungan Pemukiman</p></a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-12">
                <a href="<?php echo baseURL('index.php/bidang/7549-Bidang-Sumber-Daya-Air'); ?>"><p>Bidang Sumber Daya Air</p></a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-12">
                <a href="<?php echo baseURL('index.php/bidang/7822-Bidang-Tata'); ?>"><p>Bidang Tata Ruang</p></a>
            </div>
    </div>
    <hr>
    <!-- start section  berita  -->
    <div class="section section-berita">
                <div class="row">
                    <div class="col-md-8">
                                <p style="font-size:20px;font-weight:normal;margin-bottom:10px;">Berita Terbaru</p>
                                <?php foreach ($artikel_berita as $aka): ?>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div style="width:100%;height:auto;">
                                                <?php echo "<img class='new_img_size' src='".img_artikel_url($aka['foto'],true)."' />"; ?>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <?php echo "<a href='".artikel_url($aka['id'],$aka['slug'])."'><p class='news_header_text'> ".potong_text($aka['judul'],36)."</p></a>"; ?>
                                                <p>posted by
                                                    <?php echo $aka['nama_admin'] ?>
                                                        <?php echo format_tanggal($aka['tanggal']) ?>
                                                </p>
                                                <br>
                                        </div>
                                    </div>
                                    <?php endforeach; ?>
                    </div>

                    <div class="col-md-4">
                        <p style="font-size:20px;font-weight:normal;margin-bottom:10px;"><a href="#tab1" data-toggle="tab">Pengumuman</a></span>
                        <div class="announce_cont">
                                        <!--	<li style="background-color:#2055a2;color:white;" class=""><a href="#tab2" data-toggle="tab">Agenda</a></li>-->
                            <div class="pu_list_berita">
                                <div class="tab-content">
                                    <div class="tab-pane active text-style" id="tab1">
                                        <ul style="position: relative; left:-20px; margin-top:20px;">
                                            <?php foreach ($artikel_pengumuman as $pengumuman){ ?>
                                                <li style="list-style:none;">
                                                    <?php echo "<a href='".artikel_url($pengumuman['id'],$pengumuman['slug'])."'>".potong_text($pengumuman['judul'],35)."</a></h4>"; ?>
                                                        <p>posted by
                                                            <?php echo $pengumuman['nama_admin'] ?>
                                                            <?php echo format_tanggal($pengumuman['tanggal']) ?> 
                                                        </p>
                                                        <hr>
                                                </li>
                                                <?php } ?>
                                        </ul>
                                    </div>
                                    <!--
													<div class="tab-pane text-style" id="tab2">
														<ul>
															<?php foreach ($artikel_agenda as $agenda){ ?>
																	<?php echo "<a href='".artikel_url($agenda['id'],$agenda['slug'])."'>".potong_text($agenda['judul'],40)."</a>"; ?>
																	<p>posted by <?php echo $agenda['nama_admin'] ?> <?php format_tanggal($agenda['tanggal']) ?></p>
															<?php } ?>
														</ul>
												</div>
												-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

        <!-- end section berita -->
        <!-- srat section galeri -->
        <a href="<?php echo baseURL('index.php/berita'); ?>"><span>Lihat Semua Berita</span>&nbsp;<span class="fa fa-caret-right"></span></a>
    </div>
    <hr/>
    <div class="section section-berita">
        <p style="font-size:20px;font-weight:normal;margin-bottom:10px;">Galeri Foto</p>
        <div class="row">
                <!-- <div class="col-md-4">
                    <div style="width:100%;height:auto;background-color:#77848e;">
                        <a href="<?php echo galeri_url($galeri_rand->id,$galeri_rand->slug) ?>">
                            <?php echo  "<img class='img-responsive' src='".img_galeri_url($galeri_rand->foto)."' alt='$galeri_rand->nama' />";  ?>
                        </a>
                    </div>
                </div> -->
                    <?php $i = 0; ?>
                        <?php foreach ($get_galeri as $galeri): ?>
                            <?php if ($i<6): ?>
                                <div class="col-lg-3 col-md-3" style="margin-top:10px;margin-bottom:80px;">
                                    <div style="width:100%;height:120px;background-color:#77848e;">
                                        <?php echo  "<a href='".galeri_url($galeri['id'],$galeri['slug'])."'><img class='img-responsive img' src='".img_galeri_url($galeri['foto'])."' alt='$galeri[nama]' /></a>";  ?>
                                    </div>
                                </div>

                                <?php endif; ?>
                                    <?php $i++; ?>
                                        <?php endforeach; ?>
        </div>

    </div>
    <!-- end section galeri -->

    <!-- <div class="section" id="about">
                <div class="video-background-container">
                 <video preload="auto" autoplay="" loop="" muted="" class="video-background">
                    <source type="video/mp4" src="<?php echo assets_url('videos/cloud.mp4') ?>">
                 </video>
                </div>

                <div class="parallax-overlay"></div>

            <div class="container">
              <div class="row">

                <div class="col-md-12 wow bounceInUp">
                    <div class="welcome-block " style="text-align: center">
                        <img src="<?php echo $biodata['foto'] ?>"  alt="Sandro Poluan"/>
                        <h3 style="margin:30px 0 30px 0"><?php echo $biodata['nama']; ?></h3>
                        <div class="message-body">

                            <p><?php echo nl2br($biodata['deskripsi_singkat']) ?></p>
                                <a href="<?php echo baseURL('tentang-kami'); ?>" class="btn btn-border btn-effect" style="margin-top:30px">Tentang Saya</a>
                        </div>
                    </div>
                </div>

              </div>
            </div>
         </div>

         <div class="section" id="headline-artikel">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">

                        <div class="sec-title text-center artikel-hot-title wow animated fadeInDown">
                           <h3>Yang lagi Hot</h3>
                        </div>

                    <div id="headline-konten" class="owl-carousel">
                        <?php

                        foreach ($artikel_headline as  $value) {
                            echo "<div class='owl-item wow animated fadeInLeft'>
                                    <div class='wrap-headline'>

                                <div class='overlay-effect'>
                               <h4> $value[judul] </h4>
                               <P>".potong_text(reversequote($value['isi'],'all'),120)."</P>
                               <a class='btn btn-border btn-effect' href='".artikel_url($value['id'],$value['slug'])."'>Baca</a>
                                </div>

                                     ";
                            echo "<img class='headImg' src='".img_artikel_url($value['foto'],true)."' alt='$value[judul]' />";
                            echo     "
                             <div class='caption-area'>
                               <a href='".artikel_url($value['id'],$value['slug'])."'><h4> ".potong_text($value['judul'],40)."</h4></a>";
                           echo "<span class='angka tanggal-artikel'><i class='fa fa-calendar'></i>&nbsp; ".format_tanggal($value['tanggal'])."</span>";
                           echo"
                           <span class='author-artikel'>
                           <i class='fa fa-user'></i>&nbsp; $value[nama_admin]
                           </span>
                            </div>
                                    </div>
                                 </div>";
                        }

                         ?>
                    </div>
                </div>
                </div>
            </div>

         </div>
 -->

    <!-- <div id="specialist" class="parallax section" style="padding:0;background-image: url(<?php echo $informasi['featured_image'] ?>);">
            <div class='overlay'>
            <div class="container-fluid ">
                <div class="row">
                    <div class="col-md-12">
                        <div class="sec-title text-center wow animated fadeInDown animated" style=" visibility: visible; animation-name: fadeInDown;">
                           <h3 style="color: #fff;">Mainan Saya</h3>
                        </div>

                       <div class='language-wrap'><span class='devicons devicons-html5' style='font-size: 100px;'></span>
                        <div class='language-detail'>HTML5</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-css3' style='font-size: 100px;'></span>
                       <div class='language-detail'>CSS3</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-jquery' style='font-size: 100px;'></span>
                        <div class='language-detail'>JQUERY</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-javascript' style='font-size: 100px;'></span>
                        <div class='language-detail'>JAVASCRIPT</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-php' style='font-size: 100px;'></span>
                        <div class='language-detail'>PHP</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-codeigniter' style='font-size: 100px;'></span>
                        <div class='language-detail'>CODEIGNITER</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-angular' style='font-size: 100px;'></span>
                        <div class='language-detail'>ANGULAR JS</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-mysql' style='font-size: 100px;'></span>
                        <div class='language-detail'>MYSQL</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-bootstrap' style='font-size: 100px;'></span>
                        <div class='language-detail'>BOOTSTRAP</div>
                       </div>

                       <div class='language-wrap'>
                       <span class='devicons devicons-wordpress' style='font-size: 100px;'></span>
                        <div class='language-detail'>WORDPRESS</div>
                       </div>

                    </div>
                </div>
            </div>
        </div>

         </div>

         <div class="section" id="populer">

            <div class="container-fluid ">
                <div class="row" style="text-align: center">

                        <div class="sec-title artikel-populer-title text-center wow animated fadeInDown">
                           <h3>Artikel Populer</h3>
                        </div>

                    <?php

                    foreach ($artikel_populer as  $val) {
                        echo "<div class='col-sm-3  box-populer wow bounceInUp'>";
                        echo "<div class='hover_wrap'>
                              <div class='social_area'>
                              <i class='fa fa-facebook-square'></i> <i class=''></i> <i class='fa fa-twitter-square'></i> <i class='fa fa-linkedin-square'></i>
                              </div>
                              <div class='area'>".potong_text($val['isi'],600)."</div>
                         <a href='".artikel_url($val['id'],$val['slug'])."' class='btn btn-effect btn-border baca-btn'>Baca</a>
                        </div>";
                        echo "<div class='item-box'>";
                        echo "<img class='' src='".img_artikel_url($val['foto'],true)."' alt='$val[judul]' />";
                        echo "<span class='judul'><a href='".artikel_url($val['id'],$val['slug'])."'><h4>$val[judul].</h4></a></span>";
                        echo "<span class='info'>";
                        echo "<i class='fa fa-calendar'></i>&nbsp; <span class='jam'>".format_tanggal($val['tanggal'])."</span>";
                        echo "<span class='author'>
                            <i class='fa fa-user'></i> &nbsp; $val[nama_admin]
                        </span>";
                        echo "</span>";
                        echo "<span class='konten'>";
                        echo potong_text(reversequote($val['isi'],'all'),150);
                        echo "</span>";
                        echo "</div>";
                        echo "</div>";
                    }

                     ?>

                </div>
            </div>

         </div> -->

</div>