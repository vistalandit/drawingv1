-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.28-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk db_databank_it
CREATE DATABASE IF NOT EXISTS `db_databank_it` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `db_databank_it`;

-- membuang struktur untuk table db_databank_it.tbl_dtl_cpu
CREATE TABLE IF NOT EXISTS `tbl_dtl_cpu` (
  `Id_dtl_cpu` int(20) NOT NULL AUTO_INCREMENT,
  `Status` int(20) DEFAULT NULL,
  `Merek` varchar(256) DEFAULT NULL,
  `Tipe_device` varchar(256) DEFAULT NULL,
  `Admin_user` varchar(256) DEFAULT NULL,
  `Cpu_id` varchar(256) DEFAULT NULL,
  `Cpu_ex_id` varchar(256) DEFAULT NULL,
  `Processor` varchar(256) DEFAULT NULL,
  `Clock` varchar(256) DEFAULT NULL,
  `RAM` varchar(256) DEFAULT NULL,
  `HDD` varchar(256) DEFAULT NULL,
  `SSD` varchar(256) DEFAULT NULL,
  `OS` varchar(256) DEFAULT NULL,
  `SN_CPU` varchar(256) DEFAULT NULL,
  `SN_Monitor` varchar(256) DEFAULT NULL,
  `VGA_type` varchar(256) DEFAULT NULL,
  `RAM_VGA` varchar(256) DEFAULT NULL,
  `Monitor_id` varchar(256) DEFAULT NULL,
  `Monitor_ex_id` varchar(256) DEFAULT NULL,
  `SN_Mouse` varchar(256) DEFAULT NULL,
  `Mouse_id` varchar(256) DEFAULT NULL,
  `Mouse_ex_id` varchar(256) DEFAULT NULL,
  `SN_Keyboard` varchar(256) DEFAULT NULL,
  `Keyboard_id` varchar(256) DEFAULT NULL,
  `Keyboard_ex_id` varchar(256) DEFAULT NULL,
  `Lokasi` varchar(256) DEFAULT NULL,
  `Id_main` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_dtl_cpu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_dtl_cpu: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_dtl_cpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_dtl_cpu` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_dtl_hub
CREATE TABLE IF NOT EXISTS `tbl_dtl_hub` (
  `Id_dtl_hub` int(20) DEFAULT NULL,
  `Status` int(20) DEFAULT NULL,
  `Merek` varchar(256) DEFAULT NULL,
  `Hub_type` varchar(256) DEFAULT NULL,
  `Jumlah_port` varchar(256) DEFAULT NULL,
  `SN_Hub` varchar(256) DEFAULT NULL,
  `Hub_id` varchar(256) DEFAULT NULL,
  `Hub_ex_id` varchar(256) DEFAULT NULL,
  `SN_Adaptor` varchar(256) DEFAULT NULL,
  `Adaptor_id` varchar(256) DEFAULT NULL,
  `Adaptor_ex_id` varchar(256) DEFAULT NULL,
  `Lokasi` varchar(256) DEFAULT NULL,
  `Id_main` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_dtl_hub: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_dtl_hub` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_dtl_hub` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_dtl_laptop
CREATE TABLE IF NOT EXISTS `tbl_dtl_laptop` (
  `Id_dtl_laptop` int(20) NOT NULL AUTO_INCREMENT,
  `Status` int(20) DEFAULT NULL,
  `Merek` varchar(256) DEFAULT NULL,
  `Laptop_Type` varchar(256) DEFAULT NULL,
  `Admin_user` varchar(256) DEFAULT NULL,
  `Laptop_id` varchar(256) DEFAULT NULL,
  `Laptop_ex_id` varchar(256) DEFAULT NULL,
  `Processor` varchar(256) DEFAULT NULL,
  `Clock` varchar(256) DEFAULT NULL,
  `RAM` varchar(256) DEFAULT NULL,
  `HDD` varchar(256) DEFAULT NULL,
  `SSD` varchar(256) DEFAULT NULL,
  `OS` varchar(256) DEFAULT NULL,
  `SN_Laptop` varchar(256) DEFAULT NULL,
  `VGA_type` varchar(256) DEFAULT NULL,
  `RAM_VGA` varchar(256) DEFAULT NULL,
  `SN_Mouse` varchar(256) DEFAULT NULL,
  `Mouse_id` varchar(256) DEFAULT NULL,
  `Mouse_ex_id` varchar(256) DEFAULT NULL,
  `SN_Adaptor` varchar(256) DEFAULT NULL,
  `Adaptor_id` varchar(256) DEFAULT NULL,
  `Adaptor_ex_id` varchar(256) DEFAULT NULL,
  `Lokasi` varchar(256) DEFAULT NULL,
  `Id_main` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_dtl_laptop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_dtl_laptop: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_dtl_laptop` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_dtl_laptop` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_dtl_printer
CREATE TABLE IF NOT EXISTS `tbl_dtl_printer` (
  `Id_dtl_printer` int(20) NOT NULL AUTO_INCREMENT,
  `Status` int(20) DEFAULT NULL,
  `Merek` varchar(256) DEFAULT NULL,
  `Printer_type` varchar(256) DEFAULT NULL,
  `SN_printer` varchar(256) DEFAULT NULL,
  `Printer_id` varchar(256) DEFAULT NULL,
  `Printer_ex_id` varchar(256) DEFAULT NULL,
  `SN_Adaptor` varchar(256) DEFAULT NULL,
  `Adaptor_id` varchar(256) DEFAULT NULL,
  `Adaptor_ex_id` varchar(256) DEFAULT NULL,
  `Lokasi` varchar(256) DEFAULT NULL,
  `Id_main` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_dtl_printer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_dtl_printer: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_dtl_printer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_dtl_printer` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_dtl_scanner
CREATE TABLE IF NOT EXISTS `tbl_dtl_scanner` (
  `Id_dtl_scanner` int(20) NOT NULL AUTO_INCREMENT,
  `Status` int(20) DEFAULT NULL,
  `Merek` varchar(256) DEFAULT NULL,
  `Scanner_type` varchar(256) DEFAULT NULL,
  `SN_scanner` varchar(256) DEFAULT NULL,
  `Scanner_id` varchar(256) DEFAULT NULL,
  `Scanner_ex_id` varchar(256) DEFAULT NULL,
  `SN_Adaptor` varchar(256) DEFAULT NULL,
  `Adaptor_id` varchar(256) DEFAULT NULL,
  `Adaptor_ex_id` varchar(256) DEFAULT NULL,
  `Lokasi` varchar(256) DEFAULT NULL,
  `Id_main` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id_dtl_scanner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_dtl_scanner: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_dtl_scanner` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_dtl_scanner` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_log_activityt_it
CREATE TABLE IF NOT EXISTS `tbl_log_activityt_it` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Tgl_order` timestamp NULL DEFAULT NULL,
  `No_aset` varchar(50) DEFAULT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Divisi` varchar(50) DEFAULT NULL,
  `Kategori` varchar(50) DEFAULT NULL,
  `Keluhan_permintaan` varchar(250) DEFAULT NULL,
  `Solusi` varchar(550) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Tgl_finish` timestamp NULL DEFAULT NULL,
  `Hari_finish` varchar(50) DEFAULT NULL,
  `J_durasi_finish` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_log_activityt_it: ~110 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_log_activityt_it` DISABLE KEYS */;
INSERT INTO `tbl_log_activityt_it` (`Id`, `Tgl_order`, `No_aset`, `Nama`, `Divisi`, `Kategori`, `Keluhan_permintaan`, `Solusi`, `Status`, `Tgl_finish`, `Hari_finish`, `J_durasi_finish`, `Keterangan`) VALUES
	(1, '2023-02-09 16:30:00', 'GJP-KPRN-301', NULL, 'PHCK 3', 'Printer', 'Di Cek Printer Baru', 'sudah deliver ke projek PHCK, dengan pak Singgih', NULL, NULL, NULL, NULL, NULL),
	(2, '2023-02-14 11:00:00', NULL, 'Indri', '208', 'Network', 'Network LAN hilang/ putus', 'Windows Troubleshooting, dan pancing ganti patch kabel lainnya.', NULL, NULL, NULL, NULL, NULL),
	(3, '2023-02-14 11:10:00', NULL, 'Fitri', '205', 'Monitor', 'Monitor terlalu kecil', 'Ganti Monitor baru yg resolusi nya lebih besar', NULL, NULL, NULL, NULL, NULL),
	(4, '2023-02-14 11:12:00', NULL, 'Nada', '204', 'Monitor', 'Monitor terlalu kecil', 'Ganti Monitor baru yg resolusi nya lebih besar', NULL, NULL, NULL, NULL, NULL),
	(5, '2023-02-14 11:15:00', NULL, 'Henra', '213', 'Device', 'Kabel power, mouse, keyboard tidak ada', 'sebelumnya meja ratu 219, meminjam keyboard, mouse dan kabel power dari henra', NULL, NULL, NULL, NULL, NULL),
	(6, '2023-02-14 11:30:00', NULL, 'Martha', '445', 'Network', 'Network LAN hilang/ putus', 'Cek kabeling dan minta ditampilkan LAN status di task bar', NULL, NULL, NULL, NULL, NULL),
	(7, '2023-02-14 15:38:00', NULL, 'Nada', '204', 'Printer', 'Tray printer copot', 'Sudah dipasang kembali tray kertas nya', NULL, NULL, NULL, NULL, NULL),
	(8, '2023-02-15 10:00:00', NULL, 'George', '132', 'PC', 'PC booting startup repairing looping', 'BIOS SATA nya dirubah (jika dell) dari RAID ON menjadi AHCI, jika yg lain, dari AHCi ke compatible', NULL, NULL, NULL, NULL, NULL),
	(9, '2023-02-15 10:33:00', NULL, 'Rocky', '218', 'Device', 'mouse left klik nya bermasalah', 'ganti mouse baru logitech dari stok di lt.2', NULL, NULL, NULL, NULL, NULL),
	(10, '2023-02-15 11:56:00', NULL, 'IT', NULL, 'INV', 'invintaris 6 laptop WFH dan label', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, '2023-02-16 10:33:00', NULL, 'Aileen', '423', 'Printer', 'tray feeding paper printer epson l360 rusak, jamming', 'sementara ditukar dgn printer epsonl360 yg di ruamh IT, harus di service tray nya, finanace request minta printer yg bisa untuk F$, karena untuk pajak', NULL, NULL, NULL, NULL, NULL),
	(12, '2023-02-17 10:23:00', NULL, 'George', '432', 'PC', 'Bios PC, bermasalah lagi', 'Ganti batere CMOS', NULL, NULL, NULL, NULL, NULL),
	(13, '2023-02-20 09:16:00', NULL, 'Devi', '428', 'PC', 'Lupa login ke akun Devi', 'masuk dari admin, control panel, set password', NULL, NULL, NULL, NULL, NULL),
	(14, '2023-02-20 09:18:00', NULL, 'Elizabeth', '131', 'Network', 'Mapping network drive selalu "microsoft windows network the local device name is already in use"', 'disconnect old map, create new, pilih reconnect dan login with different credential dan remember password', NULL, NULL, NULL, NULL, NULL),
	(15, '2023-02-20 09:55:00', NULL, 'Gaby', '207', 'Printer', 'tidak bisa scan printer', 'kabel usb to host nya copot', NULL, NULL, NULL, NULL, NULL),
	(16, '2023-02-20 10:00:00', 'JKM-KLA-POP-AS', 'Kris', NULL, 'Laptop', 'upgrade laptop kris/ TUKAR LAPTOP DARI REDMI JKM-KLAP-010 MENJADI SBP-KLAP-001', 'sudah di serah terima ke kris', NULL, NULL, NULL, NULL, NULL),
	(17, '2023-02-20 11:00:00', NULL, 'devi', '428', 'Printer', 'tidak bisa koneksi printer', 'koneksi baru printer dari windows 10 ke windows 7, dipancing dgn driver win10 64 bit di client nya', NULL, NULL, NULL, NULL, NULL),
	(18, '2023-02-20 11:52:00', NULL, 'abdul', '431', 'Monitor', 'monitor baru', 'set monitor baru di meja 422', NULL, NULL, NULL, NULL, NULL),
	(19, '2023-02-21 10:07:00', NULL, 'imelda', '449', 'network', 'koneksi ke nas tidak bisa dengan hostname', 'di akali dgn konek via IP : 20.20.20.23', NULL, NULL, NULL, NULL, NULL),
	(20, '2023-02-21 16:00:00', NULL, 'William', '223', 'printer', 'tidak bisa koneksi printer l1300 pc', 'sudah di buat koneksi baru ke a-l1300-pc', NULL, NULL, NULL, NULL, NULL),
	(21, '2023-02-21 16:10:00', NULL, 'Reza', '222', 'printer', 'tidak bisa koneksi printer l1300 pc, macintosh', 'di coba koneksi add printer, via windows bukan IP, lalu pilih workgroup lalu pilih a-l1300-pc, lalu pilih protocolernya jet-drive bukan IPP, dan di bagian drivernya select software, pilih epson l1300', NULL, NULL, NULL, NULL, NULL),
	(22, '2023-02-21 16:16:00', NULL, 'Arif', '224', 'printer', 'tidak bisa koneksi printer l1300 pc', 'sudah di buat koneksi baru ke a-l1300-pc', NULL, NULL, NULL, NULL, NULL),
	(23, '2023-02-23 09:00:00', 'JKM-KCU-1101-AS', 'Yosua', '225', 'PC', 'tukar PC ', 'tukar PC dengan IOA yang ada di ruang bu hanna', NULL, NULL, NULL, NULL, NULL),
	(24, '2023-02-24 11:00:00', NULL, 'Dewi', '411', 'PC', 'minta direset akun di pc pak abdul', 'reset via admin', NULL, NULL, NULL, NULL, NULL),
	(25, '2023-02-27 11:05:00', NULL, 'Yosua', '225', 'laptop', 'pinjam laptop pertama  untuk meeting BTN di ruang meeting 1, lt1', 'di pinjamkan laptop,  Acer - Aspire E1-432 (JKM-KLAP-009) - WFH-04', NULL, NULL, NULL, NULL, NULL),
	(26, '2023-02-27 11:10:00', NULL, 'Yosua', '225', 'laptop', 'pinjam laptop kedua untuk meeting BTN di ruang meeting 1, lt1', 'di pinjamkan laptop,  HP - 14-CK0016TU (JKM-KLAP-008)', NULL, NULL, NULL, NULL, NULL),
	(27, '2023-02-28 09:36:00', NULL, 'Risa', '206', 'Monitor', 'monitor tidak nyala', 'di kencangkan/ cek kabel power dan vga monitor', NULL, NULL, NULL, NULL, NULL),
	(28, '2023-02-28 11:45:00', NULL, 'natali', '132', 'internet', 'wifi , no internet, tapi lan kabel bisa internet', 'di tunggu sebenter, wifi nya kembali normal, wifi suka fluktuatif, RTO sendiri', NULL, NULL, NULL, NULL, NULL),
	(29, '2023-02-28 05:20:00', NULL, 'dRatna', '431', 'PC', 'setting pc baru, lan dan printer', 'sudah di setting pc, jaringan lan dan network printing ke pc nia', NULL, NULL, NULL, NULL, NULL),
	(30, '2023-02-28 05:25:00', NULL, 'dRatna', '431', 'network', 'minta di buatkan akun untuk ke NAS, miliknya - dewi ratna', 'request di tampung, karena belum dapat akses ke NAS, untuk buat akun/ folder', NULL, NULL, NULL, NULL, NULL),
	(31, '2023-03-02 09:25:00', NULL, 'imelda ', '449', 'network', 'net mapping ke NAS imelda, not accesible', 'solusi dgn remove mapping lama, via cmd, net use delete\\\\20.20.20.23\\finalis, lalu di buat mapping ulang', NULL, NULL, NULL, NULL, NULL),
	(32, '2023-03-02 10:25:00', NULL, 'Dewi', '411', 'software', 'bu dewi, tdk bisa buka e-spt, krn tdk ada ms.access 2017', 'di tawarkan install ms.access 2013, tapi  bu dewi, melilih untuk menggunakan via laptopnya, krn yg pc, semenjak di upgrade, e-spt konek ke databse nya tdk bisa.', NULL, NULL, NULL, NULL, NULL),
	(33, '2023-03-02 10:40:00', NULL, 'Dewi', '411', 'Network', 'bu dewi, request untuk LAN pak hadi di bagian accounting', 'jalur Lan nya tidak ada, sudah tersedia LAN', NULL, NULL, NULL, NULL, NULL),
	(34, '2023-03-02 10:45:00', NULL, 'Dewi', '411', 'PC', 'request setting untuk, PC pak hardi,', 'posisi meja, sementara duduk di 422, karena di wilayah pak abdul, jalur LAN, sdh dipakai semua. Dan PC untuk pak hardi, saran dari bu dewi, menggunakan eks. Pc pak abdul.', NULL, NULL, NULL, NULL, NULL),
	(35, '2023-03-02 10:50:00', NULL, 'Indri', '208', 'network', 'minta di buatkan akun untuk ke NAS, milik markom baru, - adri', 'request di tampung, karena belum dapat akses ke NAS, untuk buat akun/ folder', NULL, NULL, NULL, NULL, NULL),
	(36, '2023-03-02 11:15:00', NULL, 'Yosua', '225', 'device', 'request untuk konektor type A to LAN, untuk Laptopnya, krn selama ini pinjam punya bu metta', 'request di tampung, krn tdk ada barang', NULL, NULL, NULL, NULL, NULL),
	(37, '2023-03-02 13:35:00', NULL, 'Elizabeth', '131', 'PC', 'pc bu elizabeth, tdk mau boot ke hd, no bootable devices found, F1 retry boot, F2 setuo boot, F5 run diagnosa', NULL, NULL, NULL, NULL, NULL, NULL),
	(38, '2023-03-02 13:55:00', 'JKM-KLAP-002', 'Elizabeth', '131', 'Laptop', 'pc bu elizabeth msh belom benar, krn NVRam nya bermasalah', 'solusi di berikan laptop X2 (JKM-KLAP-002), yang memang sudah untuk bu elizabeth', NULL, NULL, NULL, NULL, NULL),
	(39, '2023-03-02 16:35:00', NULL, 'Yosua', '225', 'software', 'pak yosua, minta di installkan ELO', 'request di tampung dulu, krn blom dapat akses ELO dan ECES', NULL, NULL, NULL, NULL, NULL),
	(40, '2023-03-03 10:15:00', NULL, 'Devi', '428', 'PC', 'pc tidak mau nyala, lampu hd, kedap kedip', 'solusi pertama cabut RAM, bersihkan pin ram dgn hapusan, lalu pasang dan restart.', NULL, NULL, NULL, NULL, NULL),
	(41, '2023-03-03 10:45:00', NULL, 'Natalia', '132', 'software', 'request install foxit/ nitro pdf', 'sdh di download, tapi perlu login sebagai administrator, login administratornya beda dari yg biasa.', NULL, NULL, NULL, NULL, NULL),
	(42, '2023-03-03 15:00:00', 'JKM-KLAP-010', 'Deddy', NULL, 'laptop', 'ambil laptop untuk Daru, project rajak dan PHCS3', 'sdh di ambil dgn tanda terima', NULL, NULL, NULL, NULL, NULL),
	(43, '2023-03-06 09:40:00', NULL, 'Anggy', '427', 'PC', 'pc nya tidak mau restart, bunyi-bunyi, lampu hd kedap kedip', 'bongkar pasang ram, nya, di bersihkan dgn hapusan', NULL, NULL, NULL, NULL, NULL),
	(44, '2023-03-06 10:10:00', NULL, 'Risa', '206', 'PC', 'pc nya tidak mau restart, bunyi-bunyi, lampu hd kedap kedip', 'bongkar pasang ram, nya, di bersihkan dgn hapusan', NULL, NULL, NULL, NULL, NULL),
	(45, '2023-03-06 10:20:00', NULL, 'Ari', 'IT', 'Laptop', 'laptop dan hp tidak bisa koneksi ke wifi, tapi dari latop yg lain bisa wifi', 'dari terminal mac : sudo killall -HUP mDNSResponder\r\n', NULL, NULL, NULL, NULL, NULL),
	(46, '2023-03-06 14:10:00', NULL, 'Arif', '224', 'Laptop', 'laptop nya merasa lamban minta di naikan RAM dari 8GB ke 16 GB, karena buka beberapa aplikasi, AutoCAD, Chrome, Word, processor nya agak panas jika di pegang', NULL, NULL, NULL, NULL, NULL, NULL),
	(47, '2023-03-06 14:15:00', NULL, 'Wiiliam', '221', 'PC', '"Di PHCK, request untuk di cek pc tim nya agar bisa mendukung aplikasi pak asep, 8 GB dan hardisk 512 gb.\nkemungkinan request untuk di buatkan jar8ingan lokal LAN, sehingga tuker data tdk lagi dengan usb/ hardisk.\n\n"', 'sudah di cek via remote, memory RAM nya kurang, hanya 4 Gb\r\n', NULL, NULL, NULL, NULL, NULL),
	(48, '2023-03-06 16:00:00', NULL, 'Ari', '144', 'software', 'upload laravel vista ke hosting', ', tapi masih kendala di css dan js, sudah solve dgn di beri akses CHMOD di folder easyUI', NULL, NULL, NULL, NULL, NULL),
	(49, '2023-03-07 08:35:00', NULL, 'Natalia', '132', 'printer', 'printer tdk nyala', 'kabel power tidak ketat tercolok', NULL, NULL, NULL, NULL, NULL),
	(50, '2023-03-07 10:15:00', NULL, 'Lisa', '446', 'Telepon', 'telepon tidak berfungsi', 'cek unit dan kabel OK, minta di cek Pak Sulis, ternyata ada kabel di plafon yg di gigit tikus, sedang di handle pak Sulis.\r\n', NULL, NULL, NULL, NULL, NULL),
	(51, '2023-03-07 10:30:00', NULL, 'Anggy', '427', 'Network', 'Tidak bisa ke NAS', 'Tenyata oleh pak yongki terdelete user aku anggy, hellen, dan ailien (tim finance), karena ketika membuat akun baru pak hardi (422), sudah di solve di NAS oleh pak Yongki', NULL, NULL, NULL, NULL, NULL),
	(52, '2023-03-07 11:10:00', NULL, 'Leonardo', '223', 'Printer', 'tidak bisa print', 'sudah di koneksikan network print nya, karena nama print servernya minggu lalu di rubah, menjadi A-L1300-PC dari L-1300-PC', NULL, NULL, NULL, NULL, NULL),
	(53, '2023-03-07 13:00:00', NULL, 'Hardi', '422', 'Network', 'pindah lokasi dari 422 ke 433, ke tim accounting', 'pindah set lokasi PC dan di pasang HUB untuk jalur tim accounting, dan pathc kabel straight type B', NULL, NULL, NULL, NULL, NULL),
	(54, '2023-03-07 13:30:00', NULL, 'IT', '433', 'PC', 'belum ada power outlet di bawah meja, request ke pak sulis', 'sdh set semua', NULL, NULL, NULL, NULL, NULL),
	(55, '2023-03-07 14:10:00', NULL, 'Joe', 'Harmoni Primavera', 'Software', 'Word nya minta code product key', NULL, NULL, NULL, NULL, NULL, NULL),
	(56, '2023-03-07 15:00:00', NULL, 'IT', NULL, 'PC', 'Inventory 2 PC untuk projek sukabumi, atau untuk lt 2.', 'Inventory 2 PC untuk projek sukabumi, atau untuk lt 2.', NULL, NULL, NULL, NULL, NULL),
	(57, '2023-03-08 09:16:00', NULL, 'Christine', '448\r\n', 'PC', 'tdk bisa login ke windows/ lupa password\r\n', 'di reset dari admin, buat password baru', NULL, NULL, NULL, NULL, NULL),
	(58, '2023-03-08 10:50:00', NULL, 'Hendra', '213', 'Printer', 'tidak bisa ngeprint', 'sudah di koneksikan ke printer fitri dan yogi(verra 220)', NULL, NULL, NULL, NULL, NULL),
	(59, '2023-03-08 14:00:00', NULL, 'Ari', '144', 'software', 'bagaimana dump sql dari Dbeaver', 'dari table klik kanan, generate sql, ddl', NULL, NULL, NULL, NULL, NULL),
	(60, '2023-03-08 15:00:00', NULL, 'IT', NULL, 'PC', 'set PC untuk magang 3 (agustine), meja di samping jose dan rudolf', 'msh kurang power outlet, semua sdh ready power dan lan', NULL, NULL, NULL, NULL, NULL),
	(61, '2023-03-09 09:25:00', NULL, 'dRatna', '432', 'Printer', 'tidak bisa print dari accure dan NAS hilang', 'di release ip/ flush dns, koneksi ulang printer ke nia-pc, dan set ulang mapping NAS', NULL, NULL, NULL, NULL, NULL),
	(62, '2023-03-09 09:35:00', NULL, 'Cynthia', '425', 'Network', 'NAS hilang', 'mapping ulang NAS', NULL, NULL, NULL, NULL, NULL),
	(63, '2023-03-10 10:30:00', NULL, 'IT', NULL, 'PC', 'Preparing dan labeling PC untuk project Sukabumi', '3 PC (Solar-13, Solar-14, Solar-15), 1 monitor. 2 kabel power', NULL, NULL, NULL, NULL, NULL),
	(64, '2023-03-13 09:42:00', NULL, 'dratna', '432', 'printer', 'setting network printer hilang', 'di lakukan seeting ulang, network printer', NULL, NULL, NULL, NULL, NULL),
	(65, '2023-03-13 11:48:00', NULL, 'dratna', '432', 'software', 'aplikasi accure hang, access violation error FFFF0000', 'force shutdown, task manager', NULL, NULL, NULL, NULL, NULL),
	(66, '2023-03-13 17:00:00', NULL, 'IT', NULL, 'software', 'setting autocad 2017 untuk project PHCk di laptop solar-L10', 'setting autocad 2017 untuk project PHCk di laptop solar-L10', NULL, NULL, NULL, NULL, NULL),
	(67, '2023-03-14 10:00:00', NULL, 'Cynthia', '425', 'pc', 'tuker lokasi pc', 'tuker lokasi pc dari 425 ke 424', NULL, NULL, NULL, NULL, NULL),
	(68, '2023-03-14 10:30:00', NULL, 'Tuti', 'Admin PHCK', 'software', 'install anydesk ke pc admin PHCK', 'anydesk untuk mengetahui RAM, HD dan spek lainnya', NULL, NULL, NULL, NULL, NULL),
	(69, '2023-03-14 11:20:00', NULL, 'Leo ', 'Pelaksana Cisoka', 'software', 'minta di instalkan nitro pdf dan sketchup di solar-L10', 'nitro 9 dan sketchup 2019 sudah di instal,', NULL, NULL, NULL, NULL, NULL),
	(70, '2023-03-15 10:30:00', NULL, 'Hendra', '213', 'printer', 'tidak bisa print dan minta akun untuk ECES', 'sudah di set prin ke meja pak rey dan fitri, untuk ECES, di tanyakan dahulu', NULL, NULL, NULL, NULL, NULL),
	(71, '2023-03-15 11:10:00', NULL, 'Cynthia', '425', 'PC', 'minta di sambungkan dgn aplikasi remote ultraviewer, untuk bisa di remote oleh tim eces', 'disarankan menggunakan anydesk, di ajarkan cara menggunakan anydesk', NULL, NULL, NULL, NULL, NULL),
	(72, '2023-03-16 15:00:00', NULL, 'IT', '', 'Printer', 'Setting printer baru L1300', 'Setting printer baru L1300', NULL, NULL, NULL, NULL, NULL),
	(73, '2023-03-16 09:00:00', NULL, 'Henry', '321', 'Internet', 'melalui natalia, di informasikan bahwa wifi internet lambat sekali, speed nya hanya 0,2', 'sudah lapor ke pak Yongki, (karena belum dapet akses ke kontak provider/ AP wifi)', NULL, NULL, NULL, NULL, NULL),
	(74, '2023-03-16 10:20:00', NULL, 'Nadya', 'MPH Rajeg', 'Software', 'word dan excelnya error code 0x0000142', 'dari RUN, appwiz.cpl, pilih office, change, repair.', NULL, NULL, NULL, NULL, NULL),
	(75, '2023-03-16 11:10:00', NULL, 'metta', '226', 'laptop', 'menitipkan laptop ke cisoka untuk pak Leo via bu metta', 'menitipkan laptop ke cisoka untuk pak Leo via bu metta', NULL, NULL, NULL, NULL, NULL),
	(76, '2023-03-16 13:00:00', NULL, 'Andri', '201', 'software', 'perlu install software dari admin', 'dibantukan login dari admin', NULL, NULL, NULL, NULL, NULL),
	(77, '2023-03-16 13:30:00', NULL, 'Rudolf', '217', 'Item', 'terima barang mouse pad 70 pieces dari GA', 'di bagikan ke user', NULL, NULL, NULL, NULL, NULL),
	(78, '2023-03-16 15:00:00', NULL, 'Hendra', '213', 'Software', 'request di installkan AutoCad 2017', 'sudah di installkan autocad 2017', NULL, NULL, NULL, NULL, NULL),
	(79, '2023-03-16 15:30:00', NULL, 'Fitri', '205', 'Software', 'request di installkan AutoCad 2017', 'sudah di installkan autocad 2017', NULL, NULL, NULL, NULL, NULL),
	(80, '2023-03-16 17:10:00', NULL, 'Anggy', '427', 'Phone', 'trouble di kabel telepon ke dinding', 'sementara menggunakan jalur eks devi 428, akan di minta tolong ke pak sulis', NULL, NULL, NULL, NULL, NULL),
	(81, '2023-03-16 17:20:00', NULL, 'Niken', '443', 'Printer', 'warna merah tipis kurang', 'di refill warna merah dan clean head', NULL, NULL, NULL, NULL, NULL),
	(82, '2023-03-20 11:30:00', NULL, 'Sindy', '424', 'PC', 'PC setting user baru, untuk Sindy, PC, halt', 'Solusi PC halt, switch memory dari slot 1 ke slot 2', NULL, NULL, NULL, NULL, NULL),
	(83, '2023-03-20 11:40:00', NULL, 'IT', '', 'Laptop', 'inventory label untuk laptop HP, HMC-KLA-P01-CK, PHCK-Destri', 'label menjadi HMC-KLAP-001', NULL, NULL, NULL, NULL, NULL),
	(84, '2023-03-20 13:30:00', NULL, 'Dian', 'MPH Rajeg', 'PC', 'PC nya error bluescreen 0x0000007A\r\n', 'di cek untuk CHKDSK /f dan defragment C:, error sepertinya ada bad sector pada hardisk', NULL, NULL, NULL, NULL, NULL),
	(85, '2023-03-20 15:00:00', NULL, 'Harun', NULL, 'Printer', 'request setting printer ke Fitri PC', 'sudah di setting printer ke PC Fitri', NULL, NULL, NULL, NULL, NULL),
	(86, '2023-03-23 09:00:00', NULL, 'IT', NULL, 'Software', 'Convert database activity log fro excel to maridb', 'Convert database activity log fro excel to maridb', NULL, NULL, NULL, NULL, NULL),
	(87, '2023-03-23 09:16:00', NULL, 'Fitri', '205', 'Mouse', 'minta tuker mouse karena, klik kanannya sudah mulai sukar di klik', 'tuker dengan mouse cadangan IT', NULL, NULL, NULL, NULL, NULL),
	(88, '2023-03-23 09:43:00', NULL, 'IT', NULL, 'Software', 'setting MariaDB dan anydesk unattend untuk laptop PHCK (project pak william)', 'setting MariaDB dan anydesk unattend untuk laptop PHCK (project pak william)', NULL, NULL, NULL, NULL, NULL),
	(89, '2023-03-23 14:31:35', NULL, 'IT\r\n', NULL, 'Mouse\r\n', 'Inventory 10 Mouse baru M90\r\n', 'Inventory 10 Mouse baru M90\r\n', NULL, NULL, NULL, NULL, NULL),
	(90, '2023-03-23 14:31:58', NULL, 'IT\r\n', NULL, 'Keyboard\r\n', 'Inventory 10 keyboard baru K120\r\n', 'Inventory 10 keyboard baru K120\r\n', NULL, NULL, NULL, NULL, NULL),
	(91, '2023-03-23 14:32:04', NULL, 'Natalia\r\n', '132\r\n', 'Tas Laptop\r\n', 'Natalia minta tas laptop\r\n', 'Di beriksn tas laptop cadangan\r\n', NULL, NULL, NULL, NULL, NULL),
	(92, '2023-03-23 15:50:00', NULL, 'Priscilla\r\n', '444\r\n', 'Printer\r\n', 'settingan printer ke martha-pc, hilang, karena baru di update\r\n', 'di sett ulang printer ke martha-pc\r\n', NULL, NULL, NULL, NULL, NULL),
	(93, '2023-03-24 11:00:00', NULL, 'Niken \r\n', '443\r\n', 'Printer\r\n', 'L 3110, ink pad is at the end of its service life\r\n', 'di crack dgn resetter l 3110\r\n', NULL, NULL, NULL, NULL, NULL),
	(94, '2023-03-27 08:56:00', NULL, 'Natalia\r\n', '132\r\n', 'PC\r\n', 'tukar  PC AIO dengan ex George\r\n', 'tukar  PC AIO dengan ex George\r\n', NULL, NULL, NULL, NULL, NULL),
	(95, '2023-03-27 09:20:00', NULL, 'Tuti\r\n', 'Admin PHCK\r\n', 'Printer\r\n', 'Scanner Brother ADS-1700W tidak bisa running\r\n', 'via anydesk, cek koneksi fisik, lalu install ulamg driver brother ADS-1700W\r\n', NULL, NULL, NULL, NULL, NULL),
	(96, '2023-03-27 09:28:00', NULL, 'Tuti\r\n', 'Admin PHCK\r\n', 'software\r\n', 'tidak bisa akses ke elo dan eices\r\n', 'karena belum ada akses ke elo dan eices, maka masalah ini di escalate ke pak Yongki\r\n', NULL, NULL, NULL, NULL, NULL),
	(97, '2023-03-27 09:40:00', NULL, 'Natalia\r\n', '132\r\n', 'Proyektor\r\n', 'merasa tampilan proyektor yg di laptop dan di layar beda\r\n', 'setting proyektor di gnati dari extended ke duplicate\r\n', NULL, NULL, NULL, NULL, NULL),
	(98, '2023-03-27 09:50:00', NULL, 'Sindy\r\n', '425\r\n', 'Network\r\n', 'tidak bisa internet\r\n', 'power hubnya belum di hidupkan di meja eks devi\r\n', NULL, NULL, NULL, NULL, NULL),
	(99, '2023-03-27 09:55:00', NULL, 'Elisa\r\n', '446\r\n', 'Printer\r\n', 'tidak bisa ngeprint ke Niken-PC\r\n', 'di remove semua driver L1330, restart, lalu install ulang untuk printer niken-pc dan martha-pc\r\n', NULL, NULL, NULL, NULL, NULL),
	(100, '2023-03-27 10:26:00', NULL, 'Natalia\r\n', '132\r\n', 'Network\r\n', 'sett wifi ke calon karyawan di ruang meeting besar\r\n', 'sett wifi ke calon karyawan di ruang meeting besar\r\n', NULL, NULL, NULL, NULL, NULL),
	(101, '2023-03-27 10:35:00', NULL, 'Elizabeth\r\n', '131\r\n', 'Frame\r\n', 'minta bantu di mur kan frame baru untuk visi misi vistaland\r\n', 'minta bantu di mur kan frame baru untuk visi misi vistaland\r\n', NULL, NULL, NULL, NULL, NULL),
	(102, '2023-03-27 10:45:00', NULL, 'Asep\r\n', '142\r\n', 'Software\r\n', 'request agar thumbnail terbaca di file explorer\r\n', 'file explorer, option folder, view, di uncheck always show icon, never thumbnail\r\n', NULL, NULL, NULL, NULL, NULL),
	(103, '2023-03-27 12:06:00', NULL, 'Selvy\r\n', '311\r\n', 'Monitor\r\n', 'monitor tidak nyala\r\n', 'di cek, power monitornya kendor\r\n', NULL, NULL, NULL, NULL, NULL),
	(104, '2023-03-28 09:00:00', NULL, 'Anggy\r\n', '427\r\n', 'software\r\n', 'request minta di installkan ELO\r\n', 'konfirmasi dulu dapat order install ELO darimana ?\r\n', NULL, NULL, NULL, NULL, NULL),
	(105, '2023-03-28 09:10:00', NULL, 'Desi\r\n', '426\r\n', 'software\r\n', 'e faktur pajak nilainya 0 terus, padahal ada value, menurut org pajak di clear browser cache\r\n', 'sudah bantu clear browse cache dan mengunnakan incognito, msh sama, akan di kontak oleh desi lagi ke org pajak\r\n', NULL, NULL, NULL, NULL, NULL),
	(106, '2023-03-28 09:20:00', NULL, 'Dewi\r\n', '411\r\n', 'Printer\r\n', 'tidak bisa scan semenjak ganti cpu\r\n', 'di installkan driver scanner epson l 3210\r\n', NULL, NULL, NULL, NULL, NULL),
	(107, '2023-03-29 11:20:00', NULL, 'P\'Moses\r\n', NULL, 'Software\r\n', 'request di installkan autocad dan photoshop di semua PC timnya\r\n', 'sudah di installkan autocad dan GIMP\r\n', NULL, NULL, NULL, NULL, NULL),
	(108, '2023-03-29 13:05:00', NULL, 'IT\r\n', NULL, 'Network\r\n', 'Inventory 3 HUB port 5 baru\r\n', 'Inventory 3 HUB port 5 baru\r\n', NULL, NULL, NULL, NULL, NULL),
	(109, '2023-03-29 14:30:00', NULL, 'IT\r\n', NULL, 'Network\r\n', 'Membuatkan 4 patch cable untuk tim mejanya p\'Moses\r\n', 'Membuatkan 4 patch cable untuk tim mejanya p\'Moses\r\n', NULL, NULL, NULL, NULL, NULL),
	(110, '2023-03-29 17:10:00', NULL, 'IT\r\n', NULL, 'Printer\r\n', 'Kabel printer head epson L360 dari PHCS, (kris) sobek\r\n', 'Kabel printer head epson L360 dari PHCS, (kris) sobek\r\n', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tbl_log_activityt_it` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_log_it2
CREATE TABLE IF NOT EXISTS `tbl_log_it2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_order` timestamp NULL DEFAULT NULL,
  `no_aset` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `divisi` varchar(50) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `keluhan_permintaan` varchar(250) DEFAULT NULL,
  `solusi` varchar(450) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `tgl_finish` timestamp NULL DEFAULT NULL,
  `hari_finish` varchar(50) DEFAULT NULL,
  `j_durasi_finish` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_log_it2: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_log_it2` DISABLE KEYS */;
INSERT INTO `tbl_log_it2` (`id`, `tgl_order`, `no_aset`, `nama`, `divisi`, `kategori`, `keluhan_permintaan`, `solusi`, `status`, `tgl_finish`, `hari_finish`, `j_durasi_finish`, `keterangan`) VALUES
	(1, '2023-03-21 09:40:08', NULL, NULL, NULL, NULL, 'Di Cek Printer Baru', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, NULL, NULL, NULL, NULL, NULL, 'Network LAN hilang/ putus', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, NULL, NULL, NULL, NULL, NULL, 'dsfsdf', NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tbl_log_it2` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_main_user
CREATE TABLE IF NOT EXISTS `tbl_main_user` (
  `Id_main` int(10) NOT NULL AUTO_INCREMENT,
  `Location` varchar(50) DEFAULT NULL,
  `Site` varchar(50) DEFAULT NULL,
  `Floor` varchar(50) DEFAULT NULL,
  `Phone_ext` varchar(50) DEFAULT NULL,
  `Pic_name` varchar(50) DEFAULT NULL,
  `Tipe_device` varchar(250) DEFAULT NULL,
  `Divisi` varchar(450) DEFAULT NULL,
  `Job_postition` varchar(50) DEFAULT NULL,
  `User_type` varchar(50) DEFAULT NULL,
  `Main_user_status` varchar(50) DEFAULT NULL,
  `Main_user_created_timestamp` timestamp NULL DEFAULT NULL,
  `Role_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_main`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_main_user: ~141 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_main_user` DISABLE KEYS */;
INSERT INTO `tbl_main_user` (`Id_main`, `Location`, `Site`, `Floor`, `Phone_ext`, `Pic_name`, `Tipe_device`, `Divisi`, `Job_postition`, `User_type`, `Main_user_status`, `Main_user_created_timestamp`, `Role_id`) VALUES
	(1, 'AS', '100', '1', '100', 'Pantry 1', NULL, NULL, NULL, NULL, '1', '2023-03-24 15:01:46', 4),
	(2, 'AS', '111', '1', '111', 'Chika Asmarani Amarta', 'None', 'HRGA & Purchasing', 'Receptionist', 'Empty', '1', '2023-03-24 15:03:45', 3),
	(3, 'AS', '121', '1', NULL, 'RM Kecil', NULL, NULL, NULL, NULL, '1', '2023-03-24 15:13:18', 4),
	(4, 'AS', '122', '1', NULL, 'RM Besar', NULL, NULL, NULL, NULL, '1', '2023-03-24 15:13:54', 4),
	(5, 'AS', '131', '1', '131', 'Elizabeth Simora', 'SFF', 'Project', 'HRGA Manager', 'Active User', '1', '2023-03-24 15:15:59', 3),
	(6, 'AS', '132', '1', '132', 'Natalia Ester Chabelita', 'AIO', 'HRGA & Purchasing', 'Recruitment Staff', 'Active User', '1', '2023-03-24 15:19:00', 3),
	(7, 'AS', '133', '1', '133', 'Apriyandi', 'SFF', 'HRGA & Purchasing', 'GA Staff', 'Active User', '1', '2023-03-24 15:19:54', 3),
	(8, 'AS', '140', '1', NULL, 'RM Tamu', '', NULL, NULL, NULL, '1', '2023-03-24 15:21:24', 4),
	(9, 'AS', '141', '1', '141', 'Tim IT - P\'Asep', NULL, NULL, NULL, 'Empty', '1', '2023-03-24 15:23:54', 3),
	(10, 'AS', '142', '1', '141', 'Asep', 'Laptop', 'IT', 'IT Manager', 'Active User', '1', '2023-03-24 15:25:51', 3),
	(11, 'AS', '143', '1', '141', 'Reno', 'PC Rakitan', 'IT', 'IT Staff', 'Active User', '1', '2023-03-24 15:27:22', 1),
	(12, 'AS', '144', '1', '141', 'Ari', 'Laptop', 'IT', 'IT', 'Active User', '1', '2023-03-24 15:29:54', 3),
	(13, 'AS', '145', '1', '142', 'Tim P\'Moses 1', NULL, NULL, NULL, NULL, '1', '2023-03-24 15:31:45', 3),
	(14, 'AS', '146\r\n', '1', '142', 'Tim P\'Moses 2', 'PC Rakitan', NULL, NULL, 'Empty', '1', '2023-03-24 15:32:46', 3),
	(15, 'AS', '147', '1', '142', 'Tim P\'Moses 3', 'PC Rakitan', NULL, NULL, 'Empty', '1', '2023-03-24 15:34:13', 3),
	(16, 'AS', '148', '2', '142', 'Tim P\'Moses 4', NULL, NULL, NULL, NULL, '1', '2023-03-24 15:35:39', 3),
	(17, 'AS', '200', '2', '200', 'Pantry 2', NULL, NULL, NULL, NULL, '1', '2023-03-24 15:40:21', 4),
	(18, 'AS', '201', '2', '201', 'Andri Novianto', 'PC Rakitan', 'Marketing', 'Marketing & Communication Officer', 'Active User', '1', '2023-03-24 15:42:27', 3),
	(19, 'AS', '202', '2', '201', 'Catherine Siti Rahmawati Idris', NULL, 'Marketing', 'Admin Project', 'Active User', '1', '2023-03-24 15:45:20', 3),
	(20, 'AS', '203', '2', '203', 'Jerri Yeremia', NULL, 'Project', 'Promotion Staff', 'Active User', '1', '2023-03-24 15:49:08', 3),
	(21, 'AS', '204', '2', '204', 'Nadya Nada Fitria', NULL, 'Project', 'Admin Legal Rutin Staff', 'Active User', '1', '2023-03-24 15:50:29', 3),
	(22, 'AS', '205', '2', '205', 'Fitri Yanti', NULL, 'Project', 'Admin Legal Rutin Staff', 'Active User', '1', '2023-03-24 15:54:43', 3),
	(23, 'AS', '206', '2', '206', 'Risa', 'SFF', 'Magang', 'Magang', 'Active User', '1', '2023-03-24 15:56:07', 3),
	(24, 'AS', '207', '2', '207', 'Gaby', 'SFF', 'Magang', 'Magang', 'Active User', '1', '2023-03-24 15:57:52', 3),
	(25, 'AS', '208\r\n', '2', '208', 'Indriani Viona', NULL, 'Project', 'Promotion Staff', 'Active User', '1', '2023-03-24 16:01:34', 3),
	(26, 'AS', '209', '2', '209', 'Muhammad Fachmi', NULL, 'Architect', 'Business Development', 'Active User', '1', '2023-03-24 16:03:42', 3),
	(27, 'AS', '210\r\n', '2', '210', 'Nathanael Alexander', 'SFF', 'Project', 'Admin Legal Rutin Staff', 'Active User', '1', '2023-03-24 16:10:21', 3),
	(28, 'AS', '211', '2', '211', 'Agustin', NULL, 'Magang', 'Magang', 'Active User', '1', '2023-03-24 16:20:19', 3),
	(29, 'AS', '212', '2', '212', 'Jose Nathaniel', 'MSFF', 'Corporate Secretary', 'Arsiparis', 'Active User', '1', '2023-03-24 16:23:41', 3),
	(30, 'AS', '213', '2', '213', 'Hendra', NULL, 'Project', 'Legal Rutin Staff', 'Active User', '1', '2023-03-24 16:24:47', 3),
	(31, 'AS', '214', '2', '214', 'Indah', NULL, 'Magang', 'Magang', 'Active User', '1', '2023-03-24 16:27:23', 3),
	(32, 'AS', '215', '2', '215', 'Reynaldo William Pattihawean', NULL, 'Legal', 'Legal Staff', 'Active User', '1', '2023-03-24 16:27:56', 3),
	(33, 'AS', '216', '2', NULL, NULL, NULL, NULL, NULL, 'Empty', '1', '2023-03-24 16:29:01', 4),
	(34, 'AS', '217', '2', '217', 'Rudolf', NULL, 'HRGA & Purchasing', 'Purchasing', 'Active User', '1', '2023-03-24 16:30:15', 3),
	(35, 'AS', '218', '2', '218', 'Rocky Valentino Hutauruk', NULL, 'Project', 'Admin Legal Rutin Staff', 'Active User', '1', '2023-03-24 16:31:25', 3),
	(36, 'AS', '219', '2', '219', 'Ratu Lamlam Setiany Purba', NULL, 'Project', 'Admin Legal Rutin Staff', 'Active User', '1', '2023-03-24 16:33:48', 3),
	(37, 'AS', '220', '2', '220', 'Verawati Hendra', NULL, 'Project', 'Admin Legal Rutin Staff', 'Active User', '1', '2023-03-27 08:23:14', 3),
	(38, 'AS', '221', '2', '221', 'William Suryadi', NULL, 'Project', 'Asst. Manager Project', 'Active User', '1', '2023-03-27 10:14:52', 3),
	(39, 'AS', '222', '2', '222', 'Reza Andinata Wijaya', NULL, 'Project', 'Project Manager', 'Active User', '1', '2023-03-27 10:14:53', 3),
	(40, 'AS', '223', '2', '223', 'Leonardo Dharmaputra', NULL, 'Project', 'Project Manager', 'Active User', '1', '2023-03-27 10:14:54', 3),
	(41, 'AS', '224', '2', '224', 'Arif Budiman Suselo', NULL, 'Project', 'Asst. Manager Project', 'Active User', '1', '2023-03-27 10:14:55', 3),
	(42, 'AS', '225', '2', '225', 'Yosua Benyamin Rachmat', NULL, 'Project', 'Project Manager', 'Active User', '1', '2023-03-27 10:14:56', 3),
	(43, 'AS', '226', '2', '226', 'Metta Marcella', NULL, 'Project', 'Asst. Manager Project', 'Active User', '1', '2023-03-27 10:14:57', 3),
	(44, 'AS', '227', '2', '227', 'Audelia Vanessa Nurwono', NULL, 'Project', 'Asst. Manager Project', 'Active User', '1', '2023-03-27 10:14:58', 3),
	(45, 'AS', '228', '2', '228', 'Server Rakit', NULL, NULL, NULL, 'Active User', '1', '2023-03-27 10:14:59', 4),
	(46, 'AS', '231', '2', '231', 'Mario Yosua Loupatty', NULL, 'Internal Audit', 'Internal Audit', 'Active User', '1', '2023-03-27 10:15:00', 3),
	(47, 'AS', '232', '2', '232', 'Singgih Hatmoko', NULL, 'Project', 'Asst. Manager Project', 'Active User', '1', '2023-03-27 10:15:01', 3),
	(48, 'AS', '233', '2', '233', 'Arif Darmawan', NULL, 'Technical', 'Technical Manager', 'Active User', '1', '2023-03-27 10:15:02', 3),
	(49, 'AS', '241', '2', '241', 'Hanna Kristiany', NULL, 'Direksi', 'Director', 'Active User', '1', '2023-03-27 10:16:00', 3),
	(50, 'AS', '242', '3', '242', NULL, NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:01', 4),
	(51, 'AS', '300', '3', '300', 'Pantry 3', NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:03', 4),
	(52, 'AS', '301', '3', '301', 'Esther Kristiany Hadi', NULL, 'Direksi', 'Director', 'Active User', '1', '2023-03-27 10:16:04', 3),
	(53, 'AS', '302', '3', '302', 'Jongky Juwono Nurwono', NULL, 'Direksi', 'Director', 'Active User', '1', '2023-03-27 10:16:05', 1),
	(54, 'AS', '303', '3', '303', 'Juliana Gunawan', NULL, 'Direksi', 'Director', 'Active User', '1', '2023-03-27 10:16:07', 3),
	(55, 'AS', '304', '3', '304', 'Alex', NULL, 'Direksi', 'Director', 'Active User', '1', '2023-03-27 10:16:08', 3),
	(56, 'AS', '305', '3', '305', 'Hadi', NULL, 'Direksi', 'Director', 'Active User', '1', '2023-03-27 10:16:10', 3),
	(57, 'AS', '310', '3', '310', 'RM Meeting', NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:11', 4),
	(58, 'AS', '311', '3', '311', 'Selvy\r\n', NULL, 'Corporate Secretary', 'Secretary', 'Active User', '1', '2023-03-27 10:16:12', 3),
	(59, 'AS', '312', '3', '312', NULL, NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:15', 4),
	(60, 'AS', '321', '3', '321', 'Hendry', NULL, 'Direksi', 'Director', 'Active User', '1', '2023-03-27 10:16:16', 3),
	(61, 'AS', '322', '4', '322', NULL, NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:17', 4),
	(62, 'AS', '411', '4', '411', 'Dewi Setiyawati', NULL, 'Finance, Accounting & Tax', 'Finance Acounting Manager', 'Active User', '1', '2023-03-27 10:16:19', 3),
	(63, 'AS', '421', '4', '421', NULL, NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:21', 4),
	(64, 'AS', '422', '4', '422', NULL, NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:22', 4),
	(65, 'AS', '423', '4', '423', 'Aileen Felita K', NULL, 'Finance, Accounting & Tax', 'Accounting & Tax Staff', 'Active User', '1', '2023-03-27 10:16:24', 3),
	(66, 'AS', '424', '4', '424', 'Cynthia Permata Kusuma', NULL, 'Finance, Accounting & Tax', 'Accounting & Tax Staff', 'Active User', '1', '2023-03-27 10:16:25', 3),
	(67, 'AS', '425', '4', '425', 'Sindy Hendrisia', NULL, 'Finance, Accounting & Tax', 'Accounting Staff', 'Active User', '1', '2023-03-27 10:16:26', 3),
	(68, 'AS', '426', '4', '426', 'Desi Susilawati', NULL, 'Finance, Accounting & Tax', 'Accounting Staff', 'Active User', '1', '2023-03-27 10:16:29', 3),
	(69, 'AS', '427', '4', '427', 'Anggy Anugrah Pandini', NULL, 'Finance, Accounting & Tax', 'Accounting Staff', 'Active User', '1', '2023-03-27 10:16:30', 3),
	(70, 'AS', '428', '4', '428', NULL, NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:32', 4),
	(71, 'AS', '431', '4', '431', 'Hardi', NULL, 'Finance, Accounting & Tax', 'Finance Supervisor', 'Active User', '1', '2023-03-27 10:16:34', 3),
	(72, 'AS', '432', '4', '432', 'Dewi Ratna', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:35', 3),
	(73, 'AS', '433', '4', '433', NULL, NULL, NULL, NULL, NULL, '1', '2023-03-27 10:16:37', 4),
	(74, 'AS', '434', '4', '434', 'Nina', NULL, NULL, NULL, 'Active User', '1', '2023-03-27 10:16:38', 3),
	(75, 'AS', '441', '4', '441', 'Kurnia Trie Suntari', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:40', 3),
	(76, 'AS', '442', '4', '442', 'Maya Eveline', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:41', 3),
	(77, 'AS', '443', '4', '443', 'Niken Apriliana', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:43', 3),
	(78, 'AS', '444', '4', '444', 'Priscilla Deborah Situmorang', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:44', 3),
	(79, 'AS', '445', '4', '445', 'Martha Christina', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:46', 3),
	(80, 'AS', '446', '4', '446', 'Elisa', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:47', 3),
	(81, 'AS', '447', '4', '447', 'Indro Kusumo', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:48', 3),
	(82, 'AS', '448', '4', '448', 'Ria Christine Natalia Tobing\r\n', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:49', 3),
	(83, 'AS', '449', '4', '449', 'Imelda', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:51', 3),
	(84, 'AS', '450', '4', '450', 'Siefra Paskalia Ismail', NULL, 'Finance, Accounting & Tax', 'Finance Staff', 'Active User', '1', '2023-03-27 10:16:52', 3),
	(85, NULL, 'Proj', NULL, NULL, 'Abdul Muis', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 12:58:17', 3),
	(86, NULL, 'Proj', NULL, NULL, 'Aep Kustaman Handa', NULL, 'Technical', 'Surveyor', NULL, '1', '2023-03-28 12:58:24', 3),
	(87, NULL, 'Proj', NULL, NULL, 'Agis Baiturohmah\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 12:58:29', 3),
	(88, NULL, 'Proj', NULL, NULL, 'Ahmad Junaedi\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 12:58:42', 3),
	(89, NULL, 'Proj', NULL, NULL, 'Ahmad Kaerudin\r\n', NULL, 'Technical', 'Surveyor', NULL, '1', '2023-03-28 12:58:47', 3),
	(90, NULL, 'Proj', NULL, NULL, 'Alya Nur Athifah\r\n', NULL, 'HRGA & Purchasing', 'Office Girl Pusat', NULL, '1', '2023-03-28 12:58:52', 3),
	(91, NULL, 'Proj', NULL, NULL, 'Annissa Nilam Cahaya\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 12:58:56', 3),
	(92, NULL, 'Proj', NULL, NULL, 'Bambang Asroni\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 12:59:07', 3),
	(93, NULL, 'Proj', NULL, NULL, 'Bintoro Hasiholan\r\n', NULL, 'Project', 'Marketing Manager', NULL, '1', '2023-03-28 12:59:13', 3),
	(94, NULL, 'Proj', NULL, NULL, 'Budi Santoso\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 12:59:17', 3),
	(95, NULL, 'Proj', NULL, NULL, 'Daru Yahya\r\n', NULL, 'Technical', 'Surveyor', NULL, '1', '2023-03-28 12:59:23', 3),
	(96, NULL, 'Proj', NULL, NULL, 'Darwin Butarbutar\r\n', NULL, 'Direksi', 'Commisioner', NULL, '1', '2023-03-28 12:59:28', 3),
	(97, NULL, 'Proj', NULL, NULL, 'Dedy Prihantoro\r\n', NULL, 'Technical', 'Technical Manager', NULL, '1', '2023-03-28 12:59:48', 3),
	(98, NULL, 'Proj', NULL, NULL, 'Destri Pardede\r\n', NULL, 'Project', 'Admin KPR', NULL, '1', '2023-03-28 12:59:54', 3),
	(99, NULL, 'Proj', NULL, NULL, 'Dian Novita Sari\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 12:59:58', 3),
	(100, NULL, 'Proj', NULL, NULL, 'Dian Nurdiansyah\r\n', NULL, 'Project', 'Legal Staff', NULL, '1', '2023-03-28 13:00:02', 3),
	(101, NULL, 'Proj', NULL, NULL, 'Didin Awaludin\r\n', NULL, 'HRGA & Purchasing', 'Messenger', NULL, '1', '2023-03-28 13:00:07', 3),
	(102, NULL, 'Proj', NULL, NULL, 'Erna Juliana Pratiwi\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:00:11', 3),
	(103, NULL, 'Proj', NULL, NULL, 'Endang Supriyatna\r\n', NULL, 'Project', 'Legal Rutin Staff', NULL, '1', '2023-03-28 13:00:17', 3),
	(104, NULL, 'Proj', NULL, NULL, 'Endang Suryaningsih\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:00:21', 3),
	(105, NULL, 'Proj', NULL, NULL, 'Erniawati\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:00:26', 3),
	(106, NULL, 'Proj', NULL, NULL, 'Esti Suryani\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:00:32', 3),
	(107, NULL, 'Proj', NULL, NULL, 'Evi Srinovianti\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:00:58', 3),
	(108, NULL, 'Proj', NULL, NULL, 'Fanela Mascik\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:01:03', 3),
	(109, NULL, 'Proj', NULL, NULL, 'Gita Dhias Desrina\r\n', NULL, 'Project', 'Inhouse Senior', NULL, '1', '2023-03-28 13:01:08', 3),
	(110, NULL, 'Proj', NULL, NULL, 'Harun Bongso\r\n', NULL, 'Project', 'Marketing Manager', NULL, '1', '2023-03-28 13:01:14', 3),
	(111, NULL, 'Proj', NULL, NULL, 'Hendri Saputra\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:01:20', 3),
	(112, NULL, 'Proj', NULL, NULL, 'Ida Andreani\r\n', NULL, 'Project', 'Marketing Manager', NULL, '1', '2023-03-28 13:01:24', 3),
	(113, NULL, 'Proj', NULL, NULL, 'Ida Yati\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:01:29', 3),
	(114, NULL, 'Proj', NULL, NULL, 'Ignatius Nuri Satriyo Adikusumo\r\n', NULL, 'Project', 'Project Manager', NULL, '1', '2023-03-28 13:01:34', 3),
	(115, NULL, 'Proj', NULL, NULL, 'Ima Mutmainnah\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:01:38', 3),
	(116, NULL, 'Proj', NULL, NULL, 'Jumadi\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:01:43', 3),
	(117, NULL, 'Proj', NULL, NULL, 'Leonardo Mendrofa\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 13:02:04', 3),
	(118, NULL, 'Proj', NULL, NULL, 'Lukman Mawardi\r\n', NULL, 'HRGA & Purchasing', 'Office Boy Pusat', NULL, '1', '2023-03-28 13:02:12', 3),
	(119, NULL, 'Proj', NULL, NULL, 'Lusyiana Agustin\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:02:17', 3),
	(120, NULL, 'Proj', NULL, NULL, 'M. Ahdy Fakhru Rusydie\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 13:02:20', 3),
	(121, NULL, 'Proj', NULL, NULL, 'Mega Muthiah\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:02:24', 3),
	(122, NULL, 'Proj', NULL, NULL, 'Meltia\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:02:28', 3),
	(123, NULL, 'Proj', NULL, NULL, 'Muhamad Parlan\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 13:02:33', 3),
	(124, NULL, 'Proj', NULL, NULL, 'Muhamad Yusuf\r\n', NULL, 'HRGA & Purchasing', 'Office Boy Pusat', NULL, '1', '2023-03-28 13:02:37', 3),
	(125, NULL, 'Proj', NULL, NULL, 'Muhammad Yakup\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:40', 3),
	(126, NULL, 'Proj', NULL, NULL, 'Nadya Elvandari\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:41', 3),
	(127, NULL, 'Proj', NULL, NULL, 'Nia Mardiana\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:43', 3),
	(128, NULL, 'Proj', NULL, NULL, 'Novia\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:44', 3),
	(129, NULL, 'Proj', NULL, NULL, 'Novita Sovianti\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:45', 3),
	(130, NULL, 'Proj', NULL, NULL, 'Puji Rochmad\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 13:07:47', 3),
	(131, NULL, 'Proj', NULL, NULL, 'Rasidi\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:48', 3),
	(132, NULL, 'Proj', NULL, NULL, 'Reyhan Sulistio Widodo\r\n', NULL, 'Staff Pengawas Kawasan', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:49', 3),
	(133, NULL, 'Proj', NULL, NULL, 'Rini Anggraeni\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:51', 3),
	(134, NULL, 'Proj', NULL, NULL, 'Shinta Dewi Pulung Anggraeni\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:52', 3),
	(135, NULL, 'Proj', NULL, NULL, 'Siti Muflihah Febriyanti\r\n', NULL, 'Project', 'Marketing Staff', NULL, '1', '2023-03-28 13:07:54', 3),
	(136, NULL, 'Proj', NULL, NULL, 'Stefen\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:55', 3),
	(137, NULL, 'Proj', NULL, NULL, 'Sukrisyanto\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 13:07:57', 3),
	(138, NULL, 'Proj', NULL, NULL, 'Tuti Widyawati\r\n', NULL, 'Project', 'Inhouse Staff', NULL, '1', '2023-03-28 13:07:59', 3),
	(139, NULL, 'Proj', NULL, NULL, 'Wisnu Dwi Pamungkas\r\n', NULL, 'HRGA & Purchasing', 'Messenger', NULL, '1', '2023-03-28 13:08:01', 3),
	(140, NULL, 'Proj', NULL, NULL, 'Yohanes Sutopo\r\n', NULL, 'Project', 'Pelaksana', NULL, '1', '2023-03-28 13:08:03', 3),
	(141, 'AS', NULL, NULL, NULL, 'Ruang IT', NULL, 'IT', NULL, NULL, '1', '2023-03-28 15:07:07', 4);
/*!40000 ALTER TABLE `tbl_main_user` ENABLE KEYS */;

-- membuang struktur untuk table db_databank_it.tbl_role
CREATE TABLE IF NOT EXISTS `tbl_role` (
  `Role_id` int(20) NOT NULL AUTO_INCREMENT,
  `Role_status` int(20) DEFAULT NULL,
  `Role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_databank_it.tbl_role: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` (`Role_id`, `Role_status`, `Role_name`) VALUES
	(1, 1, 'Super Administrator'),
	(2, 1, 'Admin'),
	(3, 1, 'Member User'),
	(4, 1, 'Not User');
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
