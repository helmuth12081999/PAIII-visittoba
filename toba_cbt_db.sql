/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.11-MariaDB : Database - toba_cbt_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`toba_cbt_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `toba_cbt_db`;

/*Table structure for table `cbt_kalenderevent` */

DROP TABLE IF EXISTS `cbt_kalenderevent`;

CREATE TABLE `cbt_kalenderevent` (
  `id_kalenderevent` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_event` date NOT NULL,
  `jam_event` time NOT NULL,
  `alamat_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_event` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_event` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kalenderevent`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cbt_kalenderevent` */

insert  into `cbt_kalenderevent`(`id_kalenderevent`,`nama_event`,`nama_tempat`,`tanggal_event`,`jam_event`,`alamat_event`,`deskripsi_event`,`gambar_event`,`created_at`,`updated_at`) values 
(44,'Festival Gondang Naposo','Pantai Tandarabun, Kecamatan Simanindo','2020-04-17','09:00:00','Pantai Tandarabun, Dosroha, Simanindo, Dosroha, Simanindo, Kabupaten Samosir, Sumatera Utara','<p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;\">Event ini merupakan event pertama dari rangkaian Horas Samosir Fiesta ( HSF ) 2019 dengan kategori penyaji Tortor budaya terbaik, penyaji Tortor kreativitas, penyaji Tortor pesan Cinta, Pamitta Terbaik dan pasangan si doli dan namabaju teromantis.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;\">Tradisi Gondang Naposo dibuka para tetua sebelum dilaksanakan untuk para pemuda-pemudi yang belum menikah. Kemampuan manortor/ menari oleh kaum muda pada masa lampau menggambarkan kualitas kepribadian/ kelayakannya untuk mendapat jodoh. Festival ini adalah ajang resmi yang telah mendapat persetujuan dari orang tua bagi anaknya untuk mencari jodoh. Dalam konteks Modern, ajang ini mirip dengan “Take Me Out by Ancient Batak People “ Pesona seseorang akan terlihat dari Kemampuannya menari (manortor).</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;\">Pada malam harinya, para pengunjung dan masyarakan akan di hibur oleh artis-artis nasional dan lokal seperti : Marsada Band, Sanga Pajumpang Feat Herlin Siboro dan yang tak kalah serunya band NAFF akan tampil memeriahkan event Festival Gondang Naposo</p>','Gondang-Naposo.jpg','2020-08-24 18:58:14','2020-08-24 18:58:14'),
(45,'Festival Sipinggan 2020','Pantai Indah Sipinggan, Nainggolan','2020-12-27','10:00:00','Pantai Indah Sipinggan, Nainggolan, Samosir, Sumatera Utara','<p><span style=\"color: rgb(29, 33, 41); font-family: &quot;Times New Roman&quot;; font-size: 14px; white-space: pre-wrap;\"><b><u>FESTIVAL SIPINGGAN 2020</u></b></span><br style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap;\"><span style=\"font-family: &quot;Times New Roman&quot;;\">﻿</span><br style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap;\"><span style=\"color: rgb(29, 33, 41); font-family: &quot;Times New Roman&quot;; font-size: 14px; white-space: pre-wrap;\">Diadakan di Sipinggan ,Nainggolan , menampilkan atraksi budaya untuk menjaring wisatawan yang menikmati liburan akhir tahun di Samosir .</span><br></p>','ddc9156b2dfc882015ebe2b1a37eb3af.jpg','2020-08-24 19:07:47','2020-08-24 19:07:47');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `paket_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_paket_id_foreign` (`paket_id`),
  CONSTRAINT `comments_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `paket_wisatas` (`id_paket`),
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comments` */

/*Table structure for table `included_not_includeds` */

DROP TABLE IF EXISTS `included_not_includeds`;

CREATE TABLE `included_not_includeds` (
  `id_ini` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paket_wisata_id` bigint(20) unsigned NOT NULL,
  `jenis_ini` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_ini`),
  KEY `included_not_includeds_paket_wisata_id_foreign` (`paket_wisata_id`),
  CONSTRAINT `included_not_includeds_paket_wisata_id_foreign` FOREIGN KEY (`paket_wisata_id`) REFERENCES `paket_wisatas` (`id_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `included_not_includeds` */

insert  into `included_not_includeds`(`id_ini`,`paket_wisata_id`,`jenis_ini`,`keterangan`,`created_at`,`updated_at`) values 
(23,3,'included','Hotel','2020-08-09 15:12:55','2020-08-09 15:12:55'),
(24,3,'included','Transportasi','2020-08-09 15:12:55','2020-08-09 15:12:55'),
(25,3,'included','Driver dan guide','2020-08-09 15:12:55','2020-08-09 15:12:55'),
(26,3,'included','Kapal penyeberangan','2020-08-09 15:12:55','2020-08-09 15:12:55'),
(27,3,'included','Tiket masuk objek','2020-08-09 15:12:55','2020-08-09 15:12:55'),
(28,3,'not included','Breakfast','2020-08-09 15:12:55','2020-08-09 15:12:55'),
(29,2,'included','Hotel sekamar berdua atau bertiga','2020-08-24 17:58:38','2020-08-24 17:58:38'),
(30,2,'included','Makan sesuai program + lunch @Taman Simalem Resort (halal food)','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(31,2,'included','Driver merangkap Guide','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(32,2,'included','Kapal Ferry Parapat – Samosri PP','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(33,2,'included','Tiket masuk objek wisata','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(34,2,'included','Parkir kendaraan','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(35,2,'included','Air mineral','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(36,2,'included','Transportasi Full AC','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(37,2,'not included','Tiket Pesawat','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(38,2,'not included','Airport tax','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(39,2,'not included','Optional tour','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(40,2,'not included','Biaya pribadi (Porter, Fax, Tlp dan Loundry)','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(41,2,'not included','Tipping Driver merangkap Guide','2020-08-24 18:01:46','2020-08-24 18:01:46'),
(42,4,'included','Transportasi','2020-08-24 18:18:38','2020-08-24 18:18:38'),
(43,4,'included','Makan sesuai dengan program','2020-08-24 18:18:38','2020-08-24 18:18:38'),
(44,4,'included','Guide','2020-08-24 18:18:38','2020-08-24 18:18:38'),
(45,4,'included','Night Party','2020-08-24 18:18:38','2020-08-24 18:18:38'),
(46,4,'included','Barbeque','2020-08-24 18:18:38','2020-08-24 18:18:38'),
(47,4,'included','Free membership card','2020-08-24 18:18:38','2020-08-24 18:18:38'),
(48,4,'included','Photograph','2020-08-24 18:18:38','2020-08-24 18:18:38'),
(49,4,'not included','Tiker Pesawat','2020-08-24 18:18:38','2020-08-24 18:18:38');

/*Table structure for table `jenis_layanans` */

DROP TABLE IF EXISTS `jenis_layanans`;

CREATE TABLE `jenis_layanans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jenis_layanan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jenis_layanans` */

insert  into `jenis_layanans`(`id`,`nama_jenis_layanan`,`created_at`,`updated_at`) values 
(1,'Objek Wisata','2020-06-15 12:20:08',NULL),
(2,'Akomodasi','2020-06-15 17:06:06',NULL),
(3,'Kuliner','2020-06-15 17:06:13',NULL),
(4,'Transportasi','2020-06-15 17:06:24',NULL);

/*Table structure for table `kabupatens` */

DROP TABLE IF EXISTS `kabupatens`;

CREATE TABLE `kabupatens` (
  `id_kabupaten` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kabupaten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kabupaten`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kabupatens` */

insert  into `kabupatens`(`id_kabupaten`,`nama_kabupaten`,`area`,`created_at`,`updated_at`) values 
(1,'Toba','I','2020-05-03 17:00:00',NULL),
(2,'Tapanuli Utara','I','2020-05-03 17:00:00',NULL),
(3,'Karo','II','2020-05-03 17:00:00',NULL),
(4,'Samosir','I','2020-05-03 17:00:00',NULL),
(5,'Simalungun','II','2020-05-03 17:00:00',NULL),
(6,'Humbang Hasundutan','II','2020-05-03 17:00:00',NULL),
(7,'Dairi','II','2020-05-03 17:00:00',NULL);

/*Table structure for table `komunitas` */

DROP TABLE IF EXISTS `komunitas`;

CREATE TABLE `komunitas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kabupaten_id` bigint(20) unsigned NOT NULL,
  `nama_komunitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `komunitas_kabupaten_id_foreign` (`kabupaten_id`),
  CONSTRAINT `komunitas_kabupaten_id_foreign` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupatens` (`id_kabupaten`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `komunitas` */

insert  into `komunitas`(`id`,`kabupaten_id`,`nama_komunitas`,`deskripsi`,`gambar`,`link`,`created_at`,`updated_at`) values 
(4,2,'Wisata Tapanuli Utara Indah','<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Toleransi dalam keragaman adalah kunci kesuksesan sebuah destinasi wisata. Kabupaten <b>Tapanuli Utara </b>adalah salah satu contohnya. Daerah yang sohor akan pemandangan Danau Toba ini memegang erat toleransi antar umat beragama, sehingga para wistawan yang datang bisa berwisata dengan nyaman.</span><br></p>','1596957792-wisata-tapanuli-utara-indah.jpg','https://chat.whatsapp.com/JgsfyCLF1mADdw5ewf62V4','2020-08-09 14:23:12','2020-08-09 14:23:12'),
(5,1,'Kuliner Bulbul Sejahtera','<p>Menikmati keindahan Pantai Bulbul sambil menikmati berbagai macam kuliner yang tersedia. Memudahkan pengunjung untuk melakukan pemesanan</p>','1596958191-kuliner-bulbul-sejahtera.jpg','https://chat.whatsapp.com/CTNymAfjGA3AN4fejeMzv3','2020-08-09 14:29:51','2020-08-09 14:29:51'),
(6,1,'Kuliner Danau Toba Bersatu','<p><span style=\"font-family: opensans;\">Sumatera memang tidak sepopuler Bali. Namun, keindahan di pulau ini tetap menawan dan bikin ketagihan. Salah satunya Toba Samosir, kabupaten di Sumatera Utara yang terletak tepi Danau Toba. Tidak hanya pesona alamnya, kota ini juga memiliki banyak kuliner enak dan mengenyangkan. Wah, seperti apa sih menu makanan yang memanjakan lidah serta perut ini?</span><br></p>','1596958321-kuliner-danau-toba-bersatu.jpg','https://chat.whatsapp.com/BEGIFFcLrodL0xF9eGGmcN','2020-08-09 14:32:01','2020-08-09 14:32:01'),
(7,2,'Kuliner Hutaginjang bersatu','<p><span style=\"color: rgb(33, 33, 33); font-family: Raleway, sans-serif;\">Spot-spot kuliner dan kerajinan tangan yang sudah disiapkan Pemkab Tapanuli Utara.</span><br></p>','1596958492-kuliner-hutaginjang-bersatu.jpg','https://chat.whatsapp.com/E9RZLL9yR8ADC0yz0UPE29','2020-08-09 14:34:52','2020-08-09 14:34:52'),
(8,1,'Kuliner Tobasa','<p><span style=\"font-family: Raleway, sans-serif; font-size: 15px; text-align: justify;\">Diikuti oleh para ibu-ibu pengusaha&nbsp; Hare Toba salah satu kuliner&nbsp; yang dapat&nbsp; menarik wisatawan untuk berkunjung ke Tobasa dan akan menjadi oleh- oleh dari Kabupaten Tobasa.</span><br></p>','1596958656-kuliner-tobasa.jpg','https://chat.whatsapp.com/EmQzUeToPNCAzQjL70QXhN','2020-08-09 14:37:36','2020-08-09 14:39:41');

/*Table structure for table `komunitas_members` */

DROP TABLE IF EXISTS `komunitas_members`;

CREATE TABLE `komunitas_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `komunitas_id` bigint(20) unsigned NOT NULL,
  `member_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `komunitas_members_komunitas_id_foreign` (`komunitas_id`),
  KEY `komunitas_members_member_id_foreign` (`member_id`),
  CONSTRAINT `komunitas_members_komunitas_id_foreign` FOREIGN KEY (`komunitas_id`) REFERENCES `komunitas` (`id`),
  CONSTRAINT `komunitas_members_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `komunitas_members` */

insert  into `komunitas_members`(`id`,`komunitas_id`,`member_id`,`created_at`,`updated_at`) values 
(4,6,1,NULL,NULL),
(5,6,5,'2020-08-09 15:27:11','2020-08-09 15:27:11'),
(6,7,5,NULL,NULL),
(8,4,5,NULL,NULL),
(9,5,5,NULL,NULL),
(10,8,5,NULL,NULL),
(11,4,6,'2020-09-17 14:43:55','2020-09-17 14:43:55'),
(12,6,7,'2020-09-17 14:49:18','2020-09-17 14:49:18'),
(13,4,8,'2020-09-17 14:49:47','2020-09-17 14:49:47');

/*Table structure for table `layanan_wisatas` */

DROP TABLE IF EXISTS `layanan_wisatas`;

CREATE TABLE `layanan_wisatas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_layanan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisLayanan_id` bigint(20) unsigned NOT NULL,
  `kabupaten_id` bigint(20) unsigned NOT NULL,
  `member_id` bigint(20) unsigned NOT NULL,
  `deskripsi_layanan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `layanan_wisatas_jenislayanan_id_foreign` (`jenisLayanan_id`),
  KEY `layanan_wisatas_kabupaten_id_foreign` (`kabupaten_id`),
  KEY `layanan_wisatas_member_id_foreign` (`member_id`),
  CONSTRAINT `layanan_wisatas_jenislayanan_id_foreign` FOREIGN KEY (`jenisLayanan_id`) REFERENCES `jenis_layanans` (`id`),
  CONSTRAINT `layanan_wisatas_kabupaten_id_foreign` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupatens` (`id_kabupaten`),
  CONSTRAINT `layanan_wisatas_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `layanan_wisatas` */

insert  into `layanan_wisatas`(`id`,`nama_layanan`,`jenisLayanan_id`,`kabupaten_id`,`member_id`,`deskripsi_layanan`,`created_at`,`updated_at`) values 
(4,'Hotel Desa Ambarita',2,4,1,'For you, travelers who wish to travel comfortably on a budget, AMBARITA HOTEL is the perfect place to stay that provides decent facilities as well as great services.\r\n\r\nDAMBARITA HOTEL is the splendid choice for you who are seeking a luxurious treat for your holiday. Get pampered with the most excellent services and make your holiday memorable by staying here.\r\n\r\nFrom business event to corporate gathering, AMBARITA HOTEL provides complete services and facilities that you and your colleagues need.\r\n\r\nHave fun with various entertaining facilities for you and the whole family at AMBARITA HOTEL, a wonderful accommodation for your family holiday.\r\n\r\nIf you plan to have a long-term stay, staying at AMBARITA HOTEL is the right choice for you. Providing wide range of facilities and great service quality, this accommodation certainly makes you feel at home.\r\n\r\nWhile traveling with friends can be a lot of fun, traveling solo has its own perks. As for the accommodation, AMBARITA HOTEL is suitable for you who value privacy during your stay.\r\n\r\n24-hours front desk is available to serve you, from check-in to check-out, or any assistance you need. Should you desire more, do not hesitate to ask the front desk, we are always ready to accommodate you.\r\n\r\nWiFi is available within public areas of the property to help you to stay connected with family and friends.\r\n\r\nAMBARITA HOTEL is a HOTEL with great comfort and excellent service according to most hotel \'s guests.\r\n\r\nStaying at AMBARITA HOTEL will surely satisfy you with its great hospitality and affordable price.','2020-08-09 15:08:23','2020-08-09 15:08:23'),
(5,'Taman Simalem Resort',2,5,5,'Perempat santai di sebuah resor yang menawarkan resmi 5 kafe, pemandangan Danau Toba & lapangan golf 9-hole. \r\nLink booking : https://www.booking.com/hotel/id/taman-simalem-resort.id.html','2020-08-24 18:09:00','2020-08-24 18:09:00'),
(6,'Taman Wisata Iman',1,7,5,'Taman Wisata Iman berada di Bukit Sitinjo dengan luas 130.000 m2, terletak di Desa Sitinjo, Kecamatan Sitinjo, Kabupaten Dairi, Sumatra Utara. Terletak sekitar 10 km dari Ibu Kota Kabupaten Dairi, Sidikalang atau sekitar 154 km dari Medan.\r\nSesuai Perda, tiket masuk TWI sebesar Rp5.000 (dewasa) dan Rp3.000 (anak-anak), roda dua Rp2.000, roda empat Rp5.0000, roda enam Rp7.000. Asrama Rp200.000/hari, Aula Rp400.000/hari','2020-08-24 18:22:55','2020-08-24 18:22:55'),
(7,'Sate Abang Adek Tarutung',3,2,8,'Sate abang adek merupakan sate khas Tarutung. Daging sate terbuat dari daging kerbau. Sate dapat dikombinasikan dengan mie. Rasanya yang unik membuat sate abang adek dikenal di seluruh Tarutung.','2020-09-17 14:53:36','2020-09-17 14:54:22'),
(9,'Pondok Solaria',3,2,8,'Menyediakan segala jenis makanan dan minuman.','2020-10-15 14:38:04','2020-10-15 14:38:04');

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_KTP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_user_id_foreign` (`user_id`),
  CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `members` */

insert  into `members`(`id`,`user_id`,`photo`,`no_KTP`,`created_at`,`updated_at`) values 
(1,3,'1592194166-helmuth-simon-tampubolon.jpg','121234321233','2020-06-15 04:09:26','2020-06-15 04:09:26'),
(5,10,'1596961631-simon-tampubolon.jpeg','1212011208990003','2020-08-09 15:27:11','2020-08-09 15:27:11'),
(6,14,'1600328635-andreas-tampubolon.jpeg','12120038948502','2020-09-17 14:43:55','2020-09-17 14:43:55'),
(7,15,'1600328957-hotni-maria-simatupang.jpg','2356','2020-09-17 14:49:18','2020-09-17 14:49:18'),
(8,16,'1600328987-indah.jpeg','1202014305990001','2020-09-17 14:49:47','2020-09-17 14:49:47');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2020_04_18_135644_create_kabupatens_table',1),
(4,'2020_04_18_141804_create_paket_wisatas_table',1),
(5,'2020_04_21_074944_create_included_not_includeds_table',1),
(6,'2020_04_24_150742_create_jenis_layanans_table',1),
(7,'2020_04_27_174743_create_rekenings_table',1),
(8,'2020_05_11_171751_create_sesis_table',1),
(9,'2020_05_11_183155_create_pemesanans_table',1),
(10,'2020_05_11_183211_create_transaksis_table',1),
(11,'2020_05_21_152028_create_komunitas_table',1),
(12,'2020_05_22_122611_create_members_table',1),
(13,'2020_05_23_123232_create_komunitas_members_table',1),
(14,'2020_05_23_124936_create_layanan_wisatas_table',1),
(15,'2020_05_23_125602_create_paket_layanans_table',1),
(16,'2020_06_11_121057_create_comments_table',1),
(17,'2020_06_11_121415_create_replies_table',1),
(18,'2020_06_11_121519_add_column_user_id_in_replies_table',1),
(19,'2020_06_14_163026_create_cbt_kalenderevent_table',1);

/*Table structure for table `paket_layanans` */

DROP TABLE IF EXISTS `paket_layanans`;

CREATE TABLE `paket_layanans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paket_wisata_id` bigint(20) unsigned NOT NULL,
  `layanan_wisata_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paket_layanans_paket_wisata_id_foreign` (`paket_wisata_id`),
  KEY `paket_layanans_layanan_wisata_id_foreign` (`layanan_wisata_id`),
  CONSTRAINT `paket_layanans_layanan_wisata_id_foreign` FOREIGN KEY (`layanan_wisata_id`) REFERENCES `layanan_wisatas` (`id`),
  CONSTRAINT `paket_layanans_paket_wisata_id_foreign` FOREIGN KEY (`paket_wisata_id`) REFERENCES `paket_wisatas` (`id_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `paket_layanans` */

insert  into `paket_layanans`(`id`,`paket_wisata_id`,`layanan_wisata_id`,`created_at`,`updated_at`) values 
(3,3,4,NULL,NULL),
(5,2,5,NULL,NULL),
(7,4,6,NULL,NULL);

/*Table structure for table `paket_wisatas` */

DROP TABLE IF EXISTS `paket_wisatas`;

CREATE TABLE `paket_wisatas` (
  `id_paket` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_paket` bigint(20) NOT NULL,
  `availability` int(11) NOT NULL,
  `durasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `jenis_paket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_paket` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rencana_perjalanan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tambahan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_paket`),
  KEY `paket_wisatas_kabupaten_id_foreign` (`kabupaten_id`),
  CONSTRAINT `paket_wisatas_kabupaten_id_foreign` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupatens` (`id_kabupaten`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `paket_wisatas` */

insert  into `paket_wisatas`(`id_paket`,`nama_paket`,`harga_paket`,`availability`,`durasi`,`status`,`jenis_paket`,`deskripsi_paket`,`rencana_perjalanan`,`tambahan`,`gambar`,`kabupaten_id`,`created_at`,`updated_at`) values 
(2,'Paket Wisata Danau Toba  + TAMAN SIMALEM RESORT',8000000,10,'2 Hari 1 Malam',1,'Wisata Alam','<p class=\"MsoListParagraph\"><span style=\"font-family: &quot;Source Sans Pro&quot;;\">﻿</span><span lang=\"EN-US\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: &quot;Source Sans Pro&quot;;\">Dikarenakan waktu tour yang cukup singkat menjadikan paket\r\ntour ini sangat diminati oleh banyak wisatawan,&nbsp; baik itu wisatawan\r\ndomestik maupun wisatawan mancanegara. Adapaun programnya adalah sebagai\r\nberikut:</span><span lang=\"EN-US\"><o:p></o:p></span></p>','<p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><strong><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: &quot;Source Sans Pro&quot;;\">HARI\r\n– 01: KNO AIRPORT/HOTEL – SIANTAR – PARAPAT – SAMOSIR TOUR (L/D)</span></strong><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-family: &quot;Source Sans Pro&quot;;\">Sesampainya\r\ndi pintu kedatangan Bandara Kualanamu International Airport anda akan disambut\r\noleh perwakilan kami “Welcome to Medan”. Selanjutnya&nbsp; berangkat menuju\r\nObjek Wisata Danau Toba via Pematang Siantar</span><strong><span style=\"font-family: &quot;Source Sans Pro&quot;;\">.&nbsp;&nbsp;</span></strong><span style=\"font-family: &quot;Source Sans Pro&quot;;\">\r\nPerjalanan menuju Parapat akan ditempuh 4-5 jam perjalanan melintasi perkebunan\r\nsawit dan karet. Sesampainya di Kota Siantar kita akan berhenti sejenak di Toko\r\nPaten untuk membeli oleh-oleh khas Pematang Siantar seperti tengteng, tingting,\r\npangpang, pengpeng, pingping dan aneka oleh-oleh lainnya Setelah selesai\r\nselanjutnya berangkat menuju restoran lokal untuk menikmati makan siang\r\n(ISHOMA) . Selesai makan siang kembali melanjutkan perjalanan menuju Parapat.</span> </span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: &quot;Source Sans Pro&quot;;\">Kota\r\nParapat dengan Kota Siantar hanya berjarak 47,8 KM atau satu jam perjalanan\r\nsaja Sesampainya di Parapat langsung menuju pelabuhan untuk proses penyebrangan\r\nmenuju Pulau Samosir. Perjalanan menuju Pulau Samosir akan ditempuh selama satu\r\njam perjalanan dengan menggunakan kapal motor/boat Setleah sampai di Samosir\r\nlangsung menuju Desa Tomok. Disana kita akan mengungkap Misteri Makam Raja\r\nSidabutar dan Legenda Putri Anting Melala yang cantik jelita Bagi yang suka\r\ntari-tarian disana anda dapat melihat pertunjukan tarian Sigale-gale (personal\r\nexspense). Tarian Sigale-gale merupakan salah satu tarian tradisional&nbsp;\r\nmasyarakat suku batak di samosir. Sigale-gale adalah sebuah patung berbentuk\r\nmanusia yang dapat menari dengan iringan musik tradisonal batak. Setelah\r\nselesai selanjutnya berburu souvenir atau cinderamata di Pasar Tomok.</span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: &quot;Source Sans Pro&quot;;\">Selesai\r\nberburu souvenir selanjutnya munuju kapal untuk proses penyebrangan kembali ke\r\nParapat. Diperkirakan sore menjelang malam kita akan tiba di Parapat.\r\nSesampainya di Parapat langsung menuju hotel, selanjutnya chek in dan istirahat\r\nsejenak sampai tiba waktu makan malam. Makan malam akan disajikan direstoran\r\nhotel atau restoran lokal. Selesai makan malam anda dapat bersantai di hotel\r\nsambil menikmati pertunjukan musik tradisonal batak. Selanjutnya istirahat dan\r\nacara bebas</span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:\r\nminor-latin\"><o:p></o:p></span></p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><strong><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: &quot;Source Sans Pro&quot;;\">HARI\r\n– 02: SIMARJARUNJUNG – TAMAN SIMALEM RESORT – BERASTAGI TOUR – MEDAN (B/L)</span></strong><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-family: &quot;Source Sans Pro&quot;;\">Salesai\r\nsarapan pagi di hotel selanjutnya berangkat menuju Taman Simalem Resort via\r\nSimarjarunjung. Perjalanan menuju Taman Simalem Resort akan ditempuh selama 4\r\njam perjalanan melintasi hutan pinus dan pinggiran danau toba. Selama\r\nperjalanan, kita akan berhenti sejenak di Bukit Simarjarunjung. Disana kita\r\nakan menikmati teh jahe dan pisang goreng khas Simalungun. Selain itu kita juga\r\nakan menyinggahi&nbsp;</span></span><a href=\"https://www.google.com/search?newwindow=1&amp;safe=strict&amp;rlz=1C1CHBD_zh-CNID908ID909&amp;sxsrf=ALeKk01_1m6T0NUaWeb0Xx8kdTMpomjEJQ%3A1598265821699&amp;ei=3ZlDX6eiKu7hz7sP2oqLkAY&amp;q=air+terjun+sipiso+piso&amp;oq=air+terjun+sipiso&amp;gs_lcp=CgZwc3ktYWIQAxgAMgIIADICCAAyAggAMgIIADICCAAyAggAMgUIABDLATICCAAyBggAEBYQHjIGCAAQFhAeOgoILhCwAxAnEJMCOgcIABCwAxBDOgkIABCwAxAKEEM6BwguELADEEM6BwguEEMQkwI6BQgAELEDOggIABCxAxCDAToECAAQQzoICC4QsQMQgwE6CggAELEDEIMBEEM6BAguEEM6BwgAELEDEEM6AgguOgUILhCxAzoKCC4QsQMQQxCTAlCqtBxYkdAcYN3VHGgBcAB4AYAB3gKIAZAXkgEIMS4xMi4yLjKYAQCgAQGqAQdnd3Mtd2l6wAEB&amp;sclient=psy-ab\" target=\"_blank\">objekwisata Air Terjun Sipiso-piso</a><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-family: &quot;Source Sans Pro&quot;;\"></span><span style=\"font-family: &quot;Source Sans Pro&quot;;\">&nbsp;yang dikenal sebagai salah satu air\r\nterjun tertinggi dan terindah di Indonesia Diperkirakan siang hari kita akan\r\ntiba di&nbsp;</span><strong><span style=\"font-family: &quot;Source Sans Pro&quot;;\">Taman\r\nSimalem Resort</span></strong><span style=\"font-family: &quot;Source Sans Pro&quot;;\">. Taman Simalem Resort merupakan salah satu objek\r\nwisata di Sumatera Utara yang memiliki konsep ekowisata</span></span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: &quot;Source Sans Pro&quot;;\">Objek\r\nwisata Taman Simalem Resort ini dibangun diareal 206ha dan diketinggian 1500m\r\ndiatas permukaan laut. Sesampainya di Taman Simalem Resort kita langsung menuju\r\nrestoran lokal untuk menikmati makan siang (ISHOMA). Selesai makan siang kami\r\nakan mengajak anda berkeliling disekitar resort untuk melihat perkebunan\r\norganik serta pemandangan menakjubkan alam danau toba dari sisi utara. Setelah\r\npuas berfoto dan berkeliling di taman resort perjalanan dilanjutkan menuju\r\nBerastagi.</span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:\r\nminor-latin\"><o:p></o:p></span></p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: &quot;Source Sans Pro&quot;;\">Perjalanan\r\nmenuju Objek Wisata Berastagi akan ditempuh selama satu jam perjalanan via\r\nMerek, Kabupaten Karo. Sesampainya di Berastagi langsung menuju Bukit\r\nGundailing untuk menikmati pemandangan indah Kota Berastagi. Selain itu, dari\r\nbukit tersebut kita juga dapat melihat Gunung Sinabung&nbsp; dan Gunung\r\nSibayak&nbsp; dari radius 7km. Dari Bukit Gundailing langsung menuju Pasar Buah\r\nBerastagi. Disana anda dapat melihat berbagai aneka bunga, sayuran dan\r\nbuah-buahan segar</span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"margin: 0cm 0cm 22.5pt 36pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: &quot;Source Sans Pro&quot;;\">Setelah\r\nselesai selanjutnya kembali melanjutkan perjalanan menuju Kota Medan. Jarak\r\nantara Berastagi dengan Kota Medan berkisar 67km atau sekitar dua jam\r\nperjalanan melintasi jalanan berkelok. Diperkirakan malam hari kita akan tiba\r\ndi Kota Medan. Setibanya di Kota Medan kami akan mengantarkan anda ke hotel\r\natau transfer airport. Selanjutnya tourpun selesai. Sampai bertemu lagi dengan\r\nPaket Wisata Danau Toba kami lainnya. Terimakasih</span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p>',NULL,'1598266692paket-wisata-danau-toba-taman-simalem-resort.jpg',5,'2020-08-09 15:03:01','2020-08-24 17:58:12'),
(3,'INCREDIBLE TOUR PACKAGES ON SAMOSIR ISLAND',2200000,10,'3 Hari 2 Malam',1,'Wisata Budaya','<p><span lang=\"EN-US\" style=\"font-size: 11pt; line-height: 107%; font-family: &quot;Source Sans Pro&quot;;\">Pesona Indo menawarkan liburan 3 hari 2 malam di\r\nDanau Toba dengan sensasi backpacker dan juga regular</span><br></p>','<p class=\"MsoListParagraphCxSpFirst\"><span lang=\"EN-US\"><span style=\"font-family: &quot;Source Sans Pro&quot;;\">HARI – 01:</span><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">Sesampainya di pintu kedatangan\r\nBandara Kualanamu International Airport anda akan disambut oleh perwakilan kami\r\n“Welcome to Medan”. Selanjutnya&nbsp; berangkat menuju Objek Wisata Danau Toba.\r\nPerjalanan menuju Parapat akan ditempuh 4-5 jam perjalanan melintasi perkebunan\r\nsawit dan karet. Untuk makan siang menuju restoran lokal. Selesai makan siang\r\nkembali melanjutkan perjalanan menuju Parapat.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">Kota Parapat dengan Kota Siantar hanya\r\nberjarak 47,8 KM atau satu jam perjalanan saja Sesampainya di Parapat langsung\r\nmenuju pelabuhan untuk proses penyebrangan menuju Pulau Samosir. Perjalanan\r\nmenuju Pulau Samosir akan ditempuh selama satu jam perjalanan dengan\r\nmenggunakan kapal motor/boat Setleah sampai di Samosir langsung menuju Desa\r\nTomok. Lalu berangkat menuju Desa Ambarita dan Huta Siallagan untuk melihat\r\nrumah adat Batak. Setelah puas, kembali ke hotel untuk melakukan check-in dan\r\nberistirahat.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">HARI – 02:<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">Hari kedua, menuju Desa Tomok untuk\r\nmelihat tarian Sigale-gale, kemudia membeli aksesoris atau cenderamata yang\r\nakan dijadikan sebagai oleh-oleh.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpLast\"><span lang=\"EN-US\">Hari – 03:<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span lang=\"EN-US\" style=\"font-size: 11pt; line-height: 107%; font-family: &quot;Source Sans Pro&quot;;\">Dihari\r\nketiga, akan mengunjungi Pangururan, yang merupakan daratan Pulau Samosir\r\ndengan Pulau Sumatera. Disini ada lokasi yang disebut Puncak Tele, tempat\r\nmelihat Danau Toba dari puncak tertinggi. Kemudian menuju Tonggingm yang\r\nmerupakan dataran tinggi tanah Karo serta Air Terjun Sipiso-piso.</span><br></p>',NULL,'1596960775incredible-tour-packages-on-samosir-island.png',4,'2020-08-09 15:12:55','2020-08-09 15:12:55'),
(4,'Explore Dairi Regency',1200000,10,'2 Hari 1 Malam',1,'Wisata Religi','<p><span lang=\"EN-US\" style=\"font-size: 11pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\">Kabupaten Dairi yang beribukotakan\r\nSidikalang dengan luas 3442 km² memiliki pesona wisata alam dan religi yang\r\nmemukau. Letak geografis menyerupai kota Bandung, dikelilingi oleh pegunungan\r\nbukit barisan yang menyebabkan udara dingin baik siang maupun di malam hari.\r\nMelalui Explore Dairi Regency selama 2 hari 1 malam, nikmatilah\r\n“njuah-juah”-nya kabupaten</span><br></p>','<p class=\"MsoListParagraphCxSpFirst\"><span lang=\"EN-US\"><span style=\"font-family: &quot;Times New Roman&quot;;\"><u><b>HARI – 01:</b></u></span><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Keberangkatan dari kota Medan pada pukul 09.00\r\ndengan meeting point yang sudah disepakati, ratio perjalanan sekitar 3 jam dan\r\nakan sampai di kota sidikalang pada pukul 12.00, setelah check ini di hotel\r\ndilanjutkan dengan city tour dan kuliner dipuncak sidiangat yang merupakan\r\nperbatasan kabupaten dairi dan pakpak barat.</span><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpMiddle\"><span lang=\"EN-US\"><span style=\"font-family: &quot;Times New Roman&quot;;\"><u><b>HARI – 02:</b></u></span><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\"><span lang=\"EN-US\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Start pada pukul 08.00 berkunjung ke taman wisata\r\nIman Dairi, sebuah destinasi wisata religi didesa sitinjo yang satu-satunya\r\nmengusung konsep persatuan dan kerukunan antar umat beragama di Indonesia.\r\nPerjalanan dilanjutkan ke Air terjun pendaroh dan kembali ke hotel untuk\r\npersiapan kembali ke kota Medan.</span><o:p></o:p></span></p>',NULL,'1598267918explore-dairi-regency.jpg',7,'2020-08-24 18:18:38','2020-09-17 14:23:26');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `pemesanans` */

DROP TABLE IF EXISTS `pemesanans`;

CREATE TABLE `pemesanans` (
  `id_pemesanan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `sesi_id` bigint(20) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `pesan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pemesanan`),
  KEY `pemesanans_user_id_foreign` (`user_id`),
  KEY `pemesanans_sesi_id_foreign` (`sesi_id`),
  CONSTRAINT `pemesanans_sesi_id_foreign` FOREIGN KEY (`sesi_id`) REFERENCES `sesis` (`id_sesi`),
  CONSTRAINT `pemesanans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pemesanans` */

insert  into `pemesanans`(`id_pemesanan`,`user_id`,`sesi_id`,`status`,`pesan`,`jumlah_peserta`,`created_at`,`updated_at`) values 
(4,12,5,0,'Saya dari jakarta',5,'2020-09-17 14:27:01','2020-10-08 16:23:31'),
(5,11,2,0,'oke',5,'2020-09-17 14:29:14','2020-10-08 16:23:22'),
(6,13,5,0,NULL,2,'2020-09-17 16:57:35','2020-10-08 16:23:11'),
(7,13,2,5,NULL,1,'2020-09-23 13:41:39','2020-10-08 15:38:04'),
(8,13,2,1,NULL,1,'2020-10-08 15:38:58','2020-10-08 15:38:58'),
(9,11,5,3,'Oke',2,'2020-10-08 15:56:13','2020-10-08 15:59:20'),
(10,11,5,2,'done',2,'2020-10-08 16:24:10','2020-10-08 16:25:15'),
(11,11,4,1,NULL,2,'2020-10-23 09:44:37','2020-10-23 09:44:37'),
(12,5,5,0,'asd',3,'2020-11-13 09:06:08','2020-11-13 09:06:54'),
(13,5,5,0,'asd',1,'2020-11-13 09:10:45','2020-11-13 09:12:01'),
(14,5,3,0,'testing',2,'2020-11-13 09:12:23','2020-11-13 09:13:15'),
(15,5,2,2,'contoh',3,'2020-11-13 09:13:37','2020-11-13 09:17:11'),
(16,5,5,1,'asdas',2,'2020-11-13 09:19:07','2020-11-13 09:19:07'),
(17,5,3,1,'pesan untuk 1 orang',1,'2020-11-15 14:51:04','2020-11-15 14:51:04');

/*Table structure for table `rekenings` */

DROP TABLE IF EXISTS `rekenings`;

CREATE TABLE `rekenings` (
  `id_rekening` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekening` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rekening`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rekenings` */

insert  into `rekenings`(`id_rekening`,`nama_bank`,`nomor_rekening`,`gambar`,`created_at`,`updated_at`) values 
(1,'Bank BRI','1234567890','1593012605_Bank BRI.png','2020-06-24 15:30:05','2020-06-24 15:30:05'),
(2,'Bank BNI','12345678','1593012626_Bank BNI.png','2020-06-24 15:30:26','2020-06-24 15:30:26'),
(3,'Bank Mandiri','234567','1593012640_Bank Mandiri.jpg','2020-06-24 15:30:40','2020-06-24 15:30:40');

/*Table structure for table `replies` */

DROP TABLE IF EXISTS `replies`;

CREATE TABLE `replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `replies_comment_id_foreign` (`comment_id`),
  CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `replies` */

/*Table structure for table `sesis` */

DROP TABLE IF EXISTS `sesis`;

CREATE TABLE `sesis` (
  `id_sesi` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paket_id` bigint(20) unsigned NOT NULL,
  `kuota_peserta` int(11) NOT NULL,
  `jadwal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_sesi`),
  KEY `sesis_paket_id_foreign` (`paket_id`),
  CONSTRAINT `sesis_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `paket_wisatas` (`id_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sesis` */

insert  into `sesis`(`id_sesi`,`paket_id`,`kuota_peserta`,`jadwal`,`status`,`created_at`,`updated_at`) values 
(2,3,16,'2020-08-10',1,'2020-08-09 15:13:31','2020-11-13 09:13:37'),
(3,3,19,'2020-08-11',1,'2020-08-09 15:13:49','2020-11-15 14:51:04'),
(4,3,28,'2020-08-12',1,'2020-08-09 15:14:05','2020-10-23 09:44:37'),
(5,4,4,'2020-09-25',1,'2020-09-17 14:26:32','2020-11-13 09:19:07');

/*Table structure for table `transaksis` */

DROP TABLE IF EXISTS `transaksis`;

CREATE TABLE `transaksis` (
  `id_transaksi` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pemesanan_id` bigint(20) unsigned NOT NULL,
  `rekening_id` bigint(20) unsigned NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `transaksis_pemesanan_id_foreign` (`pemesanan_id`),
  KEY `transaksis_rekening_id_foreign` (`rekening_id`),
  CONSTRAINT `transaksis_pemesanan_id_foreign` FOREIGN KEY (`pemesanan_id`) REFERENCES `pemesanans` (`id_pemesanan`),
  CONSTRAINT `transaksis_rekening_id_foreign` FOREIGN KEY (`rekening_id`) REFERENCES `rekenings` (`id_rekening`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transaksis` */

insert  into `transaksis`(`id_transaksi`,`pemesanan_id`,`rekening_id`,`jumlah`,`gambar`,`created_at`,`updated_at`) values 
(2,4,2,6000000,'1600327652_12_4.JPG','2020-09-17 14:27:33','2020-09-17 14:27:33'),
(3,5,1,5,'1600327952_11_5.jpg','2020-09-17 14:32:32','2020-09-17 14:32:32'),
(4,6,1,2400000,'1600336711_13_6.png','2020-09-17 16:58:31','2020-09-17 16:58:31'),
(5,9,1,2400000,'1602147463_11_9.jpg','2020-10-08 15:57:43','2020-10-08 15:57:43'),
(6,10,1,1200000,'1602149115_11_10.jpg','2020-10-08 16:25:15','2020-10-08 16:25:15'),
(7,15,2,6600000,'1605259031_5_15.jpeg','2020-11-13 09:17:11','2020-11-13 09:17:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_WA` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_HP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`no_WA`,`no_HP`,`email`,`email_verified_at`,`password`,`token`,`remember_token`,`register_status`,`status`,`created_at`,`updated_at`) values 
(2,'admin','','','admin@gmail.com',NULL,'$2y$10$8H/YLsCDnqY9jHCvE/ev3uknTWdj4tVagMkv37NQsaWCDABgNie8u',NULL,NULL,1,2,'2020-05-04 20:26:43','2020-05-04 20:26:43'),
(3,'Helmuth Simon Tampubolon','082160085708','082160085708','helmuthsimon123@gmail.com','2020-06-15 04:09:26','$2y$10$UuPRnxX6csXDgYQ0/./09uQBqJMbWLdcmpwHoADlv58jGi3UJ5vV6',NULL,'xc8OSxV19tqEHD0UZJBTWTjd4stgu4V3uIT9SvCmwDoDAVHySw3J6W90AzGK',1,1,'2020-06-15 04:09:26','2020-08-07 09:22:50'),
(5,'Helmuth Simon Tampubolon','082160085708','082160085708','helmuthsimontampubolon@gmail.com','2020-06-15 15:20:03','$2y$10$xIvXNNqD/0lGuE4rmbtpcO.OhjHvlI7WYqA9gEKkimF5Q3DVjSbxa',NULL,'ySG2AfXvMAMvelAIFyMoB2zajW6QLWbOgxSEmDqezdsCWBpNaPTVs9no6kMF',1,0,'2020-06-15 15:19:02','2020-08-07 09:45:26'),
(10,'Simon Tampubolon','081262322051','081262322051','tampubolonsimon96@gmail.com','2020-08-09 15:27:46','$2y$10$WS3HGWHLIIZ3qwVSt42GmeKSvuNN7TO7ylZX3a2sSd.AGlAIGcXGa',NULL,NULL,1,1,'2020-08-09 15:27:11','2020-08-09 15:27:46'),
(11,'Yohana','082276917489','082276917489','yohanachristina51@gmail.com','2020-09-17 13:55:25','$2y$10$p5UuI8IGW/2U8G.NVzdv.ehLMzRcJLm92Rd7bjd4TIthJCFA71.e.',NULL,NULL,1,0,'2020-09-17 13:54:21','2020-09-17 13:55:25'),
(12,'Kristopel Lumbantoruan','0987','89765','kristopelltoruan11@gmail.com','2020-09-17 14:25:02','$2y$10$hbWYG5pcYM3rdpHxomXyEubfIKZ2thvXllr9meQPzTaLJUG7w391W',NULL,NULL,1,0,'2020-09-17 14:24:16','2020-09-17 14:25:02'),
(13,'Indah','0895607765363','0895607765363','indahtrivena124@gmail.com','2020-09-17 14:32:16','$2y$10$UWW.v.UQmdKCjsJRH5jm5u7yBmWZYMLgIl1usIG3B03xJaB0ry2bK',NULL,NULL,1,0,'2020-09-17 14:31:54','2020-09-17 14:32:16'),
(14,'Andreas Tampubolon','081263645782','081263645782','forotherbussines@gmail.com','2020-09-17 14:44:29','$2y$10$1ZQRCHz.kXSDY8qnqtOT3u.JawrGYjmEGklzgGhqEbizpps2/dTMS',NULL,NULL,1,1,'2020-09-17 14:43:55','2020-09-17 14:44:29'),
(15,'Hotni Maria Simatupang','082365967050','082365967050','hotnimsimatupang@gmail.com','2020-09-17 14:51:15','$2y$10$doIkjc9jOAZ.JP/YZQFe.ej1IQE0RolXGxkIpOd7AmUzbvzagtPni',NULL,NULL,4,1,'2020-09-17 14:49:18','2020-09-17 14:51:15'),
(16,'Indah','0895607765363','0895607765363','indahtrivena359@gmail.com','2020-09-17 14:51:02','$2y$10$/UExT23MhK.QvT7o3bIWl.BXzN/SSeRNSVfZOvaP9lE72XgP9F/5e',NULL,NULL,1,1,'2020-09-17 14:49:47','2020-09-17 14:51:02'),
(18,'kajshdkjashd','9182379128731','9182379128731','forcollageitdel@gmail.com',NULL,'$2y$10$.eZKEkXSRMWbzfoQT8yVXeIcswFiOu45ThCY9xIwW2o.YB0UmFLNe','WIOEOIfDUo1ixBpIRCsShb5LhffGD4is2lBhWUCE',NULL,0,0,'2020-11-11 10:39:11','2020-11-11 10:39:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
