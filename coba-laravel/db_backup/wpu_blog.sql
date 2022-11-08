-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2022 pada 14.46
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
(1, 'Pekerjaan Persiapan/ Umum', 'pekerjaan-persiapan-umum', 44469600, '001', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(2, 'Pekerjaan Tanah', 'pekerjaan-tanah', 147182183, '002', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(3, 'Pekerjaan Struktur Lantai 1', 'pekerjaan-struktur-lantai1', 1555066206, '003', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(4, 'Pekerjaan Arsitektur Lantai 1', 'pekerjaan-arsitektur-lantai1', 485719171, '004', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(5, 'Pekerjaan Mekanikal & Elektikal Lantai 1', 'pekerjaan-mekanikal-elektikal-lantai1', 62997860, '005', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(6, 'Pekerjaan Struktur Lantai 2', 'pekerjaan-struktur-lantai2', 671046165, '006', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(7, 'Pekerjaan Arsitektur Lantai 2', 'pekerjaan-arsitektur-lantai2', 431774974, '007', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(8, 'Pekerjaan Mekanikal & Elektikal Lantai 2', 'pekerjaan-mekanikal-elektikal-lantai2', 69796870, '008', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(9, 'Pekerjaan Struktur Lantai 3', 'pekerjaan-struktur-lantai3', 671640160, '009', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(10, 'Pekerjaan Arsitektur Lantai 3', 'pekerjaan-arsitektur-lantai3', 458468141, '010', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(11, 'Pekerjaan Mekanikal & Elektikal Lantai 3', 'pekerjaan-mekanikal-elektikal-lantai3', 71657610, '011', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(12, 'Pekerjaan Struktur Lantai 4', 'pekerjaan-struktur-lantai4', 168593066, '012', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(13, 'Pekerjaan Arsitektur Lantai 4', 'pekerjaan-arsitektur-lantai4', 647962309, '013', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(14, 'Pekerjaan Mekanikal & Elektikal Lantai 4', 'pekerjaan-mekanikal-elektikal-lantai4', 100548150, '014', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(15, 'Pekerjaan Paving Block', 'pekerjaan-paving-block', 27238000, '015', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(16, 'Pekerjaan Pagar', 'pekerjaan-pagar', 103979559, '016', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(17, 'Pengadaan AC', 'pengadaan-ac', 167370000, '017', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(18, 'Pekerjaan Hydran', 'pekerjaan-hydran', 750000000, '018', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(19, 'Pekerjaan Mebelair', 'pekerjaan-mebelair', 101900000, '019', '85740074567', 'Fulan', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42');

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
(1, 'Ulumul Quran', 'ulumul-quran', '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(2, 'Bahasa Arab', 'bahasa-arab', '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(3, 'Nasihat', 'nasihat', '2022-11-08 05:27:42', '2022-11-08 05:27:42');

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
(1, 7, 'Azalea Queen Yuliarti', 'Ds. Kalimantan No. 628, Denpasar 85666, Jatim', '0630 7430 865', '89154', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(2, 3, 'Jail Firmansyah', 'Gg. Bass No. 500, Palangka Raya 52726, Kaltara', '(+62) 982 4228 032', '2306410', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(3, 2, 'Edward Mansur S.Psi', 'Jln. Veteran No. 350, Gorontalo 26005, Pabar', '(+62) 486 3413 282', '2206127', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(4, 3, 'Julia Riyanti', 'Psr. Ters. Jakarta No. 756, Batu 66963, Sumbar', '(+62) 559 9555 1879', '181370', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(5, 8, 'Imam Situmorang', 'Dk. Batako No. 450, Gunungsitoli 38182, Kalteng', '(+62) 458 8138 5089', '898935', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(6, 1, 'Dirja Pradana S.I.Kom', 'Ki. Cokroaminoto No. 840, Madiun 90304, Sulut', '0833 5072 7152', '1896581', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(7, 19, 'Salwa Yessi Yuniar M.TI.', 'Psr. Bakin No. 750, Pangkal Pinang 22310, Jatim', '(+62) 888 0634 8958', '2053336', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(8, 9, 'Jagaraga Marwata Maulana', 'Dk. Dr. Junjunan No. 248, Lhokseumawe 76029, Gorontalo', '(+62) 395 4253 984', '3326928', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(9, 3, 'Salman Laksana Maulana S.IP', 'Jr. Cemara No. 932, Semarang 39126, Papua', '(+62) 358 3652 6323', '1483237', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(10, 1, 'Adinata Luwes Saefullah', 'Dk. Kalimantan No. 470, Bontang 56449, Jatim', '(+62) 659 4474 814', '1525689', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(11, 8, 'Aisyah Elma Purnawati S.E.', 'Ki. Bayam No. 900, Metro 68450, Sulut', '0588 5196 8415', '260717', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(12, 10, 'Karman Mansur', 'Ki. Surapati No. 757, Depok 53019, Malut', '0618 1595 814', '493494', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(13, 9, 'Belinda Palastri', 'Jln. Yap Tjwan Bing No. 790, Palu 39893, Sumsel', '0910 3613 044', '3132092', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(14, 3, 'Cindy Puspasari', 'Ki. Rumah Sakit No. 778, Bitung 75245, Kepri', '0520 2647 578', '3193536', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(15, 10, 'Indah Tania Wijayanti M.Ak', 'Psr. Krakatau No. 908, Lubuklinggau 98910, Sulteng', '(+62) 657 5246 878', '779330', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(16, 19, 'Carla Kuswandari S.Sos', 'Kpg. Laswi No. 573, Sorong 58435, DKI', '(+62) 339 2381 745', '148731', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(17, 13, 'Ana Halimah S.I.Kom', 'Kpg. Wahidin Sudirohusodo No. 204, Mataram 56629, Pabar', '0778 6193 9729', '668770', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(18, 9, 'Diah Safina Haryanti', 'Jln. Moch. Yamin No. 551, Tangerang 75937, Riau', '0236 7774 784', '3497711', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(19, 13, 'Wirda Rahayu S.T.', 'Jln. Warga No. 471, Tual 69455, Lampung', '0492 7831 286', '1384403', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(20, 18, 'Marsito Prasasta S.I.Kom', 'Kpg. Ters. Pasir Koja No. 287, Tebing Tinggi 54907, Banten', '0432 5843 169', '1125692', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(21, 16, 'Genta Yolanda', 'Jr. Radio No. 153, Bandar Lampung 39821, Babel', '(+62) 28 2721 062', '1014168', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(22, 3, 'Danang Ganjaran Zulkarnain', 'Ds. Jagakarsa No. 846, Bekasi 48217, Gorontalo', '0562 3154 5870', '1525082', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(23, 19, 'Maya Amalia Sudiati S.Psi', 'Kpg. Gegerkalong Hilir No. 680, Kediri 53444, NTB', '(+62) 566 1377 107', '1971197', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(24, 1, 'Enteng Cahya Hakim M.Farm', 'Kpg. Jayawijaya No. 241, Batam 82654, Sulbar', '0720 2836 0214', '2845943', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(25, 4, 'Edison Ian Mangunsong M.M.', 'Ds. Soekarno Hatta No. 843, Medan 35274, Aceh', '0789 9645 1882', '1700953', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(26, 12, 'Umaya Setiawan', 'Ki. Baranangsiang No. 962, Semarang 86059, Sulbar', '(+62) 261 8400 0278', '1200939', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(27, 9, 'Lidya Almira Farida', 'Jln. Sunaryo No. 806, Dumai 21749, NTT', '(+62) 576 0474 1232', '745777', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(28, 13, 'Mila Ida Pudjiastuti S.IP', 'Kpg. Jend. A. Yani No. 348, Gorontalo 97521, Bengkulu', '0558 0621 1046', '2392748', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(29, 8, 'Nadia Hartati', 'Psr. Moch. Yamin No. 484, Administrasi Jakarta Timur 89288, Sulbar', '0557 6359 9298', '2276248', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(30, 7, 'Siti Elma Utami S.E.', 'Dk. Yap Tjwan Bing No. 20, Salatiga 82491, Sumut', '(+62) 25 3734 374', '3091441', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(31, 6, 'Nabila Anggraini', 'Jln. Sudirman No. 903, Cirebon 26147, Kepri', '0426 8371 607', '3145720', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(32, 18, 'Irwan Nashiruddin', 'Jr. Bawal No. 556, Tegal 63612, Bengkulu', '(+62) 568 9290 2680', '918097', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(33, 18, 'Asmuni Kusuma Prasasta S.Ked', 'Dk. Mulyadi No. 527, Prabumulih 17730, Lampung', '(+62) 840 076 485', '3113815', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(34, 10, 'Halima Amalia Wulandari', 'Gg. Sutarjo No. 114, Tangerang Selatan 62618, Kalteng', '(+62) 738 5637 940', '1367743', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(35, 16, 'Argono Santoso', 'Dk. Basuki No. 608, Administrasi Jakarta Selatan 42115, Sumut', '(+62) 845 715 982', '1696632', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(36, 9, 'Nadia Cornelia Widiastuti S.I.Kom', 'Ki. Moch. Yamin No. 777, Bengkulu 79154, Kalbar', '0837 966 553', '1508758', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(37, 16, 'Usyi Mardhiyah M.Pd', 'Kpg. Rajawali No. 159, Kendari 99742, Kepri', '0282 9466 4100', '1634011', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(38, 14, 'Wasis Bakiono Santoso M.Ak', 'Jr. Imam Bonjol No. 215, Tanjungbalai 96227, Sulut', '(+62) 419 9093 0750', '1658712', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(39, 14, 'Febi Puspita S.Sos', 'Ki. Pahlawan No. 762, Administrasi Jakarta Barat 70943, Sulsel', '(+62) 368 5397 188', '1473082', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(40, 16, 'Tari Suartini', 'Ki. Baranang No. 69, Tual 49310, Lampung', '0836 767 376', '2212375', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(41, 18, 'Victoria Palastri M.TI.', 'Ki. Basuki No. 657, Surakarta 69466, Aceh', '(+62) 858 0794 5220', '1184937', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(42, 9, 'Anita Usamah M.Farm', 'Gg. Sampangan No. 806, Subulussalam 37077, Aceh', '0886 699 765', '2406363', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(43, 12, 'Yuliana Widiastuti', 'Jr. Gremet No. 538, Magelang 91568, Bali', '0307 2091 7487', '801551', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(44, 17, 'Warta Kuswoyo', 'Jln. Sugiyopranoto No. 188, Pematangsiantar 83990, Jambi', '(+62) 859 637 989', '1896114', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(45, 17, 'Bahuwarna Suryono', 'Dk. Ikan No. 657, Solok 14511, Kaltim', '(+62) 678 1143 3748', '580560', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(46, 12, 'Paiman Putu Dabukke', 'Jln. Gegerkalong Hilir No. 521, Bitung 96897, Jatim', '0416 5740 9024', '2198832', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(47, 12, 'Jayadi Budiman', 'Jr. Abang No. 350, Padangsidempuan 39545, DKI', '0231 2294 9724', '3452486', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(48, 11, 'Puspa Riyanti M.M.', 'Jln. B.Agam 1 No. 434, Kupang 18783, Kalsel', '(+62) 534 8380 155', '1760645', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(49, 19, 'Rangga Pratama', 'Ds. Juanda No. 514, Pagar Alam 25741, Banten', '(+62) 328 4207 498', '1795763', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(50, 2, 'Salsabila Wahyuni', 'Ds. Ir. H. Juanda No. 620, Tual 74227, Kaltara', '(+62) 725 8505 915', '3412083', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(51, 19, 'Unjani Riyanti', 'Dk. Hasanuddin No. 365, Pagar Alam 40336, Aceh', '0995 8678 376', '1684319', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(52, 9, 'Maras Rizki Nababan S.I.Kom', 'Ds. Bahagia No. 573, Padangsidempuan 77597, NTB', '0396 7346 8800', '54362', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(53, 19, 'Hasna Hafshah Maryati', 'Ki. Jakarta No. 933, Pontianak 96862, Sumut', '0726 8997 740', '836641', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(54, 10, 'Karman Haryanto', 'Ds. Supomo No. 144, Bogor 71078, Sumsel', '0551 3232 017', '2428200', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(55, 12, 'Kuncara Budiman M.Ak', 'Gg. Setia Budi No. 913, Tual 83815, Riau', '0497 4414 886', '3427244', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(56, 5, 'Bakijan Salahudin', 'Kpg. Sudirman No. 995, Binjai 29242, Maluku', '0412 2692 510', '2305437', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(57, 3, 'Talia Farah Usamah', 'Jr. Achmad No. 751, Sawahlunto 15974, Babel', '(+62) 925 3121 5883', '749206', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(58, 6, 'Ibun Waskita', 'Jr. Ekonomi No. 269, Tarakan 52783, Sumbar', '0867 4570 082', '1448447', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(59, 17, 'Almira Rahmi Susanti', 'Dk. Bacang No. 682, Surabaya 82011, Malut', '0626 3367 8091', '1377433', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(60, 2, 'Ajiman Siregar', 'Gg. Bahagia  No. 640, Yogyakarta 75868, Maluku', '0431 2272 759', '2251049', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(61, 2, 'Elvin Asmianto Waskita S.H.', 'Dk. Lembong No. 269, Cilegon 52823, Jateng', '0791 7419 9561', '2525032', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(62, 1, 'Puti Riyanti', 'Jr. Aceh No. 794, Denpasar 53713, Jatim', '029 3879 4250', '2884340', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(63, 17, 'Nalar Simanjuntak', 'Jln. Lembong No. 991, Pasuruan 77933, DIY', '(+62) 957 6282 491', '3485723', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(64, 15, 'Aditya Budiman S.H.', 'Kpg. Karel S. Tubun No. 247, Bima 81702, Sulut', '0353 7363 3020', '3310094', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(65, 4, 'Muhammad Galar Nainggolan', 'Ds. Adisucipto No. 759, Parepare 19075, Kalsel', '(+62) 20 1390 4548', '2898022', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(66, 17, 'Eka Maida Yuliarti M.TI.', 'Jr. Wora Wari No. 405, Palembang 74858, Lampung', '0896 5204 715', '1693911', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(67, 3, 'Ira Zahra Laksita S.H.', 'Kpg. Rajawali Timur No. 118, Palangka Raya 68915, Jateng', '0927 3391 914', '3260761', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(68, 7, 'Jasmani Manullang', 'Kpg. Cikutra Timur No. 611, Surakarta 40231, Sumsel', '(+62) 747 8608 857', '356616', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(69, 10, 'Kenzie Nababan', 'Ds. Gajah Mada No. 712, Bima 97177, Sulbar', '0488 2717 6836', '120989', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(70, 1, 'Almira Betania Oktaviani', 'Dk. S. Parman No. 645, Tanjungbalai 82981, Bali', '(+62) 936 5532 6055', '1197163', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(71, 1, 'Prakosa Putra S.Sos', 'Gg. Yoga No. 424, Sungai Penuh 27500, Banten', '0800 6743 7914', '1476279', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(72, 4, 'Azalea Farida S.Ked', 'Jln. Aceh No. 837, Denpasar 62158, Jateng', '0396 4585 958', '83090', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(73, 4, 'Hana Yuliarti M.Pd', 'Kpg. Ekonomi No. 843, Administrasi Jakarta Barat 82775, Sulsel', '0203 7709 7316', '915931', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(74, 2, 'Jono Jarwi Wasita M.Pd', 'Psr. Honggowongso No. 447, Metro 35954, Gorontalo', '(+62) 367 6800 2645', '1143488', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(75, 15, 'Puji Laksmiwati', 'Kpg. Wahidin No. 662, Mataram 29782, Kalteng', '0771 3066 1292', '2328673', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(76, 3, 'Shania Puspasari', 'Jr. Babah No. 440, Dumai 25661, Riau', '0741 8229 9124', '587138', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(77, 6, 'Prabawa Prakasa', 'Jr. Abdul No. 312, Batam 30433, Sulbar', '0289 3716 9456', '1936261', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(78, 2, 'Sari Palastri', 'Psr. Jambu No. 934, Solok 39247, Sumbar', '(+62) 895 6976 121', '357337', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(79, 4, 'Ayu Namaga', 'Ki. Jayawijaya No. 28, Serang 86870, Bengkulu', '(+62) 473 6940 559', '2363678', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(80, 17, 'Tiara Hariyah', 'Kpg. Wahid Hasyim No. 326, Pangkal Pinang 71303, Malut', '0278 2502 341', '1301208', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(81, 14, 'Kamaria Cornelia Melani', 'Gg. Kusmanto No. 939, Mataram 54228, Maluku', '(+62) 574 0635 013', '961041', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(82, 18, 'Candrakanta Prasetyo S.Psi', 'Jr. Basmol Raya No. 821, Batam 90025, Lampung', '(+62) 26 7781 512', '1136404', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(83, 14, 'Lintang Aryani M.Farm', 'Kpg. Wahid No. 209, Lubuklinggau 84420, Sultra', '0729 1537 401', '1401916', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(84, 11, 'Genta Wastuti M.Pd', 'Dk. Tentara Pelajar No. 874, Padang 33912, Aceh', '(+62) 599 4402 037', '2151228', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(85, 1, 'Rahayu Yolanda S.Ked', 'Psr. Jend. Sudirman No. 962, Gunungsitoli 64522, Pabar', '0478 8060 5860', '2147378', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(86, 1, 'Putri Syahrini Aryani M.Pd', 'Kpg. Gatot Subroto No. 552, Sawahlunto 68319, Sultra', '0702 5260 340', '1019529', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(87, 13, 'Lintang Amalia Hartati S.Pd', 'Kpg. Barasak No. 711, Manado 43272, DIY', '0805 7152 954', '1425895', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(88, 10, 'Yoga Saefullah', 'Kpg. Jayawijaya No. 376, Pontianak 14914, Riau', '0312 5969 362', '2579980', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(89, 13, 'Vicky Oktaviani', 'Dk. Gambang No. 233, Banda Aceh 11159, Sulsel', '0641 4636 7463', '1162162', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(90, 9, 'Irnanto Ardianto', 'Kpg. Supono No. 772, Lubuklinggau 76400, Pabar', '(+62) 841 0506 654', '3386894', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(91, 3, 'Soleh Prasetyo Nashiruddin S.Kom', 'Ds. Sam Ratulangi No. 105, Tomohon 23227, Kaltara', '(+62) 836 9902 2236', '3082816', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(92, 5, 'Slamet Danuja Haryanto', 'Ds. Abdullah No. 803, Jayapura 79967, Pabar', '0392 0436 450', '204702', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(93, 11, 'Endra Harto Mangunsong', 'Jr. Bak Mandi No. 648, Magelang 70597, NTB', '(+62) 923 2513 556', '1241138', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(94, 5, 'Zizi Yolanda', 'Jln. Nangka No. 557, Ambon 69648, Sumbar', '(+62) 884 0789 919', '1602945', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(95, 2, 'Elma Mayasari', 'Jr. Ters. Kiaracondong No. 31, Administrasi Jakarta Barat 32398, NTB', '(+62) 576 5705 6234', '1660683', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(96, 15, 'Janet Laksmiwati', 'Ds. Baranangsiang No. 814, Pariaman 35703, Lampung', '(+62) 544 5057 638', '2829555', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(97, 15, 'Bakda Wacana', 'Ds. Merdeka No. 835, Manado 52195, DKI', '(+62) 266 1420 8899', '3291421', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(98, 2, 'Yessi Nova Usamah M.Kom.', 'Kpg. Yoga No. 475, Tidore Kepulauan 41043, Gorontalo', '(+62) 813 958 847', '1494746', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(99, 9, 'Wira Nugroho', 'Ki. Suharso No. 462, Tasikmalaya 63160, Jabar', '(+62) 475 5086 0180', '1829036', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(100, 6, 'Restu Pertiwi', 'Kpg. Bappenas No. 170, Langsa 46332, Sulbar', '0740 9959 431', '507764', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(101, 18, 'Respati Wibowo', 'Jr. Gajah Mada No. 689, Bima 73198, Jatim', '0682 2423 4088', '2051892', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(102, 3, 'Wisnu Situmorang', 'Kpg. Moch. Toha No. 316, Blitar 90845, Malut', '(+62) 812 4443 272', '2365679', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(103, 9, 'Jarwadi Ajiono Wasita S.IP', 'Psr. Siliwangi No. 612, Gunungsitoli 92633, Banten', '027 9095 546', '635005', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(104, 10, 'Bagus Laswi Sitompul', 'Psr. Sukajadi No. 444, Salatiga 94032, Kaltara', '(+62) 609 5048 7458', '3181985', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(105, 3, 'Emong Adika Hutasoit S.IP', 'Gg. Soekarno Hatta No. 36, Batu 56080, Jabar', '(+62) 488 2976 726', '1919791', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(106, 12, 'Vera Purnawati', 'Psr. Bakau No. 919, Bontang 88584, DKI', '0804 1833 186', '1642473', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(107, 6, 'Zulfa Ika Hariyah S.H.', 'Dk. Dr. Junjunan No. 196, Pangkal Pinang 73184, DIY', '(+62) 415 6738 3543', '1725811', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(108, 8, 'Tri Taswir Wijaya S.E.', 'Kpg. Abdul Rahmat No. 101, Sibolga 40924, Sumsel', '0493 8414 9951', '3229741', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(109, 8, 'Eva Mulyani', 'Ds. Taman No. 979, Padangpanjang 24593, Kalbar', '(+62) 26 7870 3780', '443758', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(110, 15, 'Purwadi Candrakanta Manullang', 'Jr. Surapati No. 702, Ambon 27718, Jambi', '0203 1984 5765', '1859001', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(111, 17, 'Chelsea Susanti', 'Gg. Sudirman No. 699, Pematangsiantar 19855, Sumut', '(+62) 340 4235 883', '1413629', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(112, 7, 'Sari Rahmawati', 'Dk. Bakhita No. 139, Payakumbuh 74061, Banten', '0665 7301 0978', '3315482', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(113, 8, 'Jail Johan Simbolon', 'Psr. Perintis Kemerdekaan No. 165, Batam 49138, NTT', '0295 6960 1839', '2440470', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(114, 11, 'Laras Eli Widiastuti', 'Dk. Rajawali Barat No. 980, Pekalongan 59658, Maluku', '0845 6323 7701', '1588835', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(115, 11, 'Rika Kusmawati', 'Ki. Tangkuban Perahu No. 303, Bontang 48677, Sulsel', '0810 4928 908', '2622348', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(116, 9, 'Fitriani Aryani', 'Jln. Umalas No. 529, Tanjung Pinang 89446, Babel', '0963 6717 6913', '3486943', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(117, 15, 'Dalima Lailasari S.Psi', 'Jln. Rajawali No. 669, Manado 11972, Bengkulu', '(+62) 547 3552 0577', '2403294', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(118, 4, 'Kamaria Rahmawati', 'Psr. Perintis Kemerdekaan No. 316, Cirebon 36242, Riau', '0714 4614 559', '252918', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(119, 12, 'Zelaya Kuswandari', 'Kpg. Industri No. 238, Sibolga 56120, Riau', '023 0024 9961', '574654', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(120, 19, 'Dinda Mandasari S.Sos', 'Gg. Ekonomi No. 621, Magelang 32564, Jabar', '(+62) 411 4682 872', '2491032', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(121, 14, 'Kezia Lestari', 'Dk. Bambu No. 464, Pasuruan 81114, Kalteng', '0502 3440 3623', '2134251', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(122, 5, 'Nova Shakila Prastuti', 'Kpg. Yoga No. 296, Bandung 98910, Jatim', '(+62) 782 0506 891', '3224705', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(123, 3, 'Agnes Mardhiyah', 'Psr. Flora No. 213, Balikpapan 91857, Kaltara', '(+62) 724 9032 450', '1825921', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(124, 4, 'Salman Harsana Budiman M.TI.', 'Gg. Padang No. 898, Balikpapan 49122, Sultra', '0412 7676 0386', '1970096', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(125, 6, 'Luhung Maryadi', 'Kpg. Abdul Muis No. 702, Tanjungbalai 95309, Jatim', '(+62) 789 5981 523', '229828', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(126, 12, 'Tantri Hasanah', 'Kpg. Bah Jaya No. 999, Bandung 94164, Sulteng', '(+62) 891 8192 0871', '2933086', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(127, 5, 'Zulaikha Novitasari', 'Jr. Baan No. 274, Malang 46898, Jatim', '0437 4320 436', '3364115', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(128, 5, 'Chelsea Aryani', 'Ki. Elang No. 159, Banjar 36899, Papua', '0825 6572 722', '1520339', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(129, 8, 'Lukman Muhammad Hidayanto', 'Ds. Gambang No. 942, Kendari 83866, Banten', '(+62) 279 8955 5630', '2843649', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(130, 15, 'Calista Nurdiyanti', 'Dk. Tambun No. 914, Probolinggo 61232, Sulut', '0258 5346 3679', '1334321', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(131, 14, 'Sabar Kairav Halim S.H.', 'Ki. Abdul No. 76, Administrasi Jakarta Utara 66210, Maluku', '(+62) 749 3799 2456', '1593978', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(132, 17, 'Narji Rudi Adriansyah', 'Dk. Moch. Yamin No. 778, Sabang 36484, Sultra', '0516 6761 4710', '637072', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(133, 17, 'Wardi Narpati', 'Psr. Ciwastra No. 340, Singkawang 17853, Malut', '0908 4580 978', '3200598', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(134, 12, 'Vera Tari Hastuti S.T.', 'Ki. Salak No. 504, Solok 44736, Riau', '(+62) 938 5140 0681', '2729081', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(135, 2, 'Putri Safitri', 'Psr. Lada No. 576, Malang 49634, Maluku', '(+62) 993 0416 6499', '801176', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(136, 16, 'Gabriella Anggraini', 'Jln. Bata Putih No. 134, Lhokseumawe 14925, Bali', '(+62) 465 6120 203', '534980', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(137, 12, 'Jaiman Radit Damanik S.Ked', 'Ds. Barasak No. 870, Palu 57946, Maluku', '0496 5775 5289', '2080496', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(138, 12, 'Elvina Rahmawati', 'Gg. Raden No. 995, Blitar 45977, Gorontalo', '(+62) 857 614 915', '2843062', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(139, 17, 'Hamima Andriani', 'Jr. Kyai Mojo No. 518, Sabang 46597, NTT', '(+62) 246 9516 426', '3179543', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(140, 12, 'Gabriella Pudjiastuti M.TI.', 'Jr. Camar No. 126, Bogor 12352, Bali', '(+62) 901 8855 8639', '2027578', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(141, 17, 'Maya Utami', 'Ds. R.E. Martadinata No. 120, Langsa 53403, Bengkulu', '(+62) 565 2997 6582', '206028', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(142, 2, 'Clara Ratna Fujiati S.Sos', 'Dk. Otista No. 678, Mojokerto 25595, Kalteng', '0561 8987 968', '2753369', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(143, 5, 'Irma Paulin Nuraini S.H.', 'Jln. Zamrud No. 327, Subulussalam 92337, Sulteng', '0671 0680 463', '1962537', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(144, 18, 'Dalima Nasyiah', 'Psr. Ters. Pasir Koja No. 108, Metro 18209, Sultra', '021 7352 3248', '2559545', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(145, 13, 'Dono Prabowo', 'Psr. Achmad No. 92, Bukittinggi 29639, DKI', '0951 6198 2779', '2054709', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(146, 5, 'Diana Nurdiyanti S.H.', 'Jr. Baan No. 122, Administrasi Jakarta Barat 40608, Sumsel', '020 9293 545', '2712831', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(147, 17, 'Violet Padma Laksita M.Farm', 'Jr. Dipenogoro No. 584, Magelang 23486, Jambi', '0538 5174 910', '523665', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(148, 18, 'Rahmi Puspa Hasanah S.Pt', 'Dk. Casablanca No. 334, Sukabumi 85637, Sulteng', '(+62) 899 7798 9405', '268991', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(149, 8, 'Salimah Wahyuni', 'Kpg. Reksoninten No. 168, Solok 80732, Jambi', '0876 105 386', '2105549', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(150, 12, 'Tugiman Harsaya Mansur', 'Kpg. Katamso No. 232, Solok 79253, Jateng', '(+62) 418 9268 1206', '2046699', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(151, 5, 'Puput Winda Purnawati', 'Kpg. Tangkuban Perahu No. 263, Mataram 84374, Papua', '(+62) 702 4324 8835', '1985170', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(152, 13, 'Ina Shakila Yolanda', 'Ds. Nangka No. 504, Jambi 46498, Jabar', '0727 2977 2926', '115770', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(153, 13, 'Rahmi Rahmawati', 'Jr. Jayawijaya No. 527, Lubuklinggau 17760, Jateng', '0791 3340 115', '2484550', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(154, 16, 'Calista Handayani', 'Ds. Sentot Alibasa No. 936, Bitung 11141, DKI', '(+62) 24 2671 665', '1320554', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(155, 3, 'Syahrini Salwa Purnawati S.Kom', 'Dk. Labu No. 916, Tasikmalaya 43885, Riau', '(+62) 233 0587 6206', '1764434', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(156, 17, 'Natalia Halimah', 'Kpg. Baing No. 556, Pangkal Pinang 63205, Bali', '0832 927 537', '909993', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(157, 4, 'Asirwanda Hakim', 'Ki. Fajar No. 403, Palu 36370, Kalteng', '0793 0086 664', '3043409', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(158, 16, 'Wardaya Natsir S.E.', 'Ds. Radio No. 832, Administrasi Jakarta Utara 41487, Maluku', '(+62) 202 0702 264', '908182', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(159, 2, 'Humaira Zulaikha Nasyidah M.Pd', 'Kpg. Bahagia  No. 778, Lhokseumawe 61476, DIY', '(+62) 973 1949 796', '112083', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(160, 16, 'Oni Karimah Nasyiah', 'Gg. Ekonomi No. 365, Mataram 20416, Sumbar', '(+62) 265 0779 809', '3017841', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(161, 13, 'Yani Agustina', 'Jln. Pacuan Kuda No. 894, Administrasi Jakarta Selatan 14998, Papua', '0492 5973 166', '2178025', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(162, 17, 'Luis Prakasa', 'Gg. Bara No. 925, Langsa 17900, Jambi', '029 1245 7556', '1988828', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(163, 9, 'Rangga Harsaya Suryono', 'Jln. S. Parman No. 834, Solok 40660, Kepri', '021 4443 247', '1355068', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(164, 13, 'Faizah Hassanah', 'Psr. Eka No. 963, Mojokerto 37782, NTT', '0225 7961 907', '1458842', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(165, 5, 'Martani Tarihoran', 'Dk. Kyai Gede No. 557, Bekasi 61395, Sulsel', '0374 7181 240', '1057832', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(166, 4, 'Bakiman Santoso', 'Psr. Bagas Pati No. 694, Banjarmasin 18297, NTB', '(+62) 667 8853 248', '1145200', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(167, 7, 'Gilda Mulyani', 'Gg. Ronggowarsito No. 607, Administrasi Jakarta Selatan 54659, Banten', '(+62) 432 3506 753', '2892076', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(168, 3, 'Patricia Widiastuti M.M.', 'Dk. Abdul Muis No. 555, Pekalongan 74010, Kaltim', '(+62) 876 5587 8673', '3212732', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(169, 1, 'Ozy Ghani Ardianto', 'Ki. M.T. Haryono No. 312, Tangerang Selatan 38628, DIY', '(+62) 21 9885 3403', '2245987', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(170, 16, 'Rachel Melani S.Kom', 'Gg. Surapati No. 921, Madiun 88024, Kalbar', '(+62) 284 0453 6629', '3310527', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(171, 18, 'Surya Zulkarnain', 'Jr. Warga No. 719, Semarang 22568, Sulbar', '020 8154 7164', '2521143', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(172, 13, 'Iriana Dina Rahmawati S.Pt', 'Jln. Baiduri No. 344, Lhokseumawe 78027, Maluku', '0786 6541 4067', '1575532', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(173, 5, 'Muhammad Santoso', 'Kpg. Baing No. 266, Administrasi Jakarta Timur 99797, Bengkulu', '(+62) 526 4706 318', '3453503', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(174, 18, 'Agus Eja Pratama S.IP', 'Psr. Casablanca No. 365, Pasuruan 92073, Kalteng', '(+62) 829 7403 1749', '2965389', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(175, 3, 'Gilda Ellis Rahmawati S.I.Kom', 'Jln. Dipenogoro No. 890, Tual 58500, Kaltim', '(+62) 23 0182 0946', '839472', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(176, 11, 'Usyi Fitriani Kuswandari', 'Dk. Moch. Toha No. 319, Tebing Tinggi 51123, Maluku', '0618 0711 395', '1600639', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(177, 19, 'Aisyah Gilda Mardhiyah', 'Ds. Yos No. 134, Jambi 45817, Jatim', '(+62) 499 7836 3019', '118851', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(178, 13, 'Pia Safitri', 'Ds. Sutoyo No. 405, Banda Aceh 45885, Lampung', '0605 2521 9027', '390867', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(179, 7, 'Tari Yulianti', 'Gg. Moch. Toha No. 654, Medan 87714, Jateng', '0788 1566 4535', '343806', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(180, 9, 'Ella Hartati M.Pd', 'Gg. Baabur Royan No. 70, Administrasi Jakarta Timur 75343, Pabar', '(+62) 445 2672 3748', '2078741', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(181, 4, 'Lega Harimurti Mahendra M.Farm', 'Jr. Wora Wari No. 323, Bengkulu 71345, Riau', '(+62) 534 1661 9971', '612848', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(182, 7, 'Nasab Waluyo', 'Psr. Dipenogoro No. 252, Banda Aceh 77194, Babel', '028 3727 707', '321175', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(183, 12, 'Wawan Dipa Tampubolon', 'Jr. Bakau No. 67, Pekalongan 20367, Babel', '(+62) 329 4714 8425', '1252141', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(184, 15, 'Dirja Widodo', 'Dk. Ikan No. 841, Batu 55408, Riau', '0544 0674 2815', '258176', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(185, 2, 'Kamila Padmasari', 'Gg. Halim No. 47, Banjarmasin 93673, Sulsel', '(+62) 854 6303 8356', '3481790', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(186, 7, 'Imam Rajasa', 'Jr. Otista No. 105, Tual 61733, Lampung', '(+62) 20 1521 534', '915477', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(187, 2, 'Harsana Baktiadi Rajasa', 'Psr. Madiun No. 346, Pagar Alam 77085, Malut', '0868 2237 4933', '1289588', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(188, 8, 'Cakrabuana Tasnim Hutasoit', 'Dk. Cikutra Timur No. 716, Sabang 75075, Pabar', '(+62) 899 3120 659', '1110970', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(189, 1, 'Cornelia Gina Palastri', 'Jr. Pasirkoja No. 505, Tebing Tinggi 11032, Aceh', '028 8557 075', '2584697', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(190, 11, 'Halima Padmi Permata S.Pt', 'Jr. Cikutra Timur No. 691, Denpasar 56549, NTB', '(+62) 848 6080 720', '3148795', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(191, 17, 'Fitriani Nurdiyanti', 'Psr. Gotong Royong No. 303, Administrasi Jakarta Pusat 73763, Sulteng', '0317 1983 1955', '1230626', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(192, 7, 'Kawaca Raden Tarihoran S.E.', 'Ki. Otto No. 387, Palopo 76926, Jatim', '0899 0130 719', '2733514', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(193, 2, 'Ismail Santoso S.Farm', 'Gg. Raden No. 418, Pasuruan 18992, Sulbar', '0883 564 574', '2148454', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(194, 15, 'Sarah Lala Aryani S.Pd', 'Kpg. Laswi No. 347, Prabumulih 95942, Maluku', '0746 1502 860', '529310', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(195, 9, 'Fitria Halimah', 'Jr. Suharso No. 37, Probolinggo 40901, Kalsel', '0434 3943 4067', '182876', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(196, 2, 'Lurhur Edi Nainggolan M.Ak', 'Ki. Thamrin No. 196, Palopo 94810, DKI', '(+62) 586 2507 5352', '2872277', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(197, 15, 'Mila Bella Mayasari', 'Ki. Tangkuban Perahu No. 402, Tomohon 46671, Aceh', '0971 5307 7418', '2136554', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(198, 2, 'Ibrani Dabukke', 'Ds. Yos Sudarso No. 546, Cirebon 48572, Kalteng', '0714 2366 2377', '3072093', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(199, 18, 'Tina Gabriella Anggraini S.T.', 'Ds. Bacang No. 299, Tanjungbalai 21082, Papua', '(+62) 722 9745 201', '2686888', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(200, 6, 'Indra Taswir Tarihoran', 'Psr. Astana Anyar No. 742, Palopo 44869, Papua', '0970 0432 3562', '3135206', '1', '2022-05-05', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42');

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
(11, '2022_10_24_123702_create_set_static_page01s_table', 1),
(12, '2022_10_31_125032_create_Set_static_page02s_table', 1);

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
(1, 2, 1, 'Nostrum temporibus impedit qui magnam ut aliquam error.', 'ut-modi-magnam-optio-illum-architecto-quia', NULL, 'Voluptatum accusamus quia maiores perspiciatis perspiciatis doloribus. Excepturi nam consequatur magnam ut mollitia in veniam ut. Aspernatur inventore necessitatibus quaerat voluptatum deserunt sapiente. Quos architecto itaque veritatis cumque sunt ut voluptate.', '<p>Sed dicta repellendus aut iusto temporibus omnis veniam. Modi quod non in et.</p><p>Quis tempora vero exercitationem molestiae nihil quo. Quos laudantium sit ea aut ipsa odit. Fuga a ratione sed est. Pariatur reprehenderit eos quaerat labore eius quia sunt.</p><p>Voluptates modi optio quas sint quia ea doloremque nostrum. Qui est nesciunt nam esse. Similique aliquam dolores quasi occaecati quas fugit fugiat tenetur. Minima sapiente vero est consequatur harum. Perferendis sequi velit officiis debitis.</p><p>Aut omnis molestiae suscipit qui non recusandae quibusdam corrupti. Esse officia hic omnis quas velit saepe. Quisquam harum neque aut sint aperiam et laudantium. Sunt ut cumque velit minima voluptas et voluptatem.</p><p>Eligendi debitis maiores minima aperiam consequatur. Nostrum qui molestiae voluptas laboriosam.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(2, 1, 2, 'Facere cupiditate enim odit neque velit.', 'architecto-sint-qui-quisquam-suscipit', NULL, 'Et dolores iusto placeat consequatur. At officiis velit deleniti vero et non. Eos dignissimos voluptatum quaerat qui neque et. Quasi nobis reprehenderit repudiandae repudiandae. Fugit nobis natus quas enim.', '<p>Omnis atque voluptatum numquam neque iure totam. Voluptas repudiandae tenetur velit esse rerum consectetur blanditiis ea. Fuga dicta unde voluptatem explicabo veritatis in illo esse. Error qui provident eius quas voluptate voluptas consequatur. Magni magnam iste error aliquam omnis et eum.</p><p>Pariatur et deserunt magni perferendis eaque ea a. Minima aut rem consequuntur eius. Nulla quod est et minus ipsa occaecati. Qui cum quod dolores vitae labore in cum.</p><p>Quo aut facere dolorum necessitatibus aut. Est consequatur et natus. A repellendus veritatis veritatis ipsa ut minima. Quam quis inventore ea labore deserunt et adipisci.</p><p>Culpa voluptas suscipit nihil dolorem. Illum a ut recusandae facere ratione et. Est error odit incidunt.</p><p>Ut aut ut nihil voluptatem dolor. Modi possimus minus dolorem molestiae harum et. Ut aut quia dolore error repudiandae.</p><p>Et quas ut dolorum architecto laborum nam delectus. Perferendis porro aut cumque suscipit. Illo neque dolorem sint aut ipsam et nam. Sunt cumque nisi voluptates eligendi autem.</p><p>Aliquam voluptates pariatur in hic illum dolor eligendi. Dolore et architecto similique voluptate. Harum eos voluptates atque voluptatibus eaque qui nam.</p><p>Provident qui dolores quisquam sunt unde sit. Corrupti voluptas neque sint id necessitatibus accusantium accusantium labore. Et voluptas non vero praesentium mollitia iure rerum.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(3, 1, 1, 'Cupiditate alias.', 'et-aliquid-nulla-inventore-ut', NULL, 'Unde ipsum libero explicabo aliquid unde excepturi. Earum impedit rerum voluptatem. Sit animi et omnis consequatur dolorem omnis ratione. Totam veritatis adipisci sequi fugit occaecati ipsum. Voluptatem velit corporis et consequatur eos minima voluptas et.', '<p>Dolor eveniet et et. Sit cupiditate quia architecto repellendus. Cumque nihil voluptas et ipsa at in quidem omnis.</p><p>Eos ipsa et consequatur magnam laboriosam. Delectus ut recusandae accusantium eveniet eos. Veniam officia qui dignissimos facere non fugiat id sunt. Expedita illum excepturi debitis dolor inventore ad eius. Odio et quas reprehenderit harum quis voluptatem illum.</p><p>Mollitia quaerat harum ut sed et. Facilis quasi harum distinctio ipsum laboriosam quae dolorum.</p><p>Excepturi et placeat illo unde maiores placeat quod non. Eum est iusto culpa. Alias officia aut sunt ut sunt ea ex. Rerum illum consequuntur iure iste qui eligendi. Tempora sed repudiandae illo.</p><p>Debitis in eius quidem animi. Sed voluptatum qui consectetur et accusamus assumenda tempora. Animi eos et laudantium dolores ut. Voluptas occaecati quia quod aut provident ratione voluptate.</p><p>Ad explicabo quo aut ab veritatis quisquam in sunt. Est ut fugiat blanditiis et velit sequi veritatis consectetur. Tempore aliquid necessitatibus rerum voluptatem. Quia nemo enim deserunt aut qui.</p><p>Debitis pariatur sed vel. Libero aut eos ut voluptate qui. Non quisquam at quas suscipit ducimus ad. Dicta facere quaerat ipsam inventore laudantium corporis. Nisi magnam odit repudiandae omnis sint repellat quo laboriosam.</p><p>Distinctio non voluptates id ipsum minima. Adipisci nihil soluta magni. Quidem et nihil deserunt laboriosam. At nemo architecto consequuntur odio voluptas.</p><p>Aliquam sequi sunt ad minima. Illo dolorem exercitationem deserunt omnis. Quis adipisci facere tempora rerum illo quo ducimus.</p><p>Porro facere ex eum id. Harum quidem alias in.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(4, 1, 2, 'Libero rerum impedit at vel et tenetur.', 'voluptates-possimus-aut-qui-eos', NULL, 'Quae id culpa dicta omnis laborum voluptas. Quis ratione et reiciendis rerum. Voluptatibus ea voluptas qui numquam qui.', '<p>Voluptas in natus commodi corrupti quia. Occaecati esse quae molestias illo voluptatem vel eaque. Qui adipisci placeat ex incidunt dolores fugit. Eos est est iure et est dolorum tenetur.</p><p>Molestias sunt sapiente autem dolor nisi. Velit voluptas aut perferendis et exercitationem distinctio. Qui dicta qui totam.</p><p>Sit fuga fugit quo sint et repellat. Et ea earum sapiente id et velit. Eum architecto aut sequi tempore.</p><p>Voluptatem sit assumenda praesentium ut iure odit incidunt. Voluptas voluptas debitis nihil et est commodi sunt. Et provident ipsum sunt placeat. Nisi aut et eos.</p><p>Modi laborum eaque libero esse facilis quibusdam. Numquam qui cumque veritatis ut laboriosam. Ut blanditiis repellat accusantium expedita et dolorum.</p><p>Et adipisci et dolore enim. Sequi officia ut cupiditate molestiae suscipit rem ratione. Necessitatibus aut provident sunt sit dicta et quibusdam. Ab et enim amet dolores adipisci.</p><p>Autem hic minima deserunt molestiae eos consectetur quos alias. Nihil autem repudiandae distinctio illum aut asperiores. Cumque sed odio harum iusto sapiente optio aut.</p><p>Dolor ullam asperiores aut est quia et consequatur. Et praesentium sapiente ea et. Maxime eum incidunt esse ullam sit quis. Consequatur et ad expedita fugit id voluptatum. Ea at provident non.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(5, 1, 1, 'Enim eligendi est consequatur debitis sit molestiae reprehenderit.', 'blanditiis-consectetur-aut-doloribus-adipisci-voluptatibus-velit-ducimus', NULL, 'Vitae quibusdam et inventore aut reprehenderit quae voluptas. Et est qui repudiandae pariatur dicta. Non officiis non ut nostrum velit. Quibusdam officia alias qui incidunt exercitationem blanditiis est non.', '<p>Optio vitae quasi illum quas veniam veniam. Error doloribus eveniet esse aspernatur. Molestiae error aut accusantium sit et. Ut rem est commodi necessitatibus eveniet.</p><p>Illum officia eaque sunt. Et cumque ipsam cumque est maxime et nisi. Velit odio non rerum aut sunt dignissimos ut.</p><p>Quod est minus praesentium illum distinctio. Delectus rem quia ad et et sit animi. Sed voluptatum nihil quo dolorem.</p><p>Eos ab ut molestiae quisquam vel incidunt. Deleniti omnis suscipit animi occaecati eos maxime. Error qui odit quis exercitationem. Eaque qui officiis aspernatur et.</p><p>Ut voluptatibus et tempore est voluptatem tempore. Sequi ea aut sunt vel. Impedit neque quod ut veritatis ut est voluptatem.</p><p>Quaerat et amet et ea ab vel doloremque. Consequatur vitae delectus perspiciatis corporis architecto iste cum. Harum non et sit est est rerum.</p><p>Ducimus illo ut perspiciatis soluta consequuntur saepe dolorem incidunt. Soluta dolorem repudiandae cum ut ipsa. Quod architecto rerum autem modi odit neque. Consequuntur tempora facilis voluptatem odio.</p><p>Quisquam iusto commodi dicta quos iste sit ipsa eligendi. Ut aut quia voluptatem quia aut et. Ducimus quos amet tempore exercitationem.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(6, 2, 3, 'Et et illo veniam sed suscipit accusantium.', 'reiciendis-a-explicabo-et-reiciendis-ut-et-voluptatibus', NULL, 'Rerum aliquam numquam aut veniam ut aut. Omnis qui aut ut et. Quisquam fugit eaque dolore ut sit ipsum perferendis occaecati. Recusandae dolore atque at.', '<p>Adipisci autem magnam est nulla autem et distinctio ipsum. Error necessitatibus et et nobis numquam rerum quidem velit. Voluptatem ipsa voluptatem qui a quae.</p><p>Aliquam nihil et assumenda dolore nulla. Hic enim voluptates nam. Facere quisquam tempore voluptatum adipisci in voluptatem. Pariatur tempore officia magnam officiis non reprehenderit.</p><p>Reiciendis quas tenetur repellendus possimus. Minus est ut molestiae iste aut provident. Praesentium occaecati eveniet hic consectetur eos sed.</p><p>Ea ab asperiores ut iure dolor dolores. Totam debitis cumque qui perspiciatis ut voluptas sint. Esse doloremque repellat illo in quia ea. Labore voluptate nesciunt ipsam et ut earum consequatur.</p><p>Et non voluptas dolores voluptas. Laudantium id eum quo aut neque et voluptas. Facilis illum in placeat eum.</p><p>Corporis itaque dolor expedita beatae accusamus earum repellat. Quia qui autem sunt reprehenderit.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(7, 1, 1, 'Fuga laudantium dicta dicta autem cupiditate error nesciunt.', 'ut-maiores-molestias-rerum-placeat-sed-ducimus-veritatis', NULL, 'Soluta asperiores nesciunt itaque enim et. Sunt corporis asperiores laudantium et occaecati. Magnam repellat eius ad sed eligendi sequi. Esse minima fuga neque voluptas voluptatem atque ea. Veritatis et assumenda alias maiores quam.', '<p>Assumenda ut tempora fugit. Et blanditiis in rem fugiat consectetur beatae. Laborum id sunt esse est facilis fugiat. Consequatur illo rerum neque eius id dolorum quia quisquam. Dolorum eligendi sed iusto temporibus corporis neque cupiditate dignissimos.</p><p>Totam deserunt non rem cumque vel aperiam veniam eos. Atque veritatis sit enim vitae sit voluptatem earum. Amet ut id sit.</p><p>Aut repellendus nobis quia porro voluptatem. Maiores et quos eligendi cumque impedit. Quis autem perspiciatis quasi illum qui repellendus autem.</p><p>In eos in distinctio dolor. Quo sed ratione numquam. Totam illo nostrum fuga occaecati cum quasi. Explicabo ex excepturi quaerat dolor laborum non aut.</p><p>Adipisci labore aut fugit et. In est velit cum necessitatibus est natus in. Rem hic rerum vel est. Praesentium consequatur eos cupiditate ea reiciendis. Non fugiat voluptatem minima dolores.</p><p>Ut est voluptatum ut doloremque et amet officiis repudiandae. Est nobis rerum consequuntur quia iste occaecati. Molestiae quaerat consequatur voluptatum voluptatem.</p><p>Eum nihil nemo vitae temporibus. Officiis consequatur est voluptas aspernatur id. Vel dolor omnis pariatur est.</p><p>Ratione quasi tempore voluptate exercitationem nobis voluptatem. Nobis excepturi quis nobis odio. Est ut sit quidem. In fugit dolorum voluptas aut quisquam dignissimos. Ab minus consequuntur et excepturi consequatur.</p><p>Dolor et asperiores excepturi quae. Nisi ut in consequatur. Modi corporis quos enim repellat aspernatur.</p><p>Mollitia dolor quibusdam quia modi officiis assumenda. Fuga rem aut deserunt totam est iste. Nisi consequuntur nisi non.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(8, 1, 1, 'Dicta vel eligendi necessitatibus.', 'ex-exercitationem-accusantium-unde-at-qui-eveniet', NULL, 'Beatae reprehenderit harum vel. Velit soluta officiis aut perferendis debitis fugiat aut expedita. Tempora nulla debitis molestiae nemo sit.', '<p>Ut repellendus cumque sunt et culpa et molestiae nobis. Voluptates in minus quam aut. Aperiam mollitia qui quae iure dolorem veritatis eaque.</p><p>Incidunt in voluptas a aut velit officiis. Ducimus dolores velit sed magnam nostrum unde. Et repellendus omnis et nulla veritatis cupiditate consequatur.</p><p>Cumque enim veritatis iusto id expedita ipsam sapiente. Aut ratione harum neque distinctio voluptas omnis.</p><p>Autem corporis beatae doloremque et vitae quo. Et sit dolor doloremque laborum. Doloremque aut eum minima necessitatibus dolorem possimus. Rerum consequatur sit sed ea voluptates architecto. Ducimus sed necessitatibus nam minus saepe non sed incidunt.</p><p>Pariatur magni et ut incidunt. Officia repellat sit cupiditate qui. Doloremque ratione nemo doloribus iusto est. Maiores vitae eaque provident consequatur sequi sit. Reiciendis aspernatur corrupti ea officiis distinctio accusamus sit.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(9, 2, 2, 'Optio quam non quo aliquid.', 'voluptas-hic-rem-ratione-reprehenderit-alias-doloribus', NULL, 'In officia libero non. Ut quo in sit dolorem vel debitis deleniti. Magni qui consequatur nam qui id.', '<p>Ea non expedita minus quibusdam. Ut doloremque enim aut possimus distinctio.</p><p>Consequuntur reprehenderit consequatur debitis qui. Alias sapiente quo veniam est quaerat unde. Nostrum dolorem est dolorem beatae incidunt.</p><p>Earum accusantium voluptatem eius voluptate qui. Est praesentium magni assumenda voluptate eum laboriosam ut. Nihil dolor temporibus id nesciunt quia. Provident aspernatur non est sit libero sit quasi.</p><p>In tenetur voluptatem blanditiis impedit. Tenetur dolores sed qui provident non adipisci. Perspiciatis omnis non debitis earum possimus aut ducimus aut. Porro harum qui debitis tempora aliquid id et.</p><p>Provident delectus earum est quo. Qui dolor et nihil neque. Aut rerum dignissimos illum et laboriosam. Voluptatem nam quae dignissimos sed est deleniti sed. Ea optio mollitia aliquid nisi omnis et.</p><p>Culpa odit at inventore vero et rerum ea et. Omnis eum quisquam voluptatem dolorem molestiae. Laborum est ut perferendis labore minus perferendis.</p><p>Nam amet explicabo quia blanditiis suscipit totam deserunt repellendus. Eum illum qui quasi accusantium iure tempore cum. Odio rerum quisquam deleniti id. Ad perspiciatis enim ut.</p><p>Tempore nobis et repudiandae fugiat optio amet. Odio minus cupiditate aut atque. Qui corporis molestiae ratione mollitia aspernatur ut eum.</p><p>Sint et porro cumque alias ut vero. Ullam sit et beatae optio sequi quidem voluptatibus repellat. Hic labore et qui non laudantium deleniti maiores. Aperiam vel fugit et est.</p><p>Accusantium ex qui asperiores alias. Architecto modi qui eligendi molestiae cupiditate. Porro debitis cumque et a consectetur. Facilis ipsa repudiandae in eum nisi aut dicta.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(10, 1, 3, 'Voluptatem quis est facere nihil qui.', 'fugiat-maiores-a-tempore-dolor-laboriosam-eos', NULL, 'Vero dicta non perferendis quis omnis voluptatem. Aperiam reprehenderit veritatis est iusto. Eum ut nisi ipsa et dicta eligendi. Accusamus est occaecati aut qui.', '<p>Aliquam qui consectetur harum dolorem hic. Aliquam officia cum voluptatem.</p><p>Alias labore corrupti itaque qui delectus. Ut porro et minima rem. At voluptatem placeat ut perferendis dicta ut.</p><p>Ullam omnis accusantium aut reprehenderit non. Dolorem magni sed qui id et. Et ut aut tenetur minus. Dolor doloribus sed tempora.</p><p>Corporis repudiandae praesentium quo. Consectetur vitae soluta in iusto. Ipsam officia rerum dicta quasi. Minima harum et quidem cupiditate quod.</p><p>Dolores omnis omnis omnis deserunt aut ipsum dolore atque. Eos unde aspernatur sequi sunt. A distinctio minus dignissimos corrupti. Sit qui nulla totam itaque. Molestias enim perferendis enim laudantium vel autem.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(11, 2, 2, 'Quis et.', 'ad-esse-voluptatem-vitae-voluptatibus', NULL, 'Ab ut quis et nobis rerum at. Doloremque assumenda delectus cupiditate dolore. Est aut ducimus a nihil quae similique ipsam. Magni aspernatur quia est corporis minus.', '<p>Molestiae voluptatum autem tenetur reiciendis adipisci repellat. Eum molestiae sed dignissimos nobis totam. Ad quis minus dicta eum.</p><p>Neque ab iusto sapiente rerum voluptas consequatur. Sit modi hic cumque nesciunt quasi illo fugit. Sint earum quia a. Autem ipsa et voluptatem perspiciatis ipsa.</p><p>Impedit id totam animi distinctio rerum. Voluptatibus harum et perferendis molestias quibusdam doloremque. Ex sunt est aut quos aliquid. Quam officia dolorem quae aspernatur autem consequatur.</p><p>Voluptatem dolor molestias reprehenderit aut impedit. Labore qui omnis corporis sed. Sapiente quis autem consequatur voluptatem quam voluptas. Doloribus velit dolores tenetur dignissimos.</p><p>Deserunt nesciunt quia odio iusto. Qui at similique ut quasi inventore rerum officia. Delectus accusantium non occaecati consequatur.</p><p>Hic eveniet illum officiis explicabo. Velit minima quam accusamus. Velit hic ut eum cupiditate accusamus vel dolore omnis.</p><p>Amet neque voluptas error voluptates reprehenderit nihil. Velit tenetur tempora veniam nisi perferendis magni est.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(12, 2, 3, 'Quia nam voluptatem.', 'sapiente-dolor-dolor-consequuntur-ducimus-labore', NULL, 'Harum quae quam ut. Porro explicabo iusto asperiores accusamus. Sit aut similique porro laboriosam. Omnis minima facere ut eveniet fuga in optio.', '<p>Quisquam fugit libero fugiat cumque. Consequatur praesentium rem consectetur nemo ipsam.</p><p>Dolore repudiandae dolor id. Est reiciendis nemo nemo recusandae id. Similique et aut molestiae cupiditate. Fugiat voluptatem placeat praesentium quasi ut exercitationem est voluptatem. Et modi voluptatem dolorem sit nihil.</p><p>Qui enim animi vitae magnam expedita. Ut hic minus voluptatibus ut. Nisi repudiandae nisi eum nostrum ut quidem. Placeat nostrum inventore excepturi beatae ea.</p><p>Molestiae vero eum ullam sapiente aliquid porro officia. Maxime delectus culpa illo quae quasi impedit quas. Qui et et quod expedita molestias dolorem occaecati.</p><p>Numquam magni repudiandae nulla. Sunt error animi nihil autem nihil voluptatem. Optio autem et quod saepe suscipit et cum.</p><p>Expedita quia voluptas voluptas optio voluptate accusamus. Non eos ratione natus reprehenderit culpa. Odit enim earum praesentium dolore porro distinctio.</p><p>Porro magnam molestiae eum eius et accusamus. Eos voluptas rerum culpa quae est. Nobis qui ea doloribus qui doloremque tempora dolorum. Et odio et quisquam voluptate deleniti est. Quo molestiae ad et incidunt consectetur quisquam quaerat sit.</p><p>At quam optio nihil. Quia provident quis distinctio neque.</p><p>Et a sed corrupti. Quo repellendus odit omnis voluptas. Eaque totam quam animi est minima accusantium aut.</p><p>Tempora et esse nisi numquam. Et praesentium quia velit placeat. Minus nam ex veniam modi. Repellendus qui qui quis.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(13, 2, 3, 'Voluptas distinctio est temporibus minus eos est placeat quasi.', 'consectetur-qui-unde-sit', NULL, 'Et atque harum reprehenderit voluptatum facere recusandae. Perferendis optio et ipsa. Quidem expedita fuga sed dolorem quo voluptatem in.', '<p>Nihil perferendis nostrum velit omnis. Earum et consequatur molestias. Temporibus ut aliquid aliquid ut omnis sunt fugiat sint.</p><p>Dolores aut voluptatem qui labore corporis sint. Necessitatibus voluptatum consequatur labore culpa nihil quae. Maxime quis necessitatibus tempora et. Dicta id error in culpa veritatis.</p><p>Qui accusantium fugit blanditiis amet qui et. Modi sed dolores dolore voluptatem. Velit omnis magnam sed aperiam laboriosam sed fugiat facilis.</p><p>Magni molestiae dolor vitae qui. Soluta sed quae et iure sit quibusdam. Pariatur ratione est sint autem error et. Ipsa minima sapiente odit rerum eos totam nulla.</p><p>Sit est distinctio sit. Eum ratione repellendus et est voluptatem quis. Quas sed ex maiores.</p><p>Odit natus facere minima veniam odit dolores beatae. A consequatur eum numquam perferendis laboriosam architecto. Atque impedit et qui enim aspernatur. Aut et omnis illo aut odit. Voluptas veniam optio enim quibusdam.</p><p>Autem non qui nulla enim qui id assumenda. Esse quia possimus consequuntur animi molestiae consequuntur. Corrupti itaque animi quia impedit accusantium commodi aut. Incidunt sit dolor vero ullam expedita quis in.</p><p>Eligendi exercitationem doloremque deleniti itaque vel quis nihil. Odit et nihil adipisci qui nobis.</p><p>Est accusantium est sint eos deserunt hic. Libero dolorem quisquam minima consequatur. Est magni non sequi harum aliquam illo. Laudantium culpa eos eos perferendis. Facilis et ipsam nulla recusandae.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(14, 2, 2, 'Quia et laborum.', 'et-doloribus-eum-facere-sequi', NULL, 'Repellat cum sunt sapiente vitae molestiae ducimus. Et expedita quidem et sed. Laborum expedita facere aut eligendi quia voluptates laboriosam.', '<p>Et eos rerum quod culpa recusandae porro. Placeat nostrum ipsam autem aut. Saepe quas qui rerum provident.</p><p>Nihil similique eveniet molestiae occaecati libero. Ipsum atque deleniti eligendi odio harum dolor delectus explicabo. Rem animi facilis incidunt et quasi corporis. Reiciendis aut error voluptas qui aut libero voluptates.</p><p>Quam aut minus hic est molestiae. Autem delectus sit voluptas error est. Iure explicabo molestiae aliquam et quia dolores quo.</p><p>Est eum qui et explicabo consequatur quo. Corrupti non minus modi qui quibusdam cum. Voluptas ipsum itaque voluptatem velit commodi dolor et.</p><p>Suscipit harum qui placeat ut ut ea qui. Ut consectetur pariatur quasi tenetur impedit nihil. Adipisci quam distinctio ipsum commodi nihil. Harum omnis qui minima sit autem aliquam beatae autem. Quo cupiditate animi est architecto sed quam animi quibusdam.</p><p>Sit veniam et quia autem. Odio omnis ut nam quo. Expedita eum deserunt perspiciatis minus. Architecto facilis voluptatum sint beatae hic.</p><p>Libero quis id consequatur consequatur veritatis autem enim. Rem nobis recusandae sit est. Reiciendis aut et est.</p><p>Vitae id aperiam cumque et dolor. Qui dicta aut rem enim dicta molestias in numquam. Perferendis incidunt neque et saepe voluptatem pariatur blanditiis. Magnam sed laborum illum animi fuga exercitationem quibusdam vel.</p><p>Ratione qui ut dolorum sunt quae. Velit animi sunt sit repellendus dolor et. Est temporibus hic nihil et similique.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(15, 2, 1, 'Quam voluptas.', 'vitae-molestias-architecto-facilis-sequi', NULL, 'Officia eaque dolores non. Officia voluptatum molestiae iure debitis enim qui aspernatur earum. Dolorem omnis ipsam aut enim eveniet deleniti. Quia voluptatem corrupti cum esse et eligendi ipsam. Quas et numquam eius modi est nihil.', '<p>Tenetur vel ipsam illum molestiae molestiae consectetur quia. Distinctio incidunt atque nobis magni saepe occaecati. Eum est alias quod non sunt repellendus ex. Eum dolorem aut nobis est omnis praesentium. Totam voluptas maiores nam omnis.</p><p>Qui ut quo illo id fuga sit dolores dolores. Laborum quidem recusandae mollitia voluptatem quidem expedita rem.</p><p>Sit numquam fugit maxime id excepturi autem quia. Maiores cupiditate nam et ratione molestiae doloremque sunt. Dolor libero iste illum voluptas ut nihil voluptatibus. Neque vero sint magnam nulla ut distinctio.</p><p>Fuga delectus reiciendis nesciunt doloribus voluptas ab itaque. Occaecati necessitatibus odit ea non exercitationem. Dolor ut quam asperiores voluptate tenetur eaque.</p><p>Voluptates delectus consequatur dolores minus ea ut tempore. Eos adipisci ea consequuntur et fugiat facilis itaque. Impedit illo totam vel sapiente et sed.</p><p>Sunt quo et voluptatem laudantium voluptates adipisci. Dolorem minus dolore nostrum voluptate dolor. Quis odio blanditiis ut tempore quam quo repellat.</p><p>Aut atque at aliquid veritatis. Sed deleniti est adipisci ad expedita. Eum officiis repellendus omnis ut ut. Debitis maxime voluptatem rerum officiis nesciunt qui. Ut ipsam nostrum tenetur fugit voluptatem ullam.</p><p>Ea eum sed harum fugiat dolor possimus. Expedita esse doloremque porro et sit quam nam deserunt. Non harum quo culpa esse qui veritatis.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(16, 2, 1, 'Error ut eaque nihil aut mollitia.', 'totam-omnis-perspiciatis-aut-aliquam-nam-nisi-ea', NULL, 'Molestiae animi sed inventore non. Voluptatem qui omnis rerum minima. Enim perspiciatis nostrum ab non quaerat temporibus odio.', '<p>Voluptatem occaecati omnis tempore impedit vel perspiciatis odio. Occaecati voluptatem quam itaque provident ducimus est. Quasi excepturi provident alias. Voluptatem rem mollitia vitae minima et nihil. Aut aspernatur dicta aut eaque tempore est.</p><p>Consequatur totam sed maiores voluptatem nisi ut expedita. Libero exercitationem eaque laborum. Occaecati quis quod tempora optio et sit quae aut. Perspiciatis cum sunt vitae id.</p><p>Dolore aut et impedit voluptatum. Blanditiis consequatur sed in sunt sunt ut illum eaque. Doloremque autem est et enim delectus et perspiciatis. Ea delectus ad eos est occaecati pariatur asperiores dolor.</p><p>Est reprehenderit culpa ut doloremque. Est aut tempore autem quas. Impedit ipsa voluptatum laborum commodi at libero nesciunt. Odit repellat velit dolores vel fugiat incidunt officiis veniam.</p><p>In cumque reprehenderit quia suscipit iusto qui quia iure. Minus aut in aut ea sed dolorem dignissimos. Quasi delectus vel repellendus maxime.</p><p>Dolor mollitia voluptatum cumque itaque pariatur. Rerum repudiandae id veritatis id. Dolor accusantium iure aut culpa inventore qui id. Est maxime quisquam provident rerum in hic aut at.</p><p>Qui facilis et ea commodi voluptatibus deleniti explicabo. Quia deserunt pariatur totam. Id beatae fugiat minima quia laborum. Facere culpa voluptatem quia nam dolor mollitia.</p><p>Voluptatem dicta officia harum eaque nihil quis eos. Voluptas expedita soluta natus architecto esse eius eos. Ut maxime dolorem sapiente delectus.</p><p>Libero ut accusantium dolores expedita distinctio sit. Mollitia recusandae labore quibusdam laborum. Et ut deserunt qui labore.</p><p>Laboriosam consequatur hic facilis officia sint veniam. Ea velit omnis quibusdam excepturi. Nostrum eveniet impedit quia quia reprehenderit nihil molestiae voluptatem. Explicabo neque doloremque enim totam.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(17, 1, 2, 'Consequatur sit reiciendis commodi aut corrupti qui deserunt.', 'deleniti-omnis-omnis-ut-illo', NULL, 'Quod autem nostrum excepturi ratione quia omnis. Dolor quo magni magni quisquam ipsum ut optio. Mollitia doloremque animi repellat et error et. Ut sunt et voluptatem est expedita saepe.', '<p>Velit non et temporibus reprehenderit consequatur debitis. In iusto voluptas illo cupiditate. Ut dolore laudantium accusamus sit suscipit.</p><p>Excepturi minus magnam dolorem at rem laudantium dolorem. Veniam quis iste iure nam. Pariatur non illum consequatur pariatur laboriosam est qui. Nobis nam enim nobis natus qui.</p><p>In accusamus et aut autem in sit perferendis. Sunt consequatur et similique quibusdam provident soluta ea ad. Ipsam laboriosam sit aut aliquam. Aut et velit velit quae id.</p><p>Voluptatem odio porro minima. Distinctio temporibus ut minima in voluptate eos veniam fugit. Illum blanditiis sapiente dolorem ipsam odit. Qui eveniet voluptas quae amet consequatur.</p><p>Omnis qui officia autem. Porro illo ut eaque harum vel ut culpa. Autem dolorum cum iure quo pariatur similique.</p><p>Qui voluptatem explicabo velit quas nihil quia exercitationem. Ab dolores autem ut soluta. Non doloribus voluptatem excepturi eum autem incidunt. Hic facere et et sunt.</p><p>Eaque corporis ex eum minima et. Voluptatem aut ratione qui. Enim eligendi eveniet consequatur et. Repellat aut consectetur eveniet autem voluptatem error at.</p><p>Libero eveniet dolor eligendi consequatur non. Quasi nam et ipsum voluptate facilis. Minus quidem iusto neque repellendus.</p><p>Laudantium quia vel ut ipsa odit amet iure dolorem. Possimus distinctio maiores quod qui et. Aut alias dolor eum id temporibus consequatur.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(18, 1, 3, 'Quis officiis dignissimos.', 'ipsam-aspernatur-molestiae-aut-consequuntur-qui', NULL, 'Deleniti qui sunt iure rem fuga libero ad. Error assumenda voluptatem voluptatem optio est accusantium ut. Cum facere commodi consequatur pariatur possimus quia. Beatae dolor sapiente corporis qui vero.', '<p>Sit sed quaerat aliquid unde blanditiis repellat ut. Et nesciunt asperiores non sunt eum error sed. Exercitationem incidunt maiores autem praesentium ad. A omnis qui labore ut.</p><p>Et exercitationem nobis vel rem. Nisi unde quia qui asperiores et dolorem ex. Dolorum esse architecto accusamus. Ut enim in quia beatae est voluptatem.</p><p>Labore ut velit blanditiis ut et. Molestias et nulla perferendis vero. Rem quam eius est eligendi laborum est. Aut et odit perspiciatis earum et officia.</p><p>Et enim qui quis mollitia totam quibusdam. Sit distinctio dolorum qui maxime a occaecati ipsum. Consequatur quod doloremque iste neque odit magni. Et consectetur commodi earum id est.</p><p>Quia voluptatem non dicta dolor quaerat sed rem velit. Consequatur aliquam facere omnis unde quia vero eum vero. Optio excepturi quia praesentium nesciunt consequatur ut sed similique.</p><p>Reiciendis consectetur est autem impedit omnis at velit. Iure et ut qui omnis.</p><p>Voluptatum quibusdam et cum pariatur quis ut et. Fugit nihil totam iusto ut. Aut accusamus ab fugiat omnis nam est exercitationem perferendis.</p><p>Occaecati dolores magnam similique beatae soluta. Odit pariatur harum est corporis cum enim. Odit cum excepturi repellendus iusto id rerum. Doloremque facere non blanditiis et eius unde.</p><p>Aut amet nulla voluptatibus voluptatibus. Sunt mollitia ad eligendi et facilis cumque voluptates. Aut ut nihil modi.</p><p>Natus provident distinctio facere magnam esse. Est provident quo commodi beatae ipsa. Expedita dolorem magnam dolor et. Aut rerum qui et corrupti dicta.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(19, 2, 1, 'Tempore ut culpa esse ut sit.', 'cumque-eum-unde-incidunt-maxime', NULL, 'Debitis vel deserunt molestiae expedita itaque occaecati rerum tenetur. Ut blanditiis aut inventore fuga. Maiores velit aliquam hic.', '<p>Error eum beatae rerum aut expedita voluptatum labore ut. Deserunt non ut aspernatur et in. Ut eveniet atque voluptates quam aut qui.</p><p>Possimus molestiae quas ut vitae. Ad beatae id minima earum harum. Dolorem libero a aut eum est saepe consequatur.</p><p>Eum excepturi ullam praesentium. Itaque in iure sed natus doloremque. Perferendis eveniet error placeat itaque natus.</p><p>Officia earum rem dolore voluptatem eos unde. Occaecati nostrum veniam qui sequi.</p><p>Labore ex sed ut architecto in eligendi ut laboriosam. Reiciendis sunt repudiandae omnis est est quasi porro nostrum. Aut sed consequatur vel qui veniam ut et.</p><p>Ullam sed dolores at quia impedit. Animi dignissimos perspiciatis explicabo deleniti.</p><p>Eveniet nemo officia distinctio et eligendi praesentium. Quis laboriosam ex repellendus quibusdam corporis. Qui ut est aspernatur.</p><p>Eaque rem nostrum velit temporibus architecto et. Recusandae consequuntur omnis explicabo cumque. Magnam rerum nulla error porro pariatur voluptas. Inventore quis rem nobis accusantium aut.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42'),
(20, 1, 2, 'Veritatis velit vel expedita libero.', 'est-quisquam-ex-consequuntur-occaecati-sed-cumque-quia', NULL, 'Qui qui quidem sint nulla nihil quas aut. In nisi laboriosam ea eum rerum. At exercitationem in expedita et vero. Sit aut velit dolorem possimus odio.', '<p>Laudantium animi vel beatae qui. Fuga qui vero ullam similique autem quasi earum. Sed eum id expedita corporis quia sed ipsa ratione. Beatae minus minus deserunt rerum minima.</p><p>Id excepturi ipsam voluptatem error aut qui. Sit voluptate cumque tempore et voluptate rem a nihil. Quas aut ea quia dolorum enim fugiat id explicabo.</p><p>Possimus sint quaerat dicta aperiam. Sunt ut ratione nisi. In temporibus voluptates qui reiciendis consequatur officiis illum.</p><p>Aut nobis et est. Delectus provident quis voluptates aut dolorum fugiat saepe. Fugit adipisci at eaque.</p><p>Itaque aut voluptatem esse. Nihil et et recusandae optio. Ut illo quo animi harum rem. Deleniti eius molestiae fuga sunt ea.</p><p>Commodi sit velit accusamus tempore ut. Tenetur accusantium et minus. Rem corporis incidunt aut dolores. Numquam omnis non placeat amet ea qui.</p><p>Nulla optio officia aspernatur provident nemo ab repudiandae. Facilis id dolores maxime assumenda et. Voluptatem eius qui est et. Repudiandae aut aliquam doloremque veritatis et.</p><p>Quaerat exercitationem nemo qui perferendis quo. Provident a ab adipisci consequatur quasi.</p><p>Vitae ut ab necessitatibus. Odit consequatur vel quasi laboriosam fuga expedita voluptatem. Sed rerum excepturi iste doloribus reprehenderit.</p>', NULL, '2022-11-08 05:27:42', '2022-11-08 05:27:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_static_page01s`
--

CREATE TABLE `set_static_page01s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `set_static_page01s`
--

INSERT INTO `set_static_page01s` (`id`, `created_at`, `updated_at`, `title`, `subtitle`, `body`, `image`, `caption`, `navigate`) VALUES
(1, '2022-11-08 05:27:42', '2022-11-08 06:44:44', 'PROFIL', 'Pondok Pesantren Markaz Zaid bin Tsabit Radhiallahu’anhu', '<div>Pondok Pesantren Markaz Zaid bin Tsabit berdiri sejak bulan Dzulqo’dah 1436 H, bertepatan dengan bulan September 2015 M. Pondok Pesantren ini Adalah lembaga pendidikan islam yang memfokuskan kegiatannya pada pembinaan dan pengajaran dibidang Al Qur’an dan Bahasa Arab yang telah mendapat SK Kemenag Nomor : 3291/Kk.11.34/5/PP.00.7/09/2017 dan berada dibawah naungan Yayasan Zaid Bin Tsabit Radhiallahu’anhu dengan Akta Notaris Lies Andriani, SH. Nomor 14 Tanggal 20 Mei 2016 dan SK Kemenkumham RI Nomor AHU-0026.185.AH.01.04 Tahun 2016.<br><br></div><div><strong>Visi : </strong>Sebagai lembaga pendidikan Islam yang memiliki keunggulan dalam program tahfidz Al Qur’an dan program Bahasa Arab.<br><br></div><div><strong>Misi : </strong>Menyelenggarakan pendidikan dibidang Al Qur’an dan mencetak guru-guru Al Qur’an serta mengembangkan proses pembelajaran dengan metode dan sarana modern.<br><br></div>', 'static-page-images/jumbotron1.jpg', 'Image captions here', 'Beranda -> Profil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_static_page02s`
--

CREATE TABLE `set_static_page02s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `set_static_page02s`
--

INSERT INTO `set_static_page02s` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'static-page-images/fvwI8fwoRyk3GdSWAylz0J9PI2Pu7TkQoTu5xyrE.jpg', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', '2022-11-08 05:27:42', '2022-11-08 06:31:25'),
(2, 'static-page-images/z46ubM8DcX8z6lHedOUIvdrOpaiYbK1uaJQuRF4G.jpg', 'This is a wider card with supporting text below as a natural lead-in to additional content.', '2022-11-08 05:27:42', '2022-11-08 06:32:11'),
(3, 'static-page-images/qdysEzinBcvHbIpVx8g7VDgFOSjuuQJGP3IE5JAd.jpg', 'This is a wider card with supporting text below as a natural lead-in to additional content.', '2022-11-08 05:27:42', '2022-11-08 06:32:43'),
(4, 'static-page-images/xQK5A7UMhU94HD7cEcxjxuZeVQ2PSoLtpmQW5m41.jpg', 'This is a wider card with supporting text below as a natural lead-in to additional content.', '2022-11-08 05:27:42', '2022-11-08 06:33:06'),
(5, 'static-page-images/yxd89hzik5cIREUaLxJeHhjntphjMzi9ewAsPQMI.jpg', 'This is a wider card with supporting text below as a natural lead-in to additional content.', '2022-11-08 05:27:42', '2022-11-08 06:33:22'),
(6, 'static-page-images/GgXHvOaAuydSfJOt7DybuQecKotMTzkIXfTAtldX.jpg', 'This is a wider card with supporting text below as a natural lead-in to additional content.', '2022-11-08 05:27:42', '2022-11-08 06:33:58');

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
(1, '2022-11-08 05:27:42', '2022-11-08 05:27:42', 'Investasikan Segera Harta Anda Sebagai Bekal di Akhirat Kelak Dengan Program Wakaf Tunai Pembangunan', '\n            <blockquote class=\"blockquote my-4\">“Perumpamaan (nafkah yang dikeluarkan oleh) orang-orang yang menafkahkan hartanya di jalan Allah adalah serupa dengan sebutir benih yang menumbuhkan tujuh bulir, pada tiap-tiap bulir: seratus biji. Allah melipat gandakan (ganjaran) bagi siapa yang Dia kehendaki. Dan Allah Maha Luas (kurnia-Nya) lagi Maha Mengetahui.”\n            (QS. Al Baqarah: 261)</blockquote>\n          <blockquote class=\"blockquote my-4\">“Jika seseorang meninggal dunia, maka terputuslah amalannya kecuali tiga perkara (yaitu): sedekah jariyah, ilmu yang dimanfaatkan, atau do’a anak yang sholeh”\n            (HR. Muslim no. 1631)</blockquote>\n            <h3 class=\"mb-4\">Wakaf itu Mudah dan Pahalanyapun Melimpah</h3>\n            <p class=\"mb-4\">Wakaf adalah amalan sedekah yang bersifat jariyah, meski usia terputus pahalanya mengalir terus menerus selama barang atau benda yang diwakafkan itu masih berguna dan bermanfaat. Selain mendapatkan bonus pahala mengalir di akhirat, muwakifpun akan mendapatkan keberkahan di dunia berupa keberlimpahan harta, jiwa yang bersih serta kebahagiaan yang tidak terputus karena muwakif telah mengeluarkan harta yang dia cintai di jalan Allah (menafkahkan di jalan Allah).</p>\n            <p class=\"mb-4\">Yayasan Zaid Bin Tsabit Radhiyallahu’anhu, Insyaa Allah akan membangun gedung 4 lantai di atas tanah wakaf dengan luas bangunan sekitar 1200 M2 yang letaknya di jalan Gajahmada barat, Tirto, Kota Pekalongan. Gedung baru ini selanjutnya akan kami pergunakan untuk pondok pesantren Markaz Tahfidzul Qur’an Zaid bin Tsabit Pekalongan dikarenakan santri yang mendaftar semakin banyak, sementara saat ini kami masih menyewa rumah untuk kegiatan belajar dan asrama santri, maka dari itu perlu adanya pembangunan gedung baru yang fungsinya untuk Asrama, Kelas, Kantor, Masjid dan lain sebagainya.Oleh karenanya kami mengajak kepada seluruh muhsinin untuk ikut membantu dan mewakafkan harta terbaiknya untuk bekal di akhirat kelak.\n            </p>\n          \n          <blockquote class=\"blockquote my-4\">Sementara ini lokasi pondok pesantren Markaz Zaid Bin Tsabit Pekalongan yang pertama terletak di jalan Teratai Gg. 7 Barat No. 42 Klego, Kota Pekalongan, sedangkan lokasi kedua dalam proses pembangunan gedung 4 lantai diatas tanah wakaf di jalan Gajah Mada Barat Kelurahan Tirto Pekalongan Timur Kota Pekalongan.</blockquote>\n          \n          <p class=\"mb-4\">Untuk menyalurkan donasi Anda mohon untuk <strong>meluangkan waktu</strong> sejenak untuk membaca <strong>Petunjuk dan Rincian Anggaran </strong>dengan cara klik tombol \"Panduan Wakaf\" dibawah ini;</p>\n          \n          <div class=\"text-center\">\n            <a href=\"/panduan-wakaf-pembangunan\" type=\"button\" target=\"blank\" class=\"btn btn-lg btn-info mb-4 justify-content-center\">Panduan Wakaf</a>\n          </div>\n\n          <p class=\"mb-4\">Jika Anda ada pertanyaan terkait proyek pembangunan gedung pondok pesantren Markaz Tahfid Al Qur’an Zaid Bin Tsabit silakan hubungi kontak berikut :</p>\n          <ul>\n            <li>Ust. Ahmad Rijal, Lc., M.H.I. (0856 9429 1964)</li>\n            <li>Dr. Gholib Hasan (0815 6593 847)</li>\n            <li>Setiyo Hermawan (0815 6593 847)\n            </li>\n          </ul>\n          <p class=\"mb-5\">Tunggu apa lagi, mari wakafkan harta terbaik Anda sebagai wujud kepedulian terhadap masa depan bangsa dan masyarakat.</p>\n            ', 'static-page-images/U46GvQpcaoyd1gCjXJ7QL5EGurMYzHrtLBlk2pSi.jpg', 'Progress Pembangunan', 'Wakaf -> Pembangunan Gedung Baru');

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
(1, 'Jumhan Prayitno', 'jumhan', 'jumhan@gmail.com', NULL, '$2y$10$nOYEKWCp/ZewobU2nky8NuFJncDGdudfovVuwXDCPIVfbwvXDTGUO', NULL, '2022-11-08 05:27:41', '2022-11-08 05:27:41', 1),
(2, 'Wulan Hasanah', 'dian90', 'imandala@example.net', '2022-11-08 05:27:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '97zlKEZk44', '2022-11-08 05:27:42', '2022-11-08 05:27:42', 0),
(3, 'Victoria Eva Wahyuni', 'zpranowo', 'lestari.zulaikha@example.net', '2022-11-08 05:27:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VyzYp79Vf9', '2022-11-08 05:27:42', '2022-11-08 05:27:42', 0),
(4, 'Muni Wibowo S.Psi', 'prasetya.pudjiastuti', 'bancar.prasetyo@example.com', '2022-11-08 05:27:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CYkz6WRn7q', '2022-11-08 05:27:42', '2022-11-08 05:27:42', 0);

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
-- Indeks untuk tabel `set_static_page02s`
--
ALTER TABLE `set_static_page02s`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `set_static_page02s`
--
ALTER TABLE `set_static_page02s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
