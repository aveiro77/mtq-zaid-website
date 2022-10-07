-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Okt 2022 pada 16.06
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `budgetings`
--

CREATE TABLE `budgetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` int(11) NOT NULL,
  `unicode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `budgetings`
--

INSERT INTO `budgetings` (`id`, `description`, `slug`, `budget`, `unicode`, `cp_hp`, `cp_name`, `created_at`, `updated_at`) VALUES
(1, 'Pekerjaan Persiapan/ Umum', 'pekerjaan-persiapan-umum', 44469600, '001', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(2, 'Pekerjaan Tanah', 'pekerjaan-tanah', 147182183, '002', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(3, 'Pekerjaan Struktur Lantai 1', 'pekerjaan-struktur-lantai1', 1555066206, '003', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(4, 'Pekerjaan Arsitektur Lantai 1', 'pekerjaan-arsitektur-lantai1', 485719171, '004', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(5, 'Pekerjaan Mekanikal & Elektikal Lantai 1', 'pekerjaan-mekanikal-elektikal-lantai1', 62997860, '005', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(6, 'Pekerjaan Struktur Lantai 2', 'pekerjaan-struktur-lantai2', 671046165, '006', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(7, 'Pekerjaan Arsitektur Lantai 2', 'pekerjaan-arsitektur-lantai2', 431773974, '007', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(8, 'Pekerjaan Mekanikal & Elektikal Lantai 2', 'pekerjaan-mekanikal-elektikal-lantai2', 69796870, '008', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(9, 'Pekerjaan Struktur Lantai 3', 'pekerjaan-struktur-lantai3', 671460160, '009', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(10, 'Pekerjaan Arsitektur Lantai 3', 'pekerjaan-arsitektur-lantai3', 458468141, '010', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(11, 'Pekerjaan Mekanikal & Elektikal Lantai 3', 'pekerjaan-mekanikal-elektikal-lantai3', 71657610, '011', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(12, 'Pekerjaan Struktur Lantai 4', 'pekerjaan-struktur-lantai4', 168593066, '012', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(13, 'Pekerjaan Arsitektur Lantai 4', 'pekerjaan-arsitektur-lantai4', 647962309, '013', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(14, 'Pekerjaan Mekanikal & Elektikal Lantai 4', 'pekerjaan-mekanikal-elektikal-lantai4', 100548150, '014', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(15, 'Pekerjaan Paving Block', 'pekerjaan-paving-block', 27738000, '015', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(16, 'Pekerjaan Pagar', 'pekerjaan-pagar', 103979559, '016', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(17, 'Pengadaan AC', 'pengadaan-ac', 169370000, '017', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(18, 'Pekerjaan Hydran', 'pekerjaan-hydran', 750000000, '018', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(19, 'Pekerjaan Mebelair', 'pekerjaan-mebelair', 101900000, '019', '85740074567', 'Fulan', '2022-09-29 07:24:58', '2022-09-29 07:24:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ulumul Quran', 'ulumul-quran', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(2, 'Bahasa Arab', 'bahasa-arab', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(3, 'Tauhid', 'tauhid', '2022-09-29 07:24:58', '2022-09-29 07:24:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donates`
--

CREATE TABLE `donates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `budgeting_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donate_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `donates`
--

INSERT INTO `donates` (`id`, `budgeting_id`, `name`, `address`, `phone`, `nominal`, `showname`, `donate_date`, `created_at`, `updated_at`) VALUES
(1, 13, 'Putri Indah Pertiwi M.Farm', 'Ki. Veteran No. 143, Tual 69456, Jambi', '0853 7282 294', '2044070', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(2, 15, 'Jagaraga Pangeran Siregar', 'Ds. Moch. Ramdan No. 190, Administrasi Jakarta Barat 38679, Maluku', '027 4496 4415', '3427532', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(3, 7, 'Jaeman Vinsen Pratama', 'Jr. Abang No. 132, Sungai Penuh 67760, DKI', '(+62) 260 1769 2248', '2161644', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(4, 11, 'Mulyanto Hartaka Haryanto', 'Gg. Basuki No. 862, Parepare 95897, Sumut', '0300 2975 859', '1220326', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(5, 8, 'Jasmin Mardhiyah', 'Kpg. Achmad Yani No. 893, Cirebon 85841, Banten', '0294 8655 1433', '112598', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(6, 19, 'Gatra Yoga Zulkarnain', 'Jr. Sadang Serang No. 401, Prabumulih 90370, Jambi', '(+62) 228 3184 8673', '458614', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(7, 6, 'Fathonah Cinta Uyainah', 'Gg. Jend. A. Yani No. 149, Bau-Bau 74655, Maluku', '(+62) 724 4983 991', '3207443', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(8, 7, 'Prabu Halim', 'Gg. Bakti No. 348, Mataram 86051, Bali', '0576 3405 2233', '1945034', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(9, 19, 'Karen Widiastuti S.Gz', 'Jr. Honggowongso No. 259, Serang 71241, NTT', '0627 8034 2936', '1301840', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(10, 6, 'Bagya Samosir S.Kom', 'Jr. Salak No. 792, Batu 53109, Sumut', '(+62) 247 5142 8235', '2060354', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(11, 2, 'Asmianto Pangeran Dabukke S.Farm', 'Psr. Ekonomi No. 111, Pangkal Pinang 72505, Lampung', '(+62) 291 3493 118', '84847', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(12, 5, 'Purwanto Mansur', 'Ds. Jaksa No. 846, Langsa 14814, Sumsel', '(+62) 21 7199 601', '248051', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(13, 9, 'Dadap Praba Hardiansyah', 'Ki. Baabur Royan No. 731, Pariaman 99990, Sulut', '(+62) 678 4435 7441', '2740613', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(14, 9, 'Hamima Vera Laksmiwati', 'Jln. Bahagia  No. 425, Gorontalo 33973, Kalteng', '(+62) 798 7563 1755', '1063722', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(15, 1, 'Dirja Firmansyah S.Pt', 'Dk. Krakatau No. 110, Pekanbaru 50868, Kaltara', '0707 3398 974', '485255', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(16, 2, 'Elisa Pudjiastuti S.Kom', 'Jr. Kyai Gede No. 428, Ternate 41202, NTB', '0813 636 654', '3336452', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(17, 6, 'Faizah Wulandari', 'Ds. Baja No. 687, Batam 45690, Sumbar', '(+62) 455 1141 9661', '3416840', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(18, 5, 'Makuta Gatra Nainggolan', 'Jr. Urip Sumoharjo No. 52, Sorong 82281, NTT', '(+62) 890 2999 950', '800234', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(19, 18, 'Karsa Gangsa Sihombing S.H.', 'Jln. Abang No. 922, Gorontalo 65743, NTT', '0908 8616 023', '2200351', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(20, 15, 'Kasusra Raharja Gunawan M.Pd', 'Gg. Rajawali No. 407, Tomohon 48370, Sumut', '(+62) 460 7294 4558', '605004', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(21, 17, 'Perkasa Maras Wacana', 'Kpg. BKR No. 241, Gunungsitoli 39475, Kaltim', '0812 3067 241', '2492702', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(22, 12, 'Ciaobella Hartati', 'Gg. Ki Hajar Dewantara No. 603, Batu 20406, DKI', '(+62) 354 3125 5660', '1401208', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(23, 8, 'Ida Dina Hasanah', 'Ki. Mahakam No. 323, Banda Aceh 19745, DKI', '0255 7327 7746', '1969463', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(24, 7, 'Martaka Firgantoro M.Pd', 'Jr. Abdullah No. 951, Bima 18210, Sulsel', '0878 6663 0425', '1368460', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(25, 18, 'Okto Prasetyo', 'Gg. Bank Dagang Negara No. 737, Banda Aceh 32760, Gorontalo', '0508 8228 1071', '734962', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(26, 14, 'Malika Hariyah S.IP', 'Gg. Raya Ujungberung No. 533, Administrasi Jakarta Barat 69945, Jatim', '(+62) 381 5204 670', '3035364', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(27, 15, 'Balijan Bahuraksa Santoso S.Gz', 'Ds. Baranang Siang No. 184, Tidore Kepulauan 69544, Bali', '0379 7647 453', '1315269', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(28, 5, 'Capa Gatra Widodo S.T.', 'Gg. Bhayangkara No. 276, Bau-Bau 32432, Gorontalo', '(+62) 213 7053 978', '3339133', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(29, 17, 'Vinsen Kasim Sihotang M.Kom.', 'Ki. Otista No. 993, Surabaya 97653, Kepri', '0956 2260 7264', '2829839', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(30, 6, 'Wulan Pertiwi', 'Ki. Ahmad Dahlan No. 327, Batam 67567, Bali', '(+62) 594 8266 7003', '3478923', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(31, 4, 'Jamil Simbolon', 'Jln. Baja Raya No. 439, Bau-Bau 24501, Sumut', '0532 1231 996', '968294', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(32, 19, 'Ellis Yuniar', 'Ds. Sugiyopranoto No. 40, Balikpapan 42867, Kalteng', '0223 9677 494', '1471032', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(33, 2, 'Endah Padmasari', 'Ki. Ekonomi No. 754, Tebing Tinggi 58602, Sumut', '027 2226 598', '2638620', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(34, 17, 'Wisnu Sihotang', 'Dk. K.H. Maskur No. 764, Sabang 30019, Kalsel', '0938 7503 149', '3342026', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(35, 19, 'Mujur Pranowo S.E.I', 'Psr. Batako No. 827, Depok 55026, Papua', '0287 7679 754', '1883874', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(36, 4, 'Eka Dina Kuswandari M.Farm', 'Dk. Moch. Toha No. 315, Sungai Penuh 22509, Maluku', '(+62) 685 0718 687', '1223262', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(37, 3, 'Darijan Wacana', 'Gg. Elang No. 995, Sungai Penuh 65431, Kaltara', '0999 4952 289', '707804', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(38, 4, 'Paulin Puspita', 'Psr. Banda No. 463, Metro 79267, Pabar', '(+62) 25 2787 5421', '163557', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(39, 7, 'Mahesa Mursita Sinaga S.Sos', 'Kpg. Bakau Griya Utama No. 411, Tegal 21851, Lampung', '0804 1348 2726', '2117696', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(40, 17, 'Melinda Anggraini S.Farm', 'Dk. Gambang No. 880, Payakumbuh 85138, Kaltara', '0213 9060 8746', '968323', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(41, 14, 'Hasim Waskita S.Ked', 'Jln. Zamrud No. 930, Balikpapan 48024, Kalteng', '(+62) 729 2080 763', '961316', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(42, 17, 'Karsana Tamba', 'Jr. Bacang No. 345, Ambon 65094, Kalbar', '0517 2239 8012', '626222', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(43, 15, 'Kezia Nuraini S.H.', 'Ds. Tambun No. 339, Payakumbuh 10903, Kalteng', '(+62) 27 9815 773', '1100724', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(44, 6, 'Pandu Alambana Marbun', 'Gg. Banceng Pondok No. 849, Tarakan 75840, Bali', '0587 3494 0394', '2091588', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(45, 6, 'Jais Sirait', 'Psr. Salak No. 658, Padangpanjang 95409, Papua', '0419 8508 2100', '403475', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(46, 4, 'Betania Mulyani', 'Ds. Peta No. 674, Palopo 56516, Malut', '(+62) 260 8045 5950', '376881', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(47, 17, 'Raden Maulana S.Pt', 'Kpg. Lada No. 363, Mojokerto 27189, NTB', '(+62) 220 1350 9966', '3082475', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(48, 14, 'Elvina Padma Nasyiah', 'Jr. Krakatau No. 292, Bitung 65082, Papua', '(+62) 838 8201 5610', '1943987', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(49, 12, 'Putri Wani Safitri S.IP', 'Ds. Hasanuddin No. 493, Pontianak 78768, Bali', '(+62) 956 3043 337', '1515457', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(50, 12, 'Hendri Luhung Setiawan', 'Psr. Krakatau No. 156, Padang 29266, NTB', '0686 7789 9756', '2282509', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(51, 14, 'Lalita Rahayu S.IP', 'Gg. Peta No. 956, Sorong 81872, Jateng', '(+62) 993 7075 786', '3461007', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(52, 14, 'Restu Pudjiastuti', 'Dk. Villa No. 11, Pontianak 48662, Pabar', '0267 6541 964', '2111681', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(53, 12, 'Galar Mandala', 'Gg. Babadan No. 307, Bengkulu 78034, Papua', '(+62) 624 3661 9474', '1331692', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(54, 16, 'Salimah Rahimah S.Farm', 'Jr. Ketandan No. 304, Padangpanjang 82108, Gorontalo', '(+62) 829 0788 0682', '2121931', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(55, 11, 'Prabu Hidayat', 'Kpg. Kiaracondong No. 903, Pariaman 42179, Kalbar', '(+62) 966 9411 677', '975949', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(56, 10, 'Sakti Habibi', 'Gg. Bagas Pati No. 770, Tangerang 40209, Kaltim', '0488 0867 560', '2724410', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(57, 4, 'Harimurti Cahyadi Manullang', 'Kpg. Yohanes No. 445, Magelang 10353, Papua', '0208 2295 5582', '1439191', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(58, 5, 'Luluh Hutasoit M.Pd', 'Gg. Jagakarsa No. 296, Malang 86923, Malut', '0669 9757 0469', '2099189', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(59, 6, 'Bella Ajeng Haryanti S.Farm', 'Dk. Gambang No. 719, Sukabumi 66093, Sulteng', '(+62) 502 7713 1913', '3158294', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(60, 16, 'Cahyono Wawan Tamba S.Ked', 'Ki. Babakan No. 975, Tual 21980, Papua', '0670 1708 0248', '2136046', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(61, 14, 'Uli Widiastuti', 'Jr. Bah Jaya No. 500, Palu 79696, NTT', '(+62) 898 1291 528', '700740', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(62, 16, 'Salimah Ilsa Suryatmi S.Psi', 'Jr. Ters. Buah Batu No. 896, Jambi 17238, Sulsel', '(+62) 885 6452 686', '2836849', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(63, 1, 'Makuta Legawa Jailani', 'Gg. Gremet No. 446, Palu 31122, Malut', '(+62) 921 0428 2512', '1159758', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(64, 6, 'Gawati Melani', 'Kpg. Cikutra Barat No. 499, Surakarta 27155, Jateng', '(+62) 24 0255 653', '1401710', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(65, 8, 'Ika Aryani', 'Jr. Barat No. 208, Tanjung Pinang 60347, Sultra', '(+62) 850 713 067', '1863944', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(66, 17, 'Among Wacana', 'Gg. Suprapto No. 437, Kupang 35211, Kaltara', '0932 7016 9963', '781398', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(67, 17, 'Cager Nababan S.Pt', 'Jr. Basmol Raya No. 311, Banda Aceh 85094, Sumsel', '(+62) 797 4531 3912', '3100517', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(68, 6, 'Paramita Lestari', 'Ds. Kyai Mojo No. 538, Surabaya 22759, Sultra', '028 8322 580', '845974', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(69, 3, 'Tirtayasa Prakasa S.Pt', 'Gg. Gedebage Selatan No. 765, Denpasar 64756, Kaltim', '(+62) 412 0471 247', '2342902', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(70, 8, 'Cemeti Jumari Putra S.Pd', 'Jr. Basoka Raya No. 819, Banjarmasin 64538, Sulsel', '0601 6182 768', '2573948', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(71, 2, 'Jayeng Aditya Mustofa', 'Gg. Ir. H. Juanda No. 976, Sibolga 69432, Jateng', '0447 5607 6691', '894082', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(72, 14, 'Yusuf Banawa Nababan S.Farm', 'Kpg. BKR No. 182, Administrasi Jakarta Timur 66251, Sulut', '(+62) 302 8671 5617', '563207', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(73, 10, 'Viman Kusumo', 'Gg. Ciumbuleuit No. 395, Tanjungbalai 60241, Sulteng', '(+62) 265 2612 3665', '746664', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(74, 6, 'Prasetyo Saragih', 'Psr. Yogyakarta No. 339, Pontianak 49895, Sulsel', '(+62) 844 870 074', '648852', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(75, 16, 'Rika Nasyiah M.TI.', 'Ds. Veteran No. 252, Bandar Lampung 38349, Sulsel', '0544 1613 3710', '540531', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(76, 4, 'Murti Wasita', 'Gg. Bakin No. 538, Parepare 12684, NTT', '(+62) 972 5719 328', '2113505', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(77, 12, 'Oliva Cornelia Uyainah S.Pd', 'Gg. Antapani Lama No. 853, Prabumulih 16031, Sumsel', '0623 8934 117', '317303', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(78, 4, 'Dadi Hasim Prakasa', 'Dk. Orang No. 871, Langsa 56311, Aceh', '0541 2557 776', '3498516', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(79, 18, 'Padmi Andriani', 'Jln. Pahlawan No. 978, Manado 10971, Jambi', '0216 0510 829', '3388232', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(80, 2, 'Tari Kuswandari', 'Jr. Gading No. 995, Dumai 39874, Kalbar', '0424 8421 4758', '3278925', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(81, 13, 'Ajiono Gandi Mansur S.H.', 'Ki. Basudewo No. 32, Administrasi Jakarta Selatan 42546, Sulsel', '0429 2693 751', '3400426', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(82, 2, 'Gabriella Dinda Widiastuti', 'Kpg. Sutarjo No. 522, Sibolga 43830, Kaltim', '(+62) 876 7699 146', '2745097', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(83, 16, 'Paramita Mulyani', 'Kpg. Sudiarto No. 576, Blitar 35249, Sulteng', '0812 3715 3102', '1241785', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(84, 10, 'Suci Farida', 'Gg. Basket No. 742, Malang 26960, Sumut', '(+62) 539 3317 322', '1797413', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(85, 13, 'Zizi Dian Wahyuni', 'Ds. Lumban Tobing No. 245, Lubuklinggau 42721, Babel', '0582 8567 602', '917397', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(86, 17, 'Taufan Rudi Iswahyudi', 'Jln. Basket No. 896, Banda Aceh 75925, NTB', '(+62) 511 9039 1352', '3208407', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(87, 11, 'Aisyah Safitri', 'Psr. Gedebage Selatan No. 451, Bengkulu 97998, Malut', '026 8770 2694', '972955', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(88, 2, 'Umar Zulkarnain S.Farm', 'Gg. Ters. Jakarta No. 93, Bukittinggi 81286, Sulteng', '0297 3800 6167', '808588', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(89, 3, 'Cici Lestari S.Pd', 'Jln. Dipenogoro No. 466, Pematangsiantar 98459, Sumbar', '0675 8377 797', '333624', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(90, 8, 'Ratih Andriani S.H.', 'Ki. Tangkuban Perahu No. 213, Kotamobagu 28892, Sulteng', '(+62) 929 1945 107', '344387', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(91, 9, 'Dariati Gamblang Januar', 'Jln. W.R. Supratman No. 753, Bogor 16751, Riau', '(+62) 364 2094 9803', '993234', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(92, 19, 'Gawati Putri Wahyuni M.Pd', 'Dk. Kalimantan No. 65, Depok 78038, Kaltim', '(+62) 849 4613 120', '115671', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(93, 18, 'Uli Wastuti', 'Kpg. Kali No. 319, Jayapura 86311, Babel', '(+62) 499 3352 2888', '3405287', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(94, 18, 'Latif Budiyanto', 'Jr. Dr. Junjunan No. 954, Mojokerto 70377, Sumbar', '0790 4715 987', '1312543', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(95, 17, 'Irwan Damu Manullang S.I.Kom', 'Gg. Bambon No. 69, Kupang 22448, DIY', '0466 7026 2984', '379965', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(96, 17, 'Vega Salahudin M.M.', 'Gg. BKR No. 640, Palangka Raya 22724, Malut', '0489 1905 997', '2999225', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(97, 19, 'Dono Tamba', 'Psr. Kyai Mojo No. 773, Gorontalo 34204, DIY', '(+62) 410 6445 1072', '2229190', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(98, 2, 'Jono Firgantoro', 'Dk. Siliwangi No. 330, Tanjungbalai 77831, Bali', '(+62) 330 4299 939', '3495301', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(99, 9, 'Tirta Jamil Hakim M.Ak', 'Dk. Laksamana No. 188, Padangpanjang 94738, Sulteng', '022 9521 9717', '3226396', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(100, 18, 'Emas Usman Prabowo S.Psi', 'Ki. Bakit  No. 556, Gorontalo 11298, Gorontalo', '(+62) 202 7552 113', '2085310', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(101, 13, 'Bahuraksa Putra', 'Jr. Ki Hajar Dewantara No. 576, Tual 28074, Kalsel', '0362 3332 0717', '343035', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(102, 1, 'Samiah Hasanah S.Sos', 'Ki. Adisucipto No. 841, Kediri 80546, Malut', '(+62) 728 0527 0576', '85124', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(103, 5, 'Teddy Danang Saefullah M.Kom.', 'Ds. Kartini No. 953, Sawahlunto 67015, Lampung', '(+62) 24 9124 5480', '1494250', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(104, 18, 'Kezia Cindy Novitasari', 'Dk. Jayawijaya No. 942, Tegal 68559, Papua', '(+62) 892 131 911', '2579761', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(105, 16, 'Sari Yuliarti', 'Ki. Kalimantan No. 958, Blitar 13320, Sulbar', '0990 6374 3129', '861592', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(106, 14, 'Mutia Victoria Purwanti S.Ked', 'Ki. Jakarta No. 135, Salatiga 16382, Malut', '0851 4659 826', '971846', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(107, 12, 'Natalia Sudiati', 'Dk. Supomo No. 673, Dumai 84557, Sulut', '(+62) 331 6515 3436', '3049045', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(108, 18, 'Darmanto Rajasa', 'Jln. Bambon No. 469, Bontang 62467, NTT', '(+62) 353 7650 0322', '2988932', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(109, 1, 'Jarwa Nasrullah Saragih S.E.I', 'Ki. Adisucipto No. 623, Binjai 17257, Bali', '(+62) 745 4654 971', '2420856', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(110, 4, 'Galih Nababan', 'Psr. Ki Hajar Dewantara No. 330, Cilegon 44988, Jatim', '(+62) 813 9403 7346', '276813', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(111, 10, 'Olivia Dian Winarsih', 'Jr. Supomo No. 84, Denpasar 49197, Maluku', '(+62) 610 1698 422', '937569', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(112, 10, 'Lidya Fujiati S.Psi', 'Kpg. Soekarno Hatta No. 778, Cimahi 15614, Sulsel', '(+62) 940 9971 0260', '1060118', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(113, 5, 'Banawi Dagel Wacana M.M.', 'Gg. Kali No. 273, Sorong 94928, Jatim', '(+62) 376 7294 100', '3492876', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(114, 17, 'Garan Sirait', 'Kpg. Antapani Lama No. 604, Tual 22115, Kalbar', '(+62) 267 3484 7515', '1909777', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(115, 13, 'Wakiman Emong Winarno S.Psi', 'Gg. Gardujati No. 457, Jayapura 14133, DKI', '(+62) 474 3527 4883', '1604016', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(116, 4, 'Tomi Gading Saptono S.Gz', 'Jln. Basket No. 270, Binjai 67045, Kalteng', '0557 2178 197', '2242657', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(117, 19, 'Jarwadi Samosir M.TI.', 'Jr. Suniaraja No. 213, Makassar 86533, DKI', '0983 4895 1288', '574266', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(118, 1, 'Yuliana Cinta Oktaviani S.Psi', 'Kpg. Setia Budi No. 841, Solok 11329, Kalbar', '(+62) 22 0925 1304', '536190', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(119, 11, 'Jarwadi Bakiadi Waskita', 'Kpg. Adisumarmo No. 405, Medan 53338, Maluku', '(+62) 649 8725 3481', '3295150', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(120, 4, 'Estiono Tampubolon', 'Dk. Babadan No. 69, Pasuruan 77822, Kaltim', '022 2243 155', '243625', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(121, 10, 'Ophelia Suartini S.Pd', 'Ki. Wahid Hasyim No. 504, Pekanbaru 53768, Sulteng', '(+62) 24 2752 464', '503268', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(122, 3, 'Ikhsan Hutasoit', 'Ki. Thamrin No. 839, Pasuruan 16828, Jatim', '0591 6039 4420', '680245', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(123, 12, 'Paulin Wijayanti', 'Jln. Suharso No. 819, Tangerang 25996, Kalteng', '0435 3627 0567', '2138039', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(124, 15, 'Galar Tarihoran', 'Dk. Raden Saleh No. 196, Padang 38671, Jambi', '(+62) 255 5560 608', '1475158', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(125, 10, 'Adiarja Najmudin', 'Dk. Rajawali Timur No. 205, Yogyakarta 88387, Kaltim', '(+62) 903 9873 057', '2422602', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(126, 13, 'Clara Zulaika', 'Psr. Astana Anyar No. 937, Banda Aceh 46641, Maluku', '(+62) 784 7734 8469', '2254314', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(127, 14, 'Icha Astuti', 'Ki. Ters. Buah Batu No. 184, Subulussalam 87778, Kaltim', '0419 4969 043', '2483276', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(128, 12, 'Ida Vanya Mandasari S.I.Kom', 'Jr. Raya Setiabudhi No. 616, Madiun 26556, Gorontalo', '0977 3370 405', '2578456', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(129, 16, 'Alambana Viktor Rajata', 'Jln. Eka No. 974, Pariaman 42113, Sulut', '(+62) 707 5982 511', '3442301', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(130, 2, 'Galih Lasmanto Waskita S.I.Kom', 'Ds. Industri No. 51, Langsa 97197, NTB', '0646 5132 1373', '2852577', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(131, 15, 'Dewi Nuraini', 'Kpg. Taman No. 448, Sorong 48419, Kepri', '(+62) 926 7506 388', '1278451', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(132, 14, 'Yahya Siregar M.Kom.', 'Jln. B.Agam Dlm No. 89, Banda Aceh 26890, Lampung', '022 4661 5846', '336056', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(133, 2, 'Jefri Wijaya', 'Jln. Sutarto No. 886, Palu 29004, Lampung', '0989 4843 6575', '311976', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(134, 13, 'Mahfud Latupono', 'Kpg. Untung Suropati No. 77, Denpasar 64845, Jabar', '0891 6120 845', '1494710', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(135, 5, 'Laksana Marsudi Prakasa S.Farm', 'Psr. Peta No. 988, Depok 43931, Aceh', '0882 9029 7200', '757646', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(136, 11, 'Rahman Saefullah S.H.', 'Gg. Bah Jaya No. 793, Singkawang 71226, Lampung', '021 3473 762', '1760607', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(137, 11, 'Fathonah Permata', 'Psr. Tangkuban Perahu No. 288, Blitar 91481, Sulbar', '0341 5151 5479', '211957', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(138, 5, 'Emong Waluyo', 'Psr. Pasteur No. 705, Pematangsiantar 67324, Sulteng', '0319 5052 2670', '3391443', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(139, 8, 'Kamila Namaga', 'Dk. Kebangkitan Nasional No. 529, Sungai Penuh 86743, Sultra', '0887 5375 6496', '2781573', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(140, 16, 'Balijan Sinaga', 'Kpg. Abdul No. 511, Tarakan 33966, Lampung', '(+62) 23 4717 316', '212762', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(141, 9, 'Kenes Sihombing', 'Gg. Yohanes No. 39, Padangpanjang 23470, Pabar', '0355 9414 7355', '503477', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(142, 18, 'Gina Handayani M.M.', 'Psr. Dipatiukur No. 418, Ambon 89437, Kalsel', '(+62) 259 9982 690', '1811663', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(143, 10, 'Uda Saputra', 'Psr. Kali No. 906, Tegal 38342, Sumsel', '0431 0976 5795', '1177687', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(144, 3, 'Cahyadi Hakim', 'Dk. Suryo Pranoto No. 694, Tegal 24874, Pabar', '0437 0976 3960', '3296093', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(145, 8, 'Harjo Limar Firgantoro', 'Gg. Sudiarto No. 730, Bitung 41555, Kaltara', '(+62) 923 6766 8810', '2453651', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(146, 14, 'Hani Aryani', 'Dk. Madiun No. 539, Palopo 44108, Sultra', '0415 7467 6183', '382678', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(147, 16, 'Rafi Adikara Damanik M.Farm', 'Gg. Acordion No. 153, Payakumbuh 81201, DIY', '0669 1483 315', '2175387', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(148, 11, 'Zelda Sudiati M.Kom.', 'Kpg. Kebonjati No. 697, Pasuruan 49941, Aceh', '(+62) 755 3804 686', '1750808', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(149, 13, 'Tugiman Nugroho', 'Psr. Rajawali Timur No. 614, Pontianak 57957, Papua', '0870 4900 802', '981753', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(150, 18, 'Umi Olivia Riyanti', 'Psr. Baja Raya No. 675, Palangka Raya 28958, Kalsel', '(+62) 628 0737 2333', '1678502', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(151, 2, 'Mulya Thamrin', 'Psr. Panjaitan No. 155, Singkawang 31569, Sultra', '0594 3684 2402', '1084945', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(152, 5, 'Amelia Diah Wahyuni S.I.Kom', 'Ds. Wahidin No. 44, Batu 85576, Sulbar', '0652 7410 481', '983218', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(153, 8, 'Ghaliyati Yolanda S.Kom', 'Ki. Pacuan Kuda No. 931, Pariaman 14527, Bali', '(+62) 436 5780 7147', '2380278', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(154, 7, 'Prayoga Damanik', 'Ki. Sutami No. 821, Probolinggo 49400, Sultra', '0945 2746 5898', '981883', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(155, 3, 'Diana Laksita', 'Gg. Thamrin No. 215, Pontianak 51004, Banten', '(+62) 316 8370 1592', '1339026', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(156, 3, 'Nugraha Tamba S.Kom', 'Jln. Basuki Rahmat  No. 809, Banda Aceh 90708, Malut', '0689 1276 5601', '2704130', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(157, 3, 'Ganep Hutasoit', 'Gg. Bayan No. 132, Bima 38879, Sulteng', '0352 6283 233', '436486', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(158, 14, 'Oskar Gara Pratama', 'Gg. Ekonomi No. 881, Magelang 45000, Babel', '(+62) 29 6473 4923', '2791896', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(159, 12, 'Hesti Latika Halimah', 'Psr. Agus Salim No. 734, Pangkal Pinang 61934, Bali', '0895 3624 382', '688300', '1', '2022-05-05', '2022-09-29 07:24:57', '2022-09-29 07:24:57'),
(160, 1, 'Jindra Martani Sirait', 'Ki. Teuku Umar No. 532, Makassar 60129, Sumut', '(+62) 903 1280 311', '2936024', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(161, 14, 'Febi Utami', 'Ki. Monginsidi No. 650, Lubuklinggau 56020, Aceh', '(+62) 372 5960 128', '1585463', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(162, 6, 'Latika Putri Hassanah', 'Dk. Lada No. 414, Subulussalam 89574, Jambi', '0949 7127 633', '2644381', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(163, 17, 'Irnanto Aslijan Wahyudin S.Pt', 'Jln. Tangkuban Perahu No. 150, Malang 68852, Maluku', '(+62) 665 7452 1629', '408230', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(164, 12, 'Sabar Januar', 'Jr. Arifin No. 641, Malang 56151, DKI', '(+62) 847 3199 622', '2893649', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(165, 5, 'Maida Mayasari', 'Jln. Bawal No. 28, Pematangsiantar 55993, NTB', '(+62) 390 6435 397', '295106', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(166, 2, 'Kairav Sirait', 'Ki. Ahmad Dahlan No. 148, Yogyakarta 13888, Sulut', '0719 4706 258', '1789478', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(167, 17, 'Ika Padmasari', 'Psr. Halim No. 140, Batam 51219, Kalsel', '(+62) 300 3063 455', '2286700', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(168, 2, 'Amelia Hartati S.Psi', 'Gg. Kusmanto No. 573, Tasikmalaya 69751, Aceh', '0868 5876 8920', '582988', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(169, 5, 'Warsita Sirait', 'Ki. Juanda No. 185, Banjar 89802, Aceh', '(+62) 24 6749 567', '558463', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(170, 14, 'Pia Vera Nasyiah S.H.', 'Dk. Ir. H. Juanda No. 661, Ternate 17458, Kalteng', '(+62) 685 1690 828', '1823539', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(171, 10, 'Oskar Hakim S.Kom', 'Gg. R.M. Said No. 998, Bogor 73294, Jatim', '0686 3870 4457', '1102938', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(172, 13, 'Gaduh Pradipta S.IP', 'Psr. Radio No. 376, Bengkulu 65792, Jabar', '(+62) 21 7280 9752', '3274252', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(173, 2, 'Vera Riyanti', 'Jln. Raden No. 928, Administrasi Jakarta Pusat 24182, Lampung', '0967 5834 9754', '2471537', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(174, 19, 'Nova Kusmawati', 'Jr. Kebonjati No. 154, Dumai 87323, Jabar', '0331 4532 6404', '2319070', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(175, 1, 'Calista Hassanah S.T.', 'Ki. Cokroaminoto No. 51, Bontang 59755, Sulteng', '(+62) 734 2094 169', '2698469', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(176, 17, 'Kuncara Ibun Iswahyudi', 'Kpg. Bah Jaya No. 810, Pekanbaru 79418, Aceh', '(+62) 332 7592 949', '3442802', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(177, 7, 'Nabila Lestari', 'Gg. Panjaitan No. 743, Blitar 82887, Kaltim', '0425 1947 4252', '918609', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(178, 1, 'Rina Wahyuni', 'Gg. Batako No. 862, Tarakan 98415, Papua', '0213 2873 260', '173101', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(179, 4, 'Dina Melani', 'Kpg. Bakaru No. 531, Gorontalo 62638, Aceh', '0652 6559 4173', '900049', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(180, 7, 'Leo Prasasta', 'Jr. Ir. H. Juanda No. 966, Serang 94004, Kaltim', '0824 471 745', '2965648', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(181, 2, 'Indah Vivi Yulianti M.TI.', 'Ds. Raya Setiabudhi No. 943, Bekasi 27513, Kaltim', '(+62) 843 445 253', '370485', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(182, 2, 'Raharja Nyana Prabowo S.Psi', 'Dk. Madiun No. 11, Yogyakarta 78605, Sulbar', '0265 3539 510', '1242520', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(183, 15, 'Prayoga Cahya Hidayanto S.I.Kom', 'Jln. Ronggowarsito No. 50, Salatiga 79917, DKI', '0708 4159 7609', '2250581', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(184, 14, 'Cecep Mahendra', 'Dk. Pasir Koja No. 870, Tegal 90671, Riau', '0323 5113 8361', '2341391', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(185, 9, 'Diah Lala Yuliarti', 'Ki. Otista No. 192, Bandar Lampung 51372, Aceh', '0594 6142 100', '869658', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(186, 5, 'Najwa Rahayu S.IP', 'Jr. Baing No. 755, Lhokseumawe 57285, Sulteng', '0207 8195 970', '749883', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(187, 8, 'Respati Setiawan', 'Jr. Pelajar Pejuang 45 No. 654, Samarinda 21247, Gorontalo', '(+62) 771 5895 5768', '2049635', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(188, 6, 'Dinda Halima Farida', 'Jr. Sugiono No. 293, Pariaman 27879, Sumut', '0798 5760 512', '3325475', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(189, 10, 'Budi Sihombing', 'Ki. Yos No. 172, Probolinggo 72557, Bengkulu', '0750 2162 932', '3330234', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(190, 4, 'Dalima Agustina S.H.', 'Jln. Gremet No. 10, Bukittinggi 88593, Aceh', '(+62) 996 5650 991', '3399199', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(191, 8, 'Asmadi Anggabaya Uwais', 'Kpg. Eka No. 399, Tangerang Selatan 51785, Bali', '023 6309 1556', '1055782', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(192, 16, 'Ajiono Darman Hutasoit', 'Kpg. Jaksa No. 565, Kotamobagu 60399, Sulut', '0569 7137 0236', '1749434', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(193, 14, 'Liman Sihotang', 'Jln. Elang No. 573, Jambi 21529, Sumsel', '(+62) 824 964 531', '1606123', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(194, 13, 'Oni Ella Rahimah S.T.', 'Gg. Bakti No. 361, Tegal 76326, Bengkulu', '0457 6150 8129', '2437077', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(195, 13, 'Malika Rahmawati S.H.', 'Ki. Gedebage Selatan No. 856, Tegal 93027, Bengkulu', '(+62) 318 2326 9909', '1826528', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(196, 12, 'Catur Hasan Wijaya M.Farm', 'Kpg. Kiaracondong No. 553, Palu 44125, Maluku', '0272 9259 4462', '1745173', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(197, 13, 'Uchita Pratiwi', 'Psr. Ki Hajar Dewantara No. 548, Bandung 10163, Babel', '0771 1214 1815', '1299353', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(198, 7, 'Kasiyah Oliva Rahimah', 'Psr. Surapati No. 428, Mataram 56207, Sulteng', '0439 8623 656', '2329615', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(199, 17, 'Wani Ade Maryati S.Gz', 'Jln. Sampangan No. 989, Mataram 48712, Sulsel', '(+62) 782 8643 003', '2934106', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(200, 14, 'Queen Andriani', 'Gg. Ters. Kiaracondong No. 303, Tanjung Pinang 14142, Jambi', '0545 9178 8206', '1188595', '1', '2022-05-05', '2022-09-29 07:24:58', '2022-09-29 07:24:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_26_133025_create_posts_table', 1),
(6, '2022_08_27_223412_create_categories_table', 1),
(7, '2022_09_20_115007_add_is_admin_to_users_table', 1),
(8, '2022_09_28_135642_create_budgetings_table', 1),
(9, '2022_09_29_134553_create_donates_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Distinctio maxime et hic.', 'sunt-dolores-quam-voluptatum-error-ut-nemo-magnam', NULL, 'Sed molestiae sit ea voluptas dolores vel in. Blanditiis sequi quo distinctio similique quia aspernatur.', '<p>Et porro vero quod voluptatibus. Nesciunt aut et vitae quo. Labore sequi facere totam vel aut. Illum quis ex sed quos.</p><p>Est animi nihil nesciunt suscipit. Nihil ratione delectus est. Consequatur corporis et vel.</p><p>Reiciendis illum temporibus quos deleniti. Et nisi ut saepe earum repellat. Molestias doloribus tempora possimus eveniet. Blanditiis iure repellat quia velit.</p><p>Modi est quaerat in et iure. Suscipit magnam eum sed sed.</p><p>Quas nostrum omnis reprehenderit ut. Iure ea accusantium magnam repudiandae molestias autem quia. Iste fugiat repudiandae nisi quis. Modi suscipit corporis et voluptas ut.</p><p>Et asperiores adipisci accusamus eos. Culpa necessitatibus nihil quaerat ea consequatur enim quam. Animi numquam beatae et id. In et aut fuga nam.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(2, 2, 1, 'Velit dolorum et totam.', 'voluptatum-velit-et-vero-maiores-dolorum-aliquam', NULL, 'Dolores qui molestias temporibus quis velit magnam ut. Rerum incidunt numquam ducimus. Consequatur eum omnis quasi ad necessitatibus et expedita. Odio sapiente rerum assumenda illo officiis earum labore.', '<p>Repellat facere est ipsa provident sunt. Et in esse optio cum et sint sint. Sed sit sequi assumenda quia sunt repellendus sequi eaque. Ipsum qui dignissimos saepe temporibus at.</p><p>Porro distinctio sint dolorum dolores ex quidem. Et ut quaerat rerum aut et. Corrupti commodi cupiditate qui quibusdam. Quia animi commodi voluptas sed aperiam.</p><p>Tenetur repudiandae voluptas cupiditate in vero rerum facere. Expedita expedita dolorem illum nam voluptatibus iusto. Aut qui est distinctio delectus hic reprehenderit eius non. Quia ea qui dicta ut quidem laborum sapiente. Architecto enim voluptates in corrupti aliquid voluptatum ipsa.</p><p>Eum sint doloribus est culpa nam autem ut. Vel quo sit sapiente perspiciatis.</p><p>Occaecati aliquid ex illo reiciendis. Ipsum ea et est. Eveniet rem ducimus eos eos non. Doloribus animi omnis eum accusantium dolore magnam.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(3, 2, 1, 'Non ducimus ut aut perferendis voluptatem.', 'perferendis-assumenda-debitis-quisquam-beatae-hic-ut', NULL, 'Rerum alias eum illum quam. Nemo possimus laudantium quaerat aut nihil. Repudiandae alias nostrum ullam vel dolorum quibusdam. Similique quidem sint laboriosam voluptatem ipsam ratione. Repellat tempore libero a est.', '<p>Perferendis eos numquam assumenda at rerum accusamus sunt earum. Corrupti et necessitatibus magnam blanditiis est. Id ullam dolorem blanditiis aliquam vel et. Sunt consequuntur qui sed numquam commodi id.</p><p>Repellat distinctio ea qui incidunt rerum velit et est. Esse facilis blanditiis et facere. Rem velit nostrum id sed et enim.</p><p>Cupiditate neque ab et et quia excepturi. Quos aut velit repellat ut est aliquid. Explicabo perspiciatis sunt nobis repudiandae voluptas laborum mollitia. Eos earum qui et aut.</p><p>Deleniti commodi officia corporis sit molestiae unde. Sint odit tempore totam. Enim maiores mollitia velit recusandae facere.</p><p>Nemo provident soluta repellat reprehenderit incidunt. Pariatur repellendus est ipsam minima. Excepturi rerum qui deserunt in quam voluptas. Et possimus exercitationem qui quisquam fuga autem.</p><p>Quae nisi eligendi sit. Voluptatibus voluptates velit dignissimos atque reprehenderit perspiciatis perspiciatis. Sit deleniti ut nobis. Rerum molestiae provident rerum natus quia neque ut exercitationem.</p><p>Qui vitae voluptatibus quod et dignissimos dolor rerum a. Earum debitis quas dignissimos. Et ut quos adipisci non soluta. Illo doloribus repellendus sit architecto. Omnis rerum qui maxime.</p><p>Velit est omnis possimus eius rerum distinctio. Eos placeat repudiandae vel ullam culpa quibusdam voluptatem.</p><p>Esse omnis dicta ratione corrupti unde odit deleniti. Deserunt et nam libero omnis aspernatur. Quis rerum placeat rerum nobis odit qui quaerat.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(4, 2, 2, 'Sunt sunt quisquam eius error eos mollitia.', 'quod-debitis-dicta-est-et-sapiente-occaecati', NULL, 'Est magni molestias consequatur explicabo ut qui. Blanditiis id eligendi dolorum architecto dolores inventore ut. Cupiditate earum consectetur dolorem at et animi expedita. Aut nemo ea dolores labore dolores minima.', '<p>Illum voluptate iusto accusamus consequatur aut. Et ut quam et ad tempore consequatur. Officia ipsam voluptatibus quia voluptatibus nostrum rerum nisi. Molestias totam consequatur quo ut est iure.</p><p>Porro eum alias eveniet aut. Expedita laborum quis magni voluptatem ratione enim. Et delectus molestiae doloremque rerum explicabo. Ad deleniti assumenda odio.</p><p>Rerum error voluptates enim et molestias possimus. Aut dolores quam ullam est necessitatibus laboriosam placeat.</p><p>Nostrum rem ab et eligendi qui quia amet tenetur. Est quidem ipsam facere ea.</p><p>Numquam consequatur incidunt et doloremque officia. Ducimus non voluptas magnam. Ut quis beatae mollitia qui labore laboriosam.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(5, 2, 1, 'Voluptas ut placeat.', 'officia-eos-modi-iure-explicabo', NULL, 'Quis rerum assumenda a aut necessitatibus quia illum. Voluptate minima ut eum fugit. Autem nobis in aut accusantium eos.', '<p>Nihil nam illum unde pariatur deleniti amet mollitia. Quam nostrum et est autem veritatis et numquam. Et iure ut aliquam occaecati magni quia ea. Sit hic non quia praesentium eos est eum cupiditate.</p><p>Totam qui nihil quod velit facilis dolorem temporibus pariatur. Distinctio aut aperiam ullam velit. Sit autem vel voluptatem rerum.</p><p>Nihil hic sit illo est et accusantium quis sed. Rerum facere quod nisi soluta voluptas et. Omnis incidunt autem qui. Deleniti animi nostrum et accusamus.</p><p>Cupiditate sed et consequuntur tenetur voluptatem voluptates porro. Repellat illo error error repellendus libero consequatur repudiandae assumenda. Vero quibusdam quia quia non. Hic maiores mollitia quis doloremque est ut neque.</p><p>Nam impedit dolore sint et sunt. Iste quo perferendis quo qui ratione rerum. Maiores culpa explicabo aperiam nam libero.</p><p>Quo repellendus expedita autem in et esse est. Necessitatibus eius non dolorem voluptatem. Exercitationem quis hic tempora facere eos velit quis. Voluptas error qui voluptas numquam dolores consequatur ea rerum.</p><p>Cum ad laborum debitis ipsa et. Soluta repellendus illum corporis est. Occaecati vitae nihil tenetur iste odit dolorem est aut.</p><p>Illum non possimus voluptatem deserunt et quidem et veritatis. Optio tempora libero repellendus doloribus vel. Sequi sit impedit doloribus velit tenetur necessitatibus occaecati.</p><p>Distinctio et vel magni. Similique non dolores eos doloribus a esse. Distinctio enim repellat ut voluptatum et est provident velit. Et reiciendis accusamus quibusdam nobis aut.</p><p>Ea reprehenderit inventore suscipit occaecati officia. Sunt quisquam quis voluptatibus nulla. Aperiam voluptate ut aut illum optio expedita.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(6, 2, 1, 'In qui quas est et minima explicabo quo.', 'quia-deserunt-excepturi-similique-optio-aspernatur-animi', NULL, 'Reiciendis molestias in eveniet aperiam reiciendis. Voluptas optio distinctio voluptates quod similique aut nostrum. Labore delectus maiores exercitationem pariatur. Quam qui optio delectus explicabo nostrum aperiam.', '<p>Autem suscipit rerum consequatur consequatur officiis numquam inventore. Ut qui architecto aperiam vel officia. In tenetur illo dolor magnam porro enim sint.</p><p>Nihil suscipit aut et ut voluptatem. Sunt dolor voluptatem quas recusandae molestiae expedita ratione. Quia placeat doloremque rerum omnis. Ipsa pariatur natus voluptas.</p><p>Dicta necessitatibus et architecto enim deleniti quo ab. Mollitia nihil numquam quod. Cupiditate sunt modi dolores occaecati iusto provident. Est cum non culpa libero a neque quis ut.</p><p>Commodi ut quibusdam molestiae facilis veritatis autem ducimus molestiae. Sint fuga temporibus minus possimus itaque. Ut velit sed quibusdam. Consectetur harum suscipit neque repellat ab.</p><p>Voluptatibus et voluptatibus quia et nostrum aspernatur iste. Aut incidunt mollitia sit non. Facere hic voluptatem rerum.</p><p>Aperiam et aspernatur placeat rerum distinctio non sunt. Ut quod ea ea aliquid. Tempora velit molestiae nobis fuga atque eveniet.</p><p>Aspernatur consectetur reiciendis atque aut est at aliquid quia. Et qui vel tempora et id optio rerum. Laudantium ut sit ex ipsum. Sunt ipsum et expedita aut eligendi. Nesciunt quaerat magni distinctio quis vitae adipisci.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(7, 1, 3, 'Beatae et nobis.', 'recusandae-iste-dolorem-doloribus-nihil-tempore', NULL, 'Voluptatibus saepe alias cumque fuga asperiores iste tempore. Odit aut porro repellendus sequi exercitationem. Et porro qui ut dolorum veritatis.', '<p>Consequatur sunt dolorem at molestias recusandae qui libero. Rem ut non omnis aspernatur minima laboriosam sunt. Est sunt corporis et in rerum.</p><p>Est temporibus rerum nesciunt. Aut omnis qui corporis ea in officia qui. Harum veritatis voluptatum illum qui provident repellat.</p><p>Consequuntur nam quas ullam asperiores in aut. Est quidem ratione aut quibusdam. Laborum quam aliquid aut soluta illum corporis. Quia quia sed dicta rerum odio.</p><p>Laboriosam rerum architecto id repellendus. Dolorem soluta et fugit ipsa ea praesentium. Numquam odio sint culpa ex unde minus ut soluta. Saepe ut odio dolores deleniti itaque facere dolorem.</p><p>Quidem quam repudiandae cumque harum ut fuga consectetur iure. Facilis et doloribus consectetur delectus. Voluptatibus nisi ullam inventore voluptatibus dicta veritatis quas.</p><p>Culpa et quia et aut. Dolorem soluta tenetur eum eos et nisi. Illo fuga quidem voluptas error cum.</p><p>Nemo sint reprehenderit sit quidem autem. Enim et quisquam iure fugit. Expedita dolore repudiandae et nisi.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(8, 2, 3, 'Qui illum quas nobis sint.', 'nobis-tempora-voluptates-ea-eveniet-quasi-ad', NULL, 'Quo enim quod libero nisi doloremque voluptatem consequuntur. Ullam aut laboriosam vero ullam harum sapiente ut molestiae. Itaque rerum cupiditate eos blanditiis. Quas ut maxime labore placeat quo quo.', '<p>Nulla et nobis quam possimus veritatis minima libero natus. Nemo veritatis soluta fuga aliquam quod quaerat est. Dignissimos eius quia saepe quo ullam est. Totam et vero inventore eveniet.</p><p>Est minus commodi non sit molestias voluptatem ipsum. Excepturi porro alias velit voluptatem repellat voluptas. Aut ad numquam cupiditate.</p><p>Et non cumque quia aut. Occaecati neque est officiis sint ut ipsum temporibus. Hic iusto ut harum. Excepturi nihil asperiores qui ipsum repudiandae sit ea.</p><p>Iusto et provident omnis hic. Facere ea blanditiis id ut et. Enim sint ducimus corporis voluptatem voluptas consequatur laboriosam.</p><p>Est et alias modi autem repudiandae. Labore explicabo unde ut.</p><p>Quia earum excepturi voluptatem doloremque dignissimos odio. Eaque et est totam quasi. Enim nihil sed et doloremque.</p><p>Possimus incidunt omnis cum sit eveniet architecto. Nisi laudantium voluptatibus quis repellendus molestiae amet. Omnis hic veritatis accusamus voluptatibus molestiae.</p><p>Voluptas fugiat ullam nemo alias aliquam nam. Vero possimus sit dolores porro impedit optio dignissimos ut. Suscipit et est cupiditate molestias saepe eveniet corporis. Totam quidem nobis in et facere pariatur quibusdam dolores.</p><p>Totam voluptatibus quidem qui illum. Facilis vel nihil totam sit. Voluptates qui enim laborum in et. Nostrum velit iusto voluptatem molestias quia sed.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(9, 2, 1, 'Eius rem qui.', 'soluta-perspiciatis-ex-excepturi-qui', NULL, 'Iste aut nemo id placeat deserunt dolores. Repellendus illo ratione ipsa qui nostrum. Laudantium rerum commodi quis et et et assumenda amet.', '<p>Enim corporis dolores in. Minima dolor rerum maxime ut cumque saepe. Vel voluptas magnam et vero alias qui ipsa saepe.</p><p>Labore est voluptas tempora occaecati. Aut ducimus quo vel porro est ad. Ut expedita autem ut aliquam voluptates sint tempore ut. Dolor similique a qui est.</p><p>Exercitationem sapiente quos dolorum dolores dolor quo et totam. Nam et voluptatem at corporis quasi. Velit nihil eligendi consequuntur minus atque occaecati libero.</p><p>Provident corrupti explicabo qui ut facere. Autem non officiis et. Ut autem pariatur doloremque quae voluptatem ut.</p><p>Quo officia soluta libero rerum dignissimos incidunt. Earum aut enim et et eum. Perspiciatis eos corrupti laborum consequatur.</p><p>Ut aut fuga dolorem exercitationem delectus consequatur. Expedita ut nihil blanditiis eos quod amet. Culpa ut corrupti et aut vero blanditiis. Sit esse voluptatem voluptate enim cupiditate.</p><p>Consequuntur harum omnis itaque qui. Doloremque iure quam aut laboriosam voluptatem ex. Laborum maxime suscipit accusamus aliquam dolore cum.</p><p>Ratione dolores quo quia voluptatem delectus. Ratione dolores temporibus dicta. Aut sunt est in aliquid cumque unde.</p><p>Eveniet vero delectus nostrum harum. Ab quis itaque non expedita placeat reiciendis. Sint suscipit eum labore aut. Repudiandae voluptates minus dolorum quis molestias sit.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(10, 1, 1, 'Praesentium debitis minus qui impedit est porro ducimus.', 'ea-tempore-culpa-porro-dolor-et', NULL, 'Culpa atque voluptate autem reiciendis adipisci quisquam ut. Dolorum et quis illo officiis quidem. Inventore totam consequatur enim. Aliquid officia magnam laborum.', '<p>Illum ducimus maiores soluta hic perferendis unde. Dolores velit porro vero voluptatum. Praesentium architecto voluptates ipsa vel.</p><p>Necessitatibus dolor beatae quam natus nemo. Qui rerum officia incidunt totam.</p><p>Accusantium natus tempore distinctio unde. Quisquam suscipit ratione facilis dignissimos qui minima eos. Odit nobis minima et omnis non animi deleniti.</p><p>Quis atque sequi quia impedit facilis ducimus. Sit dolore quo ea qui veritatis. Dicta eos sed saepe in facere. Aliquam veritatis dolor doloremque.</p><p>Quisquam earum quisquam aspernatur dignissimos aliquam officiis. Est ut amet odio explicabo facere. Ut dolores temporibus eius consequuntur.</p><p>Ullam occaecati tenetur iure voluptas. Fugiat iste sed vel eos nihil quibusdam similique. Quo quisquam quisquam libero animi.</p><p>Quis ut soluta nemo. Doloribus repudiandae eum illum nulla dolorem sunt. Voluptatem quo impedit minus maiores eos et qui.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(11, 1, 1, 'Doloribus distinctio explicabo et.', 'voluptatem-illum-ut-optio-et', NULL, 'Aut et sed sint occaecati. Quis quis optio necessitatibus modi voluptatum et ullam enim. Est libero laboriosam qui sed qui. Maxime quis quam corrupti eveniet.', '<p>Animi praesentium sit unde repudiandae ullam. Est molestiae sequi voluptatem repellendus quos. Est rerum maiores at sint. Modi eos quo dolore autem consequatur. Voluptatem sed maxime aperiam rerum debitis adipisci.</p><p>Sed rerum ipsum labore natus a. Rerum nobis quia fugiat nisi.</p><p>Sed repellat cupiditate ab voluptas numquam nisi reiciendis quidem. Eius magnam occaecati officiis est. Delectus saepe labore praesentium aut. Ad quis veritatis quisquam in est at repellat minus.</p><p>Repellendus aut et eum modi quo voluptatum molestias. Fugit quasi similique nobis beatae repellendus facilis. Asperiores autem accusantium doloribus aperiam laboriosam sint a ipsam.</p><p>Blanditiis mollitia cupiditate mollitia iure. Corporis sit sunt totam optio aperiam sit. Qui tenetur modi impedit iure totam omnis. Vel fugit repellat necessitatibus.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(12, 1, 2, 'Praesentium quis doloribus aut enim id.', 'beatae-laboriosam-quo-vel-et', NULL, 'Et vel fugiat et velit qui. Earum quia dolorem excepturi qui. Fugit provident voluptates et quis delectus ipsa repudiandae. Est est sed commodi.', '<p>Ipsam fugit officia magnam ut debitis. Assumenda quo illum et repellat maxime quis magni. Quibusdam voluptatem sed magni molestiae omnis ex. Eos autem molestias labore laboriosam deserunt dicta ut a.</p><p>Et voluptatem laborum dolore consequuntur maiores voluptates. Molestiae excepturi et deserunt voluptas quis hic. Nesciunt cupiditate quibusdam eligendi nihil numquam vitae. Vel minus exercitationem ducimus iure sint.</p><p>Minima est dolor non illo quia necessitatibus. Iure est consequatur molestiae repellat ullam voluptas. Quae sed nesciunt officia repellendus eos. Quo rerum laudantium asperiores voluptatem et. Velit ea dignissimos debitis.</p><p>Officiis quo voluptatem est sed qui qui. In et itaque voluptatum et in quo non esse. Ut error quaerat aut fuga recusandae blanditiis. Voluptate distinctio consequatur est porro omnis. Qui officiis animi quaerat.</p><p>Omnis distinctio velit numquam et similique et quidem. Sed commodi veritatis in tempora culpa ut. Magnam eum sint quod omnis.</p><p>Facere voluptas doloremque consequatur explicabo laudantium quos. Quis ratione quas recusandae sunt velit repellat quia. Quisquam autem qui magni voluptatem iste ratione.</p><p>Repellat suscipit quod dolores dicta dolores ut magnam. Porro iusto iure voluptate repellendus porro in. Ut doloremque qui non laborum et sed. Reprehenderit perspiciatis repellat quod suscipit pariatur doloribus autem non.</p><p>Doloremque et ut unde soluta expedita. Eius nobis id quae nihil ut asperiores enim. Consectetur rerum corporis qui quasi sint. Aut tempora magni nisi et aspernatur id dolores. Est libero dolore voluptatem reprehenderit.</p><p>Cumque fugiat ad pariatur sequi. Occaecati aliquam sed laboriosam accusamus ut. Eum qui qui aperiam ut. Aut dolor maiores et consequuntur cum placeat.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(13, 1, 1, 'Et magnam reprehenderit placeat dolor.', 'quaerat-qui-beatae-dolorem-commodi-cum', NULL, 'Aut voluptatibus minima numquam molestiae. Quis nam molestiae sed est odio. In adipisci fugit dolor ea repellat non. Et cupiditate reprehenderit amet laudantium voluptatem repudiandae.', '<p>Id libero est eos qui mollitia nisi laboriosam. Asperiores accusantium ea non assumenda expedita beatae ipsum consequatur.</p><p>Vel voluptatem quisquam at numquam iusto perferendis laborum. Saepe sed animi asperiores. Dolorem optio ad quasi.</p><p>Est aliquam voluptas deserunt commodi aut eos. Ut laboriosam quaerat harum recusandae sapiente hic. Excepturi facilis perferendis et consectetur ut.</p><p>Possimus nobis velit esse aut ex consequatur. Laudantium et quasi voluptate. Molestias corporis quidem magnam optio inventore.</p><p>Sed accusantium similique qui ea. Ad consequatur magni quia. Similique ut aut voluptatem sint architecto cumque iure. Illo ex provident molestiae accusantium vel.</p><p>Dolor et cum sint est eaque maxime praesentium quo. In nobis facilis corporis. Quia eaque eum voluptatem quasi quisquam esse dolor. Aliquam eius harum quaerat autem asperiores eligendi architecto architecto. Fuga qui sunt non aliquid et.</p><p>Quasi labore quaerat amet. Aliquam eos molestiae explicabo voluptates ut vitae.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(14, 2, 1, 'At enim quasi dolor.', 'quod-non-officiis-omnis', NULL, 'Facilis sit minima facere ipsa. Eum blanditiis numquam possimus vitae tempore natus sequi. Est ab aut odio sit.', '<p>Ea non sed quam ex placeat aut ipsum. Facere saepe consequatur labore laborum. Temporibus minus culpa libero cupiditate in. Quisquam repellendus dolores voluptates.</p><p>Vel iure dolor beatae debitis temporibus. Ullam asperiores omnis nam nulla est et. Facere cupiditate tenetur ea dolores minus quia exercitationem qui.</p><p>Quia ut consequuntur reprehenderit molestias soluta et voluptas. Quia ducimus possimus sit fugit nihil deserunt unde. Inventore itaque illum animi aperiam exercitationem neque cumque. Reiciendis ratione reprehenderit quis voluptatem dolor iusto velit.</p><p>Provident amet possimus quidem qui. Molestias fugit beatae recusandae sit nam praesentium. Dolorum sint aliquid et exercitationem beatae qui. Eius esse vel et tempora cum assumenda sit autem. Animi consectetur expedita iusto eaque cupiditate placeat voluptatem.</p><p>Dolores nulla aliquid perferendis sit ducimus libero dolorum. Autem veniam sunt quos dolores eos blanditiis fugiat. Fugiat architecto maxime consequatur illum.</p><p>Sequi dolores maxime magnam pariatur quia. Nesciunt et et debitis provident.</p><p>Eaque voluptas quia earum quia. Accusantium debitis distinctio aliquid ipsam ipsum ut. Praesentium assumenda itaque tempora. Hic nisi qui fugiat sed maxime id deleniti.</p><p>Qui voluptate aut rerum minima veritatis fugit in. Ex beatae ipsum amet quo. Animi et sunt commodi doloribus dicta sapiente. Vel nesciunt ea magni delectus temporibus suscipit voluptatem.</p><p>Debitis et officiis provident alias facilis tenetur. Quo sint et sunt et quos non officiis accusamus. In dolore et quia ut reprehenderit.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(15, 1, 1, 'Quo dolor deleniti voluptatem placeat sed maxime.', 'et-necessitatibus-omnis-cum-nihil-aut-illo-eos-eligendi', NULL, 'Tempore repellat autem deleniti dolores rerum. Minus et numquam ab quia. Nihil ex veritatis sint quae ipsum.', '<p>Quidem voluptas enim dolorum a quis illo cupiditate. Recusandae dolorem enim praesentium tenetur non aut perferendis. Consequatur magnam doloremque at molestias. Odio placeat blanditiis aut omnis et. Aut autem consequatur mollitia.</p><p>Ad laboriosam reprehenderit quos ducimus sit amet occaecati. Dolores reiciendis sed qui in est. Enim magnam vitae quaerat libero non nemo repellat eum. Officiis illum fugit sint beatae corrupti voluptas fugiat dolorum. Illum eos consectetur rem debitis non impedit.</p><p>Sed ex aut ut neque aut consequatur. Voluptas sunt atque numquam nisi. Qui omnis et et tempora.</p><p>Possimus non corporis consequatur itaque. Beatae repellendus id voluptate aspernatur velit nihil in. Dolorem alias non magnam possimus aut.</p><p>Ea inventore est enim occaecati. Molestias sint ad dolor deleniti. Error earum sint laboriosam delectus explicabo vel. Maxime sed aut placeat cumque et a. Et enim id omnis aliquam saepe.</p><p>Hic iure qui rerum distinctio iste sequi tempora. Sit iusto excepturi ex commodi quidem et. Animi provident doloribus et voluptatem. Soluta est possimus ab delectus vero excepturi aperiam.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(16, 2, 1, 'Eum maxime porro velit vero reprehenderit ipsum commodi.', 'incidunt-aspernatur-labore-et-explicabo-ut-iure', NULL, 'Sit ad aliquam qui nesciunt cumque ut rerum. Et et hic ex consequatur accusantium impedit aut. Mollitia aut placeat et magni atque. Iusto earum eligendi et quod exercitationem.', '<p>Error rem nulla quas debitis rerum distinctio asperiores et. Corrupti ea ipsa explicabo aperiam quia nisi omnis. Consequatur et saepe aut.</p><p>Repudiandae unde molestias aliquid officiis illo laudantium et. Quis doloribus veniam exercitationem tenetur vero quis aspernatur. Enim eius omnis beatae maxime.</p><p>Sed eaque assumenda ea commodi commodi. Qui minima nulla sed itaque deleniti natus. Eaque totam dolorem velit pariatur sunt.</p><p>Aut consequatur nam qui est et. Et odit magnam quibusdam sed. Quibusdam consequuntur cupiditate tempore cumque illo quia. Voluptatem temporibus voluptatem eius cupiditate maxime rerum.</p><p>Iure eius cum autem architecto voluptatem sunt sapiente. Qui rem repellendus odio voluptas. Tempore dignissimos possimus explicabo odit. Harum id omnis asperiores aut aliquid error.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(17, 1, 2, 'Deleniti velit similique.', 'nemo-ut-vero-labore-aut-rerum', NULL, 'Voluptatem nemo perferendis voluptatem doloribus velit praesentium quam consequatur. Ipsam tenetur non totam iusto.', '<p>Cupiditate consectetur natus molestiae beatae earum consequatur culpa in. Reiciendis quam facilis illo culpa nobis ullam. Error ut quod deleniti iusto molestias sit. Praesentium magni eos sed tempora aperiam quibusdam.</p><p>Quo amet dolore veniam tempore. Totam est vero vel iure. Atque soluta similique rerum molestiae et qui nostrum. Hic officia laboriosam inventore accusamus ea quasi.</p><p>Occaecati deleniti qui laborum praesentium atque eligendi ratione. Veritatis qui eaque aspernatur nobis quo laborum animi at. Velit perferendis omnis aut sapiente necessitatibus beatae. Consequatur est architecto voluptates quia officia at illum laudantium. Ex dolorem quo odit nulla est aut aliquid.</p><p>Aliquam suscipit quisquam fugit reiciendis rerum alias. Voluptatem iure quia nam. Omnis at atque ipsum tempore neque quaerat est. Ut corporis et error nobis.</p><p>Voluptatum quae saepe exercitationem consequatur aut. Et accusamus recusandae aspernatur accusamus libero. Suscipit officia deleniti reiciendis voluptatem eveniet molestias nobis. Laudantium in nihil fuga.</p><p>Dolorem nulla sequi harum suscipit molestias. Id explicabo qui eligendi explicabo quae iusto unde. Reprehenderit temporibus quia non ut. Quis suscipit consequatur quaerat est ab aut qui esse.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(18, 2, 3, 'Aut voluptatem.', 'aut-et-et-ut-quibusdam-harum-dolor', NULL, 'Et ut pariatur dignissimos enim ea hic magni. Est saepe earum ea exercitationem. Illo dicta consequuntur dolores et officia repudiandae qui porro. Quod commodi est sapiente ut cum nemo ut.', '<p>Ut aperiam occaecati unde explicabo rerum consequatur iusto nostrum. Non rem architecto quae laboriosam doloribus laudantium aliquam. Voluptatem tempora aut deleniti nemo et ipsam fugiat.</p><p>Doloribus laboriosam commodi recusandae ut magnam consequuntur. Provident laborum mollitia est. Non sunt hic nihil voluptas sunt hic eligendi quos.</p><p>Distinctio illo et et sit officiis ipsum minus vel. Ut debitis maxime optio eaque. In ad nisi est.</p><p>Est rerum sunt temporibus. Laudantium et nobis ea magnam iste blanditiis ab. Quod sed ipsum aut molestias consequatur repudiandae cupiditate rerum.</p><p>Animi rerum accusantium dicta autem. Est et maiores quis deserunt provident doloremque fugiat voluptatem. Inventore magni placeat dolorem eligendi necessitatibus quasi fugit.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(19, 2, 2, 'Sed id excepturi voluptas saepe ab velit vel.', 'quaerat-error-facere-a-molestiae-accusantium-et-eos', NULL, 'Facere iste a ea est quisquam. Omnis adipisci cum vero aliquid quas molestiae. Ut consequatur quidem magnam qui. Nostrum quasi et esse explicabo. Atque voluptas alias voluptatem sed tempora perferendis eos.', '<p>Reiciendis qui reiciendis et sunt. Tempora iusto temporibus est iste suscipit ratione veniam et. Quaerat voluptatum aliquam non aliquam aut reprehenderit neque. Porro non non rerum alias distinctio.</p><p>Corporis aut temporibus magni iste praesentium ad et deserunt. Pariatur voluptatem id quis. Cupiditate voluptate optio eos in earum consequatur numquam. Quidem voluptatibus eligendi nesciunt nostrum tempora illo earum. Est molestiae autem blanditiis voluptas atque eius.</p><p>Qui animi recusandae quia quibusdam. Fugit voluptatem aut nam facilis neque. Architecto recusandae dolores et aut eum commodi.</p><p>Omnis enim iusto quod et explicabo dignissimos voluptatem. Praesentium occaecati optio aut ex. Sed corrupti ullam autem.</p><p>Eos sint earum ut qui eveniet nostrum et porro. Saepe architecto quasi similique dolores cumque. Sed assumenda velit et quo debitis commodi delectus eos. Sed illum corrupti magni sit a quisquam odio. Inventore est incidunt facere consequatur enim numquam dolorem quod.</p><p>Sapiente et odit ad error. Optio earum ut et quod a dolore totam. Qui consectetur omnis officia et ducimus. Tempore incidunt eos at in deserunt.</p><p>Laudantium quasi amet quas. Sed fugit quia dolorum voluptatem cum est.</p><p>Culpa hic possimus reiciendis necessitatibus consequatur autem. Doloremque veritatis ullam qui et nostrum distinctio. Eaque omnis labore saepe non et.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58'),
(20, 2, 1, 'Molestiae molestias ipsa.', 'consequuntur-et-voluptatem-reiciendis-veniam', NULL, 'Aspernatur vero unde laborum sint dicta veniam maxime est. Saepe totam voluptatum vitae cumque vitae consectetur neque rem. Praesentium voluptatem odio excepturi necessitatibus at et ad. Voluptas sed repellendus doloribus odit harum.', '<p>Omnis vitae qui et alias. Necessitatibus natus deserunt nobis. Eaque possimus nulla velit. Dicta quo hic ad possimus velit nihil mollitia.</p><p>Perferendis qui excepturi quos laudantium possimus. Facilis distinctio ducimus recusandae in ut voluptatem laudantium. Minima inventore quia molestias distinctio ut accusamus velit.</p><p>Voluptatem eum qui ex voluptatem maiores. Natus non minima nemo aut nostrum error. Suscipit ea autem ut quo.</p><p>Dolores assumenda beatae laboriosam similique. Blanditiis molestias voluptatem iste beatae laudantium fugit eum. Quod nam voluptatibus animi ut. Cupiditate rerum voluptatem velit quidem.</p><p>Eos et qui deserunt debitis. Ipsa est incidunt deleniti placeat doloremque. Quia ipsum incidunt aliquid eum porro maxime. Molestiae delectus voluptas vel nihil minima aspernatur. Iusto voluptas quis et architecto nisi provident.</p><p>Asperiores ut est expedita necessitatibus tenetur laborum et. Sit commodi unde odit velit veniam et et. Sunt temporibus iure doloribus accusantium temporibus. Quam nobis voluptatum et illum. Quia itaque fugiat et ipsam eligendi dicta.</p><p>Eos nihil autem maiores veritatis ducimus consectetur doloribus dolores. Non doloremque quis et unde. Est aut sapiente rerum quae qui voluptas dolorem.</p>', NULL, '2022-09-29 07:24:58', '2022-09-29 07:24:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Jumhan Prayitno', 'jumhan', 'jumhan@gmail.com', NULL, '$2y$10$uvDRSAdY8GrSHxAJSclTa.jAMDau7KcxKm6QAleSzqKLsee63YrtK', NULL, '2022-09-29 07:24:57', '2022-09-29 07:24:57', 1),
(2, 'Carub Kurniawan', 'pandu06', 'betania91@example.com', '2022-09-29 07:24:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DWXZ0IbNn4', '2022-09-29 07:24:57', '2022-09-29 07:24:57', 0),
(3, 'Mila Hasanah', 'msamosir', 'prayoga.danuja@example.com', '2022-09-29 07:24:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pxllIAatg3', '2022-09-29 07:24:57', '2022-09-29 07:24:57', 0),
(4, 'Halima Widiastuti S.E.I', 'balangga.mandasari', 'elisa74@example.org', '2022-09-29 07:24:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6F2TxZPnB', '2022-09-29 07:24:57', '2022-09-29 07:24:57', 0);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdonations`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdonations` (
`id` bigint(20) unsigned
,`description` varchar(255)
,`slug` varchar(255)
,`budget` int(11)
,`donations` double
,`unicode` varchar(255)
,`cp_hp` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vdonations`
--
DROP TABLE IF EXISTS `vdonations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdonations`  AS  select `a`.`id` AS `id`,`a`.`description` AS `description`,`a`.`slug` AS `slug`,`a`.`budget` AS `budget`,`b`.`donations` AS `donations`,`a`.`unicode` AS `unicode`,`a`.`cp_hp` AS `cp_hp` from (`budgetings` `a` left join (select `b`.`budgeting_id` AS `budgeting_id`,sum(`b`.`nominal`) AS `donations` from `donates` `b` group by `b`.`budgeting_id`) `b` on(`a`.`id` = `b`.`budgeting_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `budgetings`
--
ALTER TABLE `budgetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `budgetings_description_unique` (`description`),
  ADD UNIQUE KEY `budgetings_slug_unique` (`slug`),
  ADD UNIQUE KEY `budgetings_unicode_unique` (`unicode`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `budgetings`
--
ALTER TABLE `budgetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `donates`
--
ALTER TABLE `donates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
