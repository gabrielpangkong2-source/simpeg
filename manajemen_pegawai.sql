-- ============================================
-- DATABASE: manajemen_pegawai
-- DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU
-- SATU PINTU DAERAH KOTA TOMOHON
-- ============================================

CREATE DATABASE IF NOT EXISTS `manajemen_pegawai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `manajemen_pegawai`;

-- ============================================
-- TABEL: pegawai
-- ============================================
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(200) NOT NULL,
  `tempat_lahir` VARCHAR(100) DEFAULT NULL,
  `tanggal_lahir` DATE DEFAULT NULL,
  `nip` VARCHAR(30) NOT NULL,
  `gol_ruang_cpns` VARCHAR(10) DEFAULT NULL,
  `tmt_cpns` DATE DEFAULT NULL,
  `pangkat_terakhir` VARCHAR(100) DEFAULT NULL,
  `jenis_kelamin` ENUM('L','P') NOT NULL DEFAULT 'L',
  `status_kawin` VARCHAR(20) DEFAULT NULL,
  `agama` VARCHAR(20) DEFAULT NULL,
  `tingkat_pendidikan` VARCHAR(10) DEFAULT NULL,
  `jurusan` VARCHAR(150) DEFAULT NULL,
  `tahun_lulus` YEAR DEFAULT NULL,
  `alumni` VARCHAR(100) DEFAULT NULL,
  `jabatan` VARCHAR(200) DEFAULT NULL,
  `eselon` VARCHAR(10) DEFAULT NULL,
  `diklat_penjenjangan` VARCHAR(50) DEFAULT NULL,
  `instansi_pembayar` VARCHAR(100) DEFAULT NULL,
  `alamat` TEXT DEFAULT NULL,
  `no_telp` VARCHAR(20) DEFAULT NULL,
  `keterangan` TEXT DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ============================================
-- SAMPLE DATA (dari Daftar Nominatif 2026)
-- ============================================
INSERT INTO `pegawai` (`nama`, `tempat_lahir`, `tanggal_lahir`, `nip`, `gol_ruang_cpns`, `tmt_cpns`, `pangkat_terakhir`, `jenis_kelamin`, `status_kawin`, `agama`, `tingkat_pendidikan`, `jurusan`, `tahun_lulus`, `alumni`, `jabatan`, `eselon`, `diklat_penjenjangan`, `instansi_pembayar`, `alamat`, `no_telp`) VALUES
('ANNEKE GRJESE MAINDOKA, S.Sos., M.Si', 'KAKAS', '1967-08-27', '19670827 199403 2 006', 'IIb', '1994-03-01', 'Pembina Utama Muda/ IVc', 'P', 'Kawin', 'Kristen', 'S-2', 'IPPW', 2012, 'UNSRAT Manado', 'KEPALA DINAS', 'II', 'PIM II', 'DPMPTSPD', 'Kel. Kakaskasen III Kec. Tomohon Utara', '085256487915'),

('FENNY MEIDY SAKUL, SE., MM', 'TOMOHON', '1982-05-07', '19820507 200604 2 022', 'IIIa', NULL, 'Pembina Tkt I / IVb', 'P', 'Kawin', 'Kristen', 'S-2', NULL, NULL, NULL, 'SEKRETARIS DINAS', 'IIIa', NULL, 'DPMPTSPD', 'Kel. Paslaten Dua, Kec. Tomohon Timur', '085396323503'),

('WULAN ELISABETANI ROEROE, SE., Msi', 'TOMOHON', '1974-08-11', '19740811 200212 2 008', 'IIc', '2002-12-01', 'Pembina/ IVa', 'P', 'Kawin', 'Kristen', 'S-2', 'Pengelola Sumberdaya Pembangunan', 2010, 'UNSRAT Manado', 'KEPALA BIDANG PENGENDALIAN PENANAMAN MODAL', 'IIIb', 'PIM III', 'DPMPTSPD', 'Kel. Lansot Kec. Tomohon Selatan', '081340009575'),

('MAUREN S. K. RAU, SP., MAP', 'TOMOHON', '1969-12-21', '19691221 200604 2 007', 'IIIa', '2006-04-01', 'Pembina / IVa', 'P', 'Kawin', 'Kristen', 'S-2', 'Administrasi Publik', 2009, 'UNIMA Tondano', 'KEPALA BIDANG PELAYANAN TERPADU', 'IIIb', 'PIM III', 'DPMPTSPD', 'Kel. Kakaskasen Dua Kec. Tomohon Utara', '082191460059'),

('IRENE S. PURUKAN, S.Pt', 'TOMOHON', '1971-09-19', '19710919 200312 2 005', 'IIIa', '2003-12-29', 'Penata Tkt I / IIId', 'P', 'Kawin', 'Kristen', 'S-1', 'Ilmu Nutrisi dan Makanan Ternak', 1999, 'UNSRAT Manado', 'KEPALA BIDANG PROMOSI', 'IIIb', NULL, 'DPMPTSPD', 'Kel. Tinoor', NULL),

('DOLLY M. KAENG, SE.', 'TOMOHON', '1977-04-16', '19770416 201001 2 004', 'IIIa', '2010-01-01', 'Penata Tkt I / IIId', 'P', 'Kawin', 'Kristen', 'S-1', 'Ekonomi Manajemen', 1999, 'STIE Budi Utomo Manado', 'Kasubag Umum Perencanaan Kepegawaian dan Hukum', 'IVa', 'Pra Jabatan', 'DPMPTSPD', 'Kel. Kakaskasen Lingkungan VII, Kec. Tomohon Utara', '081354726433'),

('INGGRIT S. W. LANGOY, S.Si.', 'TOMPASO BARU', '1981-08-12', '19810812 201102 2 001', 'IIIa', '2011-02-01', 'Penata Tkt I / IIId', 'P', 'Kawin', 'Kristen', 'S-1', 'Ilmu Komputer', 2005, 'UKRIM Jogjakarta', 'Analis Keuangan Pusat dan Daerah Ahli Muda', NULL, 'Pra Jabatan', 'DPMPTSPD', 'Maumbi Jaga II Kec. Eris Kab. Minahasa', '085240791980'),

('REFLI R. H. AROR, SE', 'TOMOHON', '1975-10-24', '19751024 200003 1 002', 'IIa', '2000-03-01', 'Penata Tkt I / IIId', 'L', 'Kawin', 'Kristen', 'S-1', 'MIPA Ilmu Komputer', 2008, 'UNIKA De La Sale Manado', 'Penata Perizinan Ahli Muda', NULL, 'PIM IV', 'DPMPTSPD', 'Kel. Kumelembuai Kec. Tomohon Timur', '085388845544'),

('JAMES D. ROMPAS, ST', 'KAWANGKOAN', '1971-06-11', '19710611 200604 1 002', 'IIa', '2006-04-01', 'Penata Tkt I / IIId', 'L', 'Kawin', 'Kristen', 'S-1', 'Teknik Industri', 2009, 'ITM Tomohon', 'Penata Perizinan Ahli Muda', NULL, 'Pra Jabatan', 'DPMPTSPD', 'Kelurahan Wailan, Kec. Tomohon Utara', '082192686981'),

('IVANA S. O. RUMAYAR, SS.', 'Palu', '1979-01-10', '19790110 200902 2 004', 'IIIa', '2009-02-01', 'Penata Tkt I / IIId', 'P', 'Kawin', 'Kristen', 'S-1', 'Sastra Inggris', 2005, 'UNSRAT Manado', 'Analis Kebijakan Ahli Muda', NULL, 'PIM IV', 'DPMPTSPD', 'Kel. Pinaras Lingkungan VIII Kec. Tomohon Selatan', '082334348791'),

('VINCENTIA A. MUMPEL, SS', 'TATAARAN', '1984-06-11', '19840611 201001 2 005', 'IIIa', '2010-01-01', 'Penata Tkt I / IIId', 'P', 'Kawin', 'Katolik', 'S-1', 'Sastra Inggris', 2008, 'UNIMA Tondano', 'Penata Perizinan Ahli Muda', NULL, 'Pra Jabatan', 'DPMPTSPD', 'Kel. Talete Satu Lingkungan III, Kec. Tomohon Tengah', '082190452250'),

('PRICILIA O. LANTANG, SH', 'TOMOHON', '1984-10-02', '19841002 201001 2 002', 'IIIa', '2010-01-01', 'Penata Tkt I / IIId', 'P', 'Kawin', 'Kristen', 'S-1', 'Ilmu Hukum', 2006, 'UNSRAT Manado', 'Penelaah Teknis Kebijakan', NULL, 'Pra Jabatan', 'DPMPTSPD', 'Kel. Kakaskasen Tiga Lingkungan V, Kec. Tomohon Utara', '082217400646'),

('ARNOLD Y. P. KARUNDENG, S.SI', 'JAKARTA', '1988-09-02', '19880902 201903 1 009', 'IIIa', '2019-03-01', 'Penata Muda Tkt I / IIIb', 'L', 'Kawin', 'Kristen', 'S-1', 'Sistem Informasi', 2013, 'UKSW Salatiga', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', 'Kel. Tikala Kec. Wenang Manado', '082237766987'),

('SINTYA CLARA ASSA, SE.', 'KAYUUWI', '1992-06-02', '19920602 201903 2 011', 'IIIa', '2019-03-01', 'Penata Muda Tkt I / IIIb', 'P', 'Kawin', 'Kristen', 'S-1', 'Akuntansi', 2013, 'UNSRAT Manado', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', 'Desa Kayuuwi Satu, Kec. Kawangkoan Barat, Minahasa', '085240750408'),

('DANIEL TOAR SAUT WAGYU, SH', 'LHOKSEUMAWE', '1986-09-27', '19860927 201903 1 007', 'IIIa', '2019-03-01', 'Penata Muda Tkt I / IIIb', 'L', 'Kawin', 'Kristen', 'S-1', 'Ilmu Hukum', 2009, 'UNSRAT Manado', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', 'Desa Kauditan Dua Kec. Kauditan Kab. Minahasa Utara', '081340651779'),

('SILVANA ELITA SUMENDAP, SE', 'TOMOHON', '1991-09-15', '19910915 201903 2 010', 'IIc', '2019-03-01', 'Penata Muda / IIIa', 'P', 'Kawin', 'Kristen', 'S-1', 'Manajemen', 2013, 'STIE Swadaya Manado', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', 'Kel. Walian Lingkungan III, Kec. Tomohon Selatan', '085325003080'),

('GLADYS SULANGI, A.Md', 'MANADO', '1989-08-16', '19890816 201903 2 019', 'IIc', '2019-03-01', 'Pengatur Tkt I / IId', 'P', 'Kawin', 'Kristen', 'D-3', 'Manajemen', 2010, 'Politeknik Negeri Manado', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', 'Kel. Dendengan Dalam Lingkungan V, Manado', '08114340462'),

('MELISA MAMESAH, SE., MSA', 'TOMOHON', '1993-05-06', '19930506 201903 2 013', 'IIIa', '2019-03-01', 'Penata Muda / IIIa', 'P', 'Kawin', 'Kristen', 'S-2', 'Akuntansi', 2017, 'UNSRAT Manado', 'Penelaah Teknis Kebijakan (Bendahara)', NULL, 'Latsar CPNS', 'DPMPTSPD', 'Kel. Wailan Lingkungan VII, Kec. Tomohon Utara', '085298829707'),

('LUCKY YOSIN BABY RAU, SM', 'TOMOHON', '1994-09-13', '19940913 202203 2 010', 'IIIa', '2022-03-01', 'Penata Muda / IIIa', 'P', 'Belum Kawin', 'Kristen', 'S-1', 'Ekonomi Manajemen', 2017, 'UNKLAB', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', 'Kel. Uluindano Lingkungan VI, Kec. Tomohon Selatan', '081248623581'),

('ANSYE CHRISTINE ENGGELINA RANDANG', 'TOMOHON', '1983-08-24', '19830824 201001 2 006', 'IIa', '2010-01-01', 'Penata/ IIa', 'P', 'Kawin', 'Kristen', 'D-1', 'Pemerintahan', 2004, 'UNSRAT Manado', 'Pengadministrasi Perkantoran', NULL, 'Pra Jabatan', 'DPMPTSPD', 'Kel. Kinilow Lingkungan III, Kec. Tomohon Utara', '085256597959'),

('KRISTINA CARLEN PANGEMANAN, S.Tr.IP', 'TOMOHON', '2003-08-05', '20030805 202510 2 001', 'IIIa', '2025-10-01', 'Penata Muda / IIIa', 'P', 'Belum Kawin', 'Kristen', 'D-4', 'Teknologi Rekayasa Informasi Pemerintahan', 2025, 'IPDN', 'Penata Perizinan Ahli Pertama', NULL, NULL, 'DPMPTSPD', 'Kel. Walian Lingk. V Kec. Tomohon Selatan', '085756781525'),

('NIKITA APRIANTO PALIT, SE', 'TOMOHON', '1985-04-14', '19850414 202321 1 024', 'IX', '2023-10-01', '-', 'P', 'Kawin', 'Kristen', 'S-1', 'Ekonomi Manajemen', 2010, 'STIE Budi Utomo Manado', 'Analis Kebijakan Ahli Pertama', NULL, NULL, 'DPMPTSPD', 'Kel. Kakaskasen Satu Lingkungan IV, Kec. Tomohon Utara', '085256780477'),

('JUNITA N. PANTOW, S.Kom', 'WOLOAN', '1976-06-22', '19760622 202321 2 006', 'IX', '2023-10-01', '-', 'P', 'Belum Kawin', 'Kristen', 'S-1', 'Manajemen Informatika', 2002, 'STMIK Manado', 'Pranata Komputer Ahli Pertama', NULL, NULL, 'DPMPTSPD', NULL, NULL),

('NIESYELA M. RONDONUWU, SE', 'TOMOHON', '1989-03-05', '19890305 202421 2 039', 'IX', '2024-03-01', '-', 'P', 'Kawin', 'Kristen', 'S-1', 'Akuntansi', 2011, 'UNSRAT Manado', 'Analis Kebijakan Ahli Pertama', NULL, NULL, 'DPMPTSPD', 'Kel. Lansot Lingkungan I, Kec. Tomohon Selatan', '082195554167'),

('OKTAVIA CLAUDIA PUSUNG, SE', 'TOMOHON', '1996-10-07', '19961007 202421 2 042', 'IX', '2024-03-01', '-', 'P', 'Kawin', 'Kristen', 'S-1', 'Manajemen', 2018, 'UNSRAT Manado', 'PERENCANA AHLI PERTAMA', NULL, NULL, 'DPMPTSP', 'Kel. Kakaskasen Satu Lingkungan VIII, Kec. Tomohon Utara', '0882019296141');
