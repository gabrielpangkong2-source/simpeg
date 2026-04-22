-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2026 at 05:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manajemen_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nama` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `gol_ruang_cpns` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tmt_cpns` date DEFAULT NULL,
  `pangkat_terakhir` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'L',
  `jabatan` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eselon` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `diklat_penjenjangan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instansi_pembayar` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci,
  `role` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nama`, `nip`, `gol_ruang_cpns`, `tmt_cpns`, `pangkat_terakhir`, `jenis_kelamin`, `jabatan`, `eselon`, `diklat_penjenjangan`, `instansi_pembayar`, `keterangan`, `role`, `password`, `created_at`, `updated_at`) VALUES
('ANNEKE GRJESE MAINDOKA, S.Sos., M.Si', '196708271994032006', 'IIb', '1994-03-01', 'Pembina Utama Muda/ IVc', 'P', 'KEPALA DINAS', 'II', 'PIM II', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('MAUREN S. K. RAU, SP., MAP', '196912212006042007', 'IIIa', '2006-04-01', 'Pembina / IVa', 'P', 'KEPALA BIDANG PELAYANAN TERPADU', 'IIIb', 'PIM III', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('JAMES D. ROMPAS, ST', '197106112006041002', 'IIa', '2006-04-01', 'Penata Tkt I / IIId', 'L', 'Penata Perizinan Ahli Muda', NULL, 'Pra Jabatan', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('IRENE S. PURUKAN, S.Pt', '197109192003122005', 'IIIa', '2003-12-29', 'Penata Tkt I / IIId', 'P', 'KEPALA BIDANG PROMOSI', 'IIIb', NULL, 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('WULAN ELISABETANI ROEROE, SE., Msi', '197408112002122008', 'IIc', '2002-12-01', 'Pembina/ IVa', 'P', 'KEPALA BIDANG PENGENDALIAN PENANAMAN MODAL', 'IIIb', 'PIM III', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('REFLI R. H. AROR, SE', '197510242000031002', 'IIa', '2000-03-01', 'Penata Tkt I / IIId', 'L', 'Penata Perizinan Ahli Muda', NULL, 'PIM IV', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('JUNITA N. PANTOW, S.Kom', '197606222023212006', 'IX', '2023-10-01', '-', 'P', 'Pranata Komputer Ahli Pertama', NULL, NULL, 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('DOLLY M. KAENG, SE.', '197704162010012004', 'IIIa', '2010-01-01', 'Penata Tkt I / IIId', 'P', 'Kasubag Umum Perencanaan Kepegawaian dan Hukum', 'IVa', 'Pra Jabatan', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('IVANA S. O. RUMAYAR, SS.', '197901102009022004', 'IIIa', '2009-02-01', 'Penata Tkt I / IIId', 'P', 'Analis Kebijakan Ahli Muda', NULL, 'PIM IV', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('INGGRIT S. W. LANGOY, S.Si.', '198108122011022001', 'IIIa', '2011-02-01', 'Penata Tkt I / IIId', 'P', 'Analis Keuangan Pusat dan Daerah Ahli Muda', NULL, 'Pra Jabatan', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('FENNY MEIDY SAKUL, SE., MM', '198205072006042022', 'IIIa', NULL, 'Pembina Tkt I / IVb', 'P', 'SEKRETARIS DINAS', 'IIIa', NULL, 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('ANSYE CHRISTINE ENGGELINA RANDANG', '198308242010012006', 'IIa', '2010-01-01', 'Penata/ IIa', 'P', 'Pengadministrasi Perkantoran', NULL, 'Pra Jabatan', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('VINCENTIA A. MUMPEL, SS', '198406112010012005', 'IIIa', '2010-01-01', 'Penata Tkt I / IIId', 'P', 'Penata Perizinan Ahli Muda', NULL, 'Pra Jabatan', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('PRICILIA O. LANTANG, SH', '198410022010012002', 'IIIa', '2010-01-01', 'Penata Tkt I / IIId', 'P', 'Penelaah Teknis Kebijakan', NULL, 'Pra Jabatan', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('NIKITA APRIANTO PALIT, SE', '198504142023211024', 'IX', '2023-10-01', '-', 'P', 'Analis Kebijakan Ahli Pertama', NULL, NULL, 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('DANIEL TOAR SAUT WAGYU, SH', '198609272019031007', 'IIIa', '2019-03-01', 'Penata Muda Tkt I / IIIb', 'L', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('ARNOLD Y. P. KARUNDENG, S.SI', '198809022019031009', 'IIIa', '2019-03-01', 'Penata Muda Tkt I / IIIb', 'L', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('NIESYELA M. RONDONUWU, SE', '198903052024212039', 'IX', '2024-03-01', '-', 'P', 'Analis Kebijakan Ahli Pertama', NULL, NULL, 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('GLADYS SULANGI, A.Md', '198908162019032019', 'IIc', '2019-03-01', 'Pengatur Tkt I / IId', 'P', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('SILVANA ELITA SUMENDAP, SE', '199109152019032010', 'IIc', '2019-03-01', 'Penata Muda / IIIa', 'P', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('SINTYA CLARA ASSA, SE.', '199206022019032011', 'IIIa', '2019-03-01', 'Penata Muda Tkt I / IIIb', 'P', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('MELISA MAMESAH, SE., MSA', '199305062019032013', 'IIIa', '2019-03-01', 'Penata Muda / IIIa', 'P', 'Penelaah Teknis Kebijakan (Bendahara)', NULL, 'Latsar CPNS', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('LUCKY YOSIN BABY RAU, SM', '199409132022032010', 'IIIa', '2022-03-01', 'Penata Muda / IIIa', 'P', 'Penelaah Teknis Kebijakan', NULL, 'Latsar CPNS', 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('OKTAVIA CLAUDIA PUSUNG, SE', '199610072024212042', 'IX', '2024-03-01', '-', 'P', 'PERENCANA AHLI PERTAMA', NULL, NULL, 'DPMPTSP', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20'),
('KRISTINA CARLEN PANGEMANAN, S.Tr.IP', '200308052025102001', 'IIIa', '2025-10-01', 'Penata Muda / IIIa', 'P', 'Penata Perizinan Ahli Pertama', NULL, NULL, 'DPMPTSPD', NULL, '', '', '2026-04-08 11:19:22', '2026-04-08 13:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_drh`
--

CREATE TABLE `pegawai_drh` (
  `nip` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tingkat_pendidikan` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jurusan` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_lulus` year DEFAULT NULL,
  `alumni` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai_drh`
--

INSERT INTO `pegawai_drh` (`nip`, `tingkat_pendidikan`, `jurusan`, `tahun_lulus`, `alumni`, `keterangan`, `created_at`, `updated_at`) VALUES
('196708271994032006', 'S-2', 'IPPW', '2012', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('196912212006042007', 'S-2', 'Administrasi Publik', '2009', 'UNIMA Tondano', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197106112006041002', 'S-1', 'Teknik Industri', '2009', 'ITM Tomohon', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197109192003122005', 'S-1', 'Ilmu Nutrisi dan Makanan Ternak', '1999', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197408112002122008', 'S-2', 'Pengelola Sumberdaya Pembangunan', '2010', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197510242000031002', 'S-1', 'MIPA Ilmu Komputer', '2008', 'UNIKA De La Sale Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197606222023212006', 'S-1', 'Manajemen Informatika', '2002', 'STMIK Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197704162010012004', 'S-1', 'Ekonomi Manajemen', '1999', 'STIE Budi Utomo Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197901102009022004', 'S-1', 'Sastra Inggris', '2005', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198108122011022001', 'S-1', 'Ilmu Komputer', '2005', 'UKRIM Jogjakarta', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198205072006042022', 'S-2', NULL, NULL, NULL, NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198308242010012006', 'D-1', 'Pemerintahan', '2004', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198406112010012005', 'S-1', 'Sastra Inggris', '2008', 'UNIMA Tondano', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198410022010012002', 'S-1', 'Ilmu Hukum', '2006', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198504142023211024', 'S-1', 'Ekonomi Manajemen', '2010', 'STIE Budi Utomo Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198609272019031007', 'S-1', 'Ilmu Hukum', '2009', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198809022019031009', 'S-1', 'Sistem Informasi', '2013', 'UKSW Salatiga', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198903052024212039', 'S-1', 'Akuntansi', '2011', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198908162019032019', 'D-3', 'Manajemen', '2010', 'Politeknik Negeri Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199109152019032010', 'S-1', 'Manajemen', '2013', 'STIE Swadaya Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199206022019032011', 'S-1', 'Akuntansi', '2013', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199305062019032013', 'S-2', 'Akuntansi', '2017', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199409132022032010', 'S-1', 'Ekonomi Manajemen', '2017', 'UNKLAB', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199610072024212042', 'S-1', 'Manajemen', '2018', 'UNSRAT Manado', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('200308052025102001', 'D-4', 'Teknologi Rekayasa Informasi Pemerintahan', '2025', 'IPDN', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_pribadi`
--

CREATE TABLE `pegawai_pribadi` (
  `nip` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `status_kawin` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci,
  `no_telp` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai_pribadi`
--

INSERT INTO `pegawai_pribadi` (`nip`, `tempat_lahir`, `tanggal_lahir`, `status_kawin`, `agama`, `alamat`, `no_telp`, `keterangan`, `created_at`, `updated_at`) VALUES
('196708271994032006', 'KAKAS', '1967-08-27', 'Kawin', 'Kristen', 'Kel. Kakaskasen III Kec. Tomohon Utara', '085256487915', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('196912212006042007', 'TOMOHON', '1969-12-21', 'Kawin', 'Kristen', 'Kel. Kakaskasen Dua Kec. Tomohon Utara', '082191460059', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197106112006041002', 'KAWANGKOAN', '1971-06-11', 'Kawin', 'Kristen', 'Kelurahan Wailan, Kec. Tomohon Utara', '082192686981', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197109192003122005', 'TOMOHON', '1971-09-19', 'Kawin', 'Kristen', 'Kel. Tinoor', NULL, NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197408112002122008', 'TOMOHON', '1974-08-11', 'Kawin', 'Kristen', 'Kel. Lansot Kec. Tomohon Selatan', '081340009575', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197510242000031002', 'TOMOHON', '1975-10-24', 'Kawin', 'Kristen', 'Kel. Kumelembuai Kec. Tomohon Timur', '085388845544', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197606222023212006', 'WOLOAN', '1976-06-22', 'Belum Kawin', 'Kristen', NULL, NULL, NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197704162010012004', 'TOMOHON', '1977-04-16', 'Kawin', 'Kristen', 'Kel. Kakaskasen Lingkungan VII, Kec. Tomohon Utara', '081354726433', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('197901102009022004', 'Palu', '1979-01-10', 'Kawin', 'Kristen', 'Kel. Pinaras Lingkungan VIII Kec. Tomohon Selatan', '082334348791', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198108122011022001', 'TOMPASO BARU', '1981-08-12', 'Kawin', 'Kristen', 'Maumbi Jaga II Kec. Eris Kab. Minahasa', '085240791980', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198205072006042022', 'TOMOHON', '1982-05-07', 'Kawin', 'Kristen', 'Kel. Paslaten Dua, Kec. Tomohon Timur', '085396323503', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198308242010012006', 'TOMOHON', '1983-08-24', 'Kawin', 'Kristen', 'Kel. Kinilow Lingkungan III, Kec. Tomohon Utara', '085256597959', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198406112010012005', 'TATAARAN', '1984-06-11', 'Kawin', 'Katolik', 'Kel. Talete Satu Lingkungan III, Kec. Tomohon Tengah', '082190452250', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198410022010012002', 'TOMOHON', '1984-10-02', 'Kawin', 'Kristen', 'Kel. Kakaskasen Tiga Lingkungan V, Kec. Tomohon Utara', '082217400646', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198504142023211024', 'TOMOHON', '1985-04-14', 'Kawin', 'Kristen', 'Kel. Kakaskasen Satu Lingkungan IV, Kec. Tomohon Utara', '085256780477', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198609272019031007', 'LHOKSEUMAWE', '1986-09-27', 'Kawin', 'Kristen', 'Desa Kauditan Dua Kec. Kauditan Kab. Minahasa Utara', '081340651779', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198809022019031009', 'JAKARTA', '1988-09-02', 'Kawin', 'Kristen', 'Kel. Tikala Kec. Wenang Manado', '082237766987', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198903052024212039', 'TOMOHON', '1989-03-05', 'Kawin', 'Kristen', 'Kel. Lansot Lingkungan I, Kec. Tomohon Selatan', '082195554167', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('198908162019032019', 'MANADO', '1989-08-16', 'Kawin', 'Kristen', 'Kel. Dendengan Dalam Lingkungan V, Manado', '08114340462', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199109152019032010', 'TOMOHON', '1991-09-15', 'Kawin', 'Kristen', 'Kel. Walian Lingkungan III, Kec. Tomohon Selatan', '085325003080', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199206022019032011', 'KAYUUWI', '1992-06-02', 'Kawin', 'Kristen', 'Desa Kayuuwi Satu, Kec. Kawangkoan Barat, Minahasa', '085240750408', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199305062019032013', 'TOMOHON', '1993-05-06', 'Kawin', 'Kristen', 'Kel. Wailan Lingkungan VII, Kec. Tomohon Utara', '085298829707', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199409132022032010', 'TOMOHON', '1994-09-13', 'Belum Kawin', 'Kristen', 'Kel. Uluindano Lingkungan VI, Kec. Tomohon Selatan', '081248623581', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('199610072024212042', 'TOMOHON', '1996-10-07', 'Kawin', 'Kristen', 'Kel. Kakaskasen Satu Lingkungan VIII, Kec. Tomohon Utara', '0882019296141', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44'),
('200308052025102001', 'TOMOHON', '2003-08-05', 'Belum Kawin', 'Kristen', 'Kel. Walian Lingk. V Kec. Tomohon Selatan', '085756781525', NULL, '2026-04-08 11:19:22', '2026-04-08 13:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_surat_sakit`
--

CREATE TABLE `pengajuan_surat_sakit` (
  `id` int NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_surat` date NOT NULL,
  `tanggal_izin` date NOT NULL,
  `alasan` text COLLATE utf8mb4_general_ci NOT NULL,
  `penandatangan` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `nomor_surat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomor_surat_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `role` enum('admin','petugas','viewer') NOT NULL DEFAULT 'petugas',
  `nama_lengkap` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `nama_lengkap`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin@dinas.go.id', 'admin', 'Administrator', 1, '2026-04-01 13:53:02', '2026-04-01 13:53:02'),
(2, 'petugas', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'petugas@dinas.go.id', 'petugas', 'Petugas Kepegawaian', 1, '2026-04-01 13:53:02', '2026-04-01 13:53:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pengajuan_surat_sakit`
--
ALTER TABLE `pengajuan_surat_sakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pengajuan_surat_sakit_nip` (`nip`),
  ADD KEY `idx_pengajuan_surat_sakit_nomor_surat` (`nomor_surat`);

--
-- Indexes for table `pegawai_drh`
--
ALTER TABLE `pegawai_drh`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pegawai_pribadi`
--
ALTER TABLE `pegawai_pribadi`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengajuan_surat_sakit`
--
ALTER TABLE `pengajuan_surat_sakit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
