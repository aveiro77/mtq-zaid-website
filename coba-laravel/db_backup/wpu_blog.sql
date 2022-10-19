-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2022 pada 01.12
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
(1, 'Pekerjaan Persiapan/ Umum', 'pekerjaan-persiapan-umum', 44469600, '001', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(2, 'Pekerjaan Tanah', 'pekerjaan-tanah', 147182183, '002', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(3, 'Pekerjaan Struktur Lantai 1', 'pekerjaan-struktur-lantai1', 1555066206, '003', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(4, 'Pekerjaan Arsitektur Lantai 1', 'pekerjaan-arsitektur-lantai1', 485719171, '004', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(5, 'Pekerjaan Mekanikal & Elektikal Lantai 1', 'pekerjaan-mekanikal-elektikal-lantai1', 62997860, '005', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(6, 'Pekerjaan Struktur Lantai 2', 'pekerjaan-struktur-lantai2', 671046165, '006', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(7, 'Pekerjaan Arsitektur Lantai 2', 'pekerjaan-arsitektur-lantai2', 431774974, '007', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(8, 'Pekerjaan Mekanikal & Elektikal Lantai 2', 'pekerjaan-mekanikal-elektikal-lantai2', 69796870, '008', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(9, 'Pekerjaan Struktur Lantai 3', 'pekerjaan-struktur-lantai3', 671640160, '009', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(10, 'Pekerjaan Arsitektur Lantai 3', 'pekerjaan-arsitektur-lantai3', 458468141, '010', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(11, 'Pekerjaan Mekanikal & Elektikal Lantai 3', 'pekerjaan-mekanikal-elektikal-lantai3', 71657610, '011', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(12, 'Pekerjaan Struktur Lantai 4', 'pekerjaan-struktur-lantai4', 168593066, '012', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(13, 'Pekerjaan Arsitektur Lantai 4', 'pekerjaan-arsitektur-lantai4', 647962309, '013', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(14, 'Pekerjaan Mekanikal & Elektikal Lantai 4', 'pekerjaan-mekanikal-elektikal-lantai4', 100548150, '014', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(15, 'Pekerjaan Paving Block', 'pekerjaan-paving-block', 27238000, '015', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(16, 'Pekerjaan Pagar', 'pekerjaan-pagar', 103979559, '016', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(17, 'Pengadaan AC', 'pengadaan-ac', 167370000, '017', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(18, 'Pekerjaan Hydran', 'pekerjaan-hydran', 750000000, '018', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(19, 'Pekerjaan Mebelair', 'pekerjaan-mebelair', 101900000, '019', '85740074567', 'Fulan', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34');

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
(1, 'Ulumul Quran', 'ulumul-quran', '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(2, 'Bahasa Arab', 'bahasa-arab', '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(3, 'Tauhid', 'tauhid', '2022-10-19 06:44:34', '2022-10-19 06:44:34');

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
(1, 14, 'Yuni Anggraini', 'Jln. Basoka No. 14, Cilegon 87169, Jateng', '0856 669 158', '144993', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(2, 4, 'Simon Firmansyah', 'Jr. Abdul No. 100, Sorong 32074, Bali', '(+62) 28 7432 5809', '962956', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(3, 18, 'Laras Laksita M.M.', 'Psr. Sutami No. 931, Ambon 17984, DIY', '0453 7871 881', '2230181', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(4, 7, 'Shania Keisha Namaga', 'Jr. Bayan No. 518, Banjarmasin 52784, Sulbar', '0309 8410 452', '2794993', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(5, 18, 'Cahyono Kamal Utama', 'Gg. Abdul No. 164, Bitung 10979, Kalsel', '0266 0936 158', '2506803', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(6, 16, 'Putri Ina Hartati', 'Gg. Yosodipuro No. 788, Padangpanjang 83880, NTB', '0259 8587 8930', '162529', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(7, 19, 'Purwanto Sitorus', 'Dk. Moch. Ramdan No. 892, Mataram 21319, Malut', '(+62) 369 3084 093', '3413481', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(8, 2, 'Nova Kusmawati', 'Psr. Bara Tambar No. 906, Banda Aceh 39775, Jateng', '(+62) 25 9029 782', '1805933', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(9, 13, 'Zizi Faizah Mulyani M.M.', 'Ds. Thamrin No. 833, Medan 30644, Kalsel', '(+62) 818 6549 7479', '292898', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(10, 5, 'Siska Padmi Permata S.Psi', 'Ki. Suharso No. 323, Cilegon 20598, Kalsel', '0345 7291 2117', '2632147', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(11, 13, 'Gawati Cinta Yolanda S.Sos', 'Dk. PHH. Mustofa No. 9, Padangsidempuan 50979, Pabar', '0487 7074 758', '778172', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(12, 11, 'Vera Hasanah S.Pt', 'Ki. Bagonwoto  No. 468, Palembang 87035, Kalsel', '(+62) 879 4227 2139', '1166702', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(13, 3, 'Sakti Tarihoran', 'Dk. Ujung No. 770, Madiun 22604, DIY', '022 0924 572', '2862590', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(14, 14, 'Alika Vera Permata S.E.I', 'Jln. Baja No. 230, Kupang 18447, Kepri', '0879 0531 7704', '2459778', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(15, 17, 'Vanya Fujiati', 'Gg. Arifin No. 788, Subulussalam 10710, Lampung', '0817 6514 0378', '3378987', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(16, 14, 'Ilsa Indah Hassanah M.Pd', 'Gg. Barat No. 176, Jambi 76873, Bengkulu', '0447 8023 8021', '603593', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(17, 14, 'Teddy Santoso M.Pd', 'Jln. Panjaitan No. 146, Palembang 32996, Jabar', '0883 354 080', '3328165', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(18, 4, 'Nilam Utami', 'Ds. Raden Saleh No. 619, Semarang 26513, Pabar', '(+62) 22 6263 3285', '68226', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(19, 19, 'Hana Indah Nasyiah S.Farm', 'Jr. Sugiono No. 937, Subulussalam 30165, Sulsel', '0214 7495 695', '2014711', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(20, 7, 'Murti Rajasa', 'Ds. Gegerkalong Hilir No. 195, Bengkulu 73939, Malut', '0981 9334 7770', '3329823', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(21, 10, 'Bella Hasanah', 'Jr. Gotong Royong No. 540, Tebing Tinggi 42198, Sulbar', '(+62) 822 494 378', '2393774', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(22, 6, 'Rachel Suryatmi', 'Ds. Tubagus Ismail No. 380, Ambon 89060, NTT', '0298 0739 5029', '910059', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(23, 3, 'Vanesa Maimunah Laksita S.I.Kom', 'Dk. Yap Tjwan Bing No. 844, Tanjungbalai 86848, Riau', '0892 5701 224', '3204338', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(24, 17, 'Cornelia Pertiwi', 'Psr. Sukajadi No. 308, Prabumulih 10815, Gorontalo', '0526 3715 4685', '1811433', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(25, 5, 'Amelia Wahyuni', 'Ds. Karel S. Tubun No. 225, Palangka Raya 30295, Bengkulu', '(+62) 921 5358 6355', '95339', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(26, 5, 'Nadia Lalita Suryatmi', 'Dk. Barasak No. 326, Surabaya 13189, Kaltara', '(+62) 750 2100 275', '2564871', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(27, 12, 'Gawati Fujiati M.Kom.', 'Kpg. Elang No. 208, Cilegon 43722, Kalbar', '0811 610 360', '1016619', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(28, 19, 'Lulut Mumpuni Rajata S.Ked', 'Gg. Rajawali Timur No. 910, Surabaya 36615, NTB', '0847 0487 1836', '3228763', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(29, 3, 'Uchita Hasanah', 'Gg. Ketandan No. 177, Dumai 63143, Sultra', '0298 8639 7736', '148479', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(30, 8, 'Adikara Mahendra', 'Jln. Dewi Sartika No. 610, Bau-Bau 69266, Malut', '0711 5320 360', '1035753', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(31, 4, 'Margana Jailani', 'Kpg. Cokroaminoto No. 343, Bogor 34402, Banten', '0604 3450 183', '2197785', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(32, 14, 'Ilyas Asmianto Kusumo', 'Gg. Rajiman No. 559, Pontianak 75157, Lampung', '0282 8465 6908', '243717', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(33, 16, 'Uli Hassanah', 'Ds. Achmad No. 970, Parepare 71307, Babel', '0810 9191 2512', '238681', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(34, 6, 'Cahyo Opan Napitupulu M.Pd', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 239, Bandar Lampung 36374, Riau', '0242 0683 3899', '2279351', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(35, 19, 'Paiman Samosir M.TI.', 'Gg. Rajiman No. 311, Pekalongan 98129, Kalbar', '(+62) 471 2003 1327', '2753375', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(36, 9, 'Rangga Bala Mansur S.Sos', 'Psr. Basket No. 595, Mojokerto 96176, Sultra', '(+62) 947 2567 742', '2966246', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(37, 3, 'Tania Aisyah Widiastuti', 'Ds. Bagis Utama No. 374, Serang 35407, Sumsel', '0937 5851 615', '596173', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(38, 9, 'Wira Napitupulu', 'Jln. Urip Sumoharjo No. 450, Binjai 19671, Jatim', '(+62) 730 1571 080', '857807', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(39, 8, 'Tantri Hartati', 'Psr. Moch. Toha No. 526, Gorontalo 91975, Babel', '0513 4917 1925', '1402670', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(40, 6, 'Samsul Saefullah', 'Ds. Diponegoro No. 993, Bengkulu 29293, Maluku', '(+62) 269 3821 2094', '2287407', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(41, 13, 'Tasdik Sihombing S.Kom', 'Dk. Ki Hajar Dewantara No. 12, Sibolga 22026, Sumut', '(+62) 915 2224 4952', '2768530', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(42, 8, 'Edward Cawuk Sirait S.I.Kom', 'Psr. Aceh No. 590, Pematangsiantar 91436, Sumbar', '028 8609 7652', '1487451', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(43, 6, 'Surya Kuswoyo', 'Kpg. Tubagus Ismail No. 358, Jayapura 76225, Kalbar', '0304 1382 892', '52602', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(44, 14, 'Janet Maryati', 'Ki. Baranangsiang No. 316, Tebing Tinggi 82463, Kalteng', '(+62) 644 5437 4224', '1827660', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(45, 1, 'Ana Purwanti', 'Jln. Soekarno Hatta No. 294, Palembang 90643, Sumut', '(+62) 250 6708 581', '488524', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(46, 17, 'Wasis Kardi Manullang', 'Kpg. Karel S. Tubun No. 305, Pematangsiantar 20500, Malut', '(+62) 333 5344 840', '1708682', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(47, 15, 'Belinda Winarsih S.Kom', 'Kpg. Bakaru No. 577, Banjar 65250, Lampung', '(+62) 828 1179 378', '1184886', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(48, 19, 'Fathonah Sudiati', 'Gg. Bazuka Raya No. 43, Lhokseumawe 89353, Kalbar', '(+62) 649 5975 114', '873994', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(49, 8, 'Yoga Kurniawan', 'Psr. Pasirkoja No. 62, Surakarta 53581, NTB', '0301 2631 4531', '1385967', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(50, 7, 'Eluh Thamrin', 'Gg. Juanda No. 588, Sabang 18026, Kalsel', '(+62) 896 687 469', '3057856', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(51, 2, 'Vanya Cinthia Oktaviani M.Kom.', 'Jr. Suryo Pranoto No. 423, Padang 49506, Kalteng', '(+62) 246 0598 517', '1634987', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(52, 5, 'Cengkal Cagak Prasetyo S.Pt', 'Ds. Honggowongso No. 250, Payakumbuh 99370, Malut', '(+62) 536 5208 173', '439057', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(53, 7, 'Usyi Jamalia Prastuti', 'Kpg. Sugiyopranoto No. 49, Cilegon 14921, Sumbar', '(+62) 710 4093 204', '2283636', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(54, 10, 'Dewi Maryati S.H.', 'Jr. Baladewa No. 556, Palu 24278, Papua', '(+62) 26 0605 4967', '87260', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(55, 16, 'Marsito Salahudin', 'Jln. Rajiman No. 234, Payakumbuh 43946, Kalbar', '0833 6431 5073', '3402661', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(56, 16, 'Banawa Tirtayasa Nugroho', 'Ds. Bawal No. 272, Bitung 15083, Malut', '(+62) 546 4624 588', '1675128', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(57, 8, 'Fitriani Widiastuti M.Kom.', 'Gg. Bayam No. 230, Padangpanjang 96547, DKI', '0864 6172 3291', '1176543', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(58, 10, 'Gasti Hasanah', 'Dk. Kyai Gede No. 142, Malang 40033, Jatim', '(+62) 624 4548 661', '377937', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(59, 15, 'Kasiyah Yuliana Hassanah M.Farm', 'Gg. Untung Suropati No. 634, Ternate 18651, NTB', '025 3645 4876', '363239', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(60, 13, 'Pranawa Sinaga', 'Ds. Bappenas No. 735, Banjarbaru 13728, DIY', '0510 0501 5155', '1959658', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(61, 7, 'Tania Riyanti', 'Jln. Banceng Pondok No. 502, Cimahi 26238, Kalsel', '0629 3214 193', '1961517', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(62, 16, 'Daru Bagus Situmorang', 'Psr. Bayam No. 688, Administrasi Jakarta Pusat 43738, Bengkulu', '0602 0950 3683', '2308366', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(63, 11, 'Upik Baktiono Pratama', 'Ki. W.R. Supratman No. 723, Pontianak 81186, Kepri', '(+62) 817 7827 4376', '792305', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(64, 9, 'Marsudi Hutagalung', 'Gg. Diponegoro No. 750, Kotamobagu 25220, Maluku', '0551 5810 656', '764545', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(65, 13, 'Okto Saadat Gunawan S.I.Kom', 'Gg. Pasirkoja No. 58, Administrasi Jakarta Selatan 96475, Gorontalo', '(+62) 298 5535 3328', '2749985', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(66, 4, 'Fathonah Eka Mardhiyah', 'Ds. B.Agam Dlm No. 526, Banjarbaru 31906, Kaltara', '0803 3552 6302', '2796503', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(67, 19, 'Eva Purwanti S.IP', 'Psr. Nakula No. 264, Padangsidempuan 88865, Maluku', '(+62) 784 5176 269', '2320746', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(68, 13, 'Umay Budiman S.Pd', 'Ki. Nangka No. 207, Pasuruan 95383, Maluku', '0590 2790 459', '1556377', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(69, 15, 'Michelle Dian Puspasari M.M.', 'Ki. Karel S. Tubun No. 954, Pagar Alam 57607, Sumbar', '(+62) 320 0213 707', '2811427', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(70, 4, 'Elon Lanang Narpati S.I.Kom', 'Ki. Kusmanto No. 833, Ternate 27955, Gorontalo', '(+62) 897 026 468', '2322650', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(71, 11, 'Kartika Oktaviani S.T.', 'Gg. Panjaitan No. 570, Salatiga 81790, DIY', '(+62) 20 1828 825', '606548', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(72, 8, 'Ika Paris Pudjiastuti M.Kom.', 'Dk. Baung No. 552, Makassar 54807, Sulsel', '(+62) 580 0896 552', '1077073', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(73, 5, 'Surya Natsir', 'Jln. Baranang Siang Indah No. 409, Tanjung Pinang 92102, DKI', '0327 2262 5284', '1422686', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(74, 11, 'Elma Ajeng Kusmawati', 'Gg. Yap Tjwan Bing No. 56, Probolinggo 37592, Sumbar', '0501 6870 559', '2992304', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(75, 18, 'Jamalia Oni Rahayu S.Ked', 'Ds. Sugiyopranoto No. 118, Gorontalo 27026, Sultra', '025 0898 2413', '2527442', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(76, 17, 'Langgeng Artawan Budiman S.Kom', 'Dk. Basudewo No. 968, Batu 68386, Sulut', '(+62) 623 4362 8577', '2339484', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(77, 13, 'Eka Budiyanto', 'Ki. Bakau No. 932, Tanjungbalai 30086, DKI', '(+62) 336 6052 7709', '3364223', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(78, 6, 'Sabrina Puspasari', 'Jln. Bahagia  No. 75, Binjai 25856, Kaltara', '0215 9956 0450', '668289', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(79, 19, 'Ida Palastri', 'Kpg. Otista No. 909, Salatiga 33623, Sumsel', '0224 5983 3535', '2606247', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(80, 19, 'Talia Puspita', 'Jln. Bambon No. 85, Ambon 13138, Sulbar', '(+62) 365 6661 863', '1804864', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(81, 18, 'Diah Tania Widiastuti', 'Ki. Ketandan No. 314, Sorong 29459, Sumsel', '(+62) 815 864 432', '116519', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(82, 1, 'Tari Oktaviani S.IP', 'Jr. Supomo No. 335, Denpasar 72379, Sultra', '0852 844 164', '1805203', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(83, 13, 'Natalia Haryanti', 'Jln. Raya Setiabudhi No. 50, Administrasi Jakarta Selatan 52979, Sulbar', '0535 3725 0218', '3285148', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(84, 5, 'Koko Yahya Budiyanto S.Pd', 'Dk. Bakau Griya Utama No. 686, Kendari 92943, Jatim', '(+62) 366 2189 988', '944363', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(85, 19, 'Rudi Kusumo', 'Ds. Bambon No. 983, Blitar 61445, NTB', '026 4765 066', '1176273', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(86, 3, 'Jaga Irawan', 'Psr. Sutarjo No. 741, Mataram 27648, Sulbar', '(+62) 23 3877 1155', '2256655', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(87, 11, 'Elvina Pertiwi', 'Ki. Camar No. 88, Tegal 47309, Malut', '0917 5379 0233', '1626775', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(88, 15, 'Putri Tira Anggraini S.I.Kom', 'Kpg. Baranangsiang No. 324, Pariaman 29339, DKI', '(+62) 477 9489 5374', '1689366', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(89, 15, 'Cahyanto Saputra', 'Psr. Ketandan No. 37, Tomohon 34663, Kaltim', '(+62) 804 8930 0523', '2547976', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(90, 19, 'Harjo Simbolon', 'Ki. Baladewa No. 779, Bogor 88919, Sultra', '(+62) 954 1191 4808', '2198024', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(91, 7, 'Praba Waskita', 'Jr. Jaksa No. 739, Tarakan 52089, Sultra', '0301 5867 947', '1267282', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(92, 17, 'Usyi Susanti', 'Jr. Bahagia No. 286, Kupang 62456, Jateng', '0629 0688 682', '3186053', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(93, 16, 'Asman Ardianto', 'Gg. Badak No. 14, Salatiga 48928, Jateng', '(+62) 534 4268 450', '2518506', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(94, 6, 'Olga Sirait', 'Kpg. Bacang No. 617, Blitar 97896, Bali', '(+62) 449 1571 3144', '2807990', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(95, 5, 'Suci Farida S.T.', 'Jln. Gajah Mada No. 586, Sorong 43607, Gorontalo', '0422 1360 5588', '3089662', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(96, 11, 'Marsudi Carub Hardiansyah', 'Ki. Gotong Royong No. 48, Tegal 63414, Sulsel', '0575 0008 4841', '893414', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(97, 10, 'Jagapati Bakda Nashiruddin M.M.', 'Jln. Dr. Junjunan No. 503, Kupang 12690, DIY', '(+62) 926 7128 9609', '2714784', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(98, 8, 'Paiman Saptono', 'Ds. Rajawali Barat No. 446, Pematangsiantar 28516, Sumbar', '(+62) 851 454 579', '1846686', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(99, 10, 'Hana Riyanti', 'Ds. Bagonwoto  No. 233, Administrasi Jakarta Selatan 20177, Sumut', '0663 8082 755', '2450119', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(100, 2, 'Kamila Rahayu S.E.I', 'Ki. Hasanuddin No. 30, Ternate 73981, Lampung', '(+62) 27 9301 0192', '294746', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(101, 18, 'Titi Violet Hassanah M.Farm', 'Jln. R.E. Martadinata No. 263, Bogor 95464, Pabar', '028 6276 6626', '1512609', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(102, 14, 'Ian Manullang', 'Gg. Qrisdoren No. 391, Blitar 60840, Kalteng', '0554 4788 160', '3178874', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(103, 18, 'Makuta Caraka Hidayanto M.TI.', 'Gg. R.E. Martadinata No. 959, Pangkal Pinang 14289, Aceh', '(+62) 491 6316 909', '1405480', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(104, 5, 'Rama Lazuardi', 'Kpg. Kali No. 776, Yogyakarta 33088, Bali', '(+62) 922 2436 179', '153035', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(105, 4, 'Banara Adriansyah S.Kom', 'Ds. Kalimalang No. 725, Payakumbuh 68691, Banten', '(+62) 23 9483 731', '3167183', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(106, 12, 'Satya Jamal Saputra', 'Psr. Supono No. 990, Dumai 64486, DKI', '0483 9758 327', '558741', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(107, 8, 'Indah Farida', 'Psr. Gajah No. 518, Banjar 70494, Sumbar', '0211 6977 0785', '191888', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(108, 10, 'Icha Purwanti', 'Kpg. Badak No. 796, Tegal 61537, NTB', '0876 594 992', '824856', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(109, 6, 'Jaeman Wasita', 'Kpg. Bak Air No. 638, Denpasar 51326, Sulut', '(+62) 425 6950 713', '3052917', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(110, 11, 'Lalita Laksmiwati', 'Jln. Antapani Lama No. 581, Tangerang Selatan 35929, Sumut', '0666 1536 7425', '501315', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(111, 19, 'Kacung Kayun Dabukke', 'Ki. Ekonomi No. 337, Surakarta 35568, Pabar', '(+62) 785 5271 6443', '96383', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(112, 14, 'Ajiono Habibi', 'Ki. Monginsidi No. 191, Sawahlunto 21501, Sulsel', '(+62) 876 7265 924', '1118013', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(113, 9, 'Hana Puspita', 'Jr. Gardujati No. 482, Samarinda 69799, Kaltim', '025 5327 6756', '1967082', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(114, 8, 'Wirda Lailasari', 'Ds. Qrisdoren No. 761, Tasikmalaya 75637, Sumut', '0640 6078 9397', '1025558', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(115, 11, 'Galih Dabukke', 'Psr. Baja Raya No. 952, Pariaman 89665, Sultra', '(+62) 960 0062 3244', '3354369', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(116, 2, 'Ghaliyati Oktaviani M.Pd', 'Psr. Ters. Buah Batu No. 681, Bandar Lampung 61460, Sulteng', '(+62) 723 4293 215', '2298458', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(117, 4, 'Uda Hutapea', 'Kpg. Sutami No. 540, Semarang 69707, Bali', '(+62) 389 2096 5668', '3174244', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(118, 1, 'Luhung Hari Megantara', 'Gg. Flora No. 69, Palembang 13980, Pabar', '0722 8781 229', '95230', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(119, 8, 'Ani Gasti Novitasari M.Ak', 'Jln. Bakaru No. 540, Palembang 69697, Kaltara', '(+62) 831 4438 7804', '710482', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(120, 12, 'Siska Lestari', 'Kpg. Kalimalang No. 163, Dumai 10486, Sumbar', '(+62) 333 2686 740', '1104790', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(121, 1, 'Darman Prayoga S.Gz', 'Kpg. Gading No. 545, Kotamobagu 27593, Sultra', '(+62) 473 5898 2810', '2879108', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(122, 19, 'Ega Jailani', 'Jr. Kalimalang No. 603, Magelang 47823, Aceh', '(+62) 400 6039 0515', '1806435', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(123, 4, 'Hana Gilda Purwanti S.Ked', 'Ki. Jaksa No. 2, Prabumulih 25038, NTT', '(+62) 929 1674 4297', '2946820', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(124, 2, 'Maria Dinda Hassanah', 'Dk. Ters. Pasir Koja No. 880, Pangkal Pinang 60222, Sumbar', '0813 997 157', '635192', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(125, 3, 'Ghaliyati Yuliarti', 'Gg. Gatot Subroto No. 254, Gunungsitoli 50612, Sulut', '0690 3274 2609', '988433', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(126, 18, 'Laras Karen Mardhiyah S.E.I', 'Ds. Supomo No. 437, Padangpanjang 98833, Jateng', '(+62) 506 4529 187', '875501', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(127, 12, 'Ika Puspasari', 'Kpg. Kalimantan No. 704, Bengkulu 77270, Kaltara', '0429 7102 834', '3213992', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(128, 18, 'Karya Mujur Nainggolan S.E.I', 'Psr. Banda No. 769, Malang 35258, Bengkulu', '(+62) 460 5830 7052', '1317039', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(129, 13, 'Sabrina Ghaliyati Yuliarti M.Pd', 'Ds. Cikutra Barat No. 706, Payakumbuh 29048, Kalbar', '(+62) 251 5875 614', '2949096', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(130, 13, 'Taswir Mahmud Najmudin', 'Psr. Suprapto No. 179, Parepare 35617, NTB', '(+62) 902 3492 837', '2219492', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(131, 6, 'Ellis Mala Hassanah S.Kom', 'Jr. Pasteur No. 734, Sawahlunto 32026, Sulteng', '(+62) 808 1698 949', '2801110', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(132, 14, 'Xanana Ilyas Widodo', 'Jr. Badak No. 847, Pekanbaru 68559, Malut', '(+62) 329 2211 4338', '1957875', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(133, 7, 'Wardi Artanto Gunawan S.Sos', 'Ki. Ciwastra No. 844, Administrasi Jakarta Barat 90199, Sultra', '0208 3490 670', '2941412', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(134, 2, 'Harsaya Garan Siregar', 'Psr. Salam No. 656, Pekanbaru 96273, Bengkulu', '(+62) 27 1594 2512', '838335', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(135, 10, 'Septi Kusmawati S.Gz', 'Ds. Sadang Serang No. 711, Lubuklinggau 50005, Riau', '0631 6064 0652', '1336150', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(136, 18, 'Galur Megantara', 'Gg. Tambun No. 360, Singkawang 40560, NTT', '0266 8353 408', '2373340', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(137, 19, 'Bahuwirya Rahman Mansur M.M.', 'Dk. Flora No. 172, Tebing Tinggi 20164, Banten', '0453 3286 285', '2270745', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(138, 12, 'Samsul Natsir', 'Psr. Suryo No. 194, Parepare 77428, NTB', '0809 291 165', '3417828', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(139, 10, 'Farhunnisa Hartati', 'Gg. Jend. Sudirman No. 902, Bogor 86857, Gorontalo', '0919 6947 9429', '1122386', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(140, 1, 'Galar Pranowo', 'Jln. Bank Dagang Negara No. 724, Tarakan 31813, Jateng', '0940 7821 1345', '812135', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(141, 16, 'Hari Aslijan Firmansyah S.I.Kom', 'Ds. Abdullah No. 148, Jayapura 46773, Bali', '0614 1316 2673', '1789893', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(142, 17, 'Cawisono Hardiansyah S.Pt', 'Gg. Wahid No. 824, Bontang 47728, Maluku', '0850 6899 806', '2180336', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(143, 1, 'Rahmat Langgeng Prasasta M.Kom.', 'Ds. Dipatiukur No. 802, Tasikmalaya 17017, DIY', '029 8220 2710', '2756484', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(144, 8, 'Kania Hastuti', 'Ds. Acordion No. 210, Banjar 18690, Sumsel', '0683 5066 627', '2116780', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(145, 6, 'Hafshah Ciaobella Oktaviani S.Psi', 'Ds. Banal No. 204, Salatiga 26150, Sulbar', '(+62) 932 4731 123', '3312980', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(146, 5, 'Karman Kajen Saputra S.Psi', 'Dk. R.M. Said No. 717, Magelang 97887, Sulbar', '(+62) 246 7039 3182', '2643391', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(147, 8, 'Melinda Susanti', 'Jln. Sugiono No. 155, Semarang 97550, Aceh', '029 4841 7303', '132093', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(148, 13, 'Bakda Damanik', 'Jr. Padang No. 802, Madiun 67193, Papua', '(+62) 21 4274 290', '2791159', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(149, 15, 'Tiara Cinta Zulaika', 'Ds. Baranang Siang No. 588, Bandar Lampung 62258, Aceh', '0603 9118 6103', '2888538', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(150, 11, 'Ciaobella Wastuti', 'Jln. Ters. Buah Batu No. 984, Administrasi Jakarta Pusat 19529, Riau', '0544 9820 911', '2319080', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(151, 16, 'Bagas Setiawan', 'Jr. Perintis Kemerdekaan No. 981, Palopo 11594, Sulteng', '(+62) 589 0744 8633', '1442708', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(152, 17, 'Syahrini Keisha Hariyah M.Farm', 'Ki. B.Agam 1 No. 634, Bandar Lampung 44032, Kepri', '(+62) 778 1909 046', '2443913', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(153, 5, 'Dimaz Firmansyah M.M.', 'Gg. Adisumarmo No. 889, Pariaman 43424, Sultra', '0255 6475 2611', '2008932', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(154, 14, 'Taswir Prasetyo', 'Gg. Dahlia No. 404, Tanjungbalai 10194, Sulut', '(+62) 337 2035 1668', '693907', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(155, 4, 'Queen Nasyidah M.Ak', 'Ki. Sukabumi No. 520, Sukabumi 38109, Jateng', '0632 8852 4523', '1149493', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(156, 6, 'Tri Permadi S.Sos', 'Jr. Krakatau No. 152, Tasikmalaya 76530, Babel', '0866 8558 3786', '3361463', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(157, 15, 'Prayoga Akarsana Maryadi M.M.', 'Jr. Banceng Pondok No. 299, Pematangsiantar 93532, Papua', '0287 0549 186', '2874516', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(158, 13, 'Purwanto Irnanto Siregar M.Farm', 'Dk. Bazuka Raya No. 214, Tasikmalaya 24993, Jambi', '0958 8310 349', '2768908', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(159, 17, 'Jefri Widodo', 'Psr. Bak Mandi No. 377, Blitar 67487, Papua', '(+62) 22 0848 918', '3005311', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(160, 8, 'Gaiman Daliman Suwarno', 'Jln. Moch. Ramdan No. 428, Balikpapan 82737, Aceh', '(+62) 958 0499 7329', '2202692', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(161, 13, 'Zelaya Rahmawati', 'Jln. Elang No. 814, Tidore Kepulauan 19455, Jabar', '(+62) 670 3440 2278', '387878', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(162, 9, 'Belinda Namaga S.Sos', 'Dk. Pasteur No. 791, Pekanbaru 27290, Gorontalo', '(+62) 23 7367 550', '2044313', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(163, 15, 'Yessi Gawati Suryatmi M.Ak', 'Ds. Pelajar Pejuang 45 No. 853, Probolinggo 68124, Kepri', '0419 0938 7011', '2000180', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(164, 2, 'Nurul Halimah', 'Dk. Gotong Royong No. 579, Banjar 62384, Sultra', '(+62) 858 986 278', '2444581', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(165, 8, 'Budi Drajat Mahendra', 'Psr. Teuku Umar No. 783, Parepare 19018, Sumsel', '(+62) 652 4756 116', '534585', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(166, 13, 'Jatmiko Kanda Nainggolan S.T.', 'Psr. Baya Kali Bungur No. 4, Tarakan 28565, Kepri', '(+62) 816 0735 761', '338363', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(167, 16, 'Marsudi Darmaji Uwais', 'Jln. Sutarto No. 291, Kupang 33709, Papua', '(+62) 772 6636 666', '456335', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(168, 9, 'Kamal Prayoga', 'Ds. Suniaraja No. 475, Semarang 93180, Sultra', '0924 0920 253', '1401061', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(169, 17, 'Vanya Queen Hastuti S.Pt', 'Gg. Yap Tjwan Bing No. 864, Padangsidempuan 51734, Sulsel', '0836 2369 0254', '2983780', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(170, 12, 'Titin Gabriella Purwanti', 'Gg. Kusmanto No. 286, Pontianak 62574, Jatim', '0563 9477 940', '472539', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(171, 3, 'Zamira Pudjiastuti', 'Jln. Wahid No. 223, Bandung 22600, Kalsel', '(+62) 765 1901 7010', '1518405', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(172, 7, 'Keisha Palastri', 'Kpg. Orang No. 455, Serang 30477, Maluku', '(+62) 323 8470 5413', '1016958', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(173, 19, 'Qori Mardhiyah', 'Dk. Bahagia No. 123, Cilegon 72512, Sulteng', '0570 9825 9951', '3126294', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(174, 11, 'Mursita Simanjuntak', 'Ds. Dewi Sartika No. 914, Banjar 76050, Bengkulu', '0854 8945 861', '3377548', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(175, 6, 'Mutia Talia Nasyidah M.Ak', 'Kpg. Jend. Sudirman No. 883, Pangkal Pinang 69861, Kalbar', '0630 5846 404', '2443786', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(176, 16, 'Endah Anggraini', 'Gg. Radio No. 651, Madiun 30303, Papua', '0370 6956 7140', '1327275', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(177, 10, 'Siti Oktaviani', 'Kpg. Untung Suropati No. 826, Ternate 10066, NTT', '(+62) 822 6857 6918', '274841', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(178, 6, 'Kezia Safitri', 'Jr. Bambon No. 50, Blitar 52271, Kepri', '0592 2422 1428', '175750', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(179, 7, 'Asmadi Raditya Irawan S.Kom', 'Ki. Yos No. 368, Banjarbaru 43785, Sulteng', '(+62) 231 9638 5926', '863857', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(180, 7, 'Panca Prayoga', 'Dk. Teuku Umar No. 54, Serang 21781, Kaltara', '(+62) 644 3902 048', '1402626', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(181, 4, 'Paiman Prasetya', 'Ki. Salak No. 36, Probolinggo 72450, NTB', '0364 7873 6864', '2054381', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(182, 1, 'Kayla Agustina', 'Ki. Basket No. 511, Pekanbaru 74724, Kaltara', '(+62) 860 6517 307', '3138678', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(183, 2, 'Kani Hariyah', 'Jr. Bakti No. 887, Pariaman 60480, Jabar', '0922 6322 669', '2121734', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(184, 2, 'Jabal Santoso', 'Jr. Uluwatu No. 880, Pematangsiantar 33706, Sumsel', '(+62) 488 9011 1917', '2698269', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(185, 18, 'Perkasa Dongoran', 'Ds. Tubagus Ismail No. 877, Denpasar 20307, DIY', '(+62) 843 578 668', '3457107', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(186, 14, 'Prabawa Adhiarja Januar S.Kom', 'Ds. Ekonomi No. 592, Bontang 31748, Kepri', '0874 7564 4776', '1806240', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(187, 16, 'Baktiono Iswahyudi', 'Jr. Otista No. 972, Sibolga 20731, Kalbar', '0369 1407 0220', '1259450', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(188, 4, 'Lega Limar Adriansyah', 'Jln. Peta No. 672, Sawahlunto 27189, DIY', '0879 4526 316', '52573', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(189, 14, 'Cinta Mulyani', 'Gg. Abdullah No. 452, Mojokerto 26761, Gorontalo', '(+62) 663 3779 364', '2087397', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(190, 13, 'Cici Nasyidah', 'Ds. Tambun No. 615, Madiun 83329, Kaltara', '(+62) 351 9268 1613', '437508', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(191, 17, 'Ghaliyati Suartini', 'Psr. Siliwangi No. 731, Bandar Lampung 48075, Jateng', '0590 8255 701', '3207245', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(192, 7, 'Himawan Sitompul', 'Ds. Ekonomi No. 470, Tidore Kepulauan 96538, Gorontalo', '(+62) 408 9153 578', '2859368', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(193, 9, 'Dian Namaga', 'Ds. R.M. Said No. 253, Serang 34989, Sulteng', '0979 9222 409', '3434086', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(194, 3, 'Kariman Sihombing S.Psi', 'Ds. Bambu No. 681, Bengkulu 40145, Kaltara', '(+62) 715 7636 025', '3010111', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(195, 13, 'Mahesa Harjasa Wacana M.Farm', 'Kpg. Eka No. 307, Sukabumi 17706, Riau', '0248 7512 7262', '2051741', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(196, 13, 'Mutia Aryani', 'Gg. Juanda No. 157, Administrasi Jakarta Timur 95430, Kalbar', '0912 3906 9967', '1626867', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(197, 16, 'Reksa Wardaya Latupono S.Pt', 'Dk. Qrisdoren No. 505, Kupang 49945, Jatim', '(+62) 568 1404 4220', '2393899', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(198, 13, 'Hadi Siregar', 'Gg. Bagas Pati No. 510, Parepare 50928, Sumsel', '(+62) 805 8991 0383', '3470643', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(199, 18, 'Taufan Prasasta', 'Psr. Diponegoro No. 742, Padang 63475, Kepri', '(+62) 787 9300 013', '3075032', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34'),
(200, 13, 'Hana Hassanah', 'Kpg. Wahidin Sudirohusodo No. 697, Tangerang 25191, Kaltara', '0228 1564 7714', '2984540', '1', '2022-05-05', NULL, '2022-10-19 06:44:34', '2022-10-19 06:44:34');

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
(1, 'Jumhan Prayitno', 'jumhan', 'jumhan@gmail.com', NULL, '$2y$10$XH2J0wYhfLdtgpnM9lsfXenTSIEWcoBqeXwqnPOhyAWWPP7dH3oDa', NULL, '2022-10-19 06:44:33', '2022-10-19 06:44:33', 1),
(2, 'Prasetyo Cakrajiya Lazuardi', 'ira61', 'dpangestu@example.net', '2022-10-19 06:44:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V2bhKZHp72', '2022-10-19 06:44:34', '2022-10-19 06:44:34', 0),
(3, 'Yono Vega Gunawan', 'maulana.belinda', 'darmanto08@example.com', '2022-10-19 06:44:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1KGJhpvsbt', '2022-10-19 06:44:34', '2022-10-19 06:44:34', 0),
(4, 'Prayoga Kuswoyo', 'rangga.prastuti', 'woktaviani@example.com', '2022-10-19 06:44:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NLqQ780Pxh', '2022-10-19 06:44:34', '2022-10-19 06:44:34', 0);

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
