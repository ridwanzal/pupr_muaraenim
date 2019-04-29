<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2018-12-03 00:38:10 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column FROM table
			artikel.artikel_id AS id,
			 artikel.artikel_judul AS judu' at line 1 - Invalid query: SELECT column FROM table
			artikel.artikel_id AS id,
			 artikel.artikel_judul AS judul,
			 artikel.artikel_isi AS isi,
			 artikel.artikel_tags as tags,
			 artikel.artikel_tgl_posting AS tanggal,
			 artikel.artikel_dibaca AS dibaca,
			 artikel.artikel_seo_url AS slug,
			 kategori.id_kategori,
			 kategori.nama_kategori,
			 user.nama_lengkap AS nama_admin,
			 user.id_user AS id_admin,
			 foto_artikel.nama_foto AS foto
			 FROM artikel,kategori,user ,foto_artikel
			 WHERE artikel.artikel_status='publish' AND
			 kategori.aktif='Y' AND kategori.terhapus='N' AND
			 user.status_user='Y' AND user.terhapus='N' AND
			 artikel.artikel_id_user=user.id_user AND
			 artikel.artikel_kategori=kategori.id_kategori AND
			 foto_artikel.id_foto=(SELECT CASE
			 foto_artikel.featured WHEN 'Y' THEN id_foto
			 WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel
			 WHERE foto_artikel.id_artikel=artikel.artikel_id
			 ORDER BY featured ASC LIMIT 1)  ORDER BY RAND() DESC LIM
			 LIMIT 1
ERROR - 2018-12-03 00:38:37 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIM
			 LIMIT 1' at line 23 - Invalid query: SELECT artikel.artikel_id AS id,
			 artikel.artikel_judul AS judul,
			 artikel.artikel_isi AS isi,
			 artikel.artikel_tags as tags,
			 artikel.artikel_tgl_posting AS tanggal,
			 artikel.artikel_dibaca AS dibaca,
			 artikel.artikel_seo_url AS slug,
			 kategori.id_kategori,
			 kategori.nama_kategori,
			 user.nama_lengkap AS nama_admin,
			 user.id_user AS id_admin,
			 foto_artikel.nama_foto AS foto
			 FROM artikel,kategori,user ,foto_artikel
			 WHERE artikel.artikel_status='publish' AND
			 kategori.aktif='Y' AND kategori.terhapus='N' AND
			 user.status_user='Y' AND user.terhapus='N' AND
			 artikel.artikel_id_user=user.id_user AND
			 artikel.artikel_kategori=kategori.id_kategori AND
			 foto_artikel.id_foto=(SELECT CASE
			 foto_artikel.featured WHEN 'Y' THEN id_foto
			 WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel
			 WHERE foto_artikel.id_artikel=artikel.artikel_id
			 ORDER BY featured ASC LIMIT 1)  ORDER BY RAND() DESC LIM
			 LIMIT 1
ERROR - 2018-12-03 00:40:30 --> Severity: error --> Exception: Cannot use object of type stdClass as array /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 74
ERROR - 2018-12-03 00:41:26 --> Severity: Warning --> Use of undefined constant php - assumed 'php' (this will throw an Error in a future version of PHP) /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 75
ERROR - 2018-12-03 00:41:46 --> Severity: Warning --> Use of undefined constant php - assumed 'php' (this will throw an Error in a future version of PHP) /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 75
ERROR - 2018-12-03 00:52:12 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:52:12 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:22 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:22 --> Severity: Notice --> Trying to get property 'foto' of non-object /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:22 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:22 --> Severity: Notice --> Trying to get property 'nama' of non-object /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:24 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:24 --> Severity: Notice --> Trying to get property 'foto' of non-object /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:24 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 00:54:24 --> Severity: Notice --> Trying to get property 'nama' of non-object /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 01:01:51 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 01:19:22 --> 404 Page Not Found: An-theme/ando
ERROR - 2018-12-03 01:45:59 --> Severity: error --> Exception: Call to undefined function base_url() /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 173
ERROR - 2018-12-03 01:49:28 --> Severity: error --> Exception: Call to undefined function base_url() /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 172
ERROR - 2018-12-03 01:54:57 --> 404 Page Not Found: Galeri/ut-consequat-ultricies-est-non-rhoncus-mauris-congue-porta-
ERROR - 2018-12-03 01:55:14 --> 404 Page Not Found: Galeri/maecenas-pellentesque-volutpat-felis-
ERROR - 2018-12-03 02:04:14 --> 404 Page Not Found: Userfiles/images
ERROR - 2018-12-03 04:14:44 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 04:14:45 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 04:18:01 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 04:18:01 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 04:18:26 --> Severity: Notice --> Undefined variable: galeri /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 04:18:26 --> Severity: Notice --> Trying to get property 'slug' of non-object /opt/lampp/htdocs/dinaspu/application/views/ando/home.php 159
ERROR - 2018-12-03 04:59:39 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 04:59:46 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 04:59:54 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 05:00:51 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 05:02:10 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 05:02:19 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 05:02:32 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:41:37 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:41:52 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:43:19 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:43:29 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:43:44 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:45:49 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:45:50 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:47:16 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:47:23 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:48:16 --> 404 Page Not Found: An-component/media
ERROR - 2018-12-03 06:48:26 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:48:32 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:49:07 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:51:48 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:52:24 --> 404 Page Not Found: An-component/media
ERROR - 2018-12-03 06:52:32 --> 404 Page Not Found: An-component/media
ERROR - 2018-12-03 06:52:41 --> 404 Page Not Found: An-component/media
ERROR - 2018-12-03 06:54:04 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:54:11 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 06:58:15 --> 404 Page Not Found: Bidang/index
ERROR - 2018-12-03 07:00:54 --> 404 Page Not Found: Page/index
ERROR - 2018-12-03 07:03:27 --> 404 Page Not Found: Page/index
ERROR - 2018-12-03 07:04:21 --> 404 Page Not Found: Bidang/3-dinas-pu
ERROR - 2018-12-03 07:06:39 --> 404 Page Not Found: Bidang/276-
ERROR - 2018-12-03 07:06:48 --> 404 Page Not Found: Bidang/276-judul-bidang
ERROR - 2018-12-03 07:10:21 --> 404 Page Not Found: Bidang/276-judul-bidang
ERROR - 2018-12-03 07:13:04 --> 404 Page Not Found: Bidang/276-judul-bidang
ERROR - 2018-12-03 07:16:23 --> 404 Page Not Found: Bidang/276-judul-bidang
ERROR - 2018-12-03 07:35:07 --> 404 Page Not Found: Bidang/3-dinas-pu
ERROR - 2018-12-03 07:35:30 --> 404 Page Not Found: Page/index
ERROR - 2018-12-03 07:36:44 --> 404 Page Not Found: Baian/index
ERROR - 2018-12-03 07:37:23 --> Query error: Table 'db_dinaspu.bagians' doesn't exist - Invalid query: SELECT bagian_id AS id, bagian_judul AS judul, bagian_url AS slug, bagian_isi AS isi, bagian_foto AS foto, bagian_javascript AS javascript ,bagian_meta_keywords AS meta_keywords, bagian_meta_description AS meta_description FROM bagians WHERE bagian_id='276' AND bagian_status='published' 
ERROR - 2018-12-03 07:38:18 --> Query error: Table 'db_dinaspu.bagian' doesn't exist - Invalid query: SELECT bagian_id AS id, bagian_judul AS judul, bagian_url AS slug, bagian_isi AS isi, bagian_foto AS foto, bagian_javascript AS javascript ,bagian_meta_keywords AS meta_keywords, bagian_meta_description AS meta_description FROM bagian WHERE bagian_id='276' AND bagian_status='published' 
ERROR - 2018-12-03 07:41:58 --> Severity: error --> Exception: Call to undefined method Title::bidangs() /opt/lampp/htdocs/dinaspu/application/controllers/Bidang.php 23
ERROR - 2018-12-03 07:43:52 --> Severity: error --> Exception: Call to undefined method Title::bidangs() /opt/lampp/htdocs/dinaspu/application/controllers/Bidang.php 23
ERROR - 2018-12-03 07:44:00 --> Severity: error --> Exception: Call to undefined method Title::bidangs() /opt/lampp/htdocs/dinaspu/application/controllers/Bidang.php 23
ERROR - 2018-12-03 07:44:25 --> Severity: error --> Exception: Call to undefined method Title::bidang() /opt/lampp/htdocs/dinaspu/application/controllers/Bidang.php 23
ERROR - 2018-12-03 07:50:48 --> Query error: Table 'db_dinaspu.bidangs' doesn't exist - Invalid query: SELECT * FROM bidangs WHERE bidang_id='276'
ERROR - 2018-12-03 07:58:46 --> 404 Page Not Found: An-component/media
ERROR - 2018-12-03 08:29:16 --> Severity: Notice --> Undefined index: bidang_tugas /opt/lampp/htdocs/dinaspu/application/views/ando/bidang.php 36
ERROR - 2018-12-03 08:29:16 --> Severity: Notice --> Undefined index: bidang_fungsi /opt/lampp/htdocs/dinaspu/application/views/ando/bidang.php 37
ERROR - 2018-12-03 08:35:17 --> Severity: Notice --> Undefined index: bidang_fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 33
ERROR - 2018-12-03 08:35:17 --> Severity: Notice --> Undefined index: bidang_tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 34
ERROR - 2018-12-03 08:36:46 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 33
ERROR - 2018-12-03 08:36:46 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 34
ERROR - 2018-12-03 08:48:35 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 36
ERROR - 2018-12-03 08:48:35 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 37
ERROR - 2018-12-03 08:49:02 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 36
ERROR - 2018-12-03 08:49:02 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 37
ERROR - 2018-12-03 08:58:57 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 36
ERROR - 2018-12-03 08:58:57 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 37
ERROR - 2018-12-03 08:59:19 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 39
ERROR - 2018-12-03 08:59:19 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 40
ERROR - 2018-12-03 09:59:34 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 39
ERROR - 2018-12-03 09:59:34 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 40
ERROR - 2018-12-03 10:17:45 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 39
ERROR - 2018-12-03 10:17:45 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 40
ERROR - 2018-12-03 10:19:25 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 39
ERROR - 2018-12-03 10:19:25 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 40
ERROR - 2018-12-03 10:19:55 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 39
ERROR - 2018-12-03 10:19:55 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 40
ERROR - 2018-12-03 10:21:44 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 31
ERROR - 2018-12-03 10:21:44 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 32
ERROR - 2018-12-03 10:21:51 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 31
ERROR - 2018-12-03 10:21:51 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 32
ERROR - 2018-12-03 10:24:57 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 31
ERROR - 2018-12-03 10:24:57 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 32
ERROR - 2018-12-03 10:26:00 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 30
ERROR - 2018-12-03 10:26:00 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 31
ERROR - 2018-12-03 14:03:39 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 14:03:40 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 14:03:47 --> 404 Page Not Found: Img/pu.png
ERROR - 2018-12-03 14:07:19 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 30
ERROR - 2018-12-03 14:07:19 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 31
ERROR - 2018-12-03 14:08:03 --> Severity: Notice --> Undefined index: fungsi /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 30
ERROR - 2018-12-03 14:08:03 --> Severity: Notice --> Undefined index: tugas /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 31
ERROR - 2018-12-03 14:12:49 --> Severity: Notice --> Undefined index: javascript /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 24
ERROR - 2018-12-03 14:12:49 --> Severity: Notice --> Undefined index: meta_keywords /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 25
ERROR - 2018-12-03 14:12:49 --> Severity: Notice --> Undefined index: meta_description /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 26
ERROR - 2018-12-03 14:12:49 --> Severity: Notice --> Undefined index: foto /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 27
ERROR - 2018-12-03 14:12:49 --> Severity: Notice --> Undefined variable: cache_bidang /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 28
ERROR - 2018-12-03 14:12:49 --> Severity: Notice --> Undefined index: judul /opt/lampp/htdocs/dinaspu/application/controllers/Bidang.php 34
ERROR - 2018-12-03 14:12:49 --> Severity: Notice --> Undefined index: isi /opt/lampp/htdocs/dinaspu/application/views/ando/bidang.php 26
ERROR - 2018-12-03 14:14:24 --> Query error: Table 'db_dinaspu.bidangs' doesn't exist - Invalid query: SELECT bidang_id AS id, bidang_judul AS judul, bidang_url AS slug, bidang_isi AS isi, bidang_foto AS foto, bidang_javascript AS javascript ,bidang_meta_keywords AS meta_keywords, bidang_meta_description AS meta_description FROM bidangs WHERE bidang_id='276' AND bidang_status='published' 
ERROR - 2018-12-03 14:15:11 --> Severity: Notice --> Undefined variable: cache_bidang /opt/lampp/htdocs/dinaspu/application/libraries/Bidangs.php 34
ERROR - 2018-12-03 14:57:23 --> Severity: error --> Exception: syntax error, unexpected ''kategori'' (T_CONSTANT_ENCAPSED_STRING), expecting ')' /opt/lampp/htdocs/dinaspu/application/controllers/AN_admin.php 536
ERROR - 2018-12-03 14:57:35 --> 404 Page Not Found: An-component/media
ERROR - 2018-12-03 14:57:47 --> Severity: Notice --> Undefined property: AN_admin::$galeri_foto /opt/lampp/htdocs/dinaspu/application/controllers/AN_admin.php 536
ERROR - 2018-12-03 14:57:47 --> Severity: error --> Exception: Call to a member function ambil_kategori() on null /opt/lampp/htdocs/dinaspu/application/controllers/AN_admin.php 536
ERROR - 2018-12-03 15:07:05 --> Severity: Notice --> Undefined property: AN_admin::$galeri_foto /opt/lampp/htdocs/dinaspu/application/controllers/AN_admin.php 536
ERROR - 2018-12-03 15:07:05 --> Severity: error --> Exception: Call to a member function ambil_kategori() on null /opt/lampp/htdocs/dinaspu/application/controllers/AN_admin.php 536
ERROR - 2018-12-03 15:07:11 --> Severity: Warning --> htmlspecialchars_decode() expects parameter 2 to be integer, string given /opt/lampp/htdocs/dinaspu/application/views/ando/bidang.php 27
