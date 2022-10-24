-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Okt 2022 pada 17.06
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
-- Struktur dari tabel `budgets`
--

CREATE TABLE `budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` int(11) NOT NULL,
  `unicode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `budgets`
--

INSERT INTO `budgets` (`id`, `description`, `slug`, `budget`, `unicode`, `cp_hp`, `cp_name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Pekerjaan Persiapan/ Umum', 'pekerjaan-persiapan-umum', 44469600, '001', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(2, 'Pekerjaan Tanah', 'pekerjaan-tanah', 147182183, '002', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(3, 'Pekerjaan Struktur Lantai 1', 'pekerjaan-struktur-lantai1', 1555066206, '003', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(4, 'Pekerjaan Arsitektur Lantai 1', 'pekerjaan-arsitektur-lantai1', 485719171, '004', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(5, 'Pekerjaan Mekanikal & Elektikal Lantai 1', 'pekerjaan-mekanikal-elektikal-lantai1', 62997860, '005', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(6, 'Pekerjaan Struktur Lantai 2', 'pekerjaan-struktur-lantai2', 671046165, '006', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(7, 'Pekerjaan Arsitektur Lantai 2', 'pekerjaan-arsitektur-lantai2', 431774974, '007', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(8, 'Pekerjaan Mekanikal & Elektikal Lantai 2', 'pekerjaan-mekanikal-elektikal-lantai2', 69796870, '008', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(9, 'Pekerjaan Struktur Lantai 3', 'pekerjaan-struktur-lantai3', 671640160, '009', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(10, 'Pekerjaan Arsitektur Lantai 3', 'pekerjaan-arsitektur-lantai3', 458468141, '010', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(11, 'Pekerjaan Mekanikal & Elektikal Lantai 3', 'pekerjaan-mekanikal-elektikal-lantai3', 71657610, '011', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(12, 'Pekerjaan Struktur Lantai 4', 'pekerjaan-struktur-lantai4', 168593066, '012', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(13, 'Pekerjaan Arsitektur Lantai 4', 'pekerjaan-arsitektur-lantai4', 647962309, '013', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(14, 'Pekerjaan Mekanikal & Elektikal Lantai 4', 'pekerjaan-mekanikal-elektikal-lantai4', 100548150, '014', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(15, 'Pekerjaan Paving Block', 'pekerjaan-paving-block', 27238000, '015', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(16, 'Pekerjaan Pagar', 'pekerjaan-pagar', 103979559, '016', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(17, 'Pengadaan AC', 'pengadaan-ac', 167370000, '017', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(18, 'Pekerjaan Hydran', 'pekerjaan-hydran', 750000000, '018', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(19, 'Pekerjaan Mebelair', 'pekerjaan-mebelair', 101900000, '019', '85740074567', 'Fulan', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27');

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
(1, 'Ulumul Quran', 'ulumul-quran', '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(2, 'Bahasa Arab', 'bahasa-arab', '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(3, 'Nasihat', 'nasihat', '2022-10-24 05:57:27', '2022-10-24 05:57:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donates`
--

CREATE TABLE `donates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `budget_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donate_date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `donates`
--

INSERT INTO `donates` (`id`, `budget_id`, `name`, `address`, `phone`, `nominal`, `showname`, `donate_date`, `image`, `created_at`, `updated_at`) VALUES
(1, 16, 'Endah Ulya Aryani S.I.Kom', 'Jln. Panjaitan No. 729, Pagar Alam 22159, Maluku', '0995 1902 7448', '2335716', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(2, 12, 'Ellis Oktaviani', 'Kpg. K.H. Maskur No. 25, Lubuklinggau 60570, Kalsel', '0658 0145 488', '1685834', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(3, 19, 'Panca Uwais', 'Kpg. Agus Salim No. 425, Bima 89094, Jateng', '0623 5390 550', '1043366', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(4, 16, 'Ami Yolanda S.T.', 'Kpg. Supono No. 820, Blitar 40475, Jatim', '0257 6816 667', '3101520', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(5, 7, 'Kacung Januar M.Pd', 'Psr. Raden No. 772, Serang 30435, Sumbar', '0686 2594 565', '3289914', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(6, 15, 'Nrima Daruna Prakasa S.Kom', 'Ds. Tambak No. 797, Yogyakarta 49886, Papua', '(+62) 21 6471 405', '830273', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(7, 17, 'Yulia Wulandari', 'Gg. Suharso No. 51, Serang 84869, DKI', '0911 4315 964', '3152088', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(8, 4, 'Pandu Raihan Waluyo', 'Jr. Gajah Mada No. 52, Jambi 55445, DIY', '(+62) 439 5273 2646', '1138059', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(9, 19, 'Johan Gunarto', 'Ds. Peta No. 984, Ternate 54145, Jateng', '0271 6756 576', '2261990', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(10, 19, 'Tania Purwanti', 'Kpg. Supomo No. 329, Padangpanjang 45556, Jabar', '0538 5447 4107', '2318997', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(11, 13, 'Kadir Manullang', 'Gg. K.H. Maskur No. 568, Cilegon 85877, Lampung', '0566 6364 9147', '460417', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(12, 13, 'Natalia Susanti', 'Gg. Sentot Alibasa No. 2, Pangkal Pinang 80161, Sultra', '0494 9429 158', '1870352', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(13, 13, 'Prasetyo Jaeman Adriansyah S.T.', 'Psr. Yoga No. 390, Magelang 19606, Jambi', '(+62) 949 7843 249', '1620553', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(14, 6, 'Ira Padmasari', 'Ds. Peta No. 639, Bengkulu 30912, Lampung', '0687 5392 2473', '1421342', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(15, 19, 'Indah Belinda Hasanah', 'Gg. Kiaracondong No. 839, Jambi 68845, Bengkulu', '0664 0593 1284', '312836', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(16, 14, 'Samiah Farida M.M.', 'Gg. R.M. Said No. 990, Langsa 17901, Sulsel', '(+62) 386 0564 559', '571959', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(17, 17, 'Yuni Lestari', 'Gg. Gambang No. 916, Palembang 18867, Banten', '(+62) 218 8195 7424', '174590', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(18, 13, 'Jais Hidayanto', 'Dk. Babakan No. 517, Pasuruan 80885, Lampung', '(+62) 842 7913 7315', '1471945', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(19, 5, 'Puji Almira Hastuti S.Sos', 'Ds. Bakin No. 284, Serang 28212, Jambi', '(+62) 578 8059 3085', '3263406', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(20, 12, 'Nadia Laksmiwati', 'Ds. Diponegoro No. 602, Bandung 28959, Kalbar', '(+62) 591 5647 955', '1438449', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(21, 5, 'Janet Lidya Pertiwi', 'Jln. Zamrud No. 459, Pekanbaru 52931, Pabar', '0651 1352 8914', '2204145', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(22, 8, 'Amalia Agustina S.Kom', 'Jr. Siliwangi No. 394, Lhokseumawe 11653, Sultra', '(+62) 668 7964 8723', '1918180', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(23, 9, 'Tari Ulya Yuliarti M.TI.', 'Kpg. Perintis Kemerdekaan No. 164, Tangerang 94096, Kepri', '(+62) 709 5419 644', '77965', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(24, 10, 'Gina Dinda Mardhiyah S.I.Kom', 'Ki. Ir. H. Juanda No. 562, Metro 15474, Maluku', '021 6813 9985', '2777528', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(25, 8, 'Liman Maryadi M.M.', 'Jln. Agus Salim No. 344, Depok 28861, Banten', '0816 324 279', '2612775', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(26, 3, 'Rudi Dabukke S.Ked', 'Jln. Supono No. 829, Probolinggo 64595, Gorontalo', '0219 3858 440', '2048536', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(27, 5, 'Tari Fujiati', 'Kpg. Moch. Yamin No. 95, Bandung 52788, NTT', '0977 1186 8407', '1681407', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(28, 3, 'Harsaya Firgantoro', 'Dk. Jamika No. 97, Yogyakarta 38634, Riau', '0648 1099 0823', '498915', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(29, 11, 'Bakiadi Nugraha Haryanto S.T.', 'Jr. Daan No. 231, Bekasi 51402, NTT', '0737 4326 143', '1284013', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(30, 7, 'Dina Ina Winarsih M.TI.', 'Jr. Wora Wari No. 539, Tegal 97608, Jatim', '(+62) 312 6268 814', '1074829', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(31, 19, 'Dono Haryanto', 'Jln. Padma No. 744, Tual 35122, DIY', '0307 1260 3780', '2357313', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(32, 12, 'Samiah Laras Mulyani M.M.', 'Psr. Yohanes No. 250, Depok 23866, NTT', '0221 6814 690', '321424', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(33, 9, 'Perkasa Zulkarnain', 'Jln. Gajah No. 354, Sabang 55605, Jambi', '0810 4421 986', '1354041', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(34, 17, 'Rizki Nainggolan M.Pd', 'Ds. Kalimalang No. 839, Jayapura 83625, Sulut', '(+62) 801 8446 698', '105037', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(35, 6, 'Anastasia Oliva Lestari S.Kom', 'Gg. Villa No. 662, Sukabumi 34020, Lampung', '0533 4200 8593', '2651602', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(36, 4, 'Candrakanta Thamrin', 'Psr. Setia Budi No. 568, Probolinggo 19646, Maluku', '(+62) 875 429 677', '795505', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(37, 15, 'Gamani Digdaya Gunawan', 'Kpg. Bagonwoto  No. 402, Salatiga 92958, Bengkulu', '(+62) 350 0920 857', '1110697', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(38, 5, 'Tira Gabriella Suartini', 'Dk. Pahlawan No. 405, Lhokseumawe 40641, NTT', '(+62) 253 7333 759', '185426', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(39, 14, 'Raina Rahayu', 'Psr. R.M. Said No. 167, Tangerang Selatan 86565, Kalbar', '(+62) 888 694 016', '2915955', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(40, 14, 'Prakosa Thamrin S.E.I', 'Ki. Thamrin No. 190, Bima 86552, Malut', '0751 1879 873', '2271813', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(41, 18, 'Shania Namaga', 'Gg. Pasirkoja No. 47, Batu 16060, Pabar', '0874 2964 371', '1716796', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(42, 9, 'Lalita Hassanah', 'Psr. R.E. Martadinata No. 490, Pagar Alam 58453, Pabar', '0390 6438 6235', '2654116', '1', '2022-05-05', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26'),
(43, 17, 'Hasna Mulyani S.Pd', 'Ds. Bakti No. 772, Tomohon 74813, Banten', '(+62) 23 3906 630', '436129', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(44, 7, 'Respati Prayoga S.IP', 'Dk. Uluwatu No. 428, Sungai Penuh 96069, Jatim', '(+62) 353 9434 842', '1933567', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(45, 15, 'Rudi Mahfud Mustofa S.IP', 'Psr. Sudirman No. 337, Medan 41587, Sulteng', '(+62) 800 0000 298', '3373840', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(46, 11, 'Hana Pudjiastuti', 'Kpg. Babadak No. 580, Pasuruan 56846, Sulbar', '(+62) 845 2241 3207', '1611890', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(47, 4, 'Kamila Anggraini S.Kom', 'Gg. Baja No. 637, Banda Aceh 53979, Papua', '(+62) 613 4819 870', '2787524', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(48, 1, 'Ulva Indah Winarsih S.I.Kom', 'Dk. W.R. Supratman No. 716, Administrasi Jakarta Selatan 91523, NTB', '0622 0362 3995', '404326', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(49, 8, 'Wage Kajen Adriansyah', 'Dk. Pelajar Pejuang 45 No. 999, Metro 95849, Sulut', '(+62) 20 3657 268', '917400', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(50, 14, 'Mulyono Utama', 'Dk. Wahid No. 633, Batu 18254, Pabar', '0655 5822 5636', '1354328', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(51, 1, 'Paulin Uyainah', 'Ki. Dipenogoro No. 655, Tual 34698, Jatim', '0848 0929 7556', '2354166', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(52, 2, 'Aswani Balamantri Pranowo M.Ak', 'Dk. Juanda No. 69, Bontang 46551, Kaltim', '0862 909 610', '1723884', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(53, 16, 'Adikara Winarno S.H.', 'Jln. Cemara No. 86, Pekalongan 97526, Kalbar', '(+62) 437 5032 191', '1377989', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(54, 1, 'Adinata Budiyanto', 'Psr. Baranangsiang No. 130, Tarakan 28863, Kepri', '(+62) 396 1801 148', '1892370', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(55, 5, 'Ratna Farida S.H.', 'Dk. Teuku Umar No. 155, Dumai 80471, Malut', '0950 1760 3089', '660565', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(56, 1, 'Cindy Sadina Wastuti', 'Jln. Sutoyo No. 848, Balikpapan 70747, Banten', '0813 4954 411', '2403206', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(57, 1, 'Dalima Purnawati S.Pd', 'Ds. Tambak No. 236, Manado 18193, DKI', '(+62) 773 5395 8093', '2425314', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(58, 15, 'Kairav Manullang', 'Gg. Pacuan Kuda No. 554, Salatiga 28026, Sumut', '0832 5173 8756', '3358940', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(59, 5, 'Drajat Galih Gunawan S.H.', 'Jln. Villa No. 331, Pagar Alam 62684, Aceh', '(+62) 363 9225 276', '3019541', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(60, 9, 'Nurul Yuniar', 'Ki. Rajawali Barat No. 806, Kendari 89818, Sumut', '0519 4537 044', '1207642', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(61, 13, 'Oliva Halimah', 'Dk. Rajawali Barat No. 195, Padang 64370, NTT', '0534 5504 2017', '354149', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(62, 18, 'Pardi Wahyudin', 'Jr. Adisucipto No. 760, Magelang 90594, Malut', '(+62) 758 0006 7567', '2285540', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(63, 5, 'Samiah Yolanda S.T.', 'Psr. Bagonwoto  No. 741, Administrasi Jakarta Timur 40750, Babel', '0480 6819 060', '476291', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(64, 11, 'Hana Utami M.Farm', 'Dk. Salam No. 728, Pasuruan 59731, Jambi', '(+62) 235 2072 9688', '2721509', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(65, 6, 'Hilda Suartini', 'Dk. Perintis Kemerdekaan No. 320, Langsa 94219, Sulteng', '(+62) 252 3076 336', '1336277', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(66, 8, 'Gasti Namaga S.Pd', 'Jr. Antapani Lama No. 672, Sukabumi 77508, Sulbar', '(+62) 856 7627 060', '3228003', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(67, 12, 'Wulan Devi Laksmiwati', 'Ds. Astana Anyar No. 494, Dumai 84118, Jateng', '0369 5560 360', '2007549', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(68, 11, 'Lega Wahyudin', 'Kpg. Sutami No. 689, Pekalongan 12548, NTB', '0879 765 516', '748703', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(69, 6, 'Wani Puspasari', 'Jln. Nakula No. 15, Sukabumi 96287, Banten', '0671 9014 7993', '2257333', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(70, 7, 'Ade Purnawati', 'Gg. Banda No. 211, Batu 67101, Lampung', '(+62) 596 1793 714', '3414920', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(71, 1, 'Dina Aryani', 'Dk. Ronggowarsito No. 782, Kediri 72992, Jabar', '026 4456 4787', '3319769', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(72, 4, 'Dadi Prabowo S.Ked', 'Psr. Bakau Griya Utama No. 939, Balikpapan 43427, Sumsel', '0404 0775 3466', '1408776', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(73, 7, 'Zelda Hafshah Nuraini', 'Ds. Ekonomi No. 440, Prabumulih 89984, Sulut', '0244 3015 997', '435079', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(74, 11, 'Padmi Nurdiyanti', 'Ds. Bagonwoto  No. 763, Madiun 52837, Kalteng', '(+62) 333 7447 386', '2664685', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(75, 18, 'Jais Cemeti Wacana S.I.Kom', 'Ds. Warga No. 386, Ambon 73050, NTT', '0578 3960 6623', '2617099', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(76, 16, 'Zahra Salsabila Usada S.Psi', 'Jln. Imam No. 587, Gunungsitoli 85672, Papua', '(+62) 275 7521 264', '1533584', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(77, 14, 'Jaswadi Hardiansyah', 'Psr. Karel S. Tubun No. 979, Pasuruan 87172, Sumut', '(+62) 785 9489 361', '1191715', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(78, 1, 'Bakiono Balapati Wibisono S.I.Kom', 'Jr. Bakit  No. 502, Pekalongan 56389, Sultra', '(+62) 878 0833 6645', '2570729', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(79, 17, 'Cecep Rajata', 'Ds. Suniaraja No. 867, Bandung 18198, DIY', '(+62) 812 170 772', '1462282', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(80, 16, 'Setya Situmorang', 'Kpg. Pelajar Pejuang 45 No. 314, Palopo 41816, Sultra', '0804 4632 8142', '2859842', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(81, 16, 'Febi Wahyuni', 'Gg. Cut Nyak Dien No. 963, Palopo 93448, Kalteng', '(+62) 539 2804 383', '870290', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(82, 9, 'Ira Eka Zulaika', 'Ki. Bakti No. 566, Ambon 24235, Kalteng', '020 9162 390', '1630970', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(83, 13, 'Bagiya Napitupulu', 'Jln. Kalimalang No. 558, Semarang 68315, Pabar', '0959 6724 399', '3114486', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(84, 14, 'Eman Mulyono Iswahyudi', 'Jln. Katamso No. 268, Banjarmasin 90041, Jateng', '(+62) 999 7239 2443', '2289898', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(85, 15, 'Kiandra Kamila Wahyuni S.H.', 'Ki. Sukajadi No. 810, Serang 53896, DIY', '(+62) 438 0402 669', '2019270', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(86, 5, 'Niyaga Timbul Hutasoit S.T.', 'Ds. Antapani Lama No. 830, Kotamobagu 63555, Kalteng', '(+62) 650 9116 977', '307735', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(87, 1, 'Fitria Yuniar', 'Dk. Suryo Pranoto No. 185, Mataram 43042, Kalbar', '(+62) 732 5148 573', '1588802', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(88, 11, 'Yuliana Usada', 'Psr. Bayam No. 847, Payakumbuh 56739, NTT', '(+62) 426 7421 1180', '706264', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(89, 19, 'Mulya Irfan Rajata', 'Ki. K.H. Wahid Hasyim (Kopo) No. 954, Denpasar 11475, Jambi', '(+62) 231 5960 636', '1129198', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(90, 8, 'Najwa Namaga', 'Psr. Kali No. 534, Pematangsiantar 55499, Sumut', '0570 6836 8491', '2405961', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(91, 9, 'Dina Melani', 'Jr. Ters. Buah Batu No. 901, Surakarta 64194, Riau', '0282 5721 819', '3082264', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(92, 1, 'Irwan Prasasta', 'Jr. Pasirkoja No. 526, Tidore Kepulauan 65971, NTB', '0948 3477 856', '776143', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(93, 13, 'Vinsen Halim', 'Psr. Elang No. 999, Tarakan 68289, Jabar', '(+62) 445 4312 635', '3047310', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(94, 12, 'Suci Pratiwi', 'Kpg. Bahagia  No. 4, Administrasi Jakarta Pusat 84945, Kaltara', '0433 8622 004', '480110', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(95, 14, 'Kani Puji Winarsih', 'Kpg. Jend. Sudirman No. 159, Bogor 23823, Riau', '0471 6276 9478', '709322', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(96, 4, 'Jelita Lestari', 'Jln. Uluwatu No. 569, Sibolga 31598, Kalbar', '(+62) 948 6365 484', '2388552', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(97, 7, 'Ajeng Usada', 'Dk. Bakaru No. 330, Samarinda 23388, DKI', '0378 5748 6973', '3434304', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(98, 17, 'Mutia Widiastuti', 'Jr. Abdul. Muis No. 616, Bogor 18040, Maluku', '0510 1234 0288', '3084054', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(99, 14, 'Gangsar Manah Budiyanto S.T.', 'Dk. Bak Mandi No. 637, Magelang 28504, NTB', '(+62) 561 3493 4689', '148225', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(100, 9, 'Bancar Mulyanto Wasita S.Kom', 'Dk. Abdul Rahmat No. 387, Metro 31037, Kalteng', '(+62) 22 1194 7376', '1373473', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(101, 14, 'Mitra Simbolon', 'Gg. Bagas Pati No. 632, Semarang 38320, Sulut', '021 1020 492', '543177', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(102, 6, 'Ina Puspita', 'Ki. Ters. Buah Batu No. 957, Makassar 30666, Sumbar', '0535 3559 8283', '1081172', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(103, 6, 'Artanto Utama S.H.', 'Gg. Gardujati No. 504, Pagar Alam 34076, Jatim', '0583 6014 757', '3370271', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(104, 11, 'Hamima Farida', 'Jln. Bakau Griya Utama No. 290, Sabang 24502, Gorontalo', '(+62) 723 7165 086', '917909', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(105, 4, 'Adikara Suryono', 'Psr. Bak Air No. 578, Tegal 45660, Sulbar', '0564 2974 498', '2016724', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(106, 13, 'Puspa Amelia Novitasari', 'Jr. Warga No. 449, Denpasar 17087, DIY', '(+62) 374 8982 6664', '459560', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(107, 10, 'Umay Natsir', 'Gg. Teuku Umar No. 628, Sukabumi 95680, Kalbar', '(+62) 418 2243 3795', '1656742', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(108, 9, 'Septi Haryanti', 'Jr. Padma No. 893, Blitar 15236, Jateng', '0860 5941 579', '713240', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(109, 6, 'Raina Hassanah', 'Dk. Basoka Raya No. 436, Yogyakarta 50563, Pabar', '(+62) 20 3272 0025', '3375598', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(110, 12, 'Mulyanto Marbun S.E.', 'Ki. Suniaraja No. 102, Lhokseumawe 15904, Sulsel', '0948 4744 335', '2543395', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(111, 2, 'Dina Puspa Namaga', 'Kpg. Suryo Pranoto No. 664, Bontang 91363, Kaltim', '(+62) 670 3112 018', '1895394', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(112, 14, 'Juli Rahmawati', 'Psr. Baik No. 66, Gorontalo 55150, Maluku', '029 0682 273', '676844', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(113, 8, 'Nadine Mardhiyah', 'Kpg. Bazuka Raya No. 145, Medan 44297, NTT', '0466 1648 1202', '1370572', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(114, 6, 'Hendri Sitorus S.Psi', 'Jr. Baiduri No. 500, Bima 89158, Sumut', '0670 1213 528', '191743', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(115, 16, 'Victoria Purwanti', 'Jln. Barasak No. 39, Padang 61229, Jatim', '(+62) 798 5414 921', '2775409', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(116, 13, 'Jindra Wawan Maryadi', 'Psr. R.E. Martadinata No. 161, Cirebon 24012, Pabar', '0768 1827 911', '2856164', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(117, 15, 'Rama Irawan', 'Dk. Abang No. 405, Pematangsiantar 24136, Jabar', '(+62) 226 6600 570', '1156706', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(118, 2, 'Wakiman Pranowo', 'Jln. Ciwastra No. 45, Administrasi Jakarta Timur 96581, Kaltara', '(+62) 997 8341 769', '121437', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(119, 18, 'Ibun Caraka Latupono', 'Jr. Bak Mandi No. 568, Mataram 38222, Babel', '0423 1293 7353', '156414', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(120, 14, 'Vinsen Gunarto', 'Kpg. Gedebage Selatan No. 970, Tomohon 61531, Sulut', '0853 3589 957', '2296828', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(121, 15, 'Tiara Mandasari', 'Ki. Eka No. 168, Cimahi 85182, Papua', '(+62) 443 4710 383', '2612192', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(122, 17, 'Cinta Wahyuni', 'Gg. Bacang No. 847, Mataram 51099, DIY', '0726 1489 941', '2885016', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(123, 19, 'Lasmanto Prabowo', 'Ki. Gremet No. 206, Tarakan 66504, Kepri', '(+62) 25 1152 4430', '1322840', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(124, 14, 'Azalea Ophelia Usamah', 'Jln. Sukabumi No. 338, Ambon 73232, Banten', '(+62) 25 2161 7434', '3429508', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(125, 10, 'Tira Riyanti M.M.', 'Ki. Labu No. 553, Ternate 90741, NTT', '020 2334 697', '2890521', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(126, 13, 'Asirwanda Anggriawan', 'Kpg. Cokroaminoto No. 574, Depok 81784, Sultra', '0800 849 321', '543576', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(127, 3, 'Cici Nadine Hasanah S.Ked', 'Jr. Abdul. Muis No. 331, Cilegon 56930, Jateng', '(+62) 248 3828 2227', '852546', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(128, 18, 'Cakrawala Hakim', 'Ki. Laksamana No. 941, Payakumbuh 12850, Kaltim', '0353 5235 3145', '819855', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(129, 19, 'Latika Gabriella Pudjiastuti S.Gz', 'Jln. Adisumarmo No. 520, Tarakan 51435, Kalbar', '(+62) 28 8340 949', '1029255', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(130, 15, 'Queen Chelsea Mardhiyah', 'Ds. Qrisdoren No. 87, Ambon 27103, Kaltim', '0513 4739 0365', '861209', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(131, 13, 'Sari Intan Yulianti', 'Jr. Ir. H. Juanda No. 739, Medan 96681, Kalbar', '0257 8988 464', '3311553', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(132, 9, 'Umar Asmuni Latupono S.T.', 'Gg. Lembong No. 983, Tebing Tinggi 56927, Sumbar', '0888 8473 1760', '3374802', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(133, 14, 'Anom Nainggolan', 'Jln. Krakatau No. 782, Manado 67886, Jateng', '(+62) 842 0297 485', '1552024', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(134, 10, 'Hendra Sihombing', 'Jr. Wahid Hasyim No. 952, Kotamobagu 95333, Sumsel', '0298 9967 791', '2733314', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(135, 9, 'Prayoga Bakiman Saputra', 'Ki. Baabur Royan No. 157, Padang 41782, Pabar', '(+62) 438 4816 3277', '1663460', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(136, 8, 'Bagya Kuswoyo', 'Ki. PHH. Mustofa No. 272, Payakumbuh 13297, Jatim', '(+62) 741 7130 178', '1374674', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(137, 15, 'Jamil Parman Irawan', 'Psr. Baiduri No. 859, Tasikmalaya 84527, Kaltim', '(+62) 940 7334 381', '2218255', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(138, 15, 'Yani Mulyani', 'Ds. Teuku Umar No. 805, Banda Aceh 22108, Maluku', '(+62) 986 8121 146', '622224', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(139, 17, 'Harimurti Rajata', 'Jr. Kyai Mojo No. 925, Pariaman 77553, DKI', '(+62) 786 6865 820', '2415547', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(140, 3, 'Cakrabuana Martani Mandala', 'Kpg. Bagas Pati No. 377, Probolinggo 95965, Kalteng', '0652 0401 803', '1251737', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(141, 8, 'Cakrajiya Kurnia Saragih M.Farm', 'Ds. Samanhudi No. 133, Sibolga 43069, Sumut', '0335 8104 631', '1565294', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(142, 3, 'Cahya Pranowo', 'Psr. Halim No. 12, Yogyakarta 73176, Kalbar', '0499 2604 0420', '2518367', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(143, 6, 'Bahuraksa Cakrabuana Samosir S.E.', 'Jr. Bakau Griya Utama No. 681, Surabaya 24335, Sulteng', '0836 6138 4990', '1137339', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(144, 6, 'Dadap Widodo', 'Kpg. Gambang No. 818, Tanjung Pinang 45987, Sumsel', '(+62) 26 0386 444', '509550', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(145, 15, 'Padma Handayani', 'Ds. Kebangkitan Nasional No. 663, Binjai 59442, Sumut', '(+62) 880 248 094', '1935960', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(146, 1, 'Vanya Hasanah S.I.Kom', 'Psr. Bambu No. 829, Malang 66093, DIY', '(+62) 362 3679 220', '2156270', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(147, 5, 'Gasti Farah Palastri S.I.Kom', 'Gg. Bacang No. 484, Bitung 52520, Jambi', '0495 1016 399', '825077', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(148, 16, 'Jayeng Rahman Napitupulu M.Ak', 'Ki. Jamika No. 796, Serang 63876, Kepri', '0415 9203 4525', '1012458', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(149, 6, 'Zaenab Kuswandari M.Pd', 'Ki. Ahmad Dahlan No. 413, Pariaman 47027, Jateng', '0564 3511 687', '2324926', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(150, 15, 'Mujur Lazuardi', 'Psr. Bata Putih No. 510, Serang 83816, Sulut', '026 3961 350', '1228244', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(151, 2, 'Karya Kamal Saputra S.Farm', 'Jr. Baranang Siang No. 69, Banda Aceh 53275, Bengkulu', '(+62) 543 3932 931', '2476896', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(152, 5, 'Amelia Suartini', 'Jr. Cokroaminoto No. 777, Blitar 13396, Papua', '(+62) 268 5086 213', '1227019', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(153, 17, 'Cecep Dartono Napitupulu', 'Gg. Madrasah No. 137, Manado 68484, Sulteng', '(+62) 411 3420 463', '3330159', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(154, 6, 'Karta Pandu Mansur', 'Gg. Bazuka Raya No. 93, Parepare 36793, Bengkulu', '(+62) 286 3129 496', '795167', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(155, 15, 'Anita Yuliarti S.Sos', 'Psr. Setia Budi No. 841, Gorontalo 46942, Pabar', '0862 8712 5372', '1825031', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(156, 8, 'Galih Dabukke', 'Ds. Agus Salim No. 261, Makassar 47488, Kaltara', '0235 3898 911', '1650252', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(157, 5, 'Kenzie Nugroho', 'Jr. Lumban Tobing No. 974, Bekasi 76304, Riau', '0603 2905 375', '1296308', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(158, 18, 'Mulyono Wibowo', 'Ds. Kalimantan No. 41, Mojokerto 59330, Sumbar', '0959 5415 1117', '2717920', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(159, 12, 'Estiawan Garda Saefullah S.Gz', 'Kpg. Rajiman No. 246, Gunungsitoli 34078, Jatim', '(+62) 588 4245 3941', '1933229', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(160, 6, 'Victoria Yuliarti', 'Ds. Bawal No. 605, Sukabumi 38294, Kalteng', '(+62) 450 7872 222', '2414658', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(161, 3, 'Lalita Paulin Puspita M.Farm', 'Jln. Bakau Griya Utama No. 241, Padang 86025, Jatim', '0858 909 512', '841710', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(162, 12, 'Diana Rahmawati', 'Ds. Muwardi No. 48, Metro 25331, Aceh', '0318 1393 1471', '1117663', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(163, 15, 'Gina Nuraini S.I.Kom', 'Kpg. Cikutra Timur No. 186, Madiun 48322, Kepri', '(+62) 720 0226 631', '303026', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(164, 7, 'Respati Irawan S.Psi', 'Jr. Wahid Hasyim No. 146, Bima 87229, Lampung', '0216 4251 1807', '198384', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(165, 3, 'Calista Mayasari', 'Jln. Nanas No. 164, Cilegon 78125, Bengkulu', '0873 5251 6902', '2241046', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(166, 15, 'Puji Wijayanti', 'Jln. Bappenas No. 135, Sabang 79793, Sumbar', '0791 4503 484', '1061711', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(167, 13, 'Opung Emin Budiyanto', 'Jln. Veteran No. 960, Banjarmasin 98933, Aceh', '0460 7489 919', '2630315', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(168, 16, 'Adikara Saragih', 'Dk. Bagonwoto  No. 886, Tual 58852, Banten', '(+62) 695 9577 949', '1304161', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(169, 3, 'Vanesa Safitri', 'Dk. Fajar No. 673, Pekalongan 29048, Kaltim', '0564 1996 6807', '1923872', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(170, 13, 'Padmi Fujiati S.I.Kom', 'Gg. Dipatiukur No. 251, Tomohon 57866, Aceh', '0652 2578 5197', '3477214', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(171, 17, 'Michelle Kusmawati', 'Jr. Bank Dagang Negara No. 36, Tebing Tinggi 66524, Maluku', '0657 6905 900', '130146', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(172, 2, 'Zelda Nadine Astuti', 'Jr. Baranangsiang No. 141, Administrasi Jakarta Timur 58292, Jabar', '0868 0703 6383', '3036013', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(173, 1, 'Ida Sudiati', 'Dk. Villa No. 152, Madiun 83556, Kalsel', '0239 7161 141', '2492379', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(174, 9, 'Banara Widodo', 'Kpg. Sutan Syahrir No. 648, Administrasi Jakarta Selatan 52026, Malut', '0775 6780 0274', '3353247', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(175, 8, 'Cemeti Unggul Saefullah S.I.Kom', 'Ds. Bass No. 379, Madiun 33254, Sulut', '(+62) 881 257 944', '1800697', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(176, 2, 'Novi Safitri', 'Dk. Abdul No. 556, Gunungsitoli 93969, Sulteng', '(+62) 818 4752 2232', '2320047', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(177, 14, 'Diah Pratiwi S.E.I', 'Jln. Reksoninten No. 890, Administrasi Jakarta Timur 74447, NTT', '(+62) 387 3409 4928', '3098145', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(178, 11, 'Lidya Nasyiah', 'Psr. Basuki No. 335, Palangka Raya 12048, NTT', '(+62) 568 8875 391', '978534', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(179, 17, 'Adiarja Saefullah S.E.', 'Kpg. Pelajar Pejuang 45 No. 97, Jambi 45232, Bali', '0663 0282 2264', '2681538', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(180, 17, 'Jamil Megantara', 'Ds. Diponegoro No. 118, Sabang 53126, Sumsel', '0424 5571 4608', '406644', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(181, 4, 'Ami Kusmawati', 'Gg. Laksamana No. 416, Gorontalo 29424, Sulsel', '(+62) 241 4442 620', '1581651', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(182, 10, 'Darmanto Sihotang', 'Psr. Kartini No. 78, Madiun 83000, Aceh', '0333 8672 101', '2673751', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(183, 11, 'Najib Gunarto', 'Ki. Supomo No. 871, Tanjung Pinang 30488, Kalbar', '(+62) 751 4352 8190', '2544523', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(184, 8, 'Cemeti Dongoran', 'Dk. Adisucipto No. 946, Banjarmasin 82694, Kaltim', '0209 2441 8154', '1566521', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(185, 6, 'Upik Pradipta', 'Jln. Sunaryo No. 896, Kendari 80457, NTT', '(+62) 744 2279 959', '470002', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(186, 1, 'Endah Gasti Padmasari', 'Dk. Arifin No. 547, Jayapura 36710, Jateng', '(+62) 584 2148 7863', '469517', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(187, 4, 'Anastasia Dewi Pudjiastuti', 'Kpg. Radio No. 921, Medan 95150, Jatim', '(+62) 802 9462 742', '1598642', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(188, 13, 'Harja Samosir M.Farm', 'Gg. Umalas No. 712, Bukittinggi 71046, Kalsel', '0264 0788 1462', '2186356', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(189, 16, 'Victoria Pratiwi', 'Jln. Gedebage Selatan No. 789, Kotamobagu 62130, Jambi', '0407 2256 453', '1818175', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(190, 11, 'Irma Fujiati S.H.', 'Jr. Industri No. 744, Batam 21362, Maluku', '027 7295 5726', '1805831', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(191, 6, 'Damu Suwarno', 'Kpg. Pasirkoja No. 824, Batam 71811, Aceh', '0716 1823 473', '2289475', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(192, 2, 'Harjo Jumadi Hidayanto', 'Ki. Bahagia  No. 703, Padang 39082, Sumbar', '0847 2658 3594', '3058854', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(193, 7, 'Hairyanto Gantar Nugroho', 'Jr. Setia Budi No. 717, Administrasi Jakarta Selatan 54532, DIY', '(+62) 731 0632 9890', '391195', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(194, 1, 'Salimah Kusmawati', 'Psr. Reksoninten No. 189, Tanjung Pinang 87999, Sulsel', '0595 6663 3575', '1926602', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(195, 17, 'Puspa Oktaviani S.Farm', 'Dk. Hang No. 362, Denpasar 86174, Kaltim', '0317 1859 638', '464590', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(196, 7, 'Oni Tiara Purnawati S.T.', 'Dk. Cikutra Barat No. 348, Parepare 13315, Papua', '0598 1460 7844', '1867799', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(197, 16, 'Dodo Budiyanto', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 275, Pariaman 98675, Gorontalo', '0467 1873 5859', '2365771', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(198, 6, 'Talia Nasyidah', 'Gg. Cikapayang No. 50, Lubuklinggau 70513, Babel', '(+62) 24 0749 491', '230656', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(199, 6, 'Praba Wahyudin', 'Ds. Elang No. 82, Gunungsitoli 68836, Kalsel', '(+62) 244 6670 3678', '1574127', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(200, 9, 'Cinthia Iriana Fujiati', 'Jr. Salak No. 712, Prabumulih 70094, Gorontalo', '0815 7172 403', '1449893', '1', '2022-05-05', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27');

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
(8, '2022_09_28_135642_create_budgets_table', 1),
(9, '2022_09_29_134553_create_donates_table', 1),
(10, '2022_10_24_122219_create_set_static_page05s_table', 1),
(11, '2022_10_24_123702_create_set_static_page01s_table', 1);

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
(1, 1, 2, 'Tempore adipisci aperiam vel voluptatem et vel corrupti.', 'optio-officia-a-repellendus-autem-enim-consequatur-aperiam', NULL, 'Ipsum architecto et necessitatibus quo sit voluptatem. Perferendis quae quo deserunt. Eligendi sed quis dolorum aperiam ut consequuntur est.', '<p>Aliquid quos in quis numquam optio. Quos velit voluptatem in et.</p><p>Velit magnam corrupti odio voluptatem. Sit et ea sint consequuntur. Sed ab ipsa delectus in.</p><p>Cumque in reiciendis repudiandae incidunt corporis. Deleniti voluptatem ut exercitationem non repellendus. Soluta ut est rerum doloremque ut nihil molestias. Delectus sequi ipsa aliquid natus voluptatibus provident itaque incidunt. Asperiores id optio est nulla blanditiis hic.</p><p>Iste autem vitae reiciendis similique. Laboriosam exercitationem velit et suscipit. Sunt ipsam suscipit eos repellat. Et et voluptatibus quia mollitia.</p><p>Saepe est animi vel consequuntur voluptatem natus. Numquam molestias dolorum officia culpa voluptatem. Sapiente cupiditate laudantium voluptates alias id velit ut.</p><p>Qui modi omnis expedita voluptatum asperiores. Alias veniam necessitatibus iure deleniti. Eos deserunt natus at aliquid sint sequi. Iusto aspernatur nam sit cumque quam.</p><p>Nulla animi eveniet adipisci. Amet aut earum praesentium non voluptas quisquam. Iusto autem eius vero. Qui autem quo quod cumque laboriosam tempore.</p><p>Maxime consequatur ducimus quidem cupiditate ducimus odio deserunt consectetur. Numquam inventore eveniet corrupti neque. Error qui et temporibus nobis autem excepturi sed. Et reprehenderit accusantium ratione qui cumque.</p><p>Fugiat commodi nihil nisi est necessitatibus aperiam. Et molestias eum voluptas. Est et enim laboriosam. Voluptatem perferendis quo nihil enim voluptas.</p><p>Voluptatem porro asperiores illo saepe quos aut maiores. Eum hic quia quidem. Voluptate quaerat pariatur occaecati modi aut exercitationem velit.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(2, 1, 2, 'Officia aut modi doloremque.', 'quos-sed-occaecati-temporibus-dolorum-praesentium', NULL, 'Deleniti labore nam corrupti. Mollitia tempore culpa id rerum quia sint. Tempore qui maiores et unde neque autem.', '<p>Illum voluptatem molestiae iusto vel. Amet quos et nulla beatae molestiae officiis. Dolorem dolores vitae neque quos. Aut quis et asperiores enim. Voluptatem non rerum voluptates ut accusantium qui.</p><p>Est assumenda possimus ea vel tenetur dolorem. Dolor numquam eius autem voluptates tempore vero. Fugiat velit ut ut tempora laudantium quis. Est voluptatem consequatur nostrum amet consequatur ea tenetur. Praesentium qui omnis sit quas nihil quis voluptates quas.</p><p>Quibusdam perspiciatis ex atque vero mollitia. Quod ut est velit quo ut. Nostrum ut debitis magnam laboriosam iusto odio ut repudiandae.</p><p>Amet veniam quia et asperiores voluptate. Sit aperiam quibusdam dicta debitis. Quaerat neque voluptas distinctio aut. Et et et autem corporis architecto iusto est.</p><p>Voluptatem eos quaerat quae quaerat odio fuga sed. Doloribus ratione enim sequi deserunt rem deserunt. Officiis quas autem itaque. Fugit consequatur rem doloremque sit dignissimos.</p><p>Et beatae impedit et consequuntur dolores. Dignissimos est sunt tenetur voluptatem et et vel velit. Excepturi vel quia distinctio amet non quae.</p><p>Sed inventore quia eos sit. Illum dicta commodi et ipsum natus rem rerum. Odit alias debitis nisi atque est.</p><p>Mollitia autem ipsam quaerat et. Sint rem amet ad tempora necessitatibus dolorem. Sed nobis numquam sit nihil cupiditate iusto.</p><p>Aut rerum a in at similique iusto similique. Quasi aperiam tempore explicabo qui doloribus iusto. Qui aut velit sint quae.</p><p>Repellendus fuga est praesentium cumque. Quos est saepe deleniti earum. Id sed in culpa rerum facere suscipit magni. Doloremque ratione repellendus fuga unde.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(3, 1, 3, 'Quod in ratione rem autem.', 'non-quisquam-et-laboriosam-doloribus-at-consequuntur-minima', NULL, 'Quia placeat autem sed et aliquid. Sed inventore qui odio sunt nam odit dolorum rerum. Ex iure nobis et error et corrupti labore. Recusandae qui voluptatem ut et.', '<p>Quia sunt placeat facilis est ratione sunt. Enim eos perferendis ratione quia quos. Blanditiis beatae qui sed numquam aspernatur inventore. Adipisci asperiores molestiae officia aliquid aut tempore illo.</p><p>Sint similique similique mollitia debitis sequi est. Saepe commodi expedita eveniet voluptatem. Maxime suscipit eligendi sint ratione neque impedit repudiandae. Veritatis est perspiciatis vero magnam ipsum et.</p><p>Fuga neque eum deserunt distinctio ipsam. Rem quae et qui molestias cum perspiciatis. Quis quia delectus ut in sunt dolorem aut sapiente.</p><p>Velit voluptate fugit qui dolores at. In ipsam optio non autem aut. Voluptatibus suscipit repellendus quos sit dolorem ipsam. Temporibus tempora in sint saepe voluptatem nulla.</p><p>Accusamus sunt vitae deserunt id facere. Eius optio molestias ut suscipit omnis ducimus. Dicta ut est corporis.</p><p>Rerum recusandae vel qui molestiae quos ipsum cupiditate. Similique repellat rerum accusamus repellendus. Nobis ipsam adipisci laudantium. Ut minus facere non vel eligendi molestiae.</p><p>Temporibus iusto ea magni reiciendis voluptas modi necessitatibus et. Eius expedita ex voluptatem ut et corrupti. Nemo voluptas qui sint nihil dolorem et. Fugiat sint minus soluta quam atque esse.</p><p>Nulla enim dolore nesciunt cumque. Ex et aut labore ad fugiat ut. Mollitia ea beatae non quaerat. Ut qui aut voluptate quia debitis eum omnis. At porro tempore aperiam nihil ea non.</p><p>Quos beatae saepe laborum. Quae illo autem praesentium eveniet sint aut reiciendis. Sapiente laborum sed eveniet repellat esse enim dolor.</p><p>Numquam molestiae qui veritatis et reprehenderit praesentium. Optio at tempore nobis fuga itaque. Enim et enim numquam laboriosam. Qui natus dolore et dicta distinctio.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(4, 1, 1, 'Omnis ea molestiae repellat totam.', 'natus-quae-rem-non-pariatur-itaque', NULL, 'Nesciunt fugiat fuga et ipsam. Inventore dolor et amet enim.', '<p>Commodi quod nisi provident molestiae dolor suscipit sequi perferendis. Quos rem et est sed. Et debitis molestiae vel fugit rerum consequatur nihil. Fuga pariatur perferendis doloribus a sint quia ut.</p><p>Consequatur officia voluptatum aut amet nihil qui repudiandae debitis. Molestiae consequatur illum officia non enim. Sit autem nam dolorum illum culpa asperiores. Placeat nihil voluptas cum error sed corporis sed.</p><p>Qui non totam inventore. Facere repellat reiciendis ducimus. Ut et harum sed ducimus.</p><p>Et ex recusandae cupiditate non officia enim. Doloremque laudantium et quia aspernatur doloremque voluptate reprehenderit. Porro ut perspiciatis reiciendis ullam commodi.</p><p>Cupiditate ad et aut ea possimus. Quibusdam ipsa est consequuntur. Commodi nobis odio quo suscipit in sint incidunt qui. Et fugit harum et omnis magnam qui. Iusto libero rerum enim occaecati qui quo nam.</p><p>Beatae dolor laborum eius omnis. Sapiente unde quam perferendis adipisci omnis. Qui aut facere eos doloribus molestiae ea.</p><p>Dolorum expedita omnis voluptas aut animi. Est at nemo molestiae mollitia nulla non sed. Eos nemo repellat quod fugit. Commodi placeat repellat qui vero alias voluptatem.</p><p>Aut quos dolores consequuntur quis sed in. Minus ea dolor expedita ut corrupti qui maxime. Omnis sapiente debitis voluptas voluptatem. Alias tenetur iure laboriosam quis harum.</p><p>Sed dolorem odit cumque et veritatis aut recusandae. Sit perspiciatis nobis eos veniam asperiores omnis dignissimos. Et rerum commodi eaque vel. Dolorem velit ipsum consequatur odio aut.</p><p>Maxime ipsum dolor rerum magni quia. Est facilis voluptatem iste hic repellendus. Voluptates dolor pariatur necessitatibus sint dicta illo consequuntur. Commodi qui explicabo molestias in rerum vitae.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(5, 1, 3, 'Eum a voluptatem qui minus tempora vel doloremque et ullam nihil aliquid.', 'eius-enim-magni-facere-vitae-voluptatem-accusamus-dignissimos-cumque', NULL, 'Ea voluptatibus perspiciatis et aut. Repudiandae consectetur placeat sed. Magnam nisi harum est maiores. Quis voluptatem omnis sequi dolorem odit nesciunt.', '<p>Placeat quos expedita suscipit placeat ullam quis asperiores consequatur. Aut unde velit sint et aut exercitationem. Itaque laudantium ex exercitationem. Occaecati numquam et consequuntur tempora dolor sunt sed praesentium.</p><p>Suscipit vero quasi eaque asperiores repellendus delectus ea. Distinctio recusandae at expedita et nisi autem. Ex sed impedit voluptatem iusto et aut incidunt.</p><p>Qui aut cupiditate deserunt. Quis voluptatum nesciunt officiis officia tempora minus voluptas. Aliquid magni nemo totam est recusandae dolor ipsum repellendus.</p><p>Quos recusandae recusandae omnis. Iure in cumque quam sit. Aut cumque consequatur sequi saepe. Aperiam quas enim ducimus ea maiores aut.</p><p>Perferendis qui et sint consequatur at qui distinctio possimus. Et quos dignissimos veniam omnis dolor voluptatibus. Unde id voluptas illo itaque voluptatem.</p><p>Deleniti ipsum beatae dicta ipsa. Adipisci quo doloremque illum et blanditiis. Voluptates ut ut corporis voluptatem a unde rerum.</p><p>Sit enim tenetur reprehenderit molestiae porro est et. Ab alias aut id consequuntur fugiat odit. Necessitatibus incidunt quia quidem quod. Delectus culpa ut eius.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(6, 2, 3, 'Ab facere voluptatum magnam quia possimus laboriosam non.', 'voluptatem-omnis-explicabo-aut-velit-qui', NULL, 'Dolore molestiae voluptatem numquam facilis omnis magni. Aut maxime natus ut ea architecto minus distinctio. Est sit sit commodi voluptatem dolores corrupti. Sequi eum aspernatur aliquid aspernatur.', '<p>Aliquam accusantium magni rerum. Et commodi aut aliquid vitae minus. Sed numquam facere molestiae qui optio architecto ullam.</p><p>Laborum porro aliquid velit. Consequuntur natus excepturi sunt est enim eveniet harum. Illo ut eaque quasi et recusandae omnis quaerat culpa. Amet quaerat aspernatur perspiciatis quis quis aspernatur et et.</p><p>Perspiciatis facilis deserunt fugiat nam. Tenetur dolores deserunt sapiente eligendi voluptas. Autem eius dolorum quia et nihil ut ullam. Id perferendis et inventore molestiae autem.</p><p>Voluptatem vel numquam earum. Nesciunt voluptas est aut quia est voluptas. Consectetur nobis qui dignissimos voluptas rerum corrupti quasi. Cum maiores dolor qui deleniti.</p><p>Est non delectus vel magni aut aut ullam. Eveniet repellat sunt totam velit corporis tempora. Molestias ipsum et ut est molestiae sequi et. In necessitatibus fuga eveniet et optio.</p><p>Molestias vel cupiditate voluptate iure consequatur. Labore quis reiciendis rerum est consequatur velit sint aliquid. Voluptas et voluptas sint ut provident atque.</p><p>Magni cupiditate ea quasi. Provident quia rerum occaecati nam est est. Blanditiis qui alias adipisci eaque adipisci maxime dolorum. Placeat id harum sequi odit et sed.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(7, 1, 3, 'Accusamus consequatur at rerum modi repellendus omnis.', 'aperiam-id-dolorem-unde-officiis-iste-voluptatem-repudiandae', NULL, 'Quas ratione autem accusamus expedita laboriosam dolores. Explicabo eligendi eius quasi quis et odio. Odio doloremque laborum quia voluptas. Id eligendi in aut incidunt. Voluptas reiciendis ducimus quam dolores quo.', '<p>Illo reprehenderit nihil nisi eius omnis eius tempore. Et aperiam asperiores cum maiores minus soluta veritatis. Ratione molestias aut assumenda. Qui cumque dolorem esse porro.</p><p>Nobis veniam voluptate quod iste molestias. Odit beatae commodi soluta corporis et cupiditate voluptatem. Praesentium quae maxime corrupti.</p><p>Cupiditate quae quia eaque molestias velit aut sed cumque. Iusto dicta accusantium minima et voluptatem modi. Et dolores cumque voluptatem harum rerum sit vel. Autem ut et voluptatem minima necessitatibus tempore dignissimos.</p><p>Molestiae magni excepturi aut facilis est. Natus ut voluptatibus quasi ipsum in excepturi. Laboriosam molestiae qui itaque.</p><p>Consequuntur omnis dignissimos vitae sint. Eius id beatae officia explicabo asperiores vel tempore. Repellat quasi voluptatibus dolorem dignissimos delectus voluptatibus.</p><p>Assumenda aut et eos. Cum dolor at facere nemo voluptatibus. Beatae sequi ut sint ut quae. Et deleniti et consequatur consequatur natus.</p><p>Sed enim magni sunt fuga eos reiciendis quidem. Sint non animi autem eveniet totam voluptas possimus nobis. Ea harum vel vitae laborum sint et recusandae quo. Molestias aliquam sed excepturi harum qui ut et.</p><p>Non aut rem recusandae dolores aut et. Ducimus rerum blanditiis quisquam quis. Ut qui eaque numquam repellat et voluptas est. Ea voluptatem at quia accusantium.</p><p>Consectetur in maxime accusantium deleniti voluptatem non. Nostrum amet quo quia consequatur quia et molestias fuga. Quidem vero vero ipsa sit quisquam ut.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(8, 2, 1, 'In vero sed libero est omnis.', 'quia-velit-earum-repellat-nam', NULL, 'Dolorem est laudantium odit assumenda. Nihil enim unde quasi voluptatem dignissimos. Soluta qui assumenda rem et esse. Minus consectetur aut et est ad.', '<p>Qui eum et dolorem quo sapiente. Quasi eum et mollitia omnis ullam qui. Quod quia ad earum aut maxime aut error adipisci. Nemo ducimus enim ipsum sint rerum facilis.</p><p>Aut debitis corrupti sapiente dignissimos in possimus enim ipsa. Similique fugiat omnis vitae ducimus voluptatem ea sed. Distinctio placeat nesciunt quibusdam autem voluptas.</p><p>Voluptatibus voluptatum rerum at et doloremque. Beatae blanditiis dicta temporibus harum aut ducimus.</p><p>Dolores autem nostrum rerum dolores est doloribus. Illo consequatur architecto neque unde ad fugit. Quis quo est quo velit ut. Explicabo aut adipisci exercitationem atque.</p><p>Nulla ut architecto aut ut. Tempore voluptas facilis sequi temporibus autem aut.</p><p>Omnis ex dicta voluptate soluta sed. Quis ullam neque est nostrum dolor neque. Pariatur et quam tempora et cum nisi. Sint labore optio eaque corrupti sint.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(9, 2, 1, 'Aut aut accusamus.', 'dignissimos-sit-autem-fuga-delectus-corrupti-dignissimos', NULL, 'Eum rem et eveniet maxime voluptate. Cupiditate nostrum voluptatem sit cumque eligendi facere. Ipsa ipsum maxime eum sit pariatur nulla eos. Et provident et minus.', '<p>Delectus sint dignissimos itaque enim ipsum consequuntur. Id magnam tenetur est magni et.</p><p>Ex enim voluptates dolores rem. Repudiandae ex explicabo beatae qui. Autem consectetur deleniti debitis non sunt.</p><p>Fuga et sunt nihil odit. Enim sunt soluta sit. Consequatur placeat autem hic placeat accusamus eos sed sunt. Corrupti et illo at illo molestias doloribus rem nesciunt.</p><p>Expedita magni necessitatibus voluptas quas alias sint. Sit porro in temporibus officiis minus soluta. Et accusantium saepe quas dolores. Animi sed consequatur quo aperiam ea quidem.</p><p>Ab consectetur quae fugiat reprehenderit est et. Distinctio earum qui dolore quaerat illo quae temporibus. Itaque voluptatem qui adipisci neque et temporibus.</p><p>Rerum eum iure culpa suscipit minima dolor alias. Rerum voluptatum neque id dolorum totam officiis. Magni iste et odio molestiae molestias velit.</p><p>Voluptas eum ut qui consequatur ad impedit occaecati excepturi. Vitae voluptatem porro excepturi in inventore. Illum et culpa odio dolore omnis praesentium. Ut ut qui illo possimus odio et.</p><p>Et praesentium dolores labore qui. Nisi velit quo nobis pariatur. Debitis accusantium perferendis in non neque soluta perspiciatis. Minus voluptates minima pariatur.</p><p>Ratione aut quam deserunt. Doloremque deleniti reiciendis quos magni pariatur et iste. Eius rerum aliquid perferendis tempore sunt sit labore.</p><p>Aut ut cumque laborum esse suscipit nihil aut sed. Quasi atque nesciunt repellendus sed veniam dignissimos omnis. Atque commodi fuga voluptatem inventore occaecati aliquid.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(10, 1, 3, 'Sit necessitatibus similique dicta qui aut.', 'labore-nesciunt-commodi-ut-voluptate-velit-dolores-dolorem-quia', NULL, 'Inventore voluptatem asperiores voluptas perferendis id aut. In repellendus culpa molestiae esse necessitatibus repellat dolor. Qui dolores qui veniam accusantium dolorem voluptatem nesciunt corrupti.', '<p>Iste doloremque omnis rerum odio. Ab officiis debitis omnis quidem dignissimos architecto et. Dolorem sapiente optio optio odio tempora voluptatum. Iure neque aut soluta omnis illum.</p><p>Qui ipsam minima sunt earum inventore aut. Non cumque asperiores ea tempora. Blanditiis perferendis laboriosam possimus labore.</p><p>Facilis fuga voluptates cumque recusandae aperiam. Id aut vitae ea et ducimus. Rerum harum provident ullam.</p><p>Quis quod tenetur animi dignissimos pariatur. Aut qui sed corrupti est ducimus delectus. Ratione hic sit et.</p><p>Rerum iste sit consequatur non. Accusantium sit non odit in velit odit esse. Ut aut ipsa itaque optio quis tempore. Nesciunt repellat deleniti doloremque molestiae.</p><p>Quis eligendi possimus quidem. Architecto adipisci pariatur veritatis voluptatibus iure. Doloremque nisi ullam aut qui.</p><p>Eos rerum ea odit. Facilis laborum praesentium cumque excepturi soluta autem. Animi qui et voluptas nihil optio qui.</p><p>Molestiae qui dolorum aliquam et cupiditate. Dolor doloribus enim in excepturi.</p><p>Optio suscipit cum et sunt et explicabo omnis. In iste excepturi dolor quibusdam sit pariatur dicta. Veritatis accusantium laudantium non laudantium iure.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(11, 2, 1, 'Dolorum eaque itaque.', 'ut-architecto-rerum-et-quos-ad-voluptate-quo', NULL, 'Aut blanditiis quos sapiente ea. Molestias beatae molestias voluptatem mollitia et saepe quae est. Nostrum dolor ut non corrupti aut.', '<p>Ea facilis doloribus voluptatem delectus. Odit officia quis iusto consequuntur cupiditate. In amet incidunt labore. Atque molestiae ut odit ea harum voluptate quisquam.</p><p>Quasi et sed est est hic molestiae. Et officiis eum veritatis deserunt.</p><p>Et accusantium accusamus non qui. Velit illo quae qui fugiat sequi. Mollitia magnam porro illo et.</p><p>Harum ut consequatur perferendis doloribus praesentium. Voluptatibus optio et sint et et officia adipisci qui. Neque aut sed minus est.</p><p>Voluptates quaerat quisquam consequatur libero expedita molestiae. Quam commodi consectetur nihil ducimus quia placeat ut aut. Ut molestiae aut earum et. Culpa id perspiciatis soluta illum et qui.</p><p>Blanditiis non voluptate incidunt et. Commodi accusantium deleniti quae alias debitis molestiae libero. Optio ipsa laborum dolores quasi. Accusamus ducimus impedit pariatur provident accusantium excepturi recusandae.</p><p>Voluptas ducimus aut voluptatem iste incidunt repellendus voluptatum. Quia magni corporis saepe vitae. In consequatur maxime architecto veritatis doloribus occaecati sunt sint.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(12, 2, 2, 'Qui qui asperiores atque commodi.', 'et-esse-voluptates-qui-distinctio', NULL, 'Accusamus repellat nihil aut sint delectus perspiciatis et. Eveniet hic laborum magnam sint. Nobis doloremque corrupti quae aliquid natus neque. Quia dolorem similique quaerat velit earum natus quo.', '<p>Dolores aut qui omnis vel ipsum laudantium numquam. Doloribus quis et temporibus quasi quasi vel. Et vel earum eos repudiandae maiores nisi eius. Maiores dicta ut fugiat sapiente excepturi quo.</p><p>Dolores deleniti dolor facilis sit ipsum amet ipsa dolorem. Unde reprehenderit architecto doloremque sed dolor.</p><p>Numquam magni autem nostrum et nobis laboriosam aut. Dolor nesciunt deleniti et ducimus est.</p><p>Commodi qui quo doloremque provident dolores magni vero. Voluptate in quasi voluptate vel. Atque qui vel hic.</p><p>Consequuntur est neque magnam corporis temporibus. Nisi corporis exercitationem similique magnam. Est explicabo consequatur laudantium eum maiores similique.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(13, 1, 3, 'Perspiciatis aut eos quaerat.', 'pariatur-facere-optio-eum-impedit', NULL, 'Facere ut qui ea fugit rerum et error. Adipisci maiores iste sunt commodi facilis recusandae. Aliquid non voluptatibus et suscipit.', '<p>Omnis ut excepturi hic earum. Aut fugiat quaerat temporibus et. Dolorem consequuntur id corporis sunt sunt porro ipsam.</p><p>Et dolore voluptatibus eum veritatis quaerat. Expedita voluptas corrupti voluptatem. Qui et enim odit consequuntur quibusdam reprehenderit. Temporibus iste aliquid et.</p><p>Rerum sed qui iste sit perspiciatis. Iusto nihil laborum aperiam perferendis. Tenetur magnam vitae expedita eum quis natus error.</p><p>Est enim animi ad eos tempore. Perferendis et aut reiciendis exercitationem. Aliquid blanditiis et rerum et sint. Asperiores aut laboriosam necessitatibus deserunt incidunt officiis ut. Expedita iste et et eligendi illum dolorem reprehenderit.</p><p>Dolorum beatae quasi a ratione. Aut in aliquid ea provident voluptas quia blanditiis. Ut quos sint recusandae ex quis qui. Molestias velit et et.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(14, 1, 2, 'Consequatur et distinctio quas eum.', 'voluptates-odio-maxime-deserunt', NULL, 'Qui non ea deserunt id. Odio voluptatem ex provident assumenda cumque. Soluta et assumenda ipsa fugiat atque. Delectus voluptate eum repellendus quae minus beatae.', '<p>Impedit delectus sequi ducimus cupiditate sunt aut architecto. Molestiae non nobis possimus eius. Sed ea maiores ducimus sit quisquam quod. Dicta aut nostrum rerum voluptate.</p><p>Enim est velit repellat consequatur qui quia. Aut quibusdam hic deleniti. Iusto et et aut exercitationem nesciunt in. Ratione eveniet blanditiis porro dolor magnam.</p><p>Est aut nisi eos est et repellat cum quibusdam. Excepturi soluta suscipit labore consequatur aut quia animi. Provident illo eligendi autem voluptas. Ut molestiae tempore odit assumenda consequatur tempora et.</p><p>Voluptatum fugiat asperiores aut dignissimos dolores dolores. Vero consequatur asperiores enim corrupti quo. Pariatur ut sed officiis sed error. Reprehenderit amet natus ducimus impedit.</p><p>Sed et eum itaque rerum voluptates culpa et iste. Porro aut similique dolor vitae ipsum optio. Possimus qui saepe tenetur corporis. Labore autem dicta vel ipsam ut ut.</p><p>Occaecati veritatis est sunt. Rerum aut dolorem temporibus dicta. A consequatur qui et eum. Quo ut nobis ipsum illum sunt quisquam libero.</p><p>Inventore libero dignissimos error sapiente. Maxime omnis repellat veniam commodi quisquam quaerat. Optio occaecati ea nostrum. Est qui quam voluptates illo harum ipsum. Et similique nesciunt officia autem dolores.</p><p>Nihil laborum cum nostrum ducimus molestiae dolor deserunt. Fugiat eum eum molestiae sunt autem rerum. Nemo accusamus amet inventore eius et aperiam.</p><p>Recusandae et iste est doloremque et. Voluptate voluptatem provident quasi natus omnis quidem.</p><p>Voluptatem sapiente possimus natus quod tenetur et. Voluptatem sit sint voluptas quis quasi.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(15, 2, 3, 'Velit vel delectus sunt accusantium exercitationem pariatur nemo.', 'error-ducimus-dolorem-iusto-quia-in', NULL, 'Atque reprehenderit quo eum voluptas molestiae eum nisi. Quibusdam odio ea et.', '<p>Non eligendi non deserunt quam ea autem. Fugit atque consequuntur harum alias. Enim earum pariatur fugiat quos corporis.</p><p>Laborum sint eos perferendis tenetur ea voluptatem quia. Quis qui dolorem saepe illo aut laborum qui tenetur. Quis saepe iure deserunt aut suscipit placeat deserunt fugit. Odio sint vitae qui dicta.</p><p>Voluptas voluptatem deleniti odio laboriosam quod sint blanditiis. Incidunt voluptatem aperiam rerum beatae in suscipit. Sint accusantium sit atque asperiores quisquam cupiditate rem.</p><p>Officiis odio in architecto debitis odio. Rerum eveniet neque eos. Doloremque sint est aut excepturi est rerum autem. Voluptatem ipsa eligendi ut consequatur eos voluptatem sed.</p><p>Molestiae sint esse ex neque rerum sed. Eaque fuga ipsam eum error repudiandae in. Rerum facere dolorem aut iure. Voluptatem officia doloribus aut alias numquam odit dolor nisi.</p><p>Unde enim non et. Temporibus placeat sunt quo deleniti. Consequatur et veritatis ut assumenda vitae labore vitae.</p><p>Sunt cupiditate quisquam id ab laudantium aut est. Rem sunt voluptatem eveniet libero omnis voluptas. Aut ut ipsa molestias neque quidem enim labore.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(16, 2, 2, 'Saepe sunt.', 'voluptatum-in-atque-occaecati', NULL, 'Eos harum vel aperiam dolorem dolorem dolorem. Recusandae non et et voluptatibus atque nihil. Quia est similique nostrum.', '<p>Quidem et dolores dolore atque necessitatibus ea. Vel voluptatem illo doloremque. Autem laboriosam sint voluptatem rerum corrupti doloremque. Dicta deserunt delectus facere blanditiis quis.</p><p>Eius temporibus sit sit consectetur dolorem autem. Tempore tenetur omnis nemo sit sed velit voluptas.</p><p>Quasi voluptatem dolor nisi aut sit odit voluptatum magni. Temporibus ex in iusto atque vel ipsam qui. Dolore fuga non ut modi omnis.</p><p>Quaerat vitae ut facere optio in et occaecati in. Quasi sint excepturi eius maxime temporibus officiis. Alias delectus minima beatae reprehenderit ut voluptas.</p><p>Autem ab fuga eos. Asperiores enim nam sunt vitae non expedita. Illum incidunt nam aut eum quo. Omnis consequatur optio et aut laboriosam excepturi soluta corporis.</p><p>Omnis tenetur impedit odio aperiam consequatur eveniet cupiditate. Pariatur quisquam deleniti beatae alias in omnis. Animi quos libero temporibus animi ullam. Velit sit ea numquam adipisci esse totam.</p><p>Minus repellendus assumenda vel voluptas voluptates. Consequuntur similique accusantium qui et quam earum recusandae. Ipsa qui aut soluta ipsa.</p><p>Placeat cum quaerat sequi impedit magni. Repellat est nemo et voluptas esse. Corporis sunt esse nobis facere.</p><p>Odit quam aliquam voluptatem. Quod ducimus et ut atque ut. Voluptatibus autem deserunt voluptatum qui necessitatibus tenetur.</p><p>In cumque nam dolore sequi. Perferendis et quisquam nesciunt doloribus tempore.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(17, 1, 1, 'Quia non consequuntur vero dolor neque id.', 'autem-deserunt-necessitatibus-sunt-consequuntur-eligendi-debitis', NULL, 'Quasi maxime atque cumque explicabo deleniti et sunt pariatur. Et et sed eum voluptatem quisquam vel iusto. Itaque veniam ipsa totam recusandae aut.', '<p>Sunt illum reiciendis ipsa exercitationem magni harum facere. Pariatur cum velit porro voluptas. Perferendis necessitatibus vel vel necessitatibus quo eveniet. Neque molestiae doloremque ad at incidunt.</p><p>Similique accusamus asperiores eum. Eum occaecati odit impedit placeat. Facilis sit tenetur et dolorem culpa aut. Autem veritatis et eius maiores officiis eum. Est beatae architecto cum repellat ipsum.</p><p>Architecto unde dolor cum labore quos earum. Dolorum similique voluptatem ipsam voluptatem. Repellendus rerum doloribus deserunt dolores eos nihil. Voluptates maxime est fuga dolor quisquam adipisci odit.</p><p>Voluptate qui perspiciatis quia eos laboriosam aspernatur. Consectetur dignissimos rerum sapiente autem. Quia ad provident quo non.</p><p>Ex sapiente doloremque eum omnis praesentium. Illum natus et vitae et quibusdam. Iusto modi dignissimos velit exercitationem aut.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(18, 1, 1, 'Rerum iure aut tempora harum modi sit.', 'ad-qui-quibusdam-nihil-voluptatibus', NULL, 'Enim numquam commodi sunt provident modi deserunt. Voluptatem ut facilis quod harum autem illum rerum. Itaque dolor molestias animi a odio sit. Voluptatem itaque quibusdam dolorem qui facere molestias vel.', '<p>Ut eligendi cumque sed necessitatibus. Est quis repellat similique. Error sint odio eum dolorem pariatur. Veniam et neque exercitationem esse fuga ex.</p><p>Veritatis harum omnis ut perspiciatis. Aut fugiat voluptates incidunt et veritatis error aut. Rerum nemo et dolorem aliquid omnis. Excepturi qui error soluta reiciendis velit aperiam distinctio.</p><p>Sed et et dignissimos commodi et debitis. Recusandae saepe ut et eum voluptatem sit eum voluptatibus. Perspiciatis minus nostrum quia ipsam. Quis libero non unde iste excepturi exercitationem.</p><p>Placeat nulla sit at eos at amet reprehenderit. Iste et id omnis. Dicta ut explicabo blanditiis et in laborum placeat. Quasi officia voluptatem explicabo accusamus.</p><p>Non corporis omnis suscipit dolores et autem blanditiis. Maxime itaque optio ut ut. Dolorem laudantium illum unde odit. Tempora voluptas numquam sed sequi expedita nesciunt.</p><p>Sed nam libero excepturi animi nihil earum quo minus. Velit quo voluptatibus ab nihil aliquam dolore.</p><p>Odio et voluptatem temporibus laboriosam est. Ducimus distinctio sint ab. Consequatur quidem soluta sint laudantium iusto provident possimus. Qui porro ipsam sequi quos perferendis.</p><p>Totam ea et culpa hic voluptas. Quam eum odio et maxime impedit voluptas. Accusantium dolorem laboriosam dolorem vel excepturi. Tempore beatae dolorem fugit molestias.</p><p>Sed ut a sit et voluptatem porro ea recusandae. Nemo qui culpa voluptates molestiae molestiae repellendus rerum. Ipsam numquam sit sint sed fuga est dolore illum. Ullam velit dolor qui magnam voluptatem. Consequatur et aut quas odio quibusdam est sed non.</p><p>Labore fugiat et ut aut hic neque ipsa. Exercitationem tempore modi minima minus. Voluptatibus doloremque non quo molestiae qui.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(19, 2, 1, 'Eaque vel aliquid tempora sit.', 'et-vel-sint-quia-quasi-quibusdam-et-facilis', NULL, 'Praesentium dolor et enim mollitia. Exercitationem et consequatur veritatis iste nihil. Id odio porro enim rerum.', '<p>Inventore omnis velit animi officiis. Debitis molestias earum hic consequatur voluptatem sit. Dolor esse qui sequi soluta.</p><p>Fugit aliquam ex voluptatibus possimus. Recusandae odit repellat in assumenda tempora qui vel.</p><p>Minima voluptatum tempora perspiciatis aliquam quam enim optio. Labore autem aperiam recusandae repellendus non quia.</p><p>Qui quia hic nihil distinctio aut molestiae. Maiores dolores a tempora corrupti et corporis maiores. Pariatur et illum aut sed. Ex qui itaque reprehenderit odio doloribus vel.</p><p>Voluptate velit labore iste magni nihil. Explicabo sed maiores quia porro omnis dolore. Quidem nulla et corporis sit id sint. Tempore in ut blanditiis quis.</p><p>Ab maiores ratione delectus dolorem non. Corrupti quo est molestiae qui voluptatibus ducimus nam. Magnam illum ipsum suscipit placeat.</p><p>Pariatur aspernatur omnis consequuntur non in voluptatem. Excepturi voluptas qui occaecati sint. Quibusdam impedit aut cupiditate sequi aut eaque molestiae quam. Pariatur et consequatur eum reiciendis blanditiis ut vero maiores.</p><p>Facilis dolor vero harum a consequatur. Maxime necessitatibus minima blanditiis pariatur corporis maiores id. Vel tempora et exercitationem ut aspernatur ipsa ut sed. Esse optio ducimus nostrum mollitia omnis deserunt.</p><p>Minus eius qui quae asperiores. Nisi nulla quidem cupiditate qui corrupti. Modi illum ipsum quia recusandae sit.</p><p>Ut nisi veritatis nobis quaerat dignissimos ut. Distinctio sunt dolores vel. Non aliquid nam sed natus corporis nihil quos.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27'),
(20, 2, 2, 'Est earum et maxime.', 'assumenda-non-voluptas-rerum-laudantium-et-nisi-deleniti-nostrum', NULL, 'Cum sit qui maiores eligendi maxime consequatur illum. Praesentium est exercitationem magnam dolor quia rerum non quaerat. Et quo enim quas in ratione.', '<p>Ratione commodi mollitia quia et facere quas enim. Vel ab sit ratione impedit. Eius tenetur eaque culpa aperiam.</p><p>Quaerat ipsam laudantium repellat quia modi totam. Nam autem occaecati commodi ut. Doloribus dignissimos nihil et a. Omnis dignissimos quia modi cum qui quis qui laboriosam.</p><p>Cumque ut aut molestiae pariatur veritatis delectus. Dolorem et molestias error qui quis ut doloremque suscipit. Nisi autem ut ut. Omnis quasi laboriosam voluptatibus cupiditate officiis.</p><p>Voluptas commodi explicabo odit qui. Debitis est neque aut et quisquam beatae ipsa.</p><p>Dolor laboriosam debitis eligendi molestiae optio accusamus sed. Dolores quisquam molestiae cum ea autem. Veritatis magni in exercitationem tempora vel dolor voluptatem consequatur. Maiores et odit enim esse architecto.</p><p>Nesciunt nihil excepturi nisi odio. Quis eos iusto a enim officia saepe et.</p><p>Dolorem dolores aperiam architecto omnis. Id dicta consequatur eaque. Possimus ad corrupti perspiciatis. Facilis quidem facere blanditiis error.</p>', NULL, '2022-10-24 05:57:27', '2022-10-24 05:57:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_static_page01s`
--

CREATE TABLE `set_static_page01s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_static_page05s`
--

CREATE TABLE `set_static_page05s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `set_static_page05s`
--

INSERT INTO `set_static_page05s` (`id`, `created_at`, `updated_at`, `title`, `body`, `image`, `caption`, `navigate`) VALUES
(1, '2022-10-24 05:57:27', '2022-10-24 08:01:23', 'Investasikan Segera Harta Anda Sebagai Bekal di Akhirat Kelak Dengan Program Wakaf Tunai Pembangunan', '<blockquote><em>“Perumpamaan (nafkah yang dikeluarkan oleh) orang-orang yang menafkahkan hartanya di jalan Allah adalah serupa dengan sebutir benih yang menumbuhkan tujuh bulir, pada tiap-tiap bulir: seratus biji. Allah melipat gandakan (ganjaran) bagi siapa yang Dia kehendaki. Dan Allah Maha Luas (kurnia-Nya) lagi Maha Mengetahui.” (</em>QS. Al Baqarah: 261)<br><br><em>“Jika seseorang meninggal dunia, maka terputuslah amalannya kecuali tiga perkara (yaitu): sedekah jariyah, ilmu yang dimanfaatkan, atau do’a anak yang sholeh” </em>(HR. Muslim no. 1631)</blockquote><div><strong>Wakaf itu Mudah dan Pahalanyapun Melimpah</strong><br><br></div><div>Wakaf adalah amalan sedekah yang bersifat jariyah, meski usia terputus pahalanya mengalir terus menerus selama barang atau benda yang diwakafkan itu masih berguna dan bermanfaat. Selain mendapatkan bonus pahala mengalir di akhirat, muwakifpun akan mendapatkan keberkahan di dunia berupa keberlimpahan harta, jiwa yang bersih serta kebahagiaan yang tidak terputus karena muwakif telah mengeluarkan harta yang dia cintai di jalan Allah (menafkahkan di jalan Allah).<br><br></div><div>Yayasan Zaid Bin Tsabit Radhiyallahu’anhu, Insyaa Allah akan membangun gedung 4 lantai di atas tanah wakaf dengan luas bangunan sekitar 1200 M2 yang letaknya di jalan Gajahmada barat, Tirto, Kota Pekalongan. Gedung baru ini selanjutnya akan kami pergunakan untuk pondok pesantren Markaz Tahfidzul Qur’an Zaid bin Tsabit Pekalongan dikarenakan santri yang mendaftar semakin banyak, sementara saat ini kami masih menyewa rumah untuk kegiatan belajar dan asrama santri, maka dari itu perlu adanya pembangunan gedung baru yang fungsinya untuk Asrama, Kelas, Kantor, Masjid dan lain sebagainya.Oleh karenanya kami mengajak kepada seluruh muhsinin untuk ikut membantu dan mewakafkan harta terbaiknya untuk bekal di akhirat kelak.&nbsp;<br><br></div><blockquote>Sementara ini lokasi pondok pesantren Markaz Zaid Bin Tsabit Pekalongan yang pertama terletak di jalan Teratai Gg. 7 Barat No. 42 Klego, Kota Pekalongan, sedangkan lokasi kedua dalam proses pembangunan gedung 4 lantai diatas tanah wakaf di jalan Gajah Mada Barat Kelurahan Tirto Pekalongan Timur Kota Pekalongan.</blockquote><div>Untuk menyalurkan donasi Anda mohon untuk <strong>meluangkan waktu</strong> sejenak untuk membaca <strong>Petunjuk dan Rincian Anggaran </strong>dengan cara klik tombol \"Panduan Wakaf\" dibawah ini;<br><br></div><div>link : <a href=\"/panduan-wakaf-pembangunan\">Panduan Wakaf</a><br><br></div><div>Jika Anda ada pertanyaan terkait proyek pembangunan gedung pondok pesantren Markaz Tahfid Al Qur’an Zaid Bin Tsabit silakan hubungi kontak berikut :<br><br></div><ul><li>Ust. Ahmad Rijal, Lc., M.H.I. (0856 9429 1964)</li><li>Dr. Gholib Hasan (0815 6593 847)</li><li>Setiyo Hermawan (0815 6593 847)&nbsp;</li></ul><div>Tunggu apa lagi, mari wakafkan harta terbaik Anda sebagai wujud kepedulian terhadap masa depan bangsa dan masyarakat.<br><br></div>', 'static-page-images/iC2sKsSZR8PostgtvHrubDTZNsa1UARQTDgiv7dy.jpg', 'Progress pembangunan', 'Wakaf -> Pembangunan Gedung Baru');

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
(1, 'Jumhan Prayitno', 'jumhan', 'jumhan@gmail.com', NULL, '$2y$10$i7UOZvJaJ274UCG5B1q83etuVWJZlpJcGNnUMl.D7I.ud1vYhrIYa', NULL, '2022-10-24 05:57:26', '2022-10-24 05:57:26', 1),
(2, 'Gambira Irsad Zulkarnain', 'jayadi97', 'halima.maulana@example.org', '2022-10-24 05:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RDMnMhPHTC', '2022-10-24 05:57:26', '2022-10-24 05:57:26', 0),
(3, 'Diana Mulyani', 'jailani.raden', 'dina57@example.com', '2022-10-24 05:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Igl9h2ezL4', '2022-10-24 05:57:26', '2022-10-24 05:57:26', 0),
(4, 'Lintang Purwanti', 'gasti.sudiati', 'zsitumorang@example.com', '2022-10-24 05:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MKgEs0D2hc', '2022-10-24 05:57:26', '2022-10-24 05:57:26', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `budgets_description_unique` (`description`),
  ADD UNIQUE KEY `budgets_slug_unique` (`slug`);

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
-- Indeks untuk tabel `set_static_page01s`
--
ALTER TABLE `set_static_page01s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `set_static_page05s`
--
ALTER TABLE `set_static_page05s`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `budgets`
--
ALTER TABLE `budgets`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT untuk tabel `set_static_page01s`
--
ALTER TABLE `set_static_page01s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `set_static_page05s`
--
ALTER TABLE `set_static_page05s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
