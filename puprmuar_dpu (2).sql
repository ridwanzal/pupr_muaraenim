-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2019 at 09:49 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puprmuar_dpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `judul` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` bigint(20) UNSIGNED NOT NULL,
  `artikel_judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `artikel_tags` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_sbg_headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_tgl_posting` datetime NOT NULL,
  `artikel_id_user` bigint(20) NOT NULL,
  `artikel_tgl_last_edit` datetime NOT NULL,
  `artikel_editable` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_id_user_last_edit` int(11) NOT NULL,
  `artikel_seo_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_description` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_in_draft` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_status` enum('publish','draft','deleted') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artikel_was_published` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_sesi_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_dibaca` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `artikel_judul`, `artikel_isi`, `artikel_kategori`, `artikel_tags`, `artikel_foto`, `artikel_sbg_headline`, `artikel_tgl_posting`, `artikel_id_user`, `artikel_tgl_last_edit`, `artikel_editable`, `artikel_id_user_last_edit`, `artikel_seo_url`, `artikel_meta_description`, `artikel_meta_author`, `artikel_meta_keyword`, `artikel_og_image`, `artikel_og_title`, `artikel_og_description`, `artikel_in_draft`, `artikel_aktif`, `artikel_terhapus`, `artikel_status`, `artikel_was_published`, `artikel_sesi_id`, `artikel_dibaca`) VALUES
(1, 'Petani Kopi Audensi Dengan LPHD', '<p>Muara Enim Tim News Room Kominfo. Warga Semende Kabupaten Muara Enim yang sebagian besar bekerja sebagai petani kopi sebagai matapencarian  berasal dari 14 desa melakukan evaluasi dan audiensi dengan Lembaga Pengawas Hutan Desa (LPHD) di Ruang Rapat Bappeda Muara Enim. Rabu (14/9/2016). Audiensi yang dimotori Pilar Nusantara Pinus Sumsel. dihadiri Wakil Bupati Muara Enim, H. Nurul Aman, SH. Yang didampingi oleh Kepala Dinas Kehutanan Muara Enim, Ir. Rustam Effendi dan undangan lainnya. Wakil Bupati Muara Enim, H. Nurul Aman, SH. menyampaikan persoalan hutan kawasan lindung masih sering di lakukan penebangan oleh masyarakat ada juga yang menambah luas areal perkebunan tanpa menggunakan izin. melalui Audiensi ini diharapkan ada solusi terbaik yang dapat dipahami oleh masyarakat khususnya 14 desa diwilayah Semende dan Masyarakat dapat mengelola hasil perkebunan tanpa dituding sebagai pengerusak hutan.</p>\n<p>Kepala Dinas Kehutanan Muara Enim, Ir. Rustam Effendi mengatakan kawasan hutan lindung di Kecamatan Semende Kabupaten Muara Enim yang menanam kopi dan ada pula melakukan perluasan. Dalam posisi hutan lindung mereka akan mendapat hak pengelola. Sesuai Aturan P 89 Menhut II/ 2014 tentang Peran hutan desa adalah hutan negara yang belum dibebani izin hak yang dikelola oleh desa dan dimanfaatkan untuk kesejehteraan desa. Untuk itu masyarakat boleh menanam dikawasan hutan tetapi tak boleh ditebang. Direktur Pinus Sumsel Rabin Ibnu Zainal menjelaskan , ada 42 persen kawasan hutan produksi yang dikelola oleh perusahaan besar namun hanya sebagian kecil yang dikelola oleh masyarakat melalui LHKD. Ketergantungan masyarakat terhadap hutan masih sangat tinggi. Bahwa saat ini ada 60 desa yang berada dan tergantung dengan memanfaatkan sekitar kawasan hutan, bagaimana masyarakat dapat memanfaatkan kawasan hutan. Sesuai dengan Nawacita dengan kemandirian ekonomi berbasis kerakyatan. Saat ini masyarakat kerap dikatakan sebagai perambah sementara masyarakat sendiri tinggal dilokasi tempat tinggalnya sekitar hutan. Faktanya saat ini baru sekitar 18.390 Ha realisasi perhutanan Sosial. Sementara potensi Hutan di Muara Enim ada183.093,24 Ha Potensi Perhutanan sosial. Semoga jumlah ini dapat segera diusulkan ke pemerintah pusat dan dapat dikelola oleh masyarakat.</p>\n<p> </p>', 8, '13,11', '', 'Y', '2016-04-14 02:59:20', 1, '2018-12-14 11:16:02', 'Y', 5, 'petani-kopi-audensi-dengan-lphd', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '34340131604', 47),
(2, 'Bupati Buka Kegiatan TMMD', '<p>Muara Enim Tim News Room Kominfo. Bupati Muara Enim Ir. H. Muzakir Sai Sohar membuka pelaksanaan kegiatan Tentara Manunggal Membangun Desa (TMMD) ke 97 Kabupaten Muara Enim tahun 2016 di Desa Harapan Jaya Kecamatan Muara Enim. Selasa, (20/9/2016. Kegiatan TMMD ini dengan tema Dengan semangat kemanunggalan serta kerjasama lintas sektoral dan lintas komponen Bangsa kita tingkatkan percepatan pembangunan di Daerah guna meningkatkan kesejahteraan rakyat. Pada kesempatan tersebut Bupati Muara Enim memeriksa pasukan upacara. Bupati Muara Enim, Ir. H. Muzakir Sai Sohar dalam sambutannya mengatakan pelaksanaan TMMD merupakan program operasi bakti TNI bertujuan untuk mewujudkan Kemanunggalan TNI Rakyat dalam pelaksanaan kegiatan bantuan kemanusiaan dan bakti sosial kemasyarakatan, dalam rangka membantu otoritas sipil untuk menciptakan suasana yang kondusif bagi terwujudnya ketahanan dan keamanan dalam negeri serta kesejahteraan masyarakat. program ini sekaligus untuk menumbuh kembangkan semangat kegotong royongan, persatuan dan kesatuan, serta memantapkan wawasan kebangsaan bagi masyarakat Negara Kesatuan Republik Indonesia (NKRI) yang kita cintai ini.</p>\n<p>Bupati juga menghimbau dan mengajak semua pihak untuk berpartisipasi, memberikan dukungan dan bantuannya, sehingga program ini dapat terlaksanan dan mencapai hasil yang optimal. Kegiatan TMMD ini akan dilaksanakan selama satu bulan penuh, mulai tanggal 20 September sampai dengan 19 Oktober 2016. difokuskan pada kegiatan fisik berupa pembangunan sarana perhubungan meliputi pembuatan jalan dari Desa Harapan Jaya Kecamatan Muara Enim menuju Desa Bangun Sari Kecamatan Gunung Megang sepanjang 10,8 Km lebar 8 meter, pembuatan plat duiker 2 unit, pembuatan gorong-gorong 1 unit, pembuatan box culvet 1 unit, dan pembangunan sarana sosial meliputi rehab Musholla 1 unit, rehap TPA 1 unit, pembuatan MCK 11 unit, pembuatan Pos Kamling 13 unit dan pembuatan sumur bor 2 unit. Sedangkan kegiatan non fisik diantaranya berupa penyuluhan sadar bernegara dan bela negara, penyuluhan hukum, penyuluhan anti narkoba, penyuluhan dan pelayanan kesehatan, penyuluhan dan pelayanan KB, penyuluhan koperasi, penyuluhan budi daya peternakan dan penyuluhan perkebunan karet rakyat. hadir pada kegiatan ini yaitu Danrindam II/Swj, Aslog Kasdam II/Swj, Dandim 0404/Muara Enim, Pasi Bhakti TNI Siterrem 044/Gapo, Kakanmivet Muara Enim, para Danramil Dim 0404/Muara Enim, Kapolsek, FKPD Muara Enim dan perwakilan dari PTPN dan PTBA.</p>\n<p> </p>', 8, '13', '', 'Y', '2016-04-14 03:18:19', 1, '2018-12-03 11:19:49', 'Y', 1, 'bupati-buka-kegiatan-tmmd', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '63108131604', 29),
(4, 'DPRD Muara Enim Menerima APBD Perubahan 2016', '<p>Muara Enim Tim News Room Kominfo. Dewan Perwakilan Rakyat Daerah Kabupaten Muara Enim menerima dan menyetujui APBD Perubahan Muara Enim hal ini ditandai dengan penandatanganan naskah APBD perubahan T.A 2016 Oleh Wakil Bupati Muara Enim, H. Nurul Aman, SH. Bersama Ketua DPRD Muara Enim, Aries,HB.SE. Disaksikan oleh Wakil – Wakil Ketua DPRD Muara Enim. Pemerintah Kabupaten Muara Enim, Dewan Perwakilan Rakyat Daerah (DPRD) Muara Enim mengadakan rapat Paripurna ke XI, yang dilaksanakan diruang Sidang Paripurna Gedung DPRD Muara Enim, Selasa (27/9). Rapat Paripurna ke-XI yang dipimpin Ketua DPRD Muara Enim Aries HB mengatakan penetapan Anggaran Perubahan Kabupaten Muara Enim TA. 2016 telah disetujui oleh para Anggota DPRD dengan memberikan catatan dan masukan penting yang harus diperhatikan demi tercapainya kesejahteraan masyarakat sehingga visi dan misi Kabupaten muara Enim Sehat , Mandiri, Agamis dan Sejahtera dapat terwujud merata diseluruh wilayah Kabupaten Muara Enim. Ia jelaskan, beberpa yang perlu diperhatikan dan ditindak lanjuti oleh Pemerintah Kabupaten Muara Enim diantaranya memperhatikan batas wilayah, Koordinasi dalam perangi penyalahgunaan Narkoba serta perlunya SKPD pemungut pajak dan retribusi Daerah untuk membuat database agar pendapatan Daerah dapat tercapai dengan maksimal.</p>\n<p>Sementara itu Wakil Bupati Muara Enim, H. Nurul Aman mengatakan akan berusaha dengan maksimal mewujudkan aspirasi masyarakat melalui para anggota dewan yang nantinya akan di tindak lanjuti melalui SKPD terkait, sehingga sesuai dengan harapkan demi terwujudnya kesejahteraan masyarakat di Bumi Serasan Sekundang dan pihak Pemerintah Kabupaten Muara Enim akan selalu berusaha memaksimalkan pendapatan Asli Daerah melaui berbagai sektor diantara program CSR dan Komdev BUMN, BUMD dan BUMS yang ada diwilayah Kabupaten Muara Enim untuk turut serta mendukung pembangunan dimasyarakat. Rapat Paripurna ke-XI tersebut dihadiri oleh seluruh anggota DPRD Muara Enim, Wakil Bupati Muara Enim, unsur Pimpinan Daerah Muara Enim, Kepala Dinas Instasi dan Camat se-Kabupaten Muara Enim serta perwakilan Perusahaan BUMN/ BUMD dan BUMS dan undangan lainnya.</p>\n<p> </p>', 7, '12', '', 'Y', '2016-04-14 03:38:45', 1, '2018-12-03 11:19:22', 'Y', 1, 'dprd-muara-enim-menerima-apbd-perubahan-2016', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '6363131604', 19),
(5, 'BNNK MUARA ENIM AUDENSI DENGAN BUPATI', '<p>Muara Enim Tim News Room Kominfo.Kepala Badan Narkotika Nasional Kabupaten Muara Enim, Ika Wahyu Hindarti, SKM.M.Si beserta jajarannya melakukan Audensi dengan Bupati Muara Enim, Ir. H. Muzakir Sai Sohar . Audensi ini berlangsung di ruang rapat Bupati Muara Enim dihadiri oleh Assisten I Setda Muara Enim, H. Bulgani Hasan, Kadin Kesehatan Muara Enim, dr. Yan Riadi, Kabag Kesra Setda Muara Enim dan undangan lainnya. Rabu, (21/9/2016).</p>\n<p>Bupati Muara Enim, Ir. H. Muzakir Sai Sohar dalam arahannya mengatakan Pegawai Negeri Sipil yang ada di wilayah Kabupaten Muara Enim Harus Bebas dari Narkoba hal ini menjadi harga mati Bupati Muara Enim, Ir. H. Muzakir Sai Sohar. Dari dulu sampai sekarang saya sangat membenci narkoba. Apabila ada PNS yang terlibat narkoba akan langsung saya pecat. Bupati mengajak BNNK Muara Enim agar selalu bersinergi dalam memerangi narkoba di Kabupaten Muara Enim. Sehingga Muara Enim Sehat dapat terwujud sesuai dengan visi dan misi Kabupaten Muara Enim SMAS ‘ ( Sehat, Mandiri, Agamis dan Sejahtera).</p>\n<p> </p>', 7, '8', '', 'Y', '2016-04-14 03:46:53', 1, '2018-12-03 11:19:00', 'Y', 1, 'bnnk-muara-enim-audensi-dengan-bupati', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '456131604', 14),
(6, 'PU Binamarga kembali membuka lelang periode januari 2015', '<p><span style=\"font-size: small;\">PU Binamarga kembali membuka lelang periode januari 2015</span></p>', 7, '9', '', 'Y', '2018-11-26 10:39:25', 1, '2018-12-03 11:18:37', 'Y', 1, 'pu-binamarga-kembali-membuka-lelang-periode-januari-2015', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '11195141811', 63),
(13, 'Jelang Mudik Natal 2018, Menteri Basuki Akan Cek Kesiapan Tol Trans Jawa ', '<div class=\"content\">\n<p>Jakarta - Menteri Pekerjaan Umum dan Perumahan Rakyat (PUPR) Basuki Hadimuljono mengatakan Tol Trans Jawa dari Merak hingga Surabaya (870 Km) ditargetkan  akan tersambung dan dapat digunakan pada libur Natal 2018 dan Tahun Baru 2019. Untuk memastikan kesiapannya, Menteri Basuki akan meninjau kesiapan tol Trans Jawa, terutama 4 ruas Tol sepanjang 180 km yang akan diresmikan oleh Presiden Joko Widodo pada Desember 2018 ini. Keempat ruas tol tersebut yakni Tol Pemalang - Batang (33 Km), Batang - Semarang (75 Km), Salatiga - Solo (33 Km) dan Wilangan - Kertosono (39 Km).</p>\n<p>“Progres pembangunan ruas tol Pemalang - Batang, Batang - Semarang, Salatiga - Solo sudah mencapai 99%. Sementara itu, ruas Wilangan - Kertosono sudah mencapai 95 persen. Tinggal penyelesaian pekerjaan yang kecil-kecil, seperti median concrete barrier. Minggu depan saya akan ke sana,\" kata Menteri Basuki usai melakukan pengukuhan Asosiasi Jalan Tol Indonesia (ATI) dan membuka Fokus Grup Diskusi dengan tema “Revitalisasi Industri Jalan Tol :  Menyongsong Konektivitas Jalan Tol Trans Jawa dan Sumatera” di Gedung Auditorium Kementerian PUPR Jakarta, Rabu (5/12/2018).</p>\n<p>Sebelumnya Menteri Basuki mengukuhkan Pengurus ATI periode 2018-2023 dengan Ketua Umum Desi Arryani yang juga Direktur Utama PT Jasa Marga. Dalam sambutannya, Menteri Basuki menyampaikan keberadaan  ATI menjadi mitra kerja yang strategis bagi Kementerian PUPR.</p>\n<p>“Saling mendukung dalam merumuskan kebijakan publik terkait pelayanan bagi para pengguna jalan tol. Pasti akan lebih sempurna apabila sudah didiskusikan (kebijakan tersebut) antara Pemerintah dengan ATI sebagai mitra,” kata Menteri Basuki. Salah satunya adalah dalam pembahasan mengenai perhitungan besaran tarif tol Trans Jawa dari Jakarta-Surabaya yang akan tersambung pada Desember 2018.</p>\n<p>Menteri Basuki juga mengatakan dengan usianya yang mencapai 20 tahun, ATI juga perlu melakukan revitalisasi terhadap organisasinya sesuai dengan perkembangan investasi jalan tol saat ini.</p>\n<p>Sementara  Direktur Utama PT. Jasa Marga (Persero) Tbk yang juga Ketua Umum ATI Desi Arryani dalam sambutannya menyampaikan, para pelaku industri jalan tol sejauh ini terus berupaya untuk menyelesaikan proyek yang tengah digarap. Hal ini sejalan dengan keinginan pemerintah dalam mendorong percepatan pembangunan infrastruktur di Tanah Air.</p>\n<p>Pada sesi Fokus Grup Diskusi dihadiri oleh narasumber Dirjen Bina Marga Sugiyartanto, Direktur Angkutan dan Multimoda Ditjen Perhubungan Darat Cucu Mulyana, Kepala BPJT Hery T. Zuna, Sekjen ATI Kris Ade Sudiyono, serta Kasubdit Wal &amp; PJR DitGakkum Korlantas Polri Kombes Pol Bambang Sentot Widodo.</p>\n<p>Dirjen Bina Marga Sugiyartanto mengatakan  ATI memiliki tiga peran utama yang diharapkan mendukung pengembangan jalan tol di Indonesia. Pertama, mendorong terciptanya industri jalan tol yang sehat dan berdaya saing. Kedua, mendukung pengusahaan jalan tol melalui pengembangan inovasi dan penerapan teknologi yang memperhatikan kualitas, keamanan dan berwawasan lingkungan.</p>\n<p>Ketiga, melalui pelaksanaan skema Kerjasama Pemerintah-Badan Usaha (KPBU), ATI dapat menjadi wadah bagi BUJT bersinergi dan membantu Pemerintah mengatasi backlog pembiayaan infrastruktur. ATI merupakan asosiasi yang mewadahi 56 BUJT di Indonesia. (Iwn)</p>\n<p>Biro Komunikasi Publik<br>Kementerian PUPR</p>\n<p>Facebook: Kementerian Pekerjaan Umum dan Perumahan Rakyat<br>Twitter: @kemenpu<br>Instagram: kemenpupr<br>Youtube: kemenpu</p>\n<p>#PUPRsiapmelayani<br>#InfrastrukturUntukIndonesiaMaju<br>#PUPRSigapMembangunNegeri</p>\n</div>', 7, '6', '', 'Y', '2018-12-13 09:34:53', 5, '2018-12-13 09:34:53', 'Y', 5, 'jelang-mudik-natal-2018-menteri-basuki-akan-cek-kesiapan-tol-trans-jawa', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '20453131812', 12),
(29, 'BPSDM Kementerian PUPR Menerima Tiga Sertifikat Akreditasi dari LAN ', '<div class=\"content\">\n<p>Jakarta – Kementerian Pekerjaan Umum dan Perumahan Rakyat terus melakukan peningkatan kualitas Sumber Daya Manusia (SDM) aparaturnya melalui penyelenggaraan pendidikan dan pelatihan secara berkala. Oleh karenanya kualitas dari lembaga penyelenggara Diklat turut berperan dalam peningkatan kompetensi dan profesionalisme SDM dalam pembangunan infrastruktur yang handal.</p>\n<p>Kualitas penyelenggaraan Diklat oleh Kementerian PUPR melalui Badan Pengembangan SDM (BPSDM) mendapatkan penilaian akreditasi dari Lembaga Administrasi Negara (LAN). Hasilnya BPSDM Kementerian PUPR mendapatkan 3 setifikat akreditasi dari dua kategori. Penyerahan sertifikat akreditasi dilakukan oleh Kepala LAN Adi Suryanto kepada Kepala BPSDM Kementerian PUPR Lolly Martina Martief, di Gedung LAN, Jakarta, pada 4 Desember 2018.</p>\n<p>“Hasil penilaian akreditasi merupakan suatu kepercayaan LAN kepada Kementerian PUPR yang dianggap mampu untuk penyelenggaraan kediklatan. Hal itu menjadi tanggung jawab kami agar lembaga Diklat PUPR terus dapat meningkatkan kualitasnya sehingga SDM semakin kompeten di bidangnya,” ungkap Kepala BPSDM Lolly Martina Martief.</p>\n<p>Kepala LAN Adi Suryanto dalam sambutannya mengingatkan dengan adanya UU No. 5 Tahun 2014 tentang Aparatur Sipil Negara (ASN) dan PP No. 11 Tahun 2017 tentang Manajemen ASN, perlu ada perubahan cara pandang dengan memperluas tidak hanya diklat, tapi lebih bervariasi agar PNS bisa mengembangkan kompetensi. “Sebanyak 20 Jam Pelajaran (JP) per tahunnya merupakan hak dari PNS untuk mengikuti Diklat menjadi tantangan bisa dipenuhi oleh penyelenggara diklat. Oleh karena itu perlu diciptakan inovasi-inovasi agar hak tersebut bisa terpenuhi,’ jelas Adi Suryanto.</p>\n<p>Sertifikat yang diterima adalah pertama, Sertifikat Akreditasi kepada BPSDM Kementerian PUPR sebagai Instansi Pengakreditasi Diklat Teknis untuk Diklat Teknis Bidang Pekerjaan Umum dan Perumahan Rakyat di bawah lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat dan Lembaga Diklat Pemerintah Lainnya yang berlaku 5 (lima) tahun.  Dengan akreditasi ini, BPSDM diberikan kewenangan untuk melakukan penilaian dan mengeluarkan sertifikat akreditasi kepada Lembaga Diklat Kementerian/Lembaga lainnya dan Pemerintah Daerah yang menyelenggarakan Diklat bidang PUPR.</p>\n<p>Kedua, diberikan kepada Balai Pendidikan dan Pelatihan Pekerjaan Umum dan Perumahan Rakyat Wilayah III Jakarta sebagai Lembaga Pendidikan dan Pelatihan Pemerintah Terakreditasi untuk menyelenggarakan Program: (1) Pelatihan Kepemimpinan Tingkat IV dengan Kategori Akreditasi B untuk masa berlaku 3 (tiga) tahun, dan (2) Pelatihan Kepemimpinan Tingkat III dengan Kategori Akreditasi B yang berlaku 3 (tiga) tahun.</p>\n<p>Ketiga, diberikan kepada Balai Pendidikan dan Pelatihan Pekerjaan Umum dan Perumahan Rakyat Wilayah IV Bandung sebagai Lembaga Pendidikan dan Pelatihan Pemerintah Terakreditasi untuk menyelenggarakan Program Pelatihan Kepemimpinan Tingkat IV dengan Kategori Akreditasi A yang berlaku 5 (lima) tahun. (Robby)</p>\n</div>', 0, '', '', 'Y', '0000-00-00 00:00:00', 5, '0000-00-00 00:00:00', 'Y', 0, 'bpsdm-kementerian-pupr-menerima-tiga-sertifikat-akreditasi-dari-lan', '', '', '', '', '', '', 'N', 'Y', 'N', 'draft', 'N', '51376131812', 0),
(38, 'Pemprov Sumsel Ingatkan Perangkat Daerah Selesaikan Proyek', '<p><strong>Bisnis.com</strong>, PALEMBANG – Pemerintah Provinsi Sumatra Selatan menegaskan instansi Dinas Pekerjaan Umum Bina Marga, PU Cipta Karya dan PU Pengairan untuk mempercepat penyelesaian proyek yang ada di bawah wewenang instansi tersebut.</p>\n<p>Wakil Gubernur Sumsel Ishak Mekki mengatakan pihaknya mengingatkan kepada setiap kepala dinas karena waktu untuk penyelesaian dan persiapan akhir tahun kurang dari satu bulan lagi.</p>\n<p>“Harus diupayakan bagaimana caranya supaya proyek yang ditangani, harus selesai tepat waktu dan sesuai perencanaan,” katanya, Kamis (3/12/2015).</p>\n<p>Dia mengatakan pihaknya meminta agar petugas-petugas lapangan PU yang menangani beragam proyek pekerjaan di Sumsel untuk meningkatkan dan mempercepat pengerjaannya.</p>\n<p>Mekki juga menekankan jangan sampai habis tahun ini, namun masih ditemukan pekerjaan yang belum tuntas.</p>\n<p>“Jangan ada ditemukan kekurangan di sana sini. Jangan sampai diperiksa BPK dan BPKP menjadi temuan, semuanya harus sempurna,” katanya.</p>\n<p>Tak hanya pekerjaan yang harus selesai, Mekki menegaskan, semua urusan administrasi, berita acara pembayaran, laporan harian dan mingguan serta bulanan atau tahunan harus lengkap.</p>\n<p>“Akibatnya sering ditemukan dana pembayaran ditahan dan diblokir. Ini kan biasa ditemukan, dan mengundang kecurigaan. Harusnya kalau tidak selesai, harus putus kontrak dan denda,” ujarnya.</p>\n<p>Sementara itu, Kepala Dinas PU Pengairan Syamsul Bahri mengatakan, sampai saat ini penyerapan anggaran APBD Sumsel sudah mencapai 95%.</p>\n<p>“Sisanya kami kejar pada Desember ini. Kita yakin bisa selesai semua penyerapan pada akhir tahun. Tahun ini kami mendapat anggaran sekitar Rp139 miliar,” ujarnya.</p>\n<p>Syamsul mengatakan pihaknya akan membangun satu bendungan pada tahun depan, yakni bendungan Tiga Dihaji di  Kabupaten OKU Selatan.</p>\n<p>Bendungan tersebut merupakan salah satu bendungan yang masuk dalam perencanaan secara nasional.</p>', 7, '13', '', 'Y', '2018-12-13 11:54:17', 5, '2018-12-14 11:12:07', 'Y', 5, 'pemprov-sumsel-ingatkan-perangkat-daerah-selesaikan-proyek', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '82440131812', 38),
(39, 'Muara Enim Peringati HAKI 2018', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>Ribuan suara lantang berikrar bersatu melawan korupsi diteriakkan oleh seluruh elemen lapisan masyarakat Kabupaten Muara Enim di Pelataran Tugu Adipura, Kamis (13/12) sekitar pikul 07.00 pagi. Ini merupakan bagian dari peringatan Hari Anti Korupsi Internasional (HAKI) yang bertema “Melangkah Pasti, Junjung Tinggi Integritas, Lawan Korupsi” kegiatan ini diawali dengan senam Sehat bersama.</p>\n<p>Ikrar ANTIKORUPSI dibacakan Plt. Kajari Muara Enim Muhamad Husaini, SH., MH yang diikuti oleh Bupati Muara Enim, Unsur FKPD Kabupaten Muara Enim, Kepala Perangkat Daerah Lingkup Pemerintah Kabupaten Muara Enim, Pimpinan BUMD/N/S Muara Enim, dan Tamu undangan lainnya.</p>\n<p>Selantunya Muhamad Husaini, SH., MH langsung menyampaikan sambutannya yang intinya mengatakan bahwa pada tangggal 9 Desember 2018, seluruh Dunia melaksanakan peringatan HAKI. Hari Anti Korupsi Internasional Ini sebagai sarana untuk melakukan interopeksi, evaluasi memperbaiki kualitas individu dan pemberantasan korupsi yaitu  terciptanya Indonesia bersih dan bebas korupsi.</p>\n<p>Ia berharap dengan adanya ikrar ini bisa membangun niat baik kita untuk melawan Korupsi Kolusi dan Nepotisme (KKN) demi terwujudnya pambangunan di Kabupaten Muara Enim yang kita cintai ini.</p>\n<p>Dalam sambutannya Bupati Muara Enim Ir. H. Ahamd Yani, MM mengatakan, Hari ini Kamis 13 Desember 2018, kita berkumpul disini dalam rangka memperingati Hari anti Korupsi Sedunia, sekaligus pembacaan ikrar bagi kita semua sebagai perwakilan dari unsur Pemerintah baik Pusat maupun Daerah, Eksekutif, Legislatif dan Yudikatif, perwakilan dari Masyarakat., Organisasi Pemuda, Organisasi Wanita, Tokoh Masyarakat, Tokoh Agama, Tokoh Adat yang berada di wilayah Pemerintah Kabupaten Muara Enim.</p>\n<p>Acara ini merupakan bentuk dari dukungan Pemerintah Kabupaten Muara Enim dalam upaya pencagahan korupsi disamping juga upaya penegakan hukum tentunya, sebab secara sadar memahami bahwa korupsi terbukti telah membawa ketidakadilan, ketimpangan dan keterbelakangan karena itulah sebabnya korupsi menjadi musuh bersama bagi Bangsa-Bangsa di Dunia, Ujar Bupati.</p>\n<p>Bupati menambahkan, korupsi hanya bisa dilawan bila dilakukan secara bersama-sama kerja sama bahu mebahu antar lembaga penegak hukum, sinergi antar Eksekutif, Legislatif dan Yudikatif.</p>\n<p>Semoga dengan peringatan HAKI ini dapat menjadi momentum untuk mewujudkan Pemerintah Kabupaten Muara Enim yang bersih bebas dari Korupsi Kolusi dan Nepotisme sehingga pada akhirnya bisa mewujudkan Kabupaten Muara Enim yang Agamis, Berdaya Saing, Mandiri, Sehat dan Sejahtera, Pungkas Bupati.</p>', 6, '', '', 'Y', '2018-12-13 11:55:00', 5, '2018-12-14 11:13:23', 'Y', 5, 'muara-enim-peringati-haki-2018', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '39450131812', 4),
(40, 'DISKOMINFO adakan kegiatan Training Sosial Audit di IV Dapil', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>Pemerintah Kabupaten Muara Enim melalui Dinas Komunikasi dan Informatika mengadakan kegiatan Training Sosial Audit di Empat (IV) Dapil yang telah dilaksanakan sejak tanggal 13 November 2018 (Kec. Ujan Mas), 27 November 2018 (Kec. Rambang Dangku), 05 Desember 2018  (Kec. Tanjung Agung) dan terakhir 11 Desember 2018 (Kec. Gelumbang). Dengan Narasumber Suhermansyah, ST.M. Eng (Inspektur Pembantu Wilayah IV), Yetti, S.Sos ( Auditor Madya Inspektorat) Baharudin. S.Sos. M.Si. (Kabid. Keuangan &amp; Aset Desa) Dinas Pemberdayaan Masyarakat Desa dan Triana Rantini, S.Si., M.Si (Kasi Infrastruktur TIK Diskominfo). peserta terdiri dari Tokoh Masyarakat, Perangkat Desa dan Kelompok Informasi Masyarakat (KIM) setempat.</p>\n<p>Sosial Audit yaitu sebuah proses yang mendorong sebuah organisasi/ lembaga/ kelompok masyarakat untuk menilai dan menunjukan manfaat sosial, ekonomi dan lingkungan serta sebuah proses dimana masyarakat bersama pemerintah melakukan monitoring dan evaluasi terhadap perencanaan dan pelaksanaan pembangunan.</p>\n<p>Kadin Kominfo Ardian Arifanardi, AP., M.Si yang dalam hal ini diwakili oleh Plt. Sekretaris Diskominfo Khairul B, Sos menyampaikan, Kegiatan ini merupakan  tindaklanjut Rencana Aksi Program Pemberantasan Korupsi Terintegrasi Pemerintah Kabupaten Muara Enim Provinsi Sumatera Selatan Tahun 2018, yang mengharapkan partisipasi publik dan masyarakat dalam mengontrol proses pembangunan di wilayah masing-masing. dan bertujuan  agar masyarakat dapat mengawasi dan mengevaluasi hasil pembangunan yang dilaksanakan.</p>\n<p>Mudah-mudahan program pembangunan yang dilaksanakan dapat bermanfaat bagi masyarakat dalam mewujudkan Visi Kabupaten Muara Enim 2018-2023. Muara Enim Untuk Rakyat yang Agamis, Berdaya Saing Mandiri, Sehat dan Sejahtera, Pungkas Khairul.</p>', 6, '', '', 'Y', '2018-12-14 11:14:32', 5, '2018-12-14 11:14:32', 'Y', 5, 'diskominfo-adakan-kegiatan-training-sosial-audit-di-iv-dapil', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '7490131812', 14),
(41, 'Kabupaten Muara Enim Sambut Tim Penilai Penghargaan Pembangunan Daerah Tahun 2019', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>Bupati Muara Enim menghadiri Kegiatan Verifikasi dan Kunjungan Lapangan Tim Penilaian Penghargaan Pembangunan Daerah Tahun 2019 terhadap Proses Perencanaan Kabupaten Muara Enim tahun 2019 di Ruang Rapat Bappeda, Kamis (11/04).</p>\n<p>Dalam acara tersebut hadir Bupati Muara Enim Ir. H. Ahmad Yani, MM , Wakil Ketua DPRD Muara Enim Dwi Windarti, SH, M.Hum, Tim Penilai Pusat Suprayoga Hadi, Avianti Fontana, Andi Setyo Pambudi dan Yosi anandis Putri, Kepala Bappeda Sumsel yang diwakili oleh Ardhie Martadhiwira, Asisten II, Asisten III, Kepala Perangkat Daerah Kabupaten Muara Enim, Perwakilan BUMN/BUMD, Baznas Muara Enim, Camat serta Organisasi Masyarakat.</p>\n<p>Penilaian ini merupakan penilaian lanjutan dari tahap I-V yang telah dilalui Pemerintah beberapa waktu yang lalu. “Kesempatan ini nerupakan kebanggan sekaligus media belajar bagi Pemerintah Kabupaten Muara Enim dalam rangka meningkatkan kinerja pelayanan kepada masyarakat” kata Ahmad Yani dalam sambutannya.</p>\n<p>Ahmad Yani menambahkan, dengan adanya acara ini mengharapkan adanya masukan dari Tim Penilai.”Melalui verifikasi dan kunjungan ini, Tim Penilai meninjau dan melihat langsung pencapaian pembangunan dan inovasi di Kabupaten Muara Enim. Untuk itu, kami berharap masukan guna perbaikan serta peningkatan kinerja pelayanan kepada masyarakat”.</p>\n<p>Dalam acara tersebut Kepala Bapedda, Ramlan Suryadi memaparkan inovasi yang ada di Muara Enim untuk diajukan kepada Tim Penilai Pusat. Adapun inovasi yang dipaparkan adalah Amnesti Tangki Septik Bocor, CSR Berkah, Rumah UMKMK Gerbang Serasan dan Nissa Sabyan-ku (Inisiasi Desa Swasembada Sayur Andalan Karya Umak-Umak). Dari keempat inovasi tersebut terpilihlah inovasi UMKMK Gerbang Serasan untuk dibawa ke pusat.</p>', 6, '', '', 'Y', '2019-04-12 01:38:27', 6, '2019-04-12 01:38:27', 'Y', 6, 'kabupaten-muara-enim-sambut-tim-penilai-penghargaan-pembangunan-daerah-tahun-2019', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '13386111904', 1),
(42, 'Bupati Buka Pelatihan Pengembangan Kepribadian Organisasi Wanita Se-Muara Enim', '<p><strong>Tim News Room Muara Enim Diskominfo</strong></p>\n<p>Pemerintah Kabupaten Muara Enim melalui Dinas Pemberdayaan Perempuan dan Perlingdungan Anak menggelar Pelatihan Pengembangan Kepribadian di Hotel Griya Serasan Sekundang Muara Enim, Kamis (11/04).<br><br>Pelatihan yang berlangsung sehari dibuka langsung oleh Bupati Muara Enim Ir. H. Ahmad Yani, MM. Acara tersebut dihadiri oleh Ketua TP PKK Kabupaten Muara Enim Ir. H. Sumarni, M.Si, Kepala Dinas PPPA Drs. Helman, MM, Ketua Dharmawanita Linda Hasanudin, Ketua Dharmayakti Karini Dina Ahmad Markowi dan para peserta pelatihan dari organisasi wanita se-kabupaten Muara Enim.</p>\n<p>Ahmad Yani dalam sambutannya mengatakan bahwa peran perempuan sangat penting. “Kaum perempuan saat ini dituntut berperan ganda dalam keberlangsungan segala hal, disatu sisi sebagai ibu rumah tangga, disisi lain juga berperan aktif dalam pembangunan bangsa dan negara, untuk itu diharapkan para perempuan atau ibu-ibu yang tergabung dalam organisasi wanita secara bertahap perlu diberikan pembinaan dalam berbagai bidang”. Ujar Ahmad Yani</p>\n<p>Tujuan dari acara ini disampaikan Ahmad Yani adalah untuk perkembangan kepribadian ibu-ibu. “Pengembangan Kepribadian adalah suatu proses mengenalkan sifat-sifat baik pada seseorang seperti sikap hidup, cara berfikir, berpenampilan, dan tingkah laku yang dapat mewujudkan kepribadian yang mampu berkomunikasi dan membawa diri secara baik dan benar”. Tambahnya</p>\n<p> </p>', 6, '', '', 'Y', '2019-04-12 01:54:03', 6, '0000-00-00 00:00:00', 'Y', 0, 'bupati-buka-pelatihan-pengembangan-kepribadian-organisasi-wanita-se-muara-enim', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '53496111904', 1),
(43, 'Asisten I : Kita Mampu Bersaing di Kancah Nasional maupun Internasional', '<p><strong>Tim News Room Muara Enim Diskominfo.</strong></p>\n<p>SMA Negeri 1 Unggulan Muara Enim mengadakan acara Pelepasan Siswa/i kelas XII Tahun 2018-2019. Krgiatan ini dihadiri Sekretaris Daerah sekaligus Ketua Komite Ir. H. Hasanudin, M.Si dan Asisten I Drs. M. Teguh jaya, MM di Gedung Kesenian Putri Dayang Rindu, Rabu (10/04).</p>\n<p>Kepala SMAN 1, Darmadi, S.Pd, M.Si dalam sambutannya mengucapkan terima kasih kepada Pemerintah Kabupaten Muara Enim. “Terima kasih atas <em>support</em> nya selama ini dari Pemerintah Kabupaten Muara Enim, keberhasilan ini tidak terlepas dari <em>stakeholder</em> yang ada”. Katanya</p>\n<p>Kepada siswa/i yang resmi dilepas, Darmadi mengucapkan pesan agar jangan kendor berlajar dan tetap semangat, harumkan almamater SMA. Ganungkan cita-cita sesuai dengan ikhtiar kalian.</p>\n<p>Pada kesempatan yang sama Sekda Muara Enim sekaligus Ketua Komite, Hasanudin mengucapkan terima kasih kepada Kepala sekolah, Staf Guru, serta Staf Tata Usaha SMAN 1 Unggulan yang telah memberikan pendidikan yang baik kepada anak murid khusunya kelas XII.</p>\n<p>Selanjutnya, Asisten I Teguh Jaya yang hadir mewakili Bupati Muara Enim mengatakan bahwa Pemkab Muara enim bangga dengan SMA negeri 1 Unggulan Muara Enim. “Pemkab Muara Enim bangga kepada SMAN 1 karena termasuk dalam 30 sekolah unggul di Sumsel dan mempunyai prestasi yang unggul”. Ucapnya</p>\n<p>“Pemkab mengapresiasi program sekolah unggulan karena mendukung visi Pemkab Muara Enim yaitu merakyat, agamis dan berdaya saing. Dengan adanya sekolah unggulan dapat meningkatkan daya saing kita”. Tambahnya</p>\n<p>Dalam acara tersebut diumumkan pula bahwa terdapat 21 siswa/I yang lulus SNMPTN tanpa tes di beberapa Universitas negeri yang tersebar di Indonesia dan 3 orang siswa yang mendapatkan Beasiswa untuk belajar ke salah satu Universitas di Tiongkok.</p>\n<p>Dengan adanya siswa yang lulus tanpa tes dan mendapat beasiswa di Tingkok, Teguh Jaya mengatakan ini merupakan wujud keberhasilan karena kita sudah mampu bersaing di Nasional maupun Internasional.</p>\n<p>Pesan Bupati, Asisten I mengingatkan kepada para siswa - siswi yang audah berusia 17 tahun, pada Rabu 17 April 2019 nanti jangan lupa untuk menggunakan hak pilihnya.\"Dengan memilih berarti ada hak suara yang disalurkan berarti sudah ikut berperan dalam membangun negara, orang tua murid juga jangan lupa ikut berpartisipasi mencoblos pada Rabu 17 April 2019 nanti. Kalo ada potensi keributan segera laporkan ke Polisi menuju Pemilu serentak yang damai,\" Pungkasnya.</p>', 6, '', '', 'Y', '0000-00-00 00:00:00', 6, '0000-00-00 00:00:00', 'Y', 0, 'asisten-i-kita-mampu-bersaing-di-kancah-nasional-maupun-internasional', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'N', '100139111904', 1),
(44, 'Bupati Berharap PWRI Bersinergi Dengan Pemkab', '<p><strong>Tim News Room Muara Enim Diskominfo</strong><br>Bupati Muara Enim, Ir. H. Ahmad Yani, MM menghadiri pelantikan Persatuan Wredatama Republik Indonesia (PWRI) Kecamatan Lawang Kidul, Rabu (10/04) di Aula Kecamatan Lawang Kidul.<br>Usai dilantiknya PWRI Lawang Kidul ini, Bupati menyambut baik keberadaan PWRI Lawang Kidul dan orang nomor satu di Bumi Serasan Sekundang ini berharap adanya sinergitas dengan Pemerintah Kabupaten (Pemkab) Muara Enim dalam hal program - program yang digalakan Pemkab Muara Enim, seperti bantuan untuk lansia, santunan kematian, dan program lainnya.<br>Bahkan program Pemkab Muara Enim saat ini, mengurus masyarakat mulai dari lahir sampai mati. Banyak dana APBD Pemkab Muara Enim yang dikembalikan ke masyarakat Muara Enim.<br>Kedepan, Bupati berharap juga eksistensi dan posisi PWRI Lawang Kidul semakin kokoh dan berkarya.<br>\"Jaga terus kesehatan dan terus berkarya, karena seperti orang tua sendiri, saya tidak sanggup memberikan nasehat,\"ujar Bupati.<br>Sementara itu, Ketua PWRI Lawang Kidul, Fajeri Erham, yang langsung dilantik Ketua PWRI Kabupaten Muara Enim, H.Zulkifli HS, SH,mengucapkan terima kasih atas terlaksananya pelantikan ini.<br>Fajeri mengatakan dalam usia pensiun ini sudah kewajiban PWRI Lawang Kidul mendukung Pemkab Muara Enum melalui program yang sudah dicanangkan. \"Usia boleh tua, tapi semangat untuk berkarya akan tetap bergelora,\" tegas Fajeri.</p>', 6, '', '', 'Y', '2019-04-12 01:56:15', 6, '0000-00-00 00:00:00', 'Y', 0, 'bupati-berharap-pwri-bersinergi-dengan-pemkab', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '891111904', 3);

-- --------------------------------------------------------

--
-- Table structure for table `banner_depan`
--

CREATE TABLE `banner_depan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_depan`
--

INSERT INTO `banner_depan` (`id`, `gambar`, `header`, `caption`, `link_href`, `link_text`) VALUES
(5, 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/pupr1.jpg', '', ' ', '', ''),
(6, 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/pupr2.jpg', '', '', '', ''),
(7, 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/pupr3.jpg', '', '', '', ''),
(8, 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/pupr4.jpg', '', '', '', ''),
(9, 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/pupr5.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_item`
--

CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `gambar` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alttext` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_item`
--

INSERT INTO `banner_item` (`id`, `id_group`, `gambar`, `alttext`, `header`, `caption`, `link_href`, `link_text`) VALUES
(3, 1, 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/milky-way-1023340_1280.jpg', 'dddddd', 'ddd', 'ddd', 'dddddddddd', 'dddd'),
(4, 1, 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', 'tes', 'tes', 'asd', 'dsd', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `bidang_id` bigint(20) NOT NULL,
  `kategori_id` bigint(20) NOT NULL,
  `bidang_judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_tugas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_fungsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_javascript` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `bidang_id_user` bigint(20) UNSIGNED NOT NULL,
  `bidang_id_edit` bigint(20) UNSIGNED NOT NULL,
  `bidang_created` datetime NOT NULL,
  `bidang_edited` datetime NOT NULL,
  `bidang_meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`bidang_id`, `kategori_id`, `bidang_judul`, `bidang_tugas`, `bidang_fungsi`, `bidang_url`, `bidang_isi`, `bidang_foto`, `bidang_javascript`, `bidang_status`, `bidang_id_user`, `bidang_id_edit`, `bidang_created`, `bidang_edited`, `bidang_meta_keywords`, `bidang_meta_description`) VALUES
(2750, 11, 'Bidang Air Minum dan Penyehatan Lingkungan Permukiman', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Bidang Air Minum dan Penyehatan Lingkungan Permukiman mempunyai tugas penyusunan dan pelaksanaan kebijakan di bidang air minum, sistem drainase, pengembangan sistem &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;prasarana &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;persampahan dan air limbah.&lt;/span&gt;&lt;/p&gt;', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Dalam menyelenggarakan tugas &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Seksi Air Minum &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;mempunyai fungsi :&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;a. penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Air Minum;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;b. penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang air minum;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;c. penyiapan bahan pelaksanaan pembinaan di bidang air minum; &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;d. pelaksanaan fasilitasi&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; dan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;pembinaan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;bidang &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;air minum;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;e. penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Bidang Air Minum;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;f. pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Air Minum dan Penyehatan Lingkungan Permukiman&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt; &lt;/p&gt;\r\n&lt;p class=&quot;western&quot; style=&quot;text-align: center;&quot; align=&quot;justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Seksi Air Minum&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Air Minum mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang air minum.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Air Minum mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Air Minum;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang air minum;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang air minum;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan fasilitasi dan pembinaan bidang air minum;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Bidang Air Minum;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Air Minum dan Penyehatan Lingkungan Permukiman.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;Seksi Sanitasi Dan Drainase&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Sanitasi Dan Drainase mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang sanitasi dan drainase.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Sanitasi Dan Drainase mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Sanitasi dan Drainase;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang sanitasi dan drainase;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang sanitasi dan drainase;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pengelolaan dan pengembangan sistem sanitasi dan drainase;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Sanitasi dan Drainase;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Air Minum dan Penyehatan Lingkungan Permukiman.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Sarana Dan Prasarana Penyehatan Lingkungan Permukiman&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Sarana Dan Prasarana Penyehatan Lingkungan Permukiman mempunyai tugas penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang sarana dan prasarana penyehatan lingkungan permukiman.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Sarana Dan Prasarana Penyehatan Lingkungan Permukiman mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Sarana Dan Prasarana Penyehatan Lingkungan Permukiman;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang sarana dan prasarana penyehatan lingkungan permukiman;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang sarana dan prasarana penyehatan lingkungan permukiman;&lt;/li&gt;\r\n&lt;li&gt;penyiapan pengembangan sistem prasarana persampahan dan air limbah;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Sarana dan Prasarana Penyehatan Lingkungan Permukiman;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Air Minum dan Penyehatan Lingkungan Permukiman.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 'http://pupr.muaraenimkab.go.id/bidang/2750-Bidang-Air-Minum-dan-Penyehatan-Lingkungan', '', 'uploads/bidang/struktur 5 - bid air minum-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2783, 15, 'Sekretariat', '&lt;p&gt;Sekretariat mempunyai tugas melaksanakan penyiapan koordinasi perencanaan, evaluasi dan pelaporan program Dinas Pekerjaan Umum dan Penataan Ruang serta pengelolaan keuangan dan umum yang meliputi kegiatan kepegawaian, tata naskah dinas dan kearsipan, pengadaan perlengkapan, rumah tangga dan humas serta perjalanan dinas.&lt;/p&gt;', '&lt;p&gt;Dalam menyelenggarakan tugas Sekretariat, mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan koordinasi, pengolahan data dan penyusunan program kerja dilingkungan dinas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan administrasi, akuntansi, dan pelaporan keuangan;&lt;/li&gt;\r\n&lt;li&gt;pengelolaan adminsitrasi kepegawaian peningkatan sumber daya manusia;&lt;/li&gt;\r\n&lt;li&gt;pengelolaan perlengkapan, tata naskah Badan, kearsipan, rumah tangga, kehumasan dan perjalanan dinas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan rencana kebutuhan, pengadaan dan pemeliharaan inventaris kantor;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan fasilitasi advokasi dalam Bidang Pekerjaan Umum Dan Penataan Ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan laporan dan evaluasi pelaksanaan program;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Dinas Pekerjaan Umum Dan Penataan Ruang.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Sub Bagian Umum Dan Kepegawaian&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Sub Bagian Umum Dan Kepegawaian mempunyai tugas melakukan pemberian dukungan administrasi ketatausahaan, kerumahtanggaan, kepegawaian, arsip, dan dokumentasi.&lt;br&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Sub Bagian Umum Dan Kepegawaian mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Sub Bagian Umum Dan Kepegawaian;&lt;/li&gt;\r\n&lt;li&gt;pengurusan tata naskah dinas, kearsipan, perjalanan dinas dan humas serta rumah tangga di lingkungan dinas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan rencana kebutuhan, pengadaan dan pemeliharaan barang inventaris kantor di lingkungan dinas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan fasilitasi advokasi di lingkungan dinas;&lt;/li&gt;\r\n&lt;li&gt;pengurusan administrasi kepegawaian dan penyiapan bahan pembinaan disiplin pegawai di lingkungan dinas;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Sekretaris.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Sub Bagian Perencanaan&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Sub Bagian Perencanaan mempunyai tugas melakukan penyiapan bahan penyusunan program, evaluasi dan pelaporan di lingkungan Dinas.&lt;br&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Sub Bagian Perencanaan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, mengolah data dan menyusun rencana kegiatan dan anggaran Sub Bagian Perencanaan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan koordinasi penyusunan program di lingkungan Dinas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dokumen perencanaan di lingkungan dinas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pengendalian, monitoring, evaluasi dan pelaporan program;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan Sekretaris.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Sub Bagian Keuangan&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Sub Bagian Keuangan mempunyai tugas melakukan penyiapan bahan penyusunan anggaran, belanja dan akuntansi keuangan.&lt;br&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Sub Bagian Keuangan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, mengolah data dan menyusun rencana kegiatan dan anggaran Sub Bagian Keuangan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan anggaran, belanja dan akuntansi keuangan;&lt;/li&gt;\r\n&lt;li&gt;pengurusan surat permintaan pembayaran dan surat perintah membayar;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan akuntansi dan pelaporan keuangan;&lt;/li&gt;\r\n&lt;li&gt;pengurusan pembukuan dan perhitungan anggaran di lingkungan dinas;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan Sekretaris.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://pupr.muaraenimkab.go.id/bidang/2783-', '', 'uploads/bidang/struktur 01 - sekretariat.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3187, 12, 'Bidang Tata Bangunan dan Jasa Konstruksi', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Bidang &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Tata &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Bangunan dan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Jasa Konstruksi&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt; mempunyai tugas melaksanakan penyusunan dan pelaksanaan kebijakan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; di bidang tata &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;bangunan dan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;jasa konstruksi.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Dalam menyelenggarakan tugas &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Bidang &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Tata &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Bangunan dan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Jasa Konstruksi&lt;/span&gt;&lt;/span&gt; &lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;mempunyai fungsi :&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;a. penyiapan bahan koordinasi penyusunan program kerja Bidang &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Tata B&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;angunan Dan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Jasa Konstruksi&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;b. penyusunan dan pelaksanaan kebijakan di bidang &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;tata &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;bangunan dan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;jasa konstruksi&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;c. pelaksanaan pembinaan pengawasan dan pengendalian di bidang &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;tata &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;bangunan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;, &lt;/span&gt;&lt;/span&gt; &lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;pengawasan&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt; tertib usaha&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;,&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt; tertib penyelenggaraan dan tertib pemanfaatan jasa konstruksi&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;d. penyelenggaraan informasi jasa konstruksi&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;, pembinaan, menyebarluaskan peraturan perundang-undangan, bimbingan teknis dan penyuluhan jasa konstruksi;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;e. pelaksanaan monitoring, evaluasi dan pelaporan kegiatan Bidang&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; Tata &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Bangunan Dan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; Jasa Konstruksi&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;f. pelaksanaan kegiatan fasilitasi/bantuan teknis bangunan negara, rumah negara dan bangunan umum lainnya;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;g. pelaksanaan tugas lain yang diberikan oleh Kepala Dinas Pekerjaan Umum dan Penataan Ruang.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt; &lt;/p&gt;\r\n&lt;p class=&quot;western&quot; style=&quot;text-align: center;&quot; align=&quot;justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Seksi Perencanaan Teknis&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Perencanaan Teknis mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang perencanaan teknis tata bangunan, air minum dan penyehatan lingkungan permukiman.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi :&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Perencanaan Teknis mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, mengolah data dan menyusun rencana kegiatan dan anggaran Seksi Perencanaan Teknis;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang perencanaan teknis tata bangunan, air minum dan penyehatan lingkungan permukiman;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang perencanaan teknis tata bangunan, air minum dan penyehatan lingkungan permukiman;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Perencanaan Teknis;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Tata Bangunan dan Jasa Konstruksi.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt; &lt;/p&gt;\r\n&lt;p class=&quot;western&quot; style=&quot;text-align: center;&quot; align=&quot;justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Seksi Tata Bangunan&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Tata Bangunan mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang tata bangunan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Tata Bangunan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Tata Bangunan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang tata bangunan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang tata bangunan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Tata Bangunan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Tata Bangunan dan Jasa Konstruksi.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://pupr.muaraenimkab.go.id/bidang/3187-Bidang-Tata-Bangunan-dan-Jasa', '', 'uploads/bidang/struktur 4 - tata bangunan.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3899, 13, 'Bidang Pembangunan Jalan Dan Jembatan', '&lt;p&gt;Bidang Pembangunan Jalan Dan Jembatan mempunyai tugas melaksanakan penyusunan dan pelaksanaan kebijakan di bidang perencanaan, pembangunan serta peningkatan jalan dan jembatan, pengendalian mutu dan hasil pelaksanaan pekerjaan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', '&lt;p&gt;Dalam menyelenggarakan tugas Bidang Pembangunan Jalan Dan Jembatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan koordinasi penyusunan program kerja Bidang Pembangunan Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan kegiatan teknis di bidang pembangunan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan pembangunan dan peningkatan jalan serta jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan dan penyusunan pengembangan jaringan jalan kabupaten, desa dan kota;&lt;/li&gt;\r\n&lt;li&gt;pengoordinasian pemograman dan perencanaan teknik jalan, konektivitas sistem jaringan jalan dengan sistem moda transportasi bersama instansi terkait;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan pemutakhiran data dan penetapan peningkatan status fungsi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;pemantauan, pengendalian, evaluasi, dan pelaporan kegiatan Bidang Pembangunan Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Dinas Pekerjaan Umum dan Penataan Ruang.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Perencanaan Teknis Jalan Dan Jembatan&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Perencanaan Teknis Jalan Dan Jembatan mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang perencanaan teknis Jalan dan Jembatan.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Perencanaan Teknis Jalan Dan Jembatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Perencanaan Teknis Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan dan pelaksanaan teknis di bidang perencanaan teknis jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang perencanaan teknis jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pemantauan, evaluasi dan pelaporan pelaksanaan kegiatan Seksi Perencanaan Teknis Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Pembangunan Jalan dan Jembatan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Pembangunan Jalan Dan Jembatan&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Pembangunan Jalan Dan Jembatan mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pembangunan jalan dan jembatan, serta evaluasi dan penetapan laik fungsi jalan dan jembatan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Pembangunan Jalan Dan Jembatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran di bidang pembangunan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembangunan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembangunan bangunan pelengkap jalan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan koordinasi dan kerjasama dengan instansi terkait dan lembaga lainnya di bidang pembangunan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Pembangunan Jalan dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Pembangunan Jalan dan Jembatan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Peningkatan Jalan Dan Jembatan&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Peningkatan Jalan Dan Jembatan mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang peningkatan jalan dan jembatan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Peningkatan Jalan Dan Jembatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Peningkatan Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan teknis di bidang peningkatan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan peningkatan bangunan pelengkap jalan, dan bangunan pengaman jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan peningkatan bangunan pelengkap jalan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan koordinasi dan kerjasama dengan instansi terkait dan lembaga lainnya di bidang peningkatan jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan dan penyusunan pengembangan jaringan jalan dan jaringan jembatan kabupaten dan desa;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pemutakhiran data dan penetapan peningkatan status fungsi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Peningkatan Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Pembangunan Jalan dan Jembatan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;', 'http://pupr.muaraenimkab.go.id/bidang/3899-Bidang-Pembangunan-Jalan-Dan', '', 'uploads/bidang/struktur 02 - bid pemb jalan jembatan.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4454, 14, 'Bidang Preservasi Jalan Dan Jembatan', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Bidang Preservasi Jalan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;D&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;an Jembatan mempunyai tugas melaksanakan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;penyusunan dan pelaksanaan kebijakan di&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; bidang preservasi jalan dan jembatan, pengamanan dan pemanfaatan bagian-bagian jalan dan jembatan.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Dalam menyelenggarakan tugas &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Bidang Preservasi Jalan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;D&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;an Jembatan&lt;/span&gt;&lt;/span&gt; &lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;mempunyai fungsi :&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;a. p&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;enyiapan bahan koordinasi penyusunan program kerja Bidang Preservasi Jalan Dan Jembatan;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;b. penyusunan&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt; dan pelaksanaan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; petunjuk teknis di bidang preservasi jalan dan jembatan;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; lang=&quot;id-ID&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;c. pelaksanaan preservasi jalan dan jembatan;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; lang=&quot;id-ID&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;d. pelaksanaan pemutakhiran data preservasi jalan dan jembatan;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;e. p&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;elaksanaan audit keselamatan jalan dan jembatan, leger jalan, serta pengaman pemanfaatan bagian-bagian jalan;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;f. p&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;emantauan, evaluasi&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;,&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; pengendalian dan&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt; pelaporan kegiatan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; Bidang Preservasi Jalan dan Jembatan;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;g. p&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;elaksanaan tugas lain yang diberikan oleh Kepala Dinas Pekerjaan Umum dan Tata Ruang.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt; &lt;/p&gt;\r\n&lt;p class=&quot;western&quot; style=&quot;text-align: center;&quot; align=&quot;justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Seksi Perencanaan Teknis Preservasi Jalan Dan Jembatan&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Perencanaan Teknis Preservasi Jalan Dan Jembatan mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang perencanaan teknis preservasi jalan dan jembatan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Perencanaan Teknis Preservasi Jalan Dan Jembatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Perencanaan Teknis Preservasi Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan teknis di bidang perencanaan teknis preservasi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang perencanaan teknis preservasi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Perencanaan Teknis Preservasi Jalan dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Preservasi Jalan Dan Jembatan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Preservasi Jalan Dan Jembatan&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Preservasi Jalan Dan Jembatan mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang preservasi jalan dan jembatan.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Preservasi Jalan Dan Jembatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Preservasi Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang preservasi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan audit keselamatan dan identifikasi kondisi jalan dan kondisi jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan koordinasi dan kerjasama dengan instansi terkait dan lembaga lainnya di bidang preservasi jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pengelolaan, evaluasi dan pemantauan presevasi jalan dan jembatan, pengamanan pemanfaatan bagian-bagian jalan, bangunan pelengkap jalan dan pemanfaatan bagian-bagian jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Preservasi Jalan dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;Pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Presevasi Jalan dan Jembatan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Pemanfaatan Jalan Dan Jembatan&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Pemanfaatan Jalan Dan Jembatan mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pemanfaatan jalan dan jembatan, perizinan dan utilitas.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Pemanfaatan Jalan Dan Jembatan mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Pemanfaatan Jalan Dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pemanfaatan jalan dan jembatan, perizinan dan utilitas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan evaluasi dan penetapan leger jalan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan koordinasi dan kerjasama dengan instansi terkait dan lembaga lainnya di bidang pemanfaatan jalan dan jembatan, perizinan dan utilitas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pengelolaan, evaluasi dan pemantauan di bidang pemanfaatan jalan dan jembatan, perizinan dan utilitas;&lt;/li&gt;\r\n&lt;li&gt;penyiapan data-data teknis bidang jalan dan jembatan;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Pemanfaatan Jalan dan Jembatan;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Preservasi Jalan dan Jembatan.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://pupr.muaraenimkab.go.id/bidang/4454-Bidang-Preservasi-Jalan-Dan', '', 'uploads/bidang/struktur 3 - preservasi jalan jemb.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7549, 10, 'Bidang Sumber Daya Air ', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Bidang Sumber Daya Air mempunyai tugas melaksanakan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;penyusunan dan pelaksanaan kebijakan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; bidang sumber daya air.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Dalam menyelenggarakan tugas &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Bidang Sumber Daya Air&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt; mempunyai fungsi :&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; lang=&quot;id-ID&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;a. Penyiapan bahan koordinasi penyusunan program kerja Bidang Sumber Daya Air;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;b. penyusunan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; dan pelaksanaan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;kebijakan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; di bidang Sumber Daya Air;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; lang=&quot;id-ID&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;c. pelaksanaan identifikasi pembangunan dan peningkatan sumber daya air;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; lang=&quot;id-ID&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;d. pelaksanaan pembangunan dan pemeliharaan sarana dan prasarana sumber daya air;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;e. pelaksanaan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;pengelolaan sumber daya air yang meliputi konservasi sumber daya air, penday&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;a&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;gunaan sumber daya air, dan pengendalian daya rusak air;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;f. pelaksanaan pengawasan, evaluasi dan pelaporan&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt; kegiatan&lt;/span&gt; &lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;B&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;idang Sumber Daya Air;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;g. p&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;elaksanaan tugas lain yang diberikan oleh Kepala Dinas Pekerjaan Umum &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;D&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;an &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Penataan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; Ruang.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt; &lt;/p&gt;\r\n&lt;p class=&quot;western&quot; style=&quot;text-align: center;&quot; align=&quot;justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Seksi Perencanaan Teknis Sumber Daya Air&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Perencanaan Teknis Sumber Daya Air mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan bidang perencanaan teknis sumber daya air.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Perencanaan Teknis Sumber Daya Air mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Perencanaan Teknis Sumber Daya Air ;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang perencanaan teknis sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang perencanaan teknis sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pengelolaan sistem informasi dan data sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Perencanaan Teknis Sumber Daya Air;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Sumber Daya Air.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Pembangunan Sumber Daya Air&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Pembangunan Sumber Daya Air mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pembangunan sumber daya air.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Pembangunan Sumber Daya Air mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Pembangunan Sumber Daya Air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan dan pelaksanaan teknis di bidang pembangunan sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang pembangunan sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan koordinasi dan kerjasama dengan instansi terkait dan lembaga lainnya bidang pembangunan sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pemberdayaan masyarakat di bidang pembangunan sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Pembangunan Sumber Daya Air;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Sumber Daya Air.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi Operasi Dan Pemeliharaan Sumber Daya Air&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Operasi Dan Pemeliharaan Sumber Daya Air mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang operasi dan pemeliharaan sumber daya air.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Operasi Dan Pemeliharaan Sumber Daya Air mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Operasi Dan Pemeliharaan Sumber Daya Air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang operasi dan pemeliharaan sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan penanggulangan kerusakan akibat bencana;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pemberian rekomendasi teknis dalam pemberian izin penggunaan sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan data-data teknis di bidang sumber daya air;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Bidang Operasi Dan Pemeliharaan Sumber Daya Air;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Sumber Daya Air.&lt;/li&gt;\r\n&lt;/ol&gt;', 'http://pupr.muaraenimkab.go.id/bidang/7549-Bidang-Sumber-Daya-Air', '', 'uploads/bidang/struktur 6 - sumber daya air-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `bidang` (`bidang_id`, `kategori_id`, `bidang_judul`, `bidang_tugas`, `bidang_fungsi`, `bidang_url`, `bidang_isi`, `bidang_foto`, `bidang_javascript`, `bidang_status`, `bidang_id_user`, `bidang_id_edit`, `bidang_created`, `bidang_edited`, `bidang_meta_keywords`, `bidang_meta_description`) VALUES
(7822, 9, 'Bidang Tata Ruang', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Bidang Tata Ruang mempunyai tugas melaksanakan perumusan dan pelaksanaan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;kebijakan di&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; bidang &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;tata&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; ruang.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Dalam menyelenggarakan tugas &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Bidang Tata Ruang&lt;/span&gt;&lt;/span&gt; &lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;mempunyai fungsi :&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;a. p&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;enyiapan bahan koordinasi penyusunan program kerja Bidang Tata Ruang;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;b. penyusunan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; dan pelaksanaan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;kebijakan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; di bidang tata ruang;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;c. pelaksanaan identifikasi perencanaan Pembangunan di bidang tata ruang;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;d. perumusan dan pelaksanaan pemanfaatan ruang wilayah dan kawasan strategis;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;e. pelaksanaan pembinaan penataan ruang;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;f. pelaksanaan kerjasama penataan ruang;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;g. pelaksanaan pengawasan, evaluasi dan pelaporan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;kegiatan &lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;Bidang &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Tata Ruang&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;h. p&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt;elaksanaan tugas lain yang diberikan oleh Kepala Dinas Pekerjaan Umum dan &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;Penataan&lt;/span&gt;&lt;span style=&quot;font-family: Bookman Old Style, serif;&quot;&gt;&lt;span lang=&quot;id-ID&quot;&gt; Ruang.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt; &lt;/p&gt;\r\n&lt;p class=&quot;western&quot; align=&quot;justify&quot;&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi  Pengaturan Tata Ruang&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Pengaturan Tata Ruang mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pengaturan tata ruang.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Pengaturan Tata Ruang mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Bidang Pengaturan Tata Ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunn dan pelaksanaan kabijakan di bidang pengaturan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang pengaturan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pengembangan sistem informasi dan komunikasi serta penyebarluasan informasi penataan ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Pengaturan Tata Ruang;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Tata Ruang.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi  Pelaksanaan Dan Pembinaan Tata Ruang&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Pelaksanaan Dan Pembinaan Tata Ruang mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pelaksanaan dan pembinaan tata ruang.&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Pelaksanaan Dan Pembinaan Tata Ruang mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Seksi Pelaksanaan Dan Pembinaan Tata Ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pelaksanaan dan pembinaan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang pelaksanaan dan pembinaan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pengawasan, evaluasi dan pelaporan kegiatan Seksi Pelaksanaan Dan Pembinaan Tata Ruang;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Tata Ruang.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;Seksi  Pengawasan Dan Pengendalian Pemanfaatan Tata Ruang&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Tugas:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Seksi Pengawasan Dan Pengendalian Pemanfaatan Tata Ruang mempunyai tugas melakukan penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pengawasan dan pengendalian pemanfaatan tata ruang.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Fungsi:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Dalam menyelenggarakan tugas Seksi Pengawasan Dan Pengendalian Pemanfaatan Tata Ruang mempunyai fungsi :&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;penyiapan bahan, pengolahan data dan penyusunan rencana kegiatan dan anggaran Bidang Pengawasan Dan Pengendalian Pemanfaatan Tata Ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan penyusunan dan pelaksanaan kebijakan di bidang pengawasan dan pengendalian pemanfaatan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan pembinaan di bidang pengawasan dan pengendalian pemanfaatan tata ruang;&lt;/li&gt;\r\n&lt;li&gt;penyiapan bahan pelaksanaan monitoring, evaluasi dan pelaporan kegiatan Seksi Pengawasan dan Pengendalian Pemanfaatan Tata Ruang;&lt;/li&gt;\r\n&lt;li&gt;pelaksanaan tugas lain yang diberikan oleh Kepala Bidang Tata Ruang.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt; &lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 'http://pupr.muaraenimkab.go.id/bidang/7822-Bidang-Tata', '', 'uploads/bidang/struktur 7 - bid tata ruang-01.jpg', '', 'published', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_singkat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fb` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `foto`, `deskripsi_singkat`, `deskripsi`, `link_fb`) VALUES
(1, 'Dinas PU PR', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/logo_dinaspupr.png', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat Republik Indonesia adalah kementerian dalam Pemerintah Indonesia yang membidangi urusan pekerjaan umum dan perumahan rakyat', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_download` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_temp`
--

CREATE TABLE `download_temp` (
  `id` int(11) NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_masuk`
--

CREATE TABLE `email_masuk` (
  `email_id` int(11) NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`, `slug`, `tanggal`) VALUES
(14, 'Question 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et dapibus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean nibh justo, varius vitae tempor eu, gravida lacinia libero. Phasellus id ex tellus. Fusce rhoncus lectus ac suscipit venenatis. Fusce faucibus aliquet pharetra. Curabitur feugiat congue neque quis accumsan. Vestibulum ut leo volutpat, gravida enim non, maximus erat. Sed bibendum ornare egestas. Vivamus in ex id mi dignissim laoreet ut non dui. Etiam ut egestas metus. Maecenas condimentum iaculis purus.</p>\n<p>Mauris porttitor, erat et mollis cursus, risus turpis vestibulum erat, in pulvinar turpis metus in lacus. Sed laoreet faucibus accumsan. Curabitur luctus mollis nisl, eu placerat massa interdum eu. Maecenas nec ipsum ipsum. Cras a nulla finibus, eleifend ex in, mollis odio. Suspendisse maximus tortor sapien, in iaculis leo rhoncus in. Pellentesque ultrices diam congue dapibus scelerisque.</p>', 'question-1', '2018-07-10 02:50:26'),
(15, 'Question 2', '<p>Morbi non accumsan odio. Nulla tortor tortor, semper a justo quis, porta consequat mi. Nullam quis ante at felis dapibus hendrerit et non lectus. Pellentesque a aliquet justo. Etiam mauris urna, scelerisque vel ex nec, ultrices accumsan libero. Etiam auctor ipsum sit amet porta dignissim. Etiam enim lectus, tempus quis placerat maximus, posuere ut arcu. Nulla felis leo, vestibulum non eleifend congue, congue vel turpis. Nulla at enim consectetur, egestas purus ac, eleifend sem. Aenean malesuada congue venenatis. Sed nec viverra turpis, eget pharetra augue. Cras rutrum quam vitae ipsum interdum, eu elementum nisi consectetur.</p>\n<p>Phasellus in diam imperdiet, finibus tortor nec, ullamcorper est. Nam commodo felis at quam venenatis, eu dictum felis feugiat. Aliquam id orci dolor. In luctus mi vitae orci suscipit, vitae dignissim enim porttitor. Pellentesque lectus odio, mollis ac aliquam in, dapibus eu velit. Nullam mauris ligula, dictum non elit eleifend, venenatis dignissim purus. Cras maximus porttitor dui elementum auctor. Pellentesque accumsan metus vitae egestas vehicula.</p>\n<p><img src=\"http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/man-489744_1280.jpg\" alt=\"man-489744_1280\"></p>\n<p>Mauris porta quis elit quis tincidunt. Proin at aliquet augue, eu auctor augue. Vivamus consequat risus quis dolor iaculis scelerisque. Sed eu posuere turpis, a tincidunt nunc. Maecenas sit amet metus eget purus ultrices porta. Sed eleifend, eros sit amet semper pulvinar, est quam sollicitudin velit, eu mollis felis enim vel enim. Proin tincidunt ut diam ac faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus ac pharetra arcu. Morbi facilisis, quam rhoncus laoreet egestas, neque urna euismod purus, sed rutrum mi lacus sed eros. Duis ut egestas turpis. Nullam sed nisi maximus, eleifend libero eu, ultricies mauris. Duis accumsan tincidunt lectus non gravida.</p>', 'question-2', '2018-07-13 07:38:55'),
(16, 'Question 3', '<p>Morbi faucibus, risus consequat consectetur ultrices, erat arcu iaculis nunc, sit amet condimentum enim tortor ut neque. In vitae dignissim enim. Pellentesque eu vehicula ex. Aenean condimentum magna vitae sem vehicula, nec molestie nisi lacinia. Praesent feugiat risus a neque varius luctus ut a justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean lobortis ipsum ac urna elementum, euismod aliquam ipsum facilisis. Aenean eget ante eleifend, ornare velit vehicula, tempus mi. Curabitur vestibulum tellus et libero tempor, sed vehicula turpis feugiat. In in neque sit amet ipsum rhoncus tincidunt. Suspendisse dapibus mollis lacinia. Nulla facilisi. Sed suscipit ullamcorper tincidunt.</p>\n<p>Etiam interdum sem eget mauris vulputate gravida. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt nisi eget condimentum rutrum. Mauris sed turpis volutpat, facilisis lorem non, vulputate ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed turpis purus, convallis eu sem in, mollis ultricies libero. Pellentesque tincidunt elementum turpis, at vehicula lorem eleifend nec. Ut ac tortor id orci tincidunt sollicitudin vel sit amet neque. In efficitur, ante vitae convallis iaculis, leo est ullamcorper dui, ut imperdiet ex velit sit amet metus. Suspendisse potenti.</p>', 'question-3', '2018-07-13 07:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel`
--

CREATE TABLE `foto_artikel` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `id_artikel` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_artikel`
--

INSERT INTO `foto_artikel` (`id_foto`, `id_artikel`, `nama_foto`, `featured`, `token_foto`) VALUES
(4, 2, 'fruit-4.jpg', 'N', ''),
(5, 2, 'fruit-3.jpg', 'Y', ''),
(6, 2, 'fruit-2.jpg', 'N', ''),
(7, 2, 'fruit-1.jpg', 'N', ''),
(12, 4, 'cat-3.jpg', 'N', ''),
(13, 4, 'cat-4.jpg', 'N', ''),
(14, 4, 'cat-2.jpg', 'N', ''),
(15, 4, 'cat-1.jpg', 'N', ''),
(20, 5, 'e1b98a673c81488445bcace96e3cf18b_14354995_159699914478040_1499585311944882136_n.jpg', 'N', '0.6933620484203296'),
(21, 4, 'b6e27faa88e45fa8afedef314cc7e137_14453954_1131135600308102_1032412490_o.jpg', 'Y', '0.06723115049950112'),
(23, 2, 'f3feba580c1435b9f8ef0fa55890c035_3-1-735x400.jpg', 'N', '0.04402219405959218'),
(24, 1, '135556e7a323c509d9d8b75620c6e680_IMG20160914092950-660x400.jpg', 'Y', '0.8998090613732903'),
(25, 6, 'logo1.jpg', 'N', '0.4590857619395776'),
(27, 13, 'Screenshot_2018-12-13_Jelang_Mudik_Natal_2018,_Menteri_Basuki_Akan_Cek_Kesiapan_Tol_Trans_Jawa2.png', 'N', '0.256200154456129'),
(38, 0, '0f050fb938257f539cc72fffd9c5777a_(1)16.jpg', 'N', '0.06969781340578418'),
(39, 0, '97ec7d0f6fab283b9a57f2aa715129348db5e8c1.jpg', 'N', '0.4670726669679284'),
(40, 0, 'misi.png', 'N', '0.694354319383836'),
(41, 0, 'a168aed1818caefbc649299892d9af3c_(1)1.jpg', 'N', '0.6069970556463034'),
(43, 0, '0f050fb938257f539cc72fffd9c5777a_(1)7.jpg', 'N', '0.7160635721922584'),
(45, 0, '0f050fb938257f539cc72fffd9c5777a_(1)11.jpg', 'N', '0.8391668677766666'),
(47, 0, '0f050fb938257f539cc72fffd9c5777a_(1)17.jpg', 'N', '0.043018707985382765'),
(50, 38, 'proyek.jpg', 'N', '0.901476429462126'),
(51, 39, '4121d4c91e11eaa58b19eec4a153f9ee_uload_haki.jpg', 'N', '0.752056066412484'),
(52, 40, '7ee8c6867c9f964342d2aaadee2ddb5b_upload_sosial.jpeg', 'N', '0.01648668258865893'),
(54, 41, 'Untitled.png', 'Y', ''),
(55, 42, '44d7a0a3f056f47fdc5292f73ac0de40_pelatihan_pengembangan_kepribadian.jpg', 'N', ''),
(56, 43, 'asa.png', 'N', ''),
(57, 44, '14aac50cc06a9660dff92248a114c73b_upload_pwri.jpg', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel_temp`
--

CREATE TABLE `foto_artikel_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri`
--

CREATE TABLE `foto_galeri` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `id_galeri` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_foto` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_galeri`
--

INSERT INTO `foto_galeri` (`id_foto`, `id_galeri`, `nama_foto`, `token_foto`, `deskripsi_foto`) VALUES
(16, 3, 'Kementerian_PUPR_Peroleh_Dua_Penghargaan_dari_PR_INDONESIA.jpg', '', ''),
(17, 3, 'empat_tahun_jokowi-jk.jpg', '', ''),
(18, 4, 'e1b98a673c81488445bcace96e3cf18b_14354995_159699914478040_1499585311944882136_n.jpg', '', ''),
(19, 4, 'Anggaran_Kementerian_PUPR_TA_20181.jpg', '', ''),
(20, 5, '135556e7a323c509d9d8b75620c6e680_IMG20160914092950-660x400.jpg', '', ''),
(21, 5, 'Masih-Beresiko-Dinas-PU-Segera-Kerahkan-Alat-Berat-Untuk-Angkat-Sendimen-dan-Tumpukan-Sampah-di-Banjir-Kanal-Timur.jpg', '', ''),
(22, 6, 'gedung-kantor-upt-dinas-pu-riau-di-kampar_20160329_190132.jpg', '', ''),
(23, 6, 'Masih-Beresiko-Dinas-PU-Segera-Kerahkan-Alat-Berat-Untuk-Angkat-Sendimen-dan-Tumpukan-Sampah-di-Banjir-Kanal-Timur1.jpg', '', ''),
(25, 8, 'empat_tahun_jokowi-jk.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri_temp`
--

CREATE TABLE `foto_galeri_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_galeri_temp`
--

INSERT INTO `foto_galeri_temp` (`id_foto`, `nama_foto`, `token_foto`, `sesi_form`) VALUES
(1, 'cover.jpg', '0.738971008688023', '20334131812');

-- --------------------------------------------------------

--
-- Table structure for table `foto_user_tmp`
--

CREATE TABLE `foto_user_tmp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_user_tmp`
--

INSERT INTO `foto_user_tmp` (`id_foto`, `nama_foto`, `token_foto`, `sesi_from`, `id_user`) VALUES
(1, '0f050fb938257f539cc72fffd9c5777a_(1).jpg', '0.05924163038590757', '64273131812', 0);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `galeri_nama` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_feature_img` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_meta_keyword` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_meta_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_og_image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_og_deskripsi` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_date` datetime NOT NULL,
  `galeri_date_edit` datetime NOT NULL,
  `galeri_user` bigint(20) UNSIGNED NOT NULL,
  `galeri_user_edit` bigint(20) UNSIGNED NOT NULL,
  `galeri_status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `kategori_id`, `galeri_nama`, `galeri_deskripsi`, `galeri_feature_img`, `galeri_url`, `galeri_meta_keyword`, `galeri_meta_deskripsi`, `galeri_og_image`, `galeri_og_deskripsi`, `galeri_date`, `galeri_date_edit`, `galeri_user`, `galeri_user_edit`, `galeri_status`) VALUES
(3, 7, 'Kegiatan PU', '', '', 'kegiatan-pu', '', '', '', '', '2018-12-03 11:14:08', '0000-00-00 00:00:00', 1, 1, 'publish'),
(4, 7, 'Galeri Kegiatan Hari Jadi Kabupaten Muara Enim', '', 'perbaikan-tambal-sulam_20160622_221029.jpg', 'galeri-kegiatan-hari-jadi-kabupaten-muara-enim', '', '', '', '', '2018-12-03 11:14:33', '0000-00-00 00:00:00', 1, 1, 'publish'),
(5, 0, 'Peresmian Lelang Proyek Kab Muara Enim', '', 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/perbaikan-tambal-sulam_20160622_221029.jpg', 'peresmian-lelang-proyek-kab-muara-enim', '', '', '', '', '2018-12-14 12:31:48', '0000-00-00 00:00:00', 1, 5, 'publish'),
(6, 10, 'Perbaikan Jembatan', '', 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/perbaikan-tambal-sulam_20160622_221029.jpgperbaikan-tambal-sulam_20160622_221029.jpg', 'perbaikan-jembatan', '', '', '', '', '2018-12-03 20:04:43', '0000-00-00 00:00:00', 1, 1, 'publish'),
(8, 0, 'Perbaikan Jalan', '<p>Menghadapi arus mudik lebaran tahun 2016 mendatang, Pemerintah Pusat mulai melakukan perbaikan jalan milik negara. Sayangnya perbaikan tersebut tidak secara keseluruhan namun hanya tambal sulam, di Jalan SMB II Muaraenim, Rabu (22/6/2016).</p>\n<p>Dari pengamatan di lapangan, perbaikan jalan SMB II Muaraenim yang melintas di tengah kota Muaraenim, menggunakan metode tambal sulam yakni hanya memperbaiki dan menambal jalan yang rusak dan berlobang saja.</p>\n<p>Hal ini dilakukan diduga akibat keterbatasan dana sehingga tidak dilakukan perbaikan dan pengaspalan secara keseluruhan.</p>\n<div id=\"ihhk-7nGat1GS-XGI7zWx73yN_3W273uY63aL9n1\" class=\"\" data-google-query-id=\"CNrSlqe8nt8CFdeo7QodRrQO8A\"> </div>\n<p>Bahkan beberapa box culvert yang rusak dan jebol, belum dilakukan perbaikan. Sedangkan untuk jalan lintas negara terutama yang terancam longsor baru sebagian yang sedang diperbaiki, sedangkan sebagian lagi hanya diberikan rambu-rambu dan garis polisi.</p>\n<p>Diperkirakan pada lebaran tahun ini, jalan yang longsor tersebut belum bisa dilakukan perbaikan karena medannya yang cukup sulit yang rata-rata seperti jurang dan di pinggir bibir sungai Enim dan Lematang.</p>\n<p>Menurut Rudi (40) pengawas lapangan SMB II Muaraenim, pihaknya sesuai perintah hanya melakukan perbaikan di ruas jalan SMB II Muaraenim. Namun jenis perbaikan bukan dilakukan dengan cara pengaspalan secara keseluruhan, tetapi hanya menambal jalan yang rusak dan berlobang saja (tambal sulam).</p>\n<p>Pihaknya menargetkan sebelum H-7, kondisi jalan di ruas jalan SMB II Muaraenim, tidak ada lagi yang berlobang.</p>\n<p>Namun ketika ditanya masalah ada jalan yang berlobang di jalan SMB II Muaraenim, akibat box culvertnya jebol, Rudi, mengatakan ia kurang tahu masalah tersebut, sebab tidak termasuk dalam RAB pekerjaannya.</p>\n<p>Pihaknya akan bekerja sesuai RAB yang ada. Sedangkan untuk ruas jalan yang lain, itu ada penanggungjawabnya masing-masing.</p>\n<p>\"Kita ini bekerja sesuai petunjuknya, jadi meskipun ada jalan yang rusak didekat pekerjannya jika tidak masuk dalam tanggungjawabnya, kami tidak bisa memperbaikinya,\" tukas Rudi.</p>\n<p>Sementara itu Kepala Dinas PU Bina Marga Kabupaten Muaraenim Ir A Yani MT, membenarkan jika sedang ada perbaikan beberapa ruas jalan lintas sumatera di dalam wilayah Kabupaten Muaraenim. Karena status jalan tersebut adalah jalan negara maka kewenangannya adalah pusat (APBN) yang dikerjakan oleh PU BM Sumsel.</p>\n<p>Untuk itu ia berharap, perbaikan tersebut bisa selesai sebelum H-7. Dan kepada masyarakat untuk kerjasamanya yang baik sehingga perbaikan tersebut berjalan lancar dan aman.</p>\n<p> </p>', 'perbaikan-tambal-sulam_20160622_221029.jpg', 'perbaikan-jalan', '', '', '', '', '2018-12-14 12:31:05', '0000-00-00 00:00:00', 5, 5, 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `group_banner`
--

CREATE TABLE `group_banner` (
  `id_group` int(11) NOT NULL,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_banner`
--

INSERT INTO `group_banner` (`id_group`, `nama`, `tanggal`) VALUES
(1, 'Group 1', '2018-12-13 09:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `webprivacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `termcondition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_deskripsi` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_banner` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_media` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `develope_mode` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `logo` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `width_thumb_artikel` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `width_thumb_galeri` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `width_thumb_produk` int(10) UNSIGNED NOT NULL DEFAULT '500',
  `prefix_suffix_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix_suffix_sebagai` enum('prefix','suffix','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'prefix',
  `default_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_populer_artikel` int(11) NOT NULL DEFAULT '10',
  `max_tampil_artikel` int(11) NOT NULL DEFAULT '10',
  `max_headline_artikel` int(11) NOT NULL DEFAULT '10',
  `max_headline_galeri` int(11) NOT NULL DEFAULT '10',
  `max_tampil_galeri` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `max_headline_produk` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `max_tampil_produk` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `sleep_mode` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `sleep_sampai` datetime NOT NULL,
  `max_tampil_agenda` int(11) NOT NULL DEFAULT '10',
  `max_tampil_download` int(11) NOT NULL DEFAULT '10',
  `max_tampil_agenda_umum` int(11) NOT NULL DEFAULT '3',
  `max_tampil_download_umum` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `nama`, `deskripsi`, `disclaimer`, `webprivacy`, `termcondition`, `meta_keyword`, `meta_deskripsi`, `default_banner`, `featured_image`, `thumbnail_media`, `favicon`, `develope_mode`, `logo`, `custom_css`, `width_thumb_artikel`, `width_thumb_galeri`, `width_thumb_produk`, `prefix_suffix_title`, `prefix_suffix_sebagai`, `default_title`, `max_populer_artikel`, `max_tampil_artikel`, `max_headline_artikel`, `max_headline_galeri`, `max_tampil_galeri`, `max_headline_produk`, `max_tampil_produk`, `sleep_mode`, `sleep_sampai`, `max_tampil_agenda`, `max_tampil_download`, `max_tampil_agenda_umum`, `max_tampil_download_umum`) VALUES
(1, 'Dinas Pekerjaaan Umum Muara Enim', '', '', '', '', 'PUPR MUARA ENIM', 'Dinas pekerjaan umum', '', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/footpath-691021_1280.jpg', '', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/close.png', 'N', '', '/*Masukan code CSS anda disini\nGunakan flag !important*/\n', 300, 300, 500, '| Sandro.id', 'suffix', '', 10, 10, 10, 10, 1, 10, 10, 'N', '2016-04-14 02:13:08', 10, 10, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `infrastruktur`
--

CREATE TABLE `infrastruktur` (
  `id_infrastruktur` varchar(5) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `nama_pelaksana` varchar(100) NOT NULL,
  `anggaran` varchar(50) NOT NULL,
  `nilai_kontrak` varchar(50) NOT NULL,
  `progres` varchar(50) NOT NULL,
  `ppk` varchar(50) NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infrastruktur`
--

INSERT INTO `infrastruktur` (`id_infrastruktur`, `nama_kegiatan`, `nama_pelaksana`, `anggaran`, `nilai_kontrak`, `progres`, `ppk`, `tahun`) VALUES
('42132', 'Kegiatan Peningkatan Jalan di Wilayah Muara Enim', 'tas', '11290033000', '315058900', '0', 'Nusa Suryadi ST. M.Eng', 2018),
('44584', 'Kegiatan Peningkatan Jalan di Wilayah IX', 'tes', '63783570000', '53367450', '0', 'Yan Suheri, SST', 2019),
('58542', 'Kegiatan Peningkatan Jalan di Wilayah Muara Enim', 'tes', '11290033000', '53367450', '0', 'Nusa Suryadi ST. M.Eng', 2017),
('86973', 'k1', 'aaa', '222', '333', '2', '222', 2018),
('94329', 'Kegiatan Pembangunan Jembatan di Kabupaten Merangin', 'nama_pelaksana', '57830355000', '52904250', '0', 'Edy Damhuri, MT', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `jabatan_id` int(11) NOT NULL,
  `jabatan_kd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_kelompok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`jabatan_id`, `jabatan_kd`, `jabatan_nama`, `jabatan_kelompok`) VALUES
(1, 'kepala_dinas', 'Plt. Kepada Dinas', 0),
(2, 'sekretaris', 'Sekretaris', 1),
(3, 'kasubag_udk', 'Kasubag Umum dan Kepegawaian', 1),
(4, 'kasubag_p', 'Kasubag Perencanaan', 1),
(5, 'kasubag_k', 'Kasubag Keuangan', 1),
(6, 'bpemjdj', 'Bidang Pembangunan Jalan & Jembatan', 2),
(7, 'bprejdj', 'Bidang Preservasi Jalan dan Jembatan', 3),
(8, 'btpdjk', 'Bidang Tata Bangunan & Jalan Kontruksi', 4),
(9, 'bamdp', 'Bidang Air Minum dan PLP', 5),
(10, 'bsda', 'Bidang Sumber Daya Air', 6),
(11, 'btr', 'Bidang Tata Ruang', 7),
(12, 'sptjdj', 'Seksi Perencanaan Teknis Jalan & Jembatan', 2),
(13, 'sptpjdj', 'Seksi Perencanaan Teknis Preservasi Jalan & Jembatan', 3),
(14, 'spt', 'Seksi Perencanaan Teknis', 4),
(15, 'sam', 'Seksi Air Minum', 5),
(16, 'sptsda', 'Seksi Perencanaan Teknis Sumber Daya Air', 6),
(17, 'sptr', 'Seksi Pengaturan Tata Ruang', 7),
(18, 'spemjalndanjem', 'Seksi Pembangunan Jalan dan Jembatan', 2),
(19, 'sprejaldanjem', 'Seksi Preservasi Jalan & Jembatan', 3),
(20, 'sektabang', 'Seksi Tata Bangunan', 4),
(21, 'seksadandrain', 'Seksi Sanitasi & Drainase', 5),
(22, 'spemsda', 'Seksi Pembangunan Sumber Daya Air', 6),
(23, 'speldptt', 'Seksi Pelaksanaan dan Pembinaan Tata Ruang', 7),
(24, 'sekpejdj', 'Seksi Peningkatan Jalan & Jembatan', 2),
(25, 'sekpemjdj', 'Seksi Pemanfaatan Jalan & Jembatan', 3),
(26, 'sekjakon', 'Seksi Jasa Kontruksi', 4),
(27, 'seksadpp', 'Seksi Sarana dan Prasarana PLP', 5),
(28, 'sekodpsda', 'Seksi Operasi dan Pemeliharaan SDA', 6),
(29, 'sekpedpptr', 'Seksi Pengawasan dan Pengendalian Pemanfaatan Tata Ruang', 7),
(30, 'uptd', 'UPTD Alat Berat & Perbengkelan', 0),
(31, 'kasubag_tu', 'Kasubag Tata Usaha', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` bigint(20) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kategori`, `id_parent`, `aktif`, `terhapus`) VALUES
(1, 'Sains', 'sains', 0, 'Y', 'Y'),
(2, 'Kuliner', 'kuliner', 0, 'Y', 'Y'),
(3, 'Olah Raga', 'olah-raga', 0, 'Y', 'Y'),
(4, 'Pariwisata', 'pariwisata', 0, 'Y', 'Y'),
(5, 'Budaya', 'budaya', 0, 'N', 'Y'),
(6, 'Berita', 'berita', 0, 'Y', 'N'),
(7, 'pengumuman', 'pengumuman', 0, 'Y', 'N'),
(8, 'agenda', 'agenda', 0, 'Y', 'N'),
(9, 'Dinas tata ruang', 'dinas-tata-ruang', 0, 'Y', 'N'),
(10, 'Dinas sumber daya air', 'dinas-sumber-daya-air', 0, 'Y', 'N'),
(11, 'Dinas air minum dan plp', 'dinas-air-minum-dan-plp', 0, 'Y', 'N'),
(12, 'Dinas tata bangunan dan jasa konstruksi', 'dinas-tata-bangunan-dan-jasa-konstruksi', 0, 'Y', 'N'),
(13, 'Dinas pembangunan jalan jembatan', 'dinas-pembangunan-jalan-jembatan', 0, 'Y', 'N'),
(14, 'DInas preservasi jembatan jalan', 'dinas-preservasi-jembatan-jalan', 0, 'Y', 'N'),
(15, 'sekretariat', 'sekretariat', 0, 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id` bigint(20) NOT NULL,
  `nama_kategori` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id`, `nama_kategori`, `slug_kategori`, `aktif`, `terhapus`) VALUES
(1, 'Wedding', 'wedding', 'Y', 'Y'),
(2, 'Pre- wedding ', 'pre-wedding', 'Y', 'Y'),
(3, 'berita', 'berita', 'Y', 'N'),
(4, 'agenda', 'agenda', 'Y', 'N'),
(5, 'dinas tata ruang', 'dinas-tata-ruang', 'Y', 'N'),
(6, 'dinas sumber daya air', 'dinas-sumber-daya-air', 'Y', 'N'),
(7, 'dinas air minum dan plp', 'dinas-air-minum-dan-plp', 'Y', 'N'),
(8, 'dinas 	tata bangunan dan jasa konstruksi', 'dinas-tata-bangunan-dan-jasa-konstruksi', 'Y', 'N'),
(9, 'dinas pembangunan jalan jembatan', 'dinas-pembangunan-jalan-jembatan', 'Y', 'N'),
(10, 'dinas 	preservasi jembatan jalan', 'dinas-preservasi-jembatan-jalan', 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_ktp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `komentar_nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `komentar_tel` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `komentar_pesan` text COLLATE utf8_unicode_ci NOT NULL,
  `komentar_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `komentar_ktp`, `komentar_nama`, `komentar_tel`, `komentar_pesan`, `komentar_tanggal`) VALUES
(1, '2222', 'ads', '123123', 'asdasdasdasdasd', '2018-12-18 15:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_masuk`
--

CREATE TABLE `kontak_masuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontak_masuk`
--

INSERT INTO `kontak_masuk` (`id`, `nama`, `ktp`, `phone`, `pesan`, `tanggal`, `ip`, `dibaca`) VALUES
(1, 'adityads', '825863', '082371373347', 'tes kontak masuk', '2018-12-18 16:28:48', '', 'Y'),
(2, 'ads', '11123', '222', 'asd', '2018-12-18 17:12:00', '', 'N'),
(3, '1', '1', '555-666-0606', '1', '2019-04-11 18:33:48', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_code`, `menu_nama`, `menu_created`) VALUES
(1, 'horizontal', 'utama', '2016-04-14 02:12:24'),
(2, 'vertical', 'samping', '2016-04-14 02:12:24'),
(3, 'vertical2', 'tambahan 1', '2016-04-14 02:12:24'),
(4, 'vertical3', 'tambahan 2', '2016-04-14 02:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `menu_child`
--

CREATE TABLE `menu_child` (
  `menu_child_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `menu_child_parent` bigint(20) NOT NULL DEFAULT '0',
  `menu_child_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_target` enum('_self','_blank','_parent','_top') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `posisi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_child`
--

INSERT INTO `menu_child` (`menu_child_id`, `menu_id`, `menu_child_parent`, `menu_child_code`, `menu_child_nama`, `menu_child_url`, `menu_child_target`, `aktif`, `posisi`) VALUES
(6, 1, 0, 'home', 'Home', 'http://pupr.muaraenimkab.go.id', '_self', 'Y', 1),
(9, 1, 0, 'syarat-ketentuan', 'Berita', 'http://pupr.muaraenimkab.go.id/berita', '_self', 'Y', 15),
(12, 1, 0, 'about-us', 'Unit ', 'http://pupr.muaraenimkab.go.id/unit_kerja', '_self', 'Y', 7),
(13, 1, 0, 'privacy', 'Produk Hukum', 'http://pupr.muaraenimkab.go.id/produk-hukum', '_self', 'Y', 16),
(14, 1, 0, 'about-us', 'Data Infrastruktur', 'http://pupr.muaraenimkab.go.id/data-infrastruktur', '_self', 'Y', 17),
(15, 1, 0, 'home', 'Profil', '#', '_self', 'Y', 2),
(17, 1, 15, '', 'Visi Misi', 'http://pupr.muaraenimkab.go.id/page/1-visi-dan-misi', '_self', 'Y', 3),
(18, 1, 15, '', 'Dasar Hukum', 'http://pupr.muaraenimkab.go.id/page/6-dasar-hukum', '_self', 'Y', 4),
(19, 1, 15, '', 'Tugas dan Fungsi', 'http://pupr.muaraenimkab.go.id/page/2-tugas-dan-fungsi', '_self', 'Y', 5),
(20, 1, 15, '', 'Struktur Organisasi', 'http://pupr.muaraenimkab.go.id/struktur-organisasi', '_self', 'Y', 6),
(21, 1, 12, '', 'Bidang Pembangunan Jalan Dan Jembatan', 'http://pupr.muaraenimkab.go.id/bidang/3899-Bidang-Pembangunan-Jalan-Dan', '_self', 'Y', 9),
(22, 1, 12, '', 'Bidang Preservasi Jalan Dan Jembatan', 'http://pupr.muaraenimkab.go.id/bidang/4454-Bidang-Preservasi-Jalan-Dan', '_self', 'Y', 10),
(23, 1, 0, 'faq', 'Galeri', 'http://pupr.muaraenimkab.go.id/galeri', '_self', 'Y', 18),
(24, 1, 0, 'faq', 'Kontak', 'http://pupr.muaraenimkab.go.id/kontak', '_self', 'Y', 19),
(27, 1, 12, '', 'Bidang Tata Bangunan dan Jasa Konstruksi', 'http://pupr.muaraenimkab.go.id/bidang/3187-Bidang-Tata-Bangunan-dan-Jas', '_self', 'Y', 11),
(28, 1, 12, '', 'Bidang Air Minum dan Penyehatan Lingkungan Permukiman', 'http://pupr.muaraenimkab.go.id/bidang/2750-Bidang-Air-Minum-dan-Penyehatan-Lingkungan', '_self', 'Y', 12),
(29, 1, 12, '', 'Bidang Sumber Daya Air', 'http://pupr.muaraenimkab.go.id/bidang/7549-Bidang-Sumber-Daya-Air', '_self', 'Y', 13),
(30, 1, 12, '', 'Bidang Tata Ruang', 'http://pupr.muaraenimkab.go.id/bidang/7822-Bidang-Tata', '_self', 'Y', 14),
(31, 1, 12, '', 'Sekretariat', 'http://pupr.muaraenimkab.go.id/bidang/2783-', '_self', 'Y', 8),
(32, 1, 0, 'faq', 'FAQ', 'http://pupr.muaraenimkab.go.id/faq', '_self', 'N', 20);

-- --------------------------------------------------------

--
-- Table structure for table `news_ticker`
--

CREATE TABLE `news_ticker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `berita` varchar(700) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_posting` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_ticker`
--

INSERT INTO `news_ticker` (`id`, `berita`, `link`, `tanggal_posting`) VALUES
(1, 'volutpat felis, quis tristique ligula luctus vel. Sed nec mi eros. Integer augue enim, sollicitudin', '#link', '2016-03-22 04:18:22'),
(2, 'Fusce sapien arcu, molestie eget varius egestas, faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis.', '#kedua', '2016-03-22 04:19:12'),
(3, 'Aliquam nulla augue, porta non sagittis quis, accumsan vitae sem', '#ketiga', '2016-03-22 04:19:28'),
(4, 'ivamus vel ipsum ac augue sodales mollis euismod nec tellus. Fusce et augue rutrum nunc semper vehicula vel semper nisl.', '#empat', '2016-03-22 04:19:56'),
(5, 'Curabitur malesuada fermentum lacus vel accumsan. Duis ornare scelerisque nulla, ac pulvinar ligula tempus sit amet ', '#test', '2016-03-22 04:20:12'),
(6, 'Vivamus luctus mi eget lorem lobortis pharetra. Phasellus at tortor quam, a volutpat purus.', '#hai', '2016-03-22 04:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` bigint(20) NOT NULL,
  `page_judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_javascript` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `page_id_user` bigint(20) UNSIGNED NOT NULL,
  `page_id_edit` bigint(20) UNSIGNED NOT NULL,
  `page_created` datetime NOT NULL,
  `page_edited` datetime NOT NULL,
  `page_meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_judul`, `page_url`, `page_isi`, `page_foto`, `page_javascript`, `page_status`, `page_id_user`, `page_id_edit`, `page_created`, `page_edited`, `page_meta_keywords`, `page_meta_description`) VALUES
(1, 'Visi dan Misi', 'visi-dan-misi', '<p style=\"text-align: center; padding-left: 30px;\"><strong>\"TERWUJUDNYA INFRASTRUKTUR PEKERJAAN UMUM DAN PERUMAHAN RAKYAT YANG HANDAL</strong></p>\n<p style=\"text-align: center;\"><strong>DALAM MENDUKUNG INDONESIA YANG BERDAULAT, MANDIRI, DAN BERKEPRIBADIAN</strong></p>\n<p style=\"text-align: center;\"><strong>BERLANDASKAN GOTONG ROYONG\"</strong></p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: justify;\"> </p>\n<div class=\"row\">\n<div class=\"\">\n<div class=\"col-md-2\" style=\"padding-left: 30px;\"><img src=\"https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg\" width=\"150px\" height=\"180px\">\n<p style=\"text-align: center;\"><strong>Rudi Hartono</strong></p>\n<p style=\"text-align: center;\"><strong>NIP</strong> <strong> 099999</strong></p>\n<p style=\"text-align: center;\"><strong>Kepala Dinas PU</strong></p>\n<p style=\"text-align: center;\"><strong>Kab. Muara Enim</strong></p>\n</div>\n<div class=\"col-md-10\" style=\"text-align: justify;\">Misi Kementerian Pekerjaan Umum dan Perumahan Rakyat yang merupakan rumusan upaya yang akan dilaksanakan selama periode Renstra 2015 – 2019 dalam rangka mencapai visi serta mendukung upaya pencapaian target pembangunan nasional, berdasarkan mandat yang diemban oleh Kementerian Pekerjaan Umum dan Perumahan Rakyat sebagaimana yang tercantum di dalam Peraturan Pemerintah Nomor 165 Tahun 2014 tentang Penataan Tugas dan Fungsi Kabinet Kerja, amanat RPJMN tahap ketiga serta perubahan kondisi lingkungan strategis yang dinamis adalah sebagai berikut :<br><br></div>\n<div class=\"col-md-10\" style=\"text-align: justify;\">\n<ul style=\"list-style-type: square;\">\n<li>Mempercepat pembangunan infrastruktur sumberdaya air termasuk sumber daya maritim untuk mendukung ketahanan air, kedaulatan pangan, dan kedaulatan energi, guna menggerakkan sektor-sektor strategis ekonomi domestik dalam rangka kemandirian ekonomi  <br><br></li>\n<li>Mempercepat pembangunan infrastruktur jalan untuk mendukung konektivitas guna meningkatkan produktivitas, efisiensi, dan pelayanan sistem logistik nasional bagi penguatan daya saing bangsa di lingkup global yang berfokus pada keterpaduan konektivitas daratan dan maritim  <br><br></li>\n<li>Mempercepat pembangunan infrastruktur permukiman dan perumahan rakyat untuk mendukung layanan infrastruktur dasar yang layak dalam rangka mewujudkan kualitas hidup manusia Indonesia sejalan dengan prinsip ‘infrastruktur untuk semua’<br><br></li>\n<li>Mempercepat pembangunan infrastruktur pekerjaan umum dan perumahan rakyat secara terpadu dari pinggiran didukung industri konstruksi yang berkualitas untuk keseimbangan pembangunan antardaerah, terutama di kawasan tertinggal, kawasan perbatasan, dan kawasan perdesaan, dalam kerangka NKRI  <br><br></li>\n<li>Meningkatkan tata kelola sumber daya organisasi bidang pekerjaan umum dan perumahan rakyat yang meliputi sumber daya manusia, pengendalian dan pengawasan, kesekertariatan serta penelitian dan pengembangan untuk mendukung fungsi manajemen meliputi perencanaan yang terpadu, pengorganisasian yang efisien, pelaksanaan yang tepat, dan pengawasan yang ketat.</li>\n</ul>\n</div>\n</div>\n</div>\n<p> <br>  <br>  </p>', '', '', 'published', 1, 5, '2018-12-21 09:36:50', '0000-00-00 00:00:00', '', ''),
(2, 'Tugas dan Fungsi', 'tugas-dan-fungsi', '<div class=\"content\">\n<p>Sesuai dengan Peraturan Menteri PUPR Nomor 15/PRT/M/2015 tentang ORGANISASI DAN TATA KERJA KEMENTERIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT :</p>\n<p><br>Kementerian Pekerjaan Umum dan Perumahan Rakyat mempunyai tugas menyelenggarakan urusan pemerintahan di bidang pekerjaan umum dan perumahan rakyat untuk membantu Presiden dalam menyelenggarakan pemerintahan negara.</p>\n<p> </p>\n<p>Dalam melaksanakan tugas sebagaimana dimaksud di atas, Kementerian Pekerjaan Umum dan Perumahan Rakyat menyelenggarakan  fungsi: <br> </p>\n<ol type=\"a\">\n<li>perumusan, penetapan, dan pelaksanaan kebijakan di bidang pengelolaan sumber daya air, penyelenggaraan jalan, penyediaan perumahan dan pengembangan kawasan permukiman, pembiayaan perumahan, penataan bangunan gedung, sistem penyediaan air minum, sistem pengelolaan air limbah dan drainase lingkungan serta persampahan, dan pembinaan jasa konstruksi;</li>\n<li>koordinasi pelaksanaan tugas, pembinaan, dan pemberian dukungan administrasi kepada seluruh unsur organisasi di lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat;</li>\n<li>pengelolaan barang milik/kekayaan Negara yang menjadi tanggung jawab Kementerian Pekerjaan Umum dan Perumahan Rakyat;</li>\n<li>pengawasan atas pelaksanaan tugas di lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat;</li>\n<li>pelaksanaan bimbingan teknis dan supervisi atas pelaksanaan urusan Kementerian Pekerjaan Umum dan Perumahan Rakyat di daerah;</li>\n<li>pelaksanaan penyusunan kebijakan teknis dan strategi keterpaduan pengembangan infrastruktur pekerjaan umum dan perumahan rakyat;</li>\n<li>pelaksanaan penelitian dan pengembangan di bidang pekerjaan umum dan perumahan rakyat;</li>\n<li>pelaksanaan pengembangan sumber daya manusia di bidang pekerjaan umum dan perumahan rakyat; dan </li>\n<li>pelaksanaan dukungan yang bersifat substantif kepada seluruh unsur organisasi di lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat.</li>\n</ol>\n</div>', '', '', 'published', 1, 0, '2018-11-15 11:17:25', '0000-00-00 00:00:00', '', ''),
(3, 'Dinas PU', 'dinas-pu', '<div>\n<h2>Mengapa kita menggunakannya?</h2>\n<p>Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti \"Bagian isi disini, bagian isi disini\", sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat \"Lorem Ipsum\" akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)</p>\n</div>\n<p> </p>\n<div>\n<h2>Dari mana asalnya?</h2>\n<p>Tidak seperti anggapan banyak orang, Lorem Ipsum bukanlah teks-teks yang diacak. Ia berakar dari sebuah naskah sastra latin klasik dari era 45 sebelum masehi, hingga bisa dipastikan usianya telah mencapai lebih dari 2000 tahun. Richard McClintock, seorang professor Bahasa Latin dari Hampden-Sidney College di Virginia, mencoba mencari makna salah satu kata latin yang dianggap paling tidak jelas, yakni consectetur, yang diambil dari salah satu bagian Lorem Ipsum. Setelah ia mencari maknanya di di literatur klasik, ia mendapatkan sebuah sumber yang tidak bisa diragukan. Lorem Ipsum berasal dari bagian 1.10.32 dan 1.10.33 dari naskah \"de Finibus Bonorum et Malorum\" (Sisi Ekstrim dari Kebaikan dan Kejahatan) karya Cicero, yang ditulis pada tahun 45 sebelum masehi. BUku ini adalah risalah dari teori etika yang sangat terkenal pada masa Renaissance. Baris pertama dari Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", berasal dari sebuah baris di bagian 1.10.32.</p>\n<p>Bagian standar dari teks Lorem Ipsum yang digunakan sejak tahun 1500an kini di reproduksi kembali di bawah ini untuk mereka yang tertarik. Bagian 1.10.32 dan 1.10.33 dari \"de Finibus Bonorum et Malorum\" karya Cicero juga di reproduksi persis seperti bentuk aslinya, diikuti oleh versi bahasa Inggris yang berasal dari terjemahan tahun 1914 oleh H. Rackham.</p>\n</div>\n<div>\n<h2>Dari mana saya bisa mendapatkannya?</h2>\n<p>Ada banyak variasi tulisan Lorem Ipsum yang tersedia, tapi kebanyakan sudah mengalami perubahan bentuk, entah karena unsur humor atau kalimat yang diacak hingga nampak sangat tidak masuk akal. Jika anda ingin menggunakan tulisan Lorem Ipsum, anda harus yakin tidak ada bagian yang memalukan yang tersembunyi di tengah naskah tersebut. Semua generator Lorem Ipsum di internet cenderung untuk mengulang bagian-bagian tertentu. Karena itu inilah generator pertama yang sebenarnya di internet. Ia menggunakan kamus perbendaharaan yang terdiri dari 200 kata Latin, yang digabung dengan banyak contoh struktur kalimat untuk menghasilkan Lorem Ipsun yang nampak masuk akal. Karena itu Lorem Ipsun yang dihasilkan akan selalu bebas dari pengulangan, unsur humor yang sengaja dimasukkan, kata yang tidak sesuai dengan karakteristiknya dan lain sebagainya.</p>\n</div>', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/graph.jpg', '', 'published', 1, 0, '2018-11-26 12:25:41', '0000-00-00 00:00:00', '', ''),
(4, 'page page', 'page-page', '<p>suwara suapja</p>', 'http://localhost/dinaspu/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', '', 'published', 1, 0, '2018-11-28 09:42:53', '0000-00-00 00:00:00', 'meta ', 'meta'),
(5, 'regerg', 'regerg', '<p>regergre</p>', '', '', 'published', 5, 0, '2018-12-05 13:26:23', '0000-00-00 00:00:00', 'rger', 'greger'),
(6, 'Dasar Hukum', 'dasar-hukum', '<p style=\"text-align: center;\"><strong>DASAR HUKUM<br></strong><strong>DINAS PEKERJAAN UMUM DAN PENATAAN RUANG</strong></p>\n<p style=\"text-align: center;\"><strong>KABUPATEN MUARA ENIM</strong></p>\n<hr>\n<p> </p>\n<p style=\"text-align: center;\"><strong>UUD 23 2014</strong></p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>PP18 2016</strong></p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>PerBup 31 2016</strong><br><strong>Pasal 51</strong></p>\n<p style=\"text-align: left;\">(1) Dinas Pekerjaan Umum dan Penataan Ruang merupakan unsur pelaksana urusan pemerintahan bidang pekerjaan umum dan penataan ruangyang menjadi kewenangan daerah.</p>\n<p style=\"text-align: left;\">(2) Dinas Pekerjaan Umum dan Penataan Ruang dipimpin oleh Kepala Dinas yang berkedudukan di bawah dan bertanggung jawab kepada Bupati melalui Sekretaris Daerah.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Pasal 52</strong></p>\n<p style=\"text-align: left;\">Dinas Pekerjaan Umum dan Penataan Ruang mempunyai tugas membantu Bupati melaksanakan urusan pemerintahan bidang pekerjaan umum dan penataan ruangyang menjadi kewenangan daerah dan tugas pembantuan.</p>\n<p style=\"text-align: center;\"><strong>Pasal 53</strong></p>\n<p style=\"text-align: left;\">Untuk melaksanakan tugas sebagaimana tersebut dalam Pasal 52, Dinas Pekerjaan Umum dan Penataan Ruang mempunyai fungsi :<br>a. perumusan kebijakan teknis di bidang pekerjaan umum dan tata ruang;<br>b. penyelenggaraan urusan pemerintahan dan pelayanan umum di bidang pekerjaan umum dan tata ruang;<br>c. pelaksanaan koordinasi penyelenggaraan urusan di bidang pekerjaan umum dan tata ruang;<br>d. pembinaan dan pelaksanaan tugas di bidang pekerjaan umum dan tata ruang;<br>e. pengelolaan kesekretariatan meliputi umum dan kepegawain, perencanaan, dan keuangan;<br>f. pelaksanaan pengawasan, evaluasi, pengendalian dan pelaporan di bidang pekerjaan umum dan tata ruang;<br>g. pelaksanaan tugas lain yang diberikan oleh bupati sesuai dengan tugas dan fungsinya.</p>\n<p style=\"text-align: center;\"><strong>Pasal 54</strong></p>\n<p style=\"text-align: left;\">(1) Struktur Organisasi Dinas Pekerjaan Umum dan Penataan Ruang, terdiri atas :</p>\n<ol style=\"list-style-type: lower-alpha;\">\n<li>Kepala Dinas ;</li>\n<li>Sekretariat, membawahi:\n<ol>\n<li>Sub Bagian Umum Dan Kepegawaian;</li>\n<li>Sub Bagian Perencanaan;</li>\n<li>Sub Bagian Keuangan.</li>\n</ol>\n</li>\n<li>Bidang Pembangunan Jalan Dan Jembatan, membawahi;\n<ol>\n<li>Seksi Perencanaan Teknis Jalan Dan Jembatan ;</li>\n<li>Seksi Pembangunan Jalan Dan Jembatan;</li>\n<li>Seksi Peningkatan Jalan Dan Jembatan.</li>\n</ol>\n</li>\n<li>Bidang Preservasi Jalan dan Jembatan, membawahi :\n<ol>\n<li>Seksi Perencanaan Teknis Preservasi Jalan Dan Jembatan;</li>\n<li>Seksi Preservasi Jalan Dan Jembatan;</li>\n<li>Seksi Pemanfaatan Jalan Dan Jembatan.</li>\n</ol>\n</li>\n<li>Bidang Tata Bangunan Dan Jasa Konstruksi, membawahi :\n<ol>\n<li>Seksi Perencanaan Teknis;</li>\n<li>Seksi Tata Bangunan;</li>\n<li>Seksi Jasa Konstruksi.</li>\n</ol>\n</li>\n<li>Bidang Air Minum Dan Penyehatan Lingkungan Permukiman membawahi :\n<ol>\n<li>Seksi Air Minum;</li>\n<li>Seksi Sanitasi Dan Drainase;</li>\n<li>Seksi Sarana Dan Prasarana Penyehatan Lingkungan Permukiman.</li>\n</ol>\n</li>\n<li>Bidang Sumber Daya Air, membawahi :\n<ol>\n<li>Seksi Perencanaan Teknis Sumber Daya Air;</li>\n<li>Seksi Pembangunan Sumber Daya Air ;</li>\n<li>Seksi Operasi dan Pemeliharaan Sumber Daya Air.</li>\n</ol>\n</li>\n<li>Bidang Tata Ruang, membawahi :\n<ol>\n<li>Seksi Pengaturan Tata Ruang ;</li>\n<li>Seksi Pelaksanaan dan Pembinaan Tata Ruang;</li>\n<li>Seksi Pengawasan dan Pengendalian Pemanfaatan Tata Ruang.</li>\n</ol>\n</li>\n<li>Unit Pelaksana Teknis Dinas;</li>\n<li>Kelompok Jabatan Fungsional</li>\n</ol>\n<p style=\"text-align: left;\">(2) Bagan struktur organisasi Dinas Pekerjaan Umum dan Penataan Ruang sebagaimana tercantum pada Lampiran XIII Peraturan Bupati ini.</p>', '', '', 'published', 5, 5, '2018-12-24 11:41:10', '0000-00-00 00:00:00', '', ''),
(7, 'Struktur Organisasi', 'struktur-organisasi', '<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: left;\"> </p>', 'http://pupr.muaraenimkab.go.id/an-component/media/upload-gambar-pendukung/graph.jpg', '', 'published', 5, 5, '2018-12-14 11:50:24', '0000-00-00 00:00:00', '', ''),
(8, 'Kontak', 'kontak', '<p style=\"text-align: center;\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d995.4256638888642!2d103.77722515982957!3d-3.6550789666388654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e39f6357ba7c49b%3A0x56c40cc246bc9212!2sDinas+Bina+Marga!5e0!3m2!1sid!2sid!4v1544771457196\" width=\"700\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\n<p style=\"text-align: center;\"> </p>\n<h5 style=\"text-align: center;\"> </h5>\n<p style=\"padding-left: 30px;\"><strong>Dinas Pekerjaan Umum &amp; Penataan Ruangan Kab. Muara Enim</strong></p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Jl. Mayor Tjik Agus Kiemas(Islamic Center),</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Kec. Muara Enim, Kab. Muara Enim,</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Sumatera Selatan - 31311</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\">Telp: (0734) 421099</p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\"> </p>\n<p class=\"padding-left:30px;\" style=\"padding-left: 30px;\"> </p>\n<form action=\"nextpage\" method=\"post\">\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>No. KTP</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'ktp\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Nama</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'nama\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Tanggal</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo date(\'d-m-Y\',strtotime($pesan[\'tanggal\'])) ?&gt;\"></div>\n</div>\n<div class=\"col-md-6\">\n<div class=\"form-group\"><label>Telepon</label> <input id=\"judul-pesan\" class=\"form-control\" readonly=\"readonly\" type=\"text\" value=\"&lt;?php echo $pesan[\'phone\'] ?&gt;\"></div>\n</div>\n<div class=\"col-md-12\">\n<div class=\"form-group\"><label>Pesan</label> <textarea class=\"form-control\" readonly=\"readonly\">&lt;?php echo $pesan[\'pesan\'] ?&gt;</textarea></div>\n</div>\n<div class=\"col-md-12\"><input class=\"form-control\" type=\"submit\" value=\"Submit\"></div>\n</form>', '', '', 'published', 5, 5, '2018-12-24 11:35:20', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pencarian_artikel`
--

CREATE TABLE `pencarian_artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clean_keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pencarian_artikel`
--

INSERT INTO `pencarian_artikel` (`id`, `keyword`, `clean_keyword`, `tanggal`, `ip`) VALUES
(1, 'tes', 'tes', '2018-12-13 11:10:25', '158.140.173.22'),
(2, 'tes', 'tes', '2018-12-13 11:11:05', '158.140.165.36');

-- --------------------------------------------------------

--
-- Table structure for table `pihak_ketiga`
--

CREATE TABLE `pihak_ketiga` (
  `id` int(11) NOT NULL,
  `recaptcha_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_secret_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script_google_analytics` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disqus_unique_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pihak_ketiga`
--

INSERT INTO `pihak_ketiga` (`id`, `recaptcha_key`, `recaptcha_secret_key`, `script_google_analytics`, `disqus_unique_name`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk_hukum`
--

CREATE TABLE `produk_hukum` (
  `id_produk_hukum` varchar(5) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  `file` text NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `keterangan` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_hukum`
--

INSERT INTO `produk_hukum` (`id_produk_hukum`, `nama_file`, `file`, `tahun`, `keterangan`, `date`) VALUES
('99776', 'PERATURAN BUPATI MUARA ENIM', 'uploads/produkhukum/PERBUP_SUSUNAN_ORGANISASI,_TRUKTUR_DAN_FUNG_DINAS_DAN_BADAN_DAERAH_2016_FINAL.docx', '2016', 'SUSUNAN, KEDUDUKAN, TUGAS FUNGSI DAN STRUKTUR  ORGANISASI INSPEKTORAT, SATUAN POLISI PAMONG PRAJA,  DINAS, BADAN, KECAMATAN DAN KELURAHAN \r\n', '2018-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `kontak_id` int(11) NOT NULL,
  `reply_isi` text COLLATE utf8_unicode_ci NOT NULL,
  `reply_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`reply_id`, `kontak_id`, `reply_isi`, `reply_tanggal`) VALUES
(1, 1, 'tess1', '2018-12-18 17:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_email`
--

CREATE TABLE `smtp_email` (
  `id` int(11) NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` bigint(20) NOT NULL DEFAULT '25',
  `ssl_connection` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_email`
--

INSERT INTO `smtp_email` (`id`, `host`, `user`, `password`, `nama`, `port`, `ssl_connection`) VALUES
(1, '', '', '', '', 26, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `so_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL,
  `so_nip` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `so_nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'strukturfoto.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`so_id`, `jabatan_id`, `so_nip`, `so_nama`, `so_foto`) VALUES
(8, 1, '196907101997031009', 'H. Ramlan Suryadi, ST, M. Si.', 'avatar10.png'),
(9, 2, '196802061989091001', 'Idris, ST', 'avatar10.png'),
(10, 3, '198303292009011010', 'Hasbullah, ST', 'avatar10.png'),
(11, 4, '197408011996031001', 'Agus Rahman, ST', 'avatar10.png'),
(12, 5, '197007252008011001', 'Firmansyah Hamid, SE', 'avatar10.png'),
(13, 6, '197810092009011003', 'A. Elfin. Mz Muchtar, ST.,MM.', 'avatar10.png'),
(14, 7, '196406161990031007', 'Ilham Yaholi, ST, M. Si.', 'avatar10.png'),
(15, 8, '-', '-', 'avatar10.png'),
(16, 9, '196601061989032002', 'Hj. Elly Yuliar, ST', 'avatar10.png'),
(17, 10, '197310262005011004', 'Hermin Eko Purwanto, ST', 'avatar10.png'),
(18, 11, '197609122005011009', 'Ibu Hajar, ST, MM.', 'avatar10.png'),
(19, 12, '197605032007011004', 'Arie Jonathan M,ST', 'avatar10.png'),
(20, 13, '196506261987011001', 'Bambang Hermanto', 'avatar10.png'),
(21, 14, '198501282006041001', 'Ilham Sudiono, ST.MM', 'avatar10.png'),
(22, 15, '198805052014031001', 'Andryan W., ST.,M.Ec.Dev', 'avatar10.png'),
(23, 16, '197704222010011011', 'Aprisandie, ST', 'avatar10.png'),
(24, 17, '197607062005011012', 'Sobirin, SST', 'avatar10.png'),
(25, 18, '197809282005011006', 'Yusrizal, SST, M.Eng.', 'avatar10.png'),
(26, 19, '197606132009011017', 'Acandika, ST.', 'avatar10.png'),
(27, 20, '198107242009031001', 'Rizqi Ramdheni, ST', 'avatar10.png'),
(28, 21, '196802131990031006', 'Elvison Fikri, SST.', 'avatar10.png'),
(29, 22, '196610221986031003', 'Jumadil Akhyar, ST', 'avatar10.png'),
(30, 23, '197501122007011007', 'Erwin Elizar, ST, MM.', 'avatar10.png'),
(31, 24, '198206282011011003', 'Faisal Ramon, ST', 'avatar10.png'),
(32, 25, '197604121997031003', 'Mahmudin, ST', 'avatar10.png'),
(33, 26, '197606052011011005', 'Niko Aleksandra, SH', 'avatar10.png'),
(34, 27, '197411202005011006', 'Nopiyansah, ST, M. Si.', 'avatar10.png'),
(35, 28, '196410191986031006', 'Miliar', 'avatar10.png'),
(36, 29, '197510102006042021', 'Idiana, ST, MT.', 'avatar10.png'),
(37, 30, '196308131985031006', 'Yose Rizal', 'avatar10.png'),
(38, 31, '198105022011011005', 'Feri Eko Saputra, ST', 'avatar10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `nama_tag` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_posting` bigint(20) NOT NULL,
  `user_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id_tag`, `nama_tag`, `slug_tag`, `user_posting`, `user_update`) VALUES
(6, 'dinaspu', 'dinaspu', 1, 0),
(8, 'preservasi jembatan jalan', 'preservasi-jembatan-jalan', 1, 0),
(9, 'pembangunan jalan jembatan', 'pembangunan-jalan-jembatan', 1, 0),
(10, 'tata bangunan dan jasa konstru', 'tata-bangunan-dan-jasa-konstruksi', 1, 0),
(11, 'air minum dan plp', 'air-minum-dan-plp', 1, 0),
(12, 'sumber daya air', 'sumber-daya-air', 1, 0),
(13, 'tata ruang', 'tata-ruang', 1, 0),
(14, 'sekretariat', 'sekretariat', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_tema` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versi` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screenshot` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id`, `nama_tema`, `versi`, `aktif`, `author`, `web`, `screenshot`) VALUES
(22, 'ando', '1.0', 'Y', 'Ando Poluan', 'http://www.sandro.id', 'screenshot.jpg'),
(23, 'custom-dinaspu', '1.0', 'N', '', '', 'screenshot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(11) UNSIGNED NOT NULL,
  `name_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_user` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_user` int(11) NOT NULL,
  `avatar_user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_user` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `terdaftar` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name_user`, `nama_lengkap`, `email`, `password_user`, `level_user`, `avatar_user`, `status_user`, `terhapus`, `terdaftar`) VALUES
(1, 'admin123', 'Admin Dinas PU ', '', 'd138768d3b5eca407f0dd579c5ca3767', 1, 'logo_dinaspupr1.png', 'Y', 'N', '0000-00-00'),
(2, 'budi', 'budi', 'budi@gmail.com', '750462c088103c9632e5a746a4b0dba5', 0, 'logo_dinaspupr.png', 'Y', 'N', '2018-11-15'),
(3, 'budi123', 'budi', 'budi@gmail.com', 'f7789394a7145c5ae84c119d31c168c0', 0, 'default.jpg', 'Y', 'Y', '2018-12-03'),
(4, 'budi321', 'budi baru', 'budi@yahoo.com', '4deefb36c7eaccd3aaa606f44b5311d7', 0, 'default.jpg', 'Y', 'N', '2018-12-03'),
(5, 'admin321', 'admin admin', 'admin321@gmail.cm', '7be771571e16277e200354af77253ecb', 1, 'default.jpg', 'Y', 'N', '2018-12-03'),
(6, 'adityads', 'adityads', 'adityads@pupr.com', '202cb962ac59075b964b07152d234b70', 1, 'default.jpg', 'Y', 'N', '2018-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitor_id` int(11) NOT NULL,
  `visitor_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `visitor_tanggal` date NOT NULL,
  `visitor_perangkat` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `visitor_hits` int(11) NOT NULL,
  `visitor_online` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`visitor_id`, `visitor_ip`, `visitor_tanggal`, `visitor_perangkat`, `visitor_hits`, `visitor_online`) VALUES
(7, '158.140.173.22', '2018-12-02', 'Chrome', 1, 1544593844),
(8, '216.162.47.73', '2018-12-11', 'Chrome', 1, 1544592577),
(9, '158.140.165.36', '2018-11-12', 'Chrome', 1, 1544593687),
(10, '72.35.247.140', '2018-12-12', 'Chrome', 1, 1544593936),
(11, '158.140.173.22', '2018-12-12', 'Firefox', 1, 1544638662),
(12, '182.1.20.77', '2018-12-12', 'Firefox', 1, 1544595307),
(13, '182.1.6.226', '2018-12-12', 'Firefox', 1, 1544595373),
(14, '182.1.4.93', '2018-12-12', 'Firefox', 1, 1544595381),
(15, '182.1.5.39', '2018-12-12', 'Firefox', 1, 1544595386),
(16, '182.1.22.186', '2018-12-12', 'Firefox', 1, 1544595392),
(17, '114.125.31.11', '2018-12-12', 'Chrome', 1, 1544605072),
(18, '114.125.31.100', '2018-12-12', 'Chrome', 1, 1544605075),
(19, '114.125.30.10', '2018-12-12', 'Chrome', 1, 1544605068),
(20, '158.140.165.36', '2018-12-12', 'Firefox', 1, 1544645700),
(21, '158.140.173.22', '2018-12-13', 'Firefox', 1, 1544740370),
(22, '158.140.165.36', '2018-12-13', 'Chrome', 1, 1544740481),
(23, '158.140.165.122', '2018-12-13', 'Chrome', 1, 1544677850),
(24, '158.140.165.70', '2018-12-13', 'Firefox', 1, 1544680823),
(25, '158.140.173.22', '2018-12-14', 'Chrome', 1, 1544778881),
(26, '115.178.207.171', '2018-12-14', 'Firefox', 1, 1544756203),
(27, '158.140.165.36', '2018-12-14', 'Chrome', 1, 1544778605),
(28, '182.1.19.40', '2018-12-14', 'Safari', 1, 1544756968),
(29, '114.125.13.49', '2018-12-14', 'Firefox', 1, 1544770909),
(30, '114.125.29.33', '2018-12-14', 'Firefox', 1, 1544761451),
(31, '182.1.22.159', '2018-12-14', 'Safari', 1, 1544763497),
(32, '182.1.7.49', '2018-12-14', 'Safari', 1, 1544763511),
(33, '158.140.173.65', '2018-12-14', 'Chrome', 1, 1544766174),
(34, '114.125.29.176', '2018-12-14', 'Safari', 1, 1544766503),
(35, '182.1.16.92', '2018-12-14', 'Safari', 1, 1544767549),
(36, '182.1.3.22', '2018-12-14', 'Safari', 1, 1544769755),
(37, '182.1.20.144', '2018-12-14', 'Safari', 1, 1544770079),
(38, '110.137.162.154', '2018-12-14', 'Chrome', 1, 1544773436),
(39, '114.125.15.62', '2018-12-14', 'Safari', 1, 1544771558),
(40, '64.233.173.134', '2018-12-14', 'Chrome', 1, 1544774539),
(41, '114.125.228.218', '2018-12-14', 'Chrome', 1, 1544774070),
(42, '180.242.45.30', '2018-12-14', 'Chrome', 1, 1544778500),
(43, '115.178.220.197', '2018-12-14', 'Firefox', 1, 1544784859),
(44, '158.140.165.36', '2018-12-15', 'Firefox', 1, 1544875592),
(45, '180.254.167.0', '2018-12-15', 'Chrome', 1, 1544863698),
(46, '158.140.173.22', '2018-12-15', 'Firefox', 1, 1544874623),
(47, '158.140.165.36', '2018-12-16', 'Firefox', 1, 1544935711),
(48, '158.140.173.22', '2018-12-18', 'Chrome', 1, 1545123833),
(49, '158.140.165.36', '2018-12-18', 'Chrome', 1, 1545155306),
(50, '158.140.173.22', '2018-12-19', 'Firefox', 1, 1545202304),
(51, '158.140.165.36', '2018-12-19', 'Chrome', 1, 1545200174),
(52, '158.140.173.22', '2018-12-20', 'Chrome', 1, 1545291059),
(53, '158.140.165.36', '2018-12-20', 'Chrome', 1, 1545347428),
(54, '158.140.173.22', '2018-12-21', 'Chrome', 1, 1545358704),
(55, '158.140.165.36', '2018-12-21', 'Chrome', 1, 1545361470),
(56, '158.140.173.22', '2018-12-23', 'Chrome', 1, 1545552280),
(57, '158.140.165.36', '2018-12-23', 'Firefox', 1, 1545566520),
(58, '158.140.173.22', '2018-12-24', 'Chrome', 1, 1545639229),
(59, '158.140.165.36', '2018-12-24', 'Firefox', 1, 1545630630),
(60, '158.140.173.85', '2018-12-24', 'Firefox', 1, 1545624978),
(61, '158.140.165.36', '2018-12-25', 'Chrome', 1, 1545705061),
(62, '213.180.203.47', '2018-12-26', 'YandexBot', 1, 1545847471),
(63, '158.140.173.22', '2018-12-27', 'Chrome', 1, 1545917934),
(64, '180.244.147.30', '2018-12-27', 'Firefox', 1, 1545917897),
(65, '87.250.233.120', '2018-12-27', 'YandexBot', 1, 1545912268),
(66, '158.140.173.22', '2018-12-28', 'Chrome', 1, 1545965119),
(67, '158.140.173.22', '2018-12-29', 'Chrome', 1, 1546058487),
(68, '36.76.235.170', '2018-12-29', 'Firefox', 1, 1546096041),
(69, '36.77.133.222', '2018-12-31', 'Firefox', 1, 1546239704),
(70, '158.140.165.36', '2019-01-02', 'Chrome', 1, 1546445890),
(71, '158.140.187.203', '2019-01-02', 'Chrome', 1, 1546448895),
(72, '114.125.228.205', '2019-01-03', 'Chrome', 1, 1546506244),
(73, '36.84.228.166', '2019-01-03', 'Firefox', 1, 1546521726),
(74, '100.27.3.103', '2019-01-04', 'Chrome', 1, 1546615027),
(75, '165.227.126.154', '2019-01-06', 'Mozilla', 1, 1546791795),
(76, '165.227.182.114', '2019-01-06', 'Mozilla', 1, 1546792956),
(77, '159.203.174.228', '2019-01-06', 'Mozilla', 1, 1546796241),
(78, '36.84.69.22', '2019-01-08', 'Chrome', 1, 1546908198),
(79, '64.233.173.156', '2019-01-09', 'Chrome', 1, 1547033838),
(80, '64.233.173.157', '2019-01-09', 'Chrome', 1, 1547033836),
(81, '64.233.173.156', '2019-01-13', 'Chrome', 1, 1547368590),
(82, '36.69.51.73', '2019-01-14', 'Chrome', 1, 1547427539),
(83, '209.17.97.2', '2019-01-15', 'Mozilla', 1, 1547515492),
(84, '103.102.146.2', '2019-01-15', 'Firefox', 1, 1547518197),
(85, '18.144.13.227', '2019-01-17', 'Chrome', 1, 1547719906),
(86, '50.112.90.211', '2019-01-17', 'Chrome', 1, 1547748976),
(87, '209.17.97.58', '2019-01-18', 'Mozilla', 1, 1547845010),
(88, '54.186.14.35', '2019-01-18', 'Chrome', 1, 1547848332),
(89, '209.17.97.18', '2019-01-21', 'Mozilla', 1, 1548094470),
(90, '209.17.96.218', '2019-01-22', 'Mozilla', 1, 1548121775),
(91, '209.17.97.114', '2019-01-22', 'Mozilla', 1, 1548153927),
(92, '158.140.187.251', '2019-01-23', 'Chrome', 1, 1548214847),
(93, '171.67.70.45', '2019-01-23', 'Mozilla', 1, 1548228696),
(94, '171.67.70.48', '2019-01-23', 'Mozilla', 1, 1548231658),
(95, '171.67.70.60', '2019-01-24', 'Mozilla', 1, 1548291185),
(96, '158.140.187.227', '2019-01-24', 'Chrome', 1, 1548293062),
(97, '202.77.98.186', '2019-01-24', 'Chrome', 1, 1548293535),
(98, '171.67.70.48', '2019-01-24', 'Mozilla', 1, 1548295372),
(99, '209.17.96.42', '2019-01-25', 'Mozilla', 1, 1548445544),
(100, '68.183.154.31', '2019-02-01', 'Mozilla', 1, 1548979454),
(101, '167.99.53.29', '2019-02-01', 'Mozilla', 1, 1549006258),
(102, '209.17.97.50', '2019-02-02', 'Mozilla', 1, 1549088405),
(103, '209.17.96.18', '2019-02-04', 'Mozilla', 1, 1549311541),
(104, '165.227.79.62', '2019-02-05', 'Mozilla', 1, 1549327631),
(105, '68.183.146.66', '2019-02-05', 'Mozilla', 1, 1549327676),
(106, '159.203.123.211', '2019-02-05', 'Mozilla', 1, 1549334316),
(107, '209.17.97.82', '2019-02-05', 'Mozilla', 1, 1549371099),
(108, '66.249.75.94', '2019-02-07', 'Googlebot', 1, 1549519808),
(109, '66.249.75.92', '2019-02-07', 'Googlebot', 1, 1549519816),
(110, '36.90.48.16', '2019-02-07', 'Firefox', 1, 1549525767),
(111, '103.213.130.127', '2019-02-08', 'Safari', 1, 1549586561),
(112, '66.249.71.156', '2019-02-08', 'Googlebot', 1, 1549601250),
(113, '66.249.71.157', '2019-02-10', 'Googlebot', 1, 1549787377),
(114, '118.97.169.170', '2019-02-11', 'Chrome', 1, 1549852059),
(115, '66.249.64.221', '2019-02-12', 'Googlebot', 1, 1549941081),
(116, '112.215.175.17', '2019-02-12', 'Chrome', 1, 1549947886),
(117, '36.84.69.29', '2019-02-12', 'Chrome', 1, 1549967812),
(118, '182.1.62.137', '2019-02-13', 'Safari', 1, 1550021011),
(119, '182.1.60.88', '2019-02-13', 'Safari', 1, 1550021044),
(120, '182.1.63.165', '2019-02-13', 'Safari', 1, 1550021045),
(121, '66.249.79.125', '2019-02-13', 'Googlebot', 1, 1550087868),
(122, '182.1.60.181', '2019-02-14', 'Chrome', 1, 1550111735),
(123, '182.1.63.149', '2019-02-14', 'Chrome', 1, 1550111749),
(124, '182.1.46.52', '2019-02-14', 'Chrome', 1, 1550112903),
(125, '66.249.69.89', '2019-02-17', 'Googlebot', 1, 1550426709),
(126, '158.140.187.255', '2019-02-18', 'Mozilla', 1, 1550485133),
(127, '158.140.187.214', '2019-02-19', 'Chrome', 1, 1550536619),
(128, '66.249.79.248', '2019-02-19', 'Googlebot', 1, 1550574118),
(129, '112.78.166.19', '2019-02-20', 'Chrome', 1, 1550637469),
(130, '66.249.71.149', '2019-02-22', 'Googlebot', 1, 1550825556),
(131, '66.249.71.151', '2019-02-23', 'Googlebot', 1, 1550909805),
(132, '198.27.70.45', '2019-02-24', 'Firefox', 1, 1550988201),
(133, '66.249.71.147', '2019-02-25', 'Googlebot', 1, 1551062904),
(134, '185.249.197.229', '2019-02-26', 'Other', 1, 1551163260),
(135, '64.233.173.151', '2019-02-27', 'Chrome', 1, 1551230736),
(136, '158.140.187.252', '2019-02-27', 'Mozilla', 1, 1551295284),
(137, '104.222.45.120', '2019-02-28', 'Chrome', 1, 1551392612),
(138, '23.27.152.135', '2019-02-28', 'Chrome', 1, 1551392638),
(139, '38.130.163.95', '2019-02-28', 'Chrome', 1, 1551392653),
(140, '147.135.254.225', '2019-02-28', 'Chrome', 1, 1551393064),
(141, '66.249.65.111', '2019-02-28', 'Googlebot', 1, 1551395369),
(142, '66.249.79.109', '2019-03-02', 'Googlebot', 1, 1551548891),
(143, '66.249.69.45', '2019-03-03', 'Googlebot', 1, 1551639770),
(144, '34.241.68.51', '2019-03-04', 'Chrome', 1, 1551709024),
(145, '142.93.182.137', '2019-03-05', 'Mozilla', 1, 1551751067),
(146, '134.209.36.10', '2019-03-05', 'Mozilla', 1, 1551751454),
(147, '134.209.38.148', '2019-03-05', 'Mozilla', 1, 1551752142),
(148, '18.232.107.185', '2019-03-05', 'Chrome', 1, 1551764444),
(149, '100.26.159.136', '2019-03-05', 'Chrome', 1, 1551792213),
(150, '134.209.32.58', '2019-03-05', 'Mozilla', 1, 1551794448),
(151, '134.209.46.173', '2019-03-05', 'Mozilla', 1, 1551796756),
(152, '134.209.44.240', '2019-03-05', 'Mozilla', 1, 1551798733),
(153, '66.249.71.151', '2019-03-06', 'Googlebot', 1, 1551873449),
(154, '103.76.23.115', '2019-03-08', 'Chrome', 1, 1552015033),
(155, '202.80.217.222', '2019-03-08', 'Chrome', 1, 1552032526),
(156, '64.233.173.149', '2019-03-08', 'Chrome', 1, 1552035218),
(157, '66.249.64.207', '2019-03-08', 'Googlebot', 1, 1552036402),
(158, '66.249.64.205', '2019-03-08', 'Googlebot', 1, 1552054977),
(159, '158.140.187.214', '2019-03-08', 'Chrome', 1, 1552064213),
(160, '34.73.236.160', '2019-03-09', 'Firefox', 1, 1552107688),
(161, '185.249.197.229', '2019-03-09', 'Other', 1, 1552130208),
(162, '37.59.55.45', '2019-03-09', 'Firefox', 1, 1552149637),
(163, '64.233.173.150', '2019-03-11', 'Chrome', 1, 1552294146),
(164, '203.30.236.121', '2019-03-11', 'Chrome', 1, 1552295723),
(165, '66.249.66.91', '2019-03-11', 'Googlebot', 1, 1552346937),
(166, '209.17.97.66', '2019-03-12', 'Mozilla', 1, 1552351110),
(167, '209.17.96.66', '2019-03-12', 'Mozilla', 1, 1552354313),
(168, '139.194.90.137', '2019-03-12', 'Chrome', 1, 1552363897),
(169, '66.249.66.93', '2019-03-12', 'Googlebot', 1, 1552371202),
(170, '140.213.50.49', '2019-03-12', 'Chrome', 1, 1552411525),
(171, '64.233.173.143', '2019-03-13', 'Chrome', 1, 1552445170),
(172, '66.102.6.170', '2019-03-13', 'Chrome', 1, 1552473314),
(173, '141.0.8.232', '2019-03-13', 'Opera', 1, 1552475320),
(174, '66.249.71.149', '2019-03-13', 'Googlebot', 1, 1552520194),
(175, '112.215.173.71', '2019-03-14', 'Safari', 1, 1552541854),
(176, '192.99.35.149', '2019-03-14', 'Firefox', 1, 1552557491),
(177, '192.99.15.55', '2019-03-14', 'Firefox', 1, 1552559186),
(178, '209.17.97.58', '2019-03-15', 'Mozilla', 1, 1552610140),
(179, '209.17.96.66', '2019-03-15', 'Mozilla', 1, 1552613846),
(180, '209.17.97.50', '2019-03-15', 'Mozilla', 1, 1552618585),
(181, '209.17.96.58', '2019-03-15', 'Mozilla', 1, 1552662327),
(182, '158.140.187.209', '2019-03-15', 'Chrome', 1, 1552668217),
(183, '158.140.187.209', '2019-03-16', 'Chrome', 1, 1552721162),
(184, '66.249.64.207', '2019-03-17', 'Googlebot', 1, 1552857161),
(185, '209.17.97.18', '2019-03-18', 'Mozilla', 1, 1552931983),
(186, '209.17.96.218', '2019-03-19', 'Mozilla', 1, 1552979882),
(187, '94.23.208.210', '2019-03-19', 'Firefox', 1, 1553009261),
(188, '66.249.66.91', '2019-03-19', 'Googlebot', 1, 1553014197),
(189, '209.17.97.18', '2019-03-20', 'Mozilla', 1, 1553042436),
(190, '64.233.173.151', '2019-03-20', 'Chrome', 1, 1553067844),
(191, '209.17.97.90', '2019-03-20', 'Mozilla', 1, 1553095694),
(192, '209.17.97.106', '2019-03-20', 'Mozilla', 1, 1553096274),
(193, '192.99.15.139', '2019-03-20', 'Firefox', 1, 1553113574),
(194, '66.249.66.91', '2019-03-21', 'Googlebot', 1, 1553137190),
(195, '118.97.169.170', '2019-03-21', 'Firefox', 1, 1553161397),
(196, '64.233.173.151', '2019-03-21', 'Chrome', 1, 1553173125),
(197, '182.1.46.231', '2019-03-21', 'Chrome', 1, 1553173214),
(198, '64.233.173.149', '2019-03-21', 'Chrome', 1, 1553173303),
(199, '114.125.231.247', '2019-03-21', 'Chrome', 1, 1553173584),
(200, '182.1.62.172', '2019-03-21', 'Chrome', 1, 1553173322),
(201, '182.1.61.103', '2019-03-21', 'Chrome', 1, 1553173334),
(202, '182.1.47.189', '2019-03-21', 'Chrome', 1, 1553173515),
(203, '209.17.97.82', '2019-03-21', 'Mozilla', 1, 1553206512),
(204, '209.17.96.242', '2019-03-22', 'Mozilla', 1, 1553215444),
(205, '64.233.173.151', '2019-03-22', 'Chrome', 1, 1553232553),
(206, '125.166.164.200', '2019-03-23', 'Chrome', 1, 1553316708),
(207, '209.17.96.242', '2019-03-23', 'Mozilla', 1, 1553320932),
(208, '66.249.66.91', '2019-03-23', 'Googlebot', 1, 1553344927),
(209, '158.140.187.233', '2019-03-24', 'Chrome', 1, 1553415382),
(210, '66.249.79.236', '2019-03-25', 'Googlebot', 1, 1553502049),
(211, '118.96.125.253', '2019-03-25', 'Firefox', 1, 1553503716),
(212, '110.138.150.69', '2019-03-25', 'Chrome', 1, 1553519591),
(213, '64.233.173.149', '2019-03-26', 'Chrome', 1, 1553568886),
(214, '202.43.93.23', '2019-03-26', 'Chrome', 1, 1553570284),
(215, '192.99.35.63', '2019-03-26', 'Firefox', 1, 1553600410),
(216, '209.17.96.58', '2019-03-26', 'Mozilla', 1, 1553623851),
(217, '209.17.96.18', '2019-03-26', 'Mozilla', 1, 1553633959),
(218, '112.215.245.27', '2019-03-27', 'Chrome', 1, 1553730181),
(219, '66.249.71.149', '2019-03-28', 'Googlebot', 1, 1553776746),
(220, '223.27.152.173', '2019-03-29', 'Firefox', 1, 1553827276),
(221, '66.249.69.45', '2019-03-29', 'Googlebot', 1, 1553899447),
(222, '66.249.69.47', '2019-03-29', 'Googlebot', 1, 1553863906),
(223, '209.17.97.34', '2019-03-29', 'Mozilla', 1, 1553864828),
(224, '64.233.173.150', '2019-03-29', 'Chrome', 1, 1553868685),
(225, '209.17.97.90', '2019-03-29', 'Mozilla', 1, 1553876931),
(226, '66.249.75.81', '2019-03-30', 'Googlebot', 1, 1553987792),
(227, '180.245.213.16', '2019-03-31', 'Chrome', 1, 1554009409),
(228, '8.37.233.167', '2019-04-01', 'Safari', 1, 1554112532),
(229, '158.140.187.236', '2019-04-01', 'Chrome', 1, 1554142073),
(230, '159.65.189.34', '2019-04-02', 'Mozilla', 1, 1554204376),
(231, '36.77.94.15', '2019-04-03', 'Firefox', 1, 1554284955),
(232, '66.249.66.93', '2019-04-04', 'Googlebot', 1, 1554367490),
(233, '104.248.1.48', '2019-04-04', 'Mozilla', 1, 1554368129),
(234, '159.89.44.226', '2019-04-04', 'Mozilla', 1, 1554370793),
(235, '134.209.168.89', '2019-04-04', 'Mozilla', 1, 1554370983),
(236, '64.233.173.150', '2019-04-04', 'Chrome', 1, 1554386117),
(237, '13.56.252.207', '2019-04-04', 'Chrome', 1, 1554394753),
(238, '66.249.66.205', '2019-04-04', 'Googlebot', 1, 1554401330),
(239, '66.249.65.111', '2019-04-05', 'Googlebot', 1, 1554439489),
(240, '66.249.65.109', '2019-04-05', 'Googlebot', 1, 1554473366),
(241, '209.17.96.210', '2019-04-05', 'Mozilla', 1, 1554501122),
(242, '209.17.97.58', '2019-04-06', 'Mozilla', 1, 1554540539),
(243, '116.66.207.110', '2019-04-08', 'Chrome', 1, 1554697831),
(244, '158.140.187.233', '2019-04-08', 'Firefox', 1, 1554698313),
(245, '158.140.187.209', '2019-04-08', 'Chrome', 1, 1554725101),
(246, '192.99.35.149', '2019-04-08', 'Other', 1, 1554739455),
(247, '94.23.208.210', '2019-04-08', 'Other', 1, 1554740604),
(248, '158.140.187.233', '2019-04-09', 'Firefox', 1, 1554781760),
(249, '182.1.62.120', '2019-04-09', 'Chrome', 1, 1554819358),
(250, '182.1.61.230', '2019-04-09', 'Chrome', 1, 1554819423),
(251, '182.1.61.193', '2019-04-09', 'Chrome', 1, 1554821222),
(252, '182.1.44.247', '2019-04-09', 'Chrome', 1, 1554820376),
(253, '182.1.45.218', '2019-04-09', 'Chrome', 1, 1554820730),
(254, '182.1.45.65', '2019-04-09', 'Chrome', 1, 1554821177),
(255, '182.1.62.89', '2019-04-09', 'Chrome', 1, 1554821338),
(256, '64.233.173.150', '2019-04-09', 'Chrome', 1, 1554823740),
(257, '66.249.79.238', '2019-04-10', 'Googlebot', 1, 1554860067),
(258, '114.125.15.222', '2019-04-10', 'Chrome', 1, 1554860180),
(259, '114.125.12.121', '2019-04-10', 'Chrome', 1, 1554860214),
(260, '182.1.4.123', '2019-04-10', 'Chrome', 1, 1554861223),
(261, '182.1.7.233', '2019-04-10', 'Chrome', 1, 1554861224),
(262, '182.1.22.197', '2019-04-10', 'Chrome', 1, 1554861226),
(263, '36.71.235.106', '2019-04-10', 'Chrome', 1, 1554863435),
(264, '66.249.71.151', '2019-04-10', 'Googlebot', 1, 1554925579),
(265, '140.213.52.192', '2019-04-11', 'Safari', 1, 1554958837),
(266, '66.249.71.147', '2019-04-11', 'Googlebot', 1, 1554959295),
(267, '66.249.71.149', '2019-04-11', 'Googlebot', 1, 1554959513),
(268, '140.213.52.220', '2019-04-11', 'Safari', 1, 1554964710),
(269, '66.249.64.207', '2019-04-11', 'Googlebot', 1, 1555005166),
(270, '158.140.187.233', '2019-04-11', 'Chrome', 1, 1555009004),
(271, '209.17.97.122', '2019-04-12', 'Mozilla', 1, 1555037826),
(272, '209.17.97.2', '2019-04-12', 'Mozilla', 1, 1555101554),
(273, '88.198.39.184', '2019-04-13', 'Internet Explorer', 1, 1555135847),
(274, '209.17.96.66', '2019-04-13', 'Mozilla', 1, 1555161308),
(275, '36.90.42.139', '2019-04-14', 'Chrome', 1, 1555201517),
(276, '112.215.170.172', '2019-04-14', 'Chrome', 1, 1555228328),
(277, '66.249.69.111', '2019-04-14', 'Googlebot', 1, 1555237130),
(278, '182.1.44.183', '2019-04-14', 'Chrome', 1, 1555257242),
(279, '66.249.69.107', '2019-04-15', 'Googlebot', 1, 1555360066),
(280, '66.249.69.111', '2019-04-15', 'Googlebot', 1, 1555338187),
(281, '209.17.96.50', '2019-04-15', 'Mozilla', 1, 1555369033),
(282, '209.17.97.26', '2019-04-16', 'Mozilla', 1, 1555377469),
(283, '36.84.62.151', '2019-04-16', 'Chrome', 1, 1555401963),
(284, '66.249.64.205', '2019-04-16', 'Googlebot', 1, 1555448899),
(285, '114.125.247.110', '2019-04-18', 'Opera', 1, 1555559821),
(286, '36.77.166.203', '2019-04-18', 'Chrome', 1, 1555609107),
(287, '66.249.66.207', '2019-04-18', 'Googlebot', 1, 1555611612),
(288, '209.17.97.10', '2019-04-18', 'Mozilla', 1, 1555622603),
(289, '54.154.204.232', '2019-04-19', 'Chrome', 1, 1555676669),
(290, '66.249.64.207', '2019-04-19', 'Googlebot', 1, 1555678569),
(291, '192.99.35.149', '2019-04-19', 'Firefox', 1, 1555705612),
(292, '54.169.101.53', '2019-04-19', 'Chrome', 1, 1555705709),
(293, '209.17.96.58', '2019-04-19', 'Mozilla', 1, 1555710499),
(294, '110.137.147.170', '2019-04-20', 'Chrome', 1, 1555775820),
(295, '66.249.65.111', '2019-04-20', 'Googlebot', 1, 1555788647),
(296, '192.99.15.55', '2019-04-21', 'Firefox', 1, 1555821966),
(297, '64.233.173.149', '2019-04-21', 'Chrome', 1, 1555867887),
(298, '140.213.3.130', '2019-04-21', 'Chrome', 1, 1555888611),
(299, '66.249.79.107', '2019-04-22', 'Googlebot', 1, 1555894090),
(300, '158.140.187.209', '2019-04-22', 'Chrome', 1, 1555899868);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`);

--
-- Indexes for table `banner_depan`
--
ALTER TABLE `banner_depan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_item`
--
ALTER TABLE `banner_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`bidang_id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_temp`
--
ALTER TABLE `download_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_masuk`
--
ALTER TABLE `email_masuk`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto_artikel`
--
ALTER TABLE `foto_artikel`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_artikel_temp`
--
ALTER TABLE `foto_artikel_temp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_galeri`
--
ALTER TABLE `foto_galeri`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_galeri_temp`
--
ALTER TABLE `foto_galeri_temp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_user_tmp`
--
ALTER TABLE `foto_user_tmp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Indexes for table `group_banner`
--
ALTER TABLE `group_banner`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastruktur`
--
ALTER TABLE `infrastruktur`
  ADD PRIMARY KEY (`id_infrastruktur`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`jabatan_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indexes for table `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_child`
--
ALTER TABLE `menu_child`
  ADD PRIMARY KEY (`menu_child_id`);

--
-- Indexes for table `news_ticker`
--
ALTER TABLE `news_ticker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pencarian_artikel`
--
ALTER TABLE `pencarian_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pihak_ketiga`
--
ALTER TABLE `pihak_ketiga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `smtp_email`
--
ALTER TABLE `smtp_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`so_id`),
  ADD KEY `jabatan_id` (`jabatan_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `banner_depan`
--
ALTER TABLE `banner_depan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `banner_item`
--
ALTER TABLE `banner_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `bidang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7823;
--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `download_temp`
--
ALTER TABLE `download_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_masuk`
--
ALTER TABLE `email_masuk`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `foto_artikel`
--
ALTER TABLE `foto_artikel`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `foto_artikel_temp`
--
ALTER TABLE `foto_artikel_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `foto_galeri`
--
ALTER TABLE `foto_galeri`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `foto_galeri_temp`
--
ALTER TABLE `foto_galeri_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `foto_user_tmp`
--
ALTER TABLE `foto_user_tmp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `group_banner`
--
ALTER TABLE `group_banner`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_child`
--
ALTER TABLE `menu_child`
  MODIFY `menu_child_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `news_ticker`
--
ALTER TABLE `news_ticker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pencarian_artikel`
--
ALTER TABLE `pencarian_artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pihak_ketiga`
--
ALTER TABLE `pihak_ketiga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `so_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD CONSTRAINT `struktur_organisasi_ibfk_1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`jabatan_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
