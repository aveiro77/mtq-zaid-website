-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2022 pada 00.30
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
(1, 'Pekerjaan Persiapan/ Umum', 'pekerjaan-persiapan-umum', 44469600, '001', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(2, 'Pekerjaan Tanah', 'pekerjaan-tanah', 147182183, '002', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(3, 'Pekerjaan Struktur Lantai 1', 'pekerjaan-struktur-lantai1', 1555066206, '003', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(4, 'Pekerjaan Arsitektur Lantai 1', 'pekerjaan-arsitektur-lantai1', 485719171, '004', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(5, 'Pekerjaan Mekanikal & Elektikal Lantai 1', 'pekerjaan-mekanikal-elektikal-lantai1', 62997860, '005', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(6, 'Pekerjaan Struktur Lantai 2', 'pekerjaan-struktur-lantai2', 671046165, '006', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(7, 'Pekerjaan Arsitektur Lantai 2', 'pekerjaan-arsitektur-lantai2', 431774974, '007', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(8, 'Pekerjaan Mekanikal & Elektikal Lantai 2', 'pekerjaan-mekanikal-elektikal-lantai2', 69796870, '008', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(9, 'Pekerjaan Struktur Lantai 3', 'pekerjaan-struktur-lantai3', 671640160, '009', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(10, 'Pekerjaan Arsitektur Lantai 3', 'pekerjaan-arsitektur-lantai3', 458468141, '010', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(11, 'Pekerjaan Mekanikal & Elektikal Lantai 3', 'pekerjaan-mekanikal-elektikal-lantai3', 71657610, '011', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(12, 'Pekerjaan Struktur Lantai 4', 'pekerjaan-struktur-lantai4', 168593066, '012', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(13, 'Pekerjaan Arsitektur Lantai 4', 'pekerjaan-arsitektur-lantai4', 647962309, '013', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(14, 'Pekerjaan Mekanikal & Elektikal Lantai 4', 'pekerjaan-mekanikal-elektikal-lantai4', 100548150, '014', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(15, 'Pekerjaan Paving Block', 'pekerjaan-paving-block', 27238000, '015', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(16, 'Pekerjaan Pagar', 'pekerjaan-pagar', 103979559, '016', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(17, 'Pengadaan AC', 'pengadaan-ac', 167370000, '017', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(18, 'Pekerjaan Hydran', 'pekerjaan-hydran', 750000000, '018', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(19, 'Pekerjaan Mebelair', 'pekerjaan-mebelair', 101900000, '019', '85740074567', 'Fulan', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27');

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
(1, 'Ulumul Quran', 'ulumul-quran', '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(2, 'Bahasa Arab', 'bahasa-arab', '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(3, 'Nasihat', 'nasihat', '2022-11-01 03:25:27', '2022-11-01 03:25:27');

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
(1, 4, 'Prabawa Wibisono', 'Kpg. Kalimalang No. 951, Sungai Penuh 97913, Riau', '(+62) 24 5799 012', '129766', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(2, 8, 'Saadat Gaduh Dabukke', 'Ki. R.E. Martadinata No. 650, Yogyakarta 76750, Kalbar', '(+62) 773 2025 442', '299052', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(3, 12, 'Gara Nainggolan', 'Ki. Jaksa No. 373, Banda Aceh 49830, Babel', '(+62) 866 4075 5111', '2227308', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(4, 10, 'Michelle Safitri', 'Gg. Elang No. 249, Binjai 97794, Riau', '0350 6699 3385', '1644241', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(5, 2, 'Luthfi Ganep Simbolon', 'Gg. Warga No. 557, Cilegon 61874, Sultra', '(+62) 516 9207 9925', '904916', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(6, 9, 'Mursita Latupono', 'Kpg. Jamika No. 190, Tangerang Selatan 21212, DIY', '(+62) 892 3889 614', '1935282', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(7, 13, 'Marsito Prasasta', 'Kpg. Pahlawan No. 992, Bau-Bau 25873, Aceh', '(+62) 24 0912 6519', '203638', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(8, 15, 'Hartana Dimas Widodo', 'Jr. Dr. Junjunan No. 845, Pekalongan 49499, Malut', '0463 1951 5943', '1739638', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(9, 15, 'Wulan Aryani', 'Jr. Eka No. 85, Pontianak 72712, DIY', '0970 5514 5210', '170831', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(10, 8, 'Gangsar Sihombing', 'Psr. Ciwastra No. 24, Surabaya 63065, DIY', '0338 5427 8974', '1326149', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(11, 19, 'Paris Purwanti M.Ak', 'Jln. Ciwastra No. 867, Singkawang 17350, Sulbar', '0474 3721 941', '2813929', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(12, 12, 'Karimah Mulyani', 'Gg. Gardujati No. 147, Pagar Alam 93240, Sumsel', '(+62) 673 1945 660', '3371354', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(13, 4, 'Dimas Lazuardi', 'Jln. Bakau No. 125, Pariaman 84199, Sulsel', '(+62) 336 2128 090', '1556883', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(14, 10, 'Karna Hakim', 'Kpg. Elang No. 982, Lubuklinggau 15722, Banten', '(+62) 213 7289 7567', '1243703', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(15, 7, 'Anita Riyanti', 'Gg. Jagakarsa No. 913, Makassar 61309, Jabar', '(+62) 854 7642 4580', '2392387', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(16, 15, 'Hendri Saadat Kurniawan M.Ak', 'Jln. Ters. Buah Batu No. 104, Payakumbuh 24691, Jateng', '0263 4262 5614', '1194544', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(17, 13, 'Emong Irawan', 'Ki. Bayam No. 112, Bandar Lampung 69286, Pabar', '0602 3118 990', '2091431', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(18, 10, 'Narji Prasasta', 'Dk. Antapani Lama No. 858, Blitar 44047, Pabar', '0211 6941 545', '1988478', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(19, 1, 'Faizah Halimah M.M.', 'Jln. Bagis Utama No. 603, Pagar Alam 73921, Riau', '(+62) 677 9253 068', '3482194', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(20, 17, 'Adika Purwadi Santoso M.Kom.', 'Ds. W.R. Supratman No. 786, Pangkal Pinang 47731, Kepri', '0344 2259 6664', '473714', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(21, 14, 'Laila Melinda Zulaika S.H.', 'Kpg. W.R. Supratman No. 768, Ambon 65779, NTB', '0958 9310 275', '2518967', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(22, 8, 'Ophelia Mulyani', 'Jr. Raden No. 111, Mataram 28834, Kaltim', '(+62) 958 0246 2067', '3034703', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(23, 13, 'Safina Ina Mandasari', 'Jln. Kebonjati No. 298, Padangpanjang 79991, Gorontalo', '0377 8011 4616', '3008237', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(24, 13, 'Liman Nasim Suwarno M.Kom.', 'Gg. Diponegoro No. 167, Tidore Kepulauan 59580, Kaltim', '(+62) 254 3622 574', '563064', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(25, 7, 'Siti Wulandari', 'Gg. Sutan Syahrir No. 505, Malang 47714, NTT', '(+62) 777 6797 8857', '1388562', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(26, 5, 'Janet Aurora Laksita S.E.I', 'Dk. Rajiman No. 303, Gunungsitoli 77311, Maluku', '(+62) 805 805 518', '2159060', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(27, 18, 'Yani Laila Sudiati M.Farm', 'Kpg. Dahlia No. 323, Kotamobagu 82770, NTB', '(+62) 750 6863 7023', '3248295', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(28, 9, 'Garang Kala Budiman', 'Dk. Cihampelas No. 809, Manado 70979, DKI', '(+62) 300 6125 8024', '2479142', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(29, 11, 'Fitria Mandasari', 'Jr. Juanda No. 561, Bandung 44054, Lampung', '0983 7999 760', '3013307', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(30, 3, 'Vinsen Napitupulu M.Pd', 'Jr. Mulyadi No. 651, Magelang 69479, Kaltim', '025 6040 2812', '1445887', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(31, 19, 'Eko Hakim', 'Kpg. Bank Dagang Negara No. 476, Banda Aceh 64605, Sumbar', '0865 2398 376', '3193412', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(32, 18, 'Karen Kuswandari S.Pd', 'Ds. Bayan No. 866, Banda Aceh 25793, Sulsel', '(+62) 685 6570 9250', '575656', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(33, 19, 'Lili Usyi Yolanda M.Pd', 'Jln. Jakarta No. 39, Ambon 79928, Malut', '0929 0522 7178', '1438685', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(34, 13, 'Karma Sitompul', 'Ki. Madrasah No. 172, Sawahlunto 74993, Riau', '0599 1209 5836', '1821115', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(35, 9, 'Wadi Sihombing', 'Gg. Sudirman No. 95, Padangpanjang 65436, Sumbar', '(+62) 781 1811 0406', '1381140', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(36, 11, 'Adhiarja Pangestu', 'Psr. Barat No. 976, Banda Aceh 22255, Papua', '0838 467 129', '1901093', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(37, 7, 'Atma Baktiadi Uwais S.Ked', 'Ki. Jend. A. Yani No. 757, Administrasi Jakarta Pusat 85625, Gorontalo', '(+62) 957 3342 9135', '717119', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(38, 17, 'Daniswara Adriansyah', 'Jr. Rajawali No. 827, Salatiga 27869, Sumbar', '0964 9970 9591', '120261', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(39, 14, 'Lembah Hardi Ardianto', 'Ds. Jaksa No. 462, Administrasi Jakarta Pusat 84930, Kepri', '(+62) 799 1960 6727', '1084086', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(40, 1, 'Genta Wijayanti S.Ked', 'Psr. Jaksa No. 342, Pasuruan 64807, Bali', '(+62) 397 2277 458', '1055017', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(41, 11, 'Tami Salimah Puspita S.Sos', 'Ds. Yohanes No. 742, Bontang 35460, Sulsel', '(+62) 20 0717 363', '902601', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(42, 2, 'Nadine Uyainah', 'Kpg. Muwardi No. 733, Kendari 52624, Banten', '0686 9144 512', '232813', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(43, 2, 'Jasmin Nasyiah', 'Psr. Cokroaminoto No. 426, Bau-Bau 79815, DKI', '0980 4699 415', '2659485', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(44, 3, 'Cinthia Sari Uyainah', 'Jr. Gambang No. 180, Gunungsitoli 35300, Kaltara', '(+62) 652 0071 5910', '191247', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(45, 16, 'Kamila Rahmi Purnawati S.Pd', 'Dk. BKR No. 253, Banjarmasin 50927, Banten', '0776 6016 0194', '3039924', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(46, 18, 'Fitriani Uyainah', 'Psr. Abdul Rahmat No. 831, Kupang 95256, Malut', '(+62) 481 2148 021', '1734063', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(47, 9, 'Karen Zulaika', 'Ds. Taman No. 450, Banjarbaru 41863, Sulut', '0397 3236 9507', '2012442', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(48, 4, 'Betania Maimunah Nuraini M.Kom.', 'Jln. M.T. Haryono No. 720, Sungai Penuh 95905, Sulteng', '0927 8152 905', '3143457', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(49, 18, 'Edi Firgantoro', 'Ki. Baranang Siang No. 211, Cilegon 93470, Aceh', '0679 5562 277', '852185', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(50, 18, 'Yulia Pratiwi', 'Ds. Bakaru No. 227, Banjarmasin 29261, Sulbar', '0841 8715 4348', '881241', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(51, 1, 'Restu Kuswandari', 'Jln. Bazuka Raya No. 914, Tidore Kepulauan 13073, Kepri', '(+62) 333 0800 2704', '1569610', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(52, 13, 'Karsa Sihombing', 'Kpg. Katamso No. 347, Malang 63214, Sulsel', '0850 982 573', '735986', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(53, 8, 'Najwa Yolanda S.Pt', 'Kpg. Ketandan No. 477, Administrasi Jakarta Barat 35718, Gorontalo', '0875 2007 128', '2880662', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(54, 13, 'Nabila Pertiwi', 'Ki. Baung No. 360, Subulussalam 51054, Sumbar', '0977 6050 893', '2159309', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(55, 13, 'Mujur Gading Budiyanto', 'Kpg. Wahid No. 165, Kupang 42963, DIY', '0284 4562 812', '3067518', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(56, 8, 'Humaira Lestari', 'Jr. Daan No. 974, Lubuklinggau 47710, Aceh', '0374 7496 4985', '90145', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(57, 3, 'Dalimin Endra Haryanto', 'Jr. Asia Afrika No. 139, Tegal 85529, Jateng', '0255 2901 0528', '697806', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(58, 5, 'Mahmud Hardiansyah S.Psi', 'Ki. Salatiga No. 382, Depok 74780, Sumut', '0201 8550 041', '2352071', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(59, 5, 'Uli Halimah', 'Dk. Dr. Junjunan No. 34, Kotamobagu 29055, Bali', '0938 5404 607', '2343739', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(60, 16, 'Kasiyah Nasyiah', 'Gg. Samanhudi No. 359, Tanjung Pinang 69004, Sumut', '0941 4747 350', '2187418', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(61, 12, 'Zalindra Laila Nurdiyanti S.Psi', 'Ki. Yoga No. 942, Kediri 71205, Sulsel', '(+62) 519 9884 0765', '2165647', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(62, 4, 'Warji Rafid Ardianto S.E.I', 'Kpg. Sumpah Pemuda No. 941, Prabumulih 46976, Jateng', '(+62) 847 2113 682', '3161992', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(63, 3, 'Wira Marbun', 'Psr. Dahlia No. 81, Padangpanjang 92807, Malut', '(+62) 461 9820 701', '1501855', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(64, 15, 'Melinda Aisyah Safitri M.Pd', 'Gg. Sutarto No. 802, Langsa 35728, Aceh', '024 0008 1200', '656949', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(65, 19, 'Tiara Usada', 'Ds. Imam Bonjol No. 19, Banjarbaru 15510, Sulut', '(+62) 233 7284 979', '1053828', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(66, 17, 'Leo Suryono', 'Jr. Bagas Pati No. 460, Tual 94553, Lampung', '0581 9849 7707', '2314140', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(67, 6, 'Sabri Siregar', 'Psr. Bayan No. 164, Bima 45620, DKI', '(+62) 559 6733 852', '3245847', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(68, 3, 'Gilda Laksita', 'Jr. Gambang No. 62, Bontang 62466, Sumut', '0702 4654 511', '1064855', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(69, 5, 'Padmi Laksmiwati', 'Gg. Tambak No. 580, Bekasi 50878, Pabar', '(+62) 416 7269 215', '1287893', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(70, 18, 'Cemplunk Manullang S.I.Kom', 'Dk. Kebangkitan Nasional No. 990, Sawahlunto 55112, Jambi', '(+62) 26 9826 8286', '844441', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(71, 14, 'Vega Lukman Sitompul', 'Kpg. Tentara Pelajar No. 296, Solok 27891, Jambi', '(+62) 354 3351 448', '922197', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(72, 14, 'Kamidin Kasusra Simbolon S.T.', 'Dk. Bata Putih No. 763, Bukittinggi 48007, Sumsel', '0855 735 586', '3202432', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(73, 8, 'Endra Nababan', 'Ds. Wahid No. 382, Bitung 13219, Babel', '(+62) 29 1155 1256', '2831089', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(74, 2, 'Tri Siregar', 'Kpg. Juanda No. 367, Binjai 30266, Babel', '(+62) 677 8377 7751', '1890487', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(75, 3, 'Tirta Timbul Kuswoyo', 'Ds. Radio No. 567, Bitung 51792, DKI', '(+62) 22 0346 8188', '1204817', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(76, 19, 'Pranawa Natsir', 'Psr. Abdul Muis No. 330, Subulussalam 98435, Kalteng', '0771 2870 287', '193583', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(77, 7, 'Rahmi Kusmawati', 'Psr. Kyai Gede No. 94, Tomohon 50284, Babel', '(+62) 393 0686 807', '2183543', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(78, 12, 'Laila Restu Anggraini', 'Jln. Acordion No. 680, Sabang 93720, DIY', '(+62) 651 2071 6666', '2907534', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(79, 3, 'Lamar Prima Dabukke', 'Jln. K.H. Wahid Hasyim (Kopo) No. 843, Pematangsiantar 21963, Riau', '(+62) 779 2837 1916', '1438035', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(80, 8, 'Clara Purwanti', 'Ds. Achmad No. 702, Mojokerto 42376, NTB', '(+62) 321 1101 7694', '1626510', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(81, 19, 'Caket Jarwadi Siregar S.E.', 'Jr. Aceh No. 269, Administrasi Jakarta Pusat 40110, Riau', '(+62) 299 5372 467', '1300864', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(82, 4, 'Bakti Setiawan', 'Ds. Adisumarmo No. 913, Palangka Raya 21991, Sumut', '0358 4767 8846', '576349', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(83, 15, 'Malika Kuswandari', 'Kpg. Cokroaminoto No. 312, Pekanbaru 43564, Riau', '0957 3662 2030', '1129659', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(84, 5, 'Siska Rahimah', 'Kpg. Flores No. 566, Dumai 39916, Lampung', '0472 4535 8715', '2194162', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(85, 1, 'Winda Halimah', 'Jr. Dipenogoro No. 398, Manado 20379, Malut', '(+62) 251 7833 786', '634038', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(86, 2, 'Rina Yuniar', 'Kpg. Bakau No. 36, Singkawang 43944, Kalteng', '(+62) 540 3775 9455', '2310748', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(87, 2, 'Yuni Riyanti S.E.', 'Psr. Juanda No. 602, Tidore Kepulauan 89987, DKI', '(+62) 527 6857 8826', '1886695', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(88, 2, 'Ida Shania Mulyani S.I.Kom', 'Kpg. Suprapto No. 10, Pekanbaru 75170, DKI', '024 9494 432', '107058', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(89, 15, 'Sabri Hakim M.TI.', 'Ds. Wahid Hasyim No. 773, Dumai 97781, Lampung', '0857 5752 694', '2336734', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(90, 2, 'Nadia Yulia Purnawati S.E.', 'Jr. Sutarto No. 746, Jayapura 11720, DKI', '0999 5029 355', '1308926', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(91, 15, 'Alika Mulyani', 'Kpg. Baladewa No. 1, Tomohon 66194, Gorontalo', '(+62) 20 8163 089', '1255941', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(92, 9, 'Victoria Utami S.Pt', 'Ki. Wahid No. 972, Denpasar 19266, Jambi', '(+62) 21 2685 4604', '3224590', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(93, 16, 'Empluk Gadang Sihombing', 'Ds. Sugiyopranoto No. 27, Solok 90137, NTT', '0719 0398 7780', '1473257', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(94, 17, 'Prabu Pranowo M.Ak', 'Jln. Ir. H. Juanda No. 635, Pagar Alam 99993, Maluku', '0712 1845 9803', '3091703', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(95, 17, 'Cengkal Hardi Jailani', 'Jr. Monginsidi No. 418, Sorong 52306, Sulbar', '(+62) 693 8161 8026', '2195835', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(96, 15, 'Asman Kusumo', 'Kpg. Bambon No. 785, Depok 58777, Malut', '0403 5331 929', '697919', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(97, 18, 'Violet Hana Zulaika', 'Jln. Sudirman No. 271, Bontang 82052, Jabar', '0632 9401 490', '338665', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(98, 8, 'Humaira Haryanti', 'Ds. Kiaracondong No. 533, Kotamobagu 25628, Sultra', '(+62) 417 4559 652', '416801', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(99, 7, 'Maryanto Maulana', 'Ds. Urip Sumoharjo No. 784, Gunungsitoli 25927, Jatim', '0396 9909 272', '2354194', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(100, 17, 'Enteng Hutagalung', 'Ki. Pahlawan No. 503, Dumai 20155, Kaltara', '(+62) 685 0959 309', '1960277', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(101, 6, 'Galak Darsirah Nashiruddin', 'Dk. Elang No. 826, Bandar Lampung 31092, Kepri', '(+62) 982 4423 987', '1137794', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(102, 17, 'Enteng Sihombing', 'Jr. Babakan No. 679, Jayapura 22596, Maluku', '0792 9027 220', '478537', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(103, 11, 'Latif Nababan S.E.I', 'Ds. Bhayangkara No. 281, Surakarta 57655, Sumsel', '(+62) 441 1220 285', '425267', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(104, 5, 'Aurora Irma Usada S.E.', 'Jr. Cikutra Timur No. 459, Banda Aceh 62118, Gorontalo', '0375 1304 113', '1011869', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(105, 10, 'Karsa Hutapea', 'Ds. Rajawali Timur No. 170, Denpasar 59189, Sulsel', '(+62) 907 2198 8597', '3020257', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(106, 12, 'Cakrabirawa Prabowo', 'Ki. Otista No. 825, Palembang 64525, Sultra', '0868 1568 8055', '154347', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(107, 4, 'Zahra Nurdiyanti', 'Psr. Baranang No. 267, Bekasi 88666, Papua', '(+62) 834 416 201', '2528898', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(108, 16, 'Zulaikha Astuti', 'Jr. Setia Budi No. 976, Yogyakarta 28918, Sumsel', '(+62) 850 9892 182', '2057777', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(109, 19, 'Raisa Sakura Winarsih S.Kom', 'Dk. Urip Sumoharjo No. 363, Solok 48532, Banten', '(+62) 519 0249 472', '2871711', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(110, 3, 'Rama Panji Nababan', 'Psr. Pelajar Pejuang 45 No. 769, Pontianak 79538, Banten', '022 6911 216', '121374', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(111, 5, 'Cinthia Dewi Namaga S.E.I', 'Dk. Moch. Toha No. 928, Banjar 69074, Jambi', '(+62) 979 6478 899', '422254', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(112, 10, 'Dewi Suartini M.Farm', 'Ki. Dahlia No. 885, Sabang 48983, DIY', '021 5760 8748', '395444', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(113, 3, 'Prayogo Panca Haryanto S.Ked', 'Psr. Halim No. 478, Bogor 59887, Kalteng', '025 6294 3490', '809706', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(114, 2, 'Shakila Fujiati M.Farm', 'Jr. Bakti No. 584, Jambi 58001, Kepri', '0360 9754 3663', '2693270', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(115, 9, 'Najwa Fathonah Widiastuti', 'Jr. Karel S. Tubun No. 460, Langsa 36783, Banten', '025 7987 287', '834034', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(116, 16, 'Kiandra Novitasari', 'Psr. Jend. Sudirman No. 831, Padangpanjang 94063, Gorontalo', '(+62) 801 5857 503', '1031148', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(117, 3, 'Diana Lailasari S.T.', 'Jr. Babah No. 520, Dumai 67215, Sulsel', '(+62) 593 3049 9908', '566974', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(118, 5, 'Gilda Mala Mandasari', 'Kpg. Mahakam No. 548, Bandung 51940, Sumsel', '0667 9570 5912', '2796517', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(119, 9, 'Gina Malika Novitasari', 'Ki. Yosodipuro No. 288, Bekasi 83732, Babel', '(+62) 676 2986 8597', '1001536', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(120, 4, 'Kemal Napitupulu', 'Ki. Raya Ujungberung No. 105, Palu 85100, Kalbar', '(+62) 786 0460 929', '1669223', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(121, 19, 'Naradi Wasita', 'Ds. Abdul Rahmat No. 937, Sungai Penuh 17855, Kalteng', '(+62) 827 2117 465', '2372350', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(122, 16, 'Zalindra Puspa Uyainah', 'Dk. Padma No. 622, Cimahi 38323, Aceh', '(+62) 959 6394 7516', '1160027', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(123, 19, 'Endah Nasyiah S.E.', 'Ds. Moch. Toha No. 908, Subulussalam 14083, Bali', '0908 6128 627', '3091862', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(124, 14, 'Muni Kurniawan', 'Jln. Lumban Tobing No. 285, Tebing Tinggi 29513, Riau', '(+62) 510 5167 379', '351109', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(125, 8, 'Devi Padmasari', 'Jln. Raden No. 89, Medan 17949, Bengkulu', '(+62) 672 2346 6005', '3051461', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(126, 11, 'Karja Nugroho', 'Kpg. Muwardi No. 642, Cilegon 15841, Kalsel', '0216 5778 4033', '851412', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(127, 17, 'Yani Purnawati', 'Kpg. R.E. Martadinata No. 648, Bima 20534, NTB', '0633 0177 3372', '2042013', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(128, 10, 'Rizki Siregar S.Farm', 'Ki. Laswi No. 564, Tegal 44418, Jateng', '(+62) 318 4477 3389', '2324326', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(129, 4, 'Endah Wijayanti', 'Ki. Cikutra Barat No. 842, Batam 86651, Bengkulu', '027 8970 859', '528794', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(130, 4, 'Karman Prayoga M.TI.', 'Kpg. Abdullah No. 964, Pariaman 67706, Sulut', '0952 4910 085', '2699431', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(131, 19, 'Elvina Titin Utami S.Psi', 'Kpg. Kusmanto No. 442, Ternate 68976, Sultra', '0429 4339 933', '303285', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(132, 19, 'Aswani Saragih', 'Ds. Kiaracondong No. 445, Palopo 77326, Gorontalo', '(+62) 996 0349 5955', '3121690', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(133, 15, 'Lurhur Saefullah', 'Ds. Jakarta No. 765, Palu 99007, Kalsel', '(+62) 561 2833 805', '2476553', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(134, 3, 'Harja Megantara S.H.', 'Kpg. Sampangan No. 136, Bau-Bau 71644, Sulteng', '(+62) 552 8618 3034', '1885857', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(135, 2, 'Indah Septi Lailasari S.Pt', 'Ds. Sugiono No. 440, Palangka Raya 26684, Jateng', '(+62) 379 9019 431', '1152966', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(136, 12, 'Eli Restu Wastuti', 'Gg. Baranang Siang No. 299, Magelang 23948, Jateng', '0585 5758 3965', '916964', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(137, 2, 'Balijan Balangga Megantara', 'Gg. Rumah Sakit No. 674, Lhokseumawe 57166, Sumbar', '0852 950 820', '1955905', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(138, 14, 'Kenes Pradana', 'Kpg. BKR No. 931, Pasuruan 47263, Bali', '0699 9745 9182', '3364372', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(139, 17, 'Hadi Akarsana Maulana', 'Dk. Baiduri No. 71, Tomohon 11307, DIY', '(+62) 780 6445 0791', '1668537', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(140, 19, 'Bancar Pranowo', 'Ds. Kalimantan No. 729, Padang 16521, Maluku', '(+62) 526 7854 537', '54208', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(141, 1, 'Cengkir Luis Winarno', 'Ds. Aceh No. 708, Prabumulih 68232, Sulteng', '0916 7656 836', '3220535', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(142, 3, 'Galang Garda Gunarto', 'Kpg. Wora Wari No. 247, Pekalongan 51531, Jambi', '(+62) 243 7564 2887', '2150944', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(143, 15, 'Puji Ami Usada', 'Psr. K.H. Wahid Hasyim (Kopo) No. 161, Payakumbuh 88257, Sulut', '0607 8954 6444', '1211777', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(144, 1, 'Cakrabuana Januar', 'Ds. Veteran No. 898, Banjarbaru 65098, Kaltim', '0603 6226 3270', '2575874', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(145, 9, 'Aslijan Wasita', 'Jln. Abdul Rahmat No. 280, Payakumbuh 20927, Gorontalo', '(+62) 862 8153 9990', '3436570', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(146, 18, 'Ina Tina Rahayu S.Gz', 'Dk. Banceng Pondok No. 843, Pagar Alam 78211, Banten', '0880 9142 3116', '2584907', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(147, 8, 'Prabu Surya Saptono S.E.I', 'Kpg. Banda No. 188, Balikpapan 44167, Kepri', '(+62) 936 8480 398', '2035747', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(148, 17, 'Galih Megantara', 'Psr. Yogyakarta No. 13, Tanjungbalai 30646, Sumut', '(+62) 825 7958 9445', '1547897', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(149, 5, 'Ani Novitasari', 'Ki. Suniaraja No. 410, Jambi 36405, Pabar', '(+62) 961 2619 9802', '2524169', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(150, 19, 'Gilang Emin Waskita', 'Gg. Ikan No. 869, Palu 57474, Sulbar', '(+62) 23 9226 966', '3377956', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(151, 2, 'Hairyanto Anggriawan', 'Jr. Yap Tjwan Bing No. 242, Tegal 77078, Sultra', '(+62) 568 3332 8780', '1963103', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(152, 13, 'Halima Yani Hariyah', 'Ds. Merdeka No. 59, Tual 70157, Sultra', '(+62) 657 0937 279', '3338084', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(153, 11, 'Darimin Dabukke', 'Dk. Banceng Pondok No. 924, Pangkal Pinang 38595, Sulbar', '0823 5661 059', '1445649', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(154, 3, 'Abyasa Kuswoyo S.Farm', 'Jln. Rajiman No. 353, Tual 61590, Aceh', '(+62) 936 4929 481', '1546573', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(155, 14, 'Melinda Hastuti S.E.I', 'Jln. Veteran No. 83, Cilegon 19132, Kaltara', '(+62) 465 1012 6760', '2595356', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(156, 13, 'Farah Keisha Astuti', 'Jr. Mulyadi No. 78, Pangkal Pinang 86594, Pabar', '0379 1187 050', '574199', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(157, 8, 'Wakiman Alambana Kuswoyo S.I.Kom', 'Ki. Bagonwoto  No. 470, Tasikmalaya 27186, Lampung', '0529 7944 567', '2192091', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(158, 12, 'Cecep Najmudin', 'Jr. Agus Salim No. 415, Bandar Lampung 12165, Banten', '0767 8934 3627', '266340', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(159, 1, 'Kamaria Nasyiah', 'Ki. Eka No. 666, Banda Aceh 85553, Jateng', '(+62) 208 4231 6382', '2161018', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(160, 18, 'Fathonah Mayasari', 'Psr. Supomo No. 259, Administrasi Jakarta Pusat 47144, Sultra', '0759 4287 8819', '3300036', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(161, 4, 'Lulut Wacana', 'Jr. Peta No. 718, Tegal 29320, Kaltim', '0683 3196 7918', '1137766', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(162, 4, 'Ilsa Tira Nasyiah S.Pt', 'Gg. Raya Setiabudhi No. 821, Jambi 22924, Sulbar', '0546 4923 737', '1956230', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(163, 2, 'Ayu Purnawati', 'Psr. Pasirkoja No. 413, Solok 68496, Sumsel', '(+62) 972 5976 642', '3186913', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(164, 8, 'Zelda Uyainah', 'Gg. Pacuan Kuda No. 821, Ternate 31106, Malut', '0541 3478 127', '2664130', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(165, 14, 'Makuta Muni Rajata M.Farm', 'Gg. Banda No. 185, Parepare 79424, Gorontalo', '0314 9949 7963', '1002057', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(166, 19, 'Rahayu Mardhiyah', 'Jr. Gotong Royong No. 197, Pekanbaru 61745, Jambi', '0394 8465 067', '672106', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(167, 14, 'Vanesa Clara Pudjiastuti S.E.I', 'Ds. Hasanuddin No. 374, Lhokseumawe 71602, Pabar', '0655 6387 8605', '869540', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(168, 15, 'Salimah Usada', 'Ki. Ir. H. Juanda No. 191, Bima 56865, Jambi', '0228 5200 536', '302834', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(169, 16, 'Yahya Damanik', 'Kpg. Pacuan Kuda No. 879, Sibolga 38027, Kaltara', '(+62) 401 5117 1884', '1716561', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(170, 4, 'Violet Hani Rahimah S.Sos', 'Gg. Bambon No. 281, Mojokerto 37776, Jabar', '(+62) 689 8719 022', '1292332', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(171, 4, 'Prabawa Setiawan S.T.', 'Jln. Teuku Umar No. 806, Semarang 46672, Sumbar', '(+62) 413 9118 474', '1145608', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(172, 1, 'Cawisadi Mustofa', 'Gg. Bagonwoto  No. 68, Blitar 69360, Maluku', '027 3367 484', '157451', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(173, 8, 'Gina Hassanah', 'Ds. Hang No. 147, Bau-Bau 88796, Sumsel', '0977 5919 955', '3277447', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(174, 18, 'Ana Rahmawati', 'Ki. Baan No. 767, Salatiga 53588, Kalteng', '0728 6963 9815', '467324', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(175, 5, 'Kezia Aryani M.Ak', 'Dk. Kusmanto No. 90, Metro 56825, Jatim', '(+62) 537 8412 9093', '2045727', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(176, 5, 'Carla Yuliarti', 'Jr. Bayan No. 103, Bima 88212, Kaltim', '(+62) 28 6383 636', '1525825', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(177, 19, 'Clara Melani', 'Ds. Raden No. 422, Pekalongan 26176, Sumsel', '0569 0175 2118', '1604648', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(178, 3, 'Radit Megantara', 'Jr. Ronggowarsito No. 495, Serang 29298, Sumsel', '0790 3822 297', '3029380', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(179, 13, 'Usyi Dinda Pudjiastuti M.Pd', 'Jln. Karel S. Tubun No. 758, Tegal 15200, Papua', '0818 8208 1633', '824356', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(180, 2, 'Sarah Ami Oktaviani', 'Ki. Bakaru No. 972, Pontianak 19211, DKI', '0814 322 336', '933635', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(181, 12, 'Ganjaran Mahdi Sirait S.Pd', 'Psr. Gremet No. 654, Banjarmasin 75634, NTB', '(+62) 946 8036 9723', '293222', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(182, 13, 'Daru Tasdik Simanjuntak S.Gz', 'Psr. Bakaru No. 224, Pematangsiantar 56833, DIY', '(+62) 963 4106 040', '2163350', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(183, 8, 'Kartika Zelaya Wahyuni S.Sos', 'Dk. Panjaitan No. 361, Lubuklinggau 71750, Papua', '(+62) 401 0260 1512', '2460984', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(184, 3, 'Yahya Marbun S.Sos', 'Ds. Babadak No. 944, Jambi 39110, Sulut', '(+62) 760 5813 1516', '3284481', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(185, 5, 'Novi Wahyuni', 'Kpg. Baranang No. 780, Padangpanjang 79430, Banten', '(+62) 768 4016 225', '2035203', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(186, 3, 'Amelia Zulfa Kuswandari', 'Jr. Diponegoro No. 625, Manado 49466, Sulut', '(+62) 744 3565 940', '2518958', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(187, 9, 'Maras Latupono', 'Jln. Jend. Sudirman No. 867, Mojokerto 21245, Kaltara', '028 3704 565', '845426', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(188, 13, 'Harsana Wibisono', 'Jr. Baranang Siang Indah No. 229, Pariaman 39055, Kepri', '(+62) 327 5915 9510', '3020252', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(189, 13, 'Kadir Nyoman Mustofa', 'Dk. Thamrin No. 543, Gunungsitoli 29848, Jabar', '(+62) 318 3717 3788', '1436505', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(190, 11, 'Halim Hendri Hakim M.Ak', 'Gg. Yos No. 522, Kediri 98737, Kaltim', '(+62) 774 1685 1320', '2586252', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(191, 8, 'Dalimin Parman Siregar S.Psi', 'Kpg. Kusmanto No. 930, Bekasi 51266, Kalteng', '0679 4318 570', '1841255', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(192, 12, 'Darsirah Najmudin', 'Jr. Gatot Subroto No. 366, Tegal 48098, NTT', '(+62) 926 3899 779', '2999650', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(193, 19, 'Gina Mandasari S.Ked', 'Dk. Jend. A. Yani No. 770, Gunungsitoli 90527, Riau', '(+62) 473 7867 2245', '1240142', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(194, 16, 'Jumadi Dongoran', 'Psr. Moch. Yamin No. 511, Tegal 12236, Sumut', '(+62) 201 2557 050', '2362458', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(195, 7, 'Surya Suwarno', 'Jr. Cikutra Barat No. 122, Ternate 57426, Sulteng', '(+62) 284 0994 8656', '1199435', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(196, 6, 'Puji Andriani', 'Kpg. Diponegoro No. 942, Pematangsiantar 64464, Gorontalo', '0200 8406 6553', '1957756', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(197, 17, 'Rahmat Nyoman Rajasa', 'Kpg. Cihampelas No. 232, Salatiga 36030, Sulsel', '(+62) 495 3766 995', '2176877', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(198, 8, 'Samiah Halima Yolanda', 'Dk. Bambon No. 480, Parepare 91422, Lampung', '0817 2146 695', '3076846', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(199, 19, 'Belinda Uchita Laksita S.Sos', 'Psr. Elang No. 270, Tarakan 79690, Sulut', '(+62) 685 9646 1131', '1163335', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(200, 17, 'Mahesa Manullang M.Pd', 'Dk. Ters. Pasir Koja No. 860, Semarang 17891, Sulut', '(+62) 306 2700 2730', '319136', '1', '2022-05-05', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27');

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
(1, 1, 1, 'Vel et.', 'doloremque-at-neque-quidem-officiis-et', NULL, 'Quae laborum sed inventore amet assumenda et placeat. Nihil ipsam quo consequatur vel. Expedita dicta explicabo dolores nostrum corrupti quos impedit.', '<p>Qui officiis unde explicabo hic quo labore. Accusantium explicabo doloremque culpa tenetur aliquam aut aut. Atque corporis a cum culpa optio. Nesciunt corporis a provident fugiat et.</p><p>Quaerat itaque deserunt totam porro minus. Voluptas quis animi explicabo nihil fugiat autem. Consectetur necessitatibus quibusdam similique illum.</p><p>Perspiciatis corporis neque non dolores laudantium quas eos mollitia. Et odit eos et fugit et est. Hic neque recusandae ut hic.</p><p>Ad vel minus ratione aut ullam reprehenderit praesentium. Asperiores asperiores eos aut. Et reiciendis sint doloremque fuga alias. Et repellendus atque voluptatem animi.</p><p>Voluptatem ut aliquam hic consectetur atque. Perferendis eum maxime illo quam. Error ipsam nemo voluptates libero. Eos ut aut rem qui unde quos.</p><p>Laborum nemo dolores accusamus id dolorem. Sit tempore est ut nemo. Officiis quae consequatur ab quisquam. Quos distinctio blanditiis rerum voluptates harum eligendi odit.</p><p>Molestiae nobis in rerum id nesciunt placeat. Numquam voluptatibus aspernatur animi autem ratione in debitis. Accusamus quaerat repudiandae molestiae voluptatem atque. Veritatis dicta quaerat eum.</p><p>Quaerat est officiis voluptates deserunt consequatur esse nihil. Et adipisci odio facere aut.</p><p>Dolores alias ea modi pariatur. Laboriosam natus est dolorum iste reprehenderit. Dolorum illo optio aspernatur eum sunt.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(2, 1, 2, 'Illum ipsum itaque ipsa ad voluptatem nam error voluptas.', 'reprehenderit-fuga-alias-enim-voluptas-ut-vitae-vel', NULL, 'Enim iste ea exercitationem iste enim perspiciatis reiciendis. Dolor vel officia hic et ullam numquam. Maiores molestiae in quidem eius. Dolor reprehenderit fugit et quo cumque quo eum.', '<p>Dicta qui officia quia recusandae ea. Eligendi quia alias quia debitis praesentium. Pariatur voluptatem quia illo nobis nostrum. Et totam quae quo in. Ut aut reprehenderit aperiam recusandae velit nisi.</p><p>Quia voluptatibus est et est ex. Et mollitia ipsam sit ea et et. Nisi enim sed in pariatur quia qui voluptatum. Et optio consequatur qui eum neque aut.</p><p>Sequi doloribus consectetur rerum aut temporibus quo velit. Sapiente sit dolor eum nobis dignissimos. Ea voluptas veniam modi ullam illum est. Laborum et voluptatibus excepturi perferendis libero.</p><p>Voluptatem accusantium quibusdam qui repellat aspernatur atque. Nam nulla ducimus qui. Dolores dolore dolores non sunt numquam modi sed.</p><p>Voluptatem aspernatur cupiditate voluptate temporibus. Porro non eum sed non dignissimos. Minima quidem rerum consectetur et.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(3, 1, 3, 'Dolores corrupti molestiae voluptatem.', 'itaque-ut-excepturi-a-sit', NULL, 'Culpa qui aut recusandae quo. Voluptas velit eos et ut. Nisi sapiente animi non at modi.', '<p>Minima pariatur vel et quisquam maiores. Exercitationem vitae rerum unde laboriosam. Consectetur eos eaque consequatur ab distinctio aspernatur. Ipsam adipisci qui qui ipsum et perferendis dolore.</p><p>Veritatis numquam sit officiis tempore quia culpa quam. Alias magnam nesciunt vel. Id qui dignissimos recusandae quaerat ipsa est.</p><p>Optio qui voluptatem qui quod aut et at. Fuga et sint corrupti voluptatem inventore sint architecto. Odio modi nemo ut.</p><p>Quo omnis eius quia ut enim officiis ut. Laudantium voluptatem sunt cum quisquam natus animi consequuntur. Dolores error ut provident aliquid repellendus unde autem ipsa.</p><p>Voluptatem amet cumque et sed voluptatem voluptatem eos a. Sed sit dolores et harum aut. Veniam iste voluptatem voluptas occaecati illo dolores ad enim.</p><p>Nemo et porro suscipit nobis voluptatem distinctio hic qui. Placeat exercitationem saepe id blanditiis occaecati nostrum autem. Rerum corrupti qui pariatur consectetur voluptatibus modi. Reiciendis consectetur quos rerum quis.</p><p>Dolorem numquam eius eum voluptatem. Totam placeat rerum temporibus autem qui. Aut neque nam voluptatem quod sed. Est ut accusamus ut nesciunt.</p><p>Fugit nam sit et qui voluptatem deserunt impedit. Facere est facere et. Sed qui sit voluptatem.</p><p>Ab id cupiditate est dolorum. Numquam et illum molestias aut asperiores. Delectus est placeat voluptatem delectus facere explicabo. Voluptas in amet quis autem nisi voluptatem et velit. Est sunt aliquam deserunt inventore illo eius qui.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(4, 2, 2, 'Quia exercitationem cumque ut est nihil et laborum ut.', 'rem-accusantium-accusantium-aut-deserunt-repudiandae', NULL, 'Eum est voluptatem eveniet maxime vero eum maiores praesentium. Quia voluptas similique voluptas qui rerum. Cum aut sed recusandae error. Quod voluptatem nihil facilis aut voluptas sint fugit.', '<p>Numquam fugiat distinctio eum possimus quis non. Et voluptas eveniet amet quia et vero nobis. Aut aliquam id aliquam nisi. Eos sed sint voluptas cumque.</p><p>A nemo necessitatibus eius doloremque delectus. Corrupti enim numquam cum aliquam.</p><p>Amet minus quis amet eum. Voluptatem harum maiores natus enim incidunt incidunt ut corporis. Iste fugit pariatur architecto aliquam voluptas enim est.</p><p>Maiores perferendis vitae veniam itaque autem illum. Rerum quia atque eum alias. Minus est omnis illum a voluptatem et nulla. Sunt excepturi dicta animi. Necessitatibus et molestiae est aut.</p><p>Ducimus dolores corporis praesentium. Aut quisquam quia neque veritatis earum. Autem vitae reiciendis fuga dolores eius veritatis. Officiis aut eum asperiores tempora illum dolores tempore.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(5, 2, 1, 'Nihil voluptatibus eum fugiat id eum eum ea officiis facilis mollitia.', 'voluptatem-magni-minus-atque-voluptates-culpa-et', NULL, 'Nostrum aut consequatur doloribus repellat eius repellendus ut et. Sint nisi ad voluptatibus. Incidunt ducimus ea enim consequatur ad unde vitae. Aut atque ut ex aliquam aperiam.', '<p>Qui aperiam incidunt et molestiae natus et esse quo. Adipisci eum aut repudiandae tenetur temporibus. Aliquam delectus explicabo aut dolore veniam. Officia possimus omnis totam quia expedita id.</p><p>Corrupti eveniet molestiae cumque voluptates est ut. Est voluptatem consequatur ut animi deserunt. Et inventore et quidem architecto odio aut officia. Dignissimos culpa impedit facilis dolore minima et velit sint.</p><p>Quo eius voluptatibus ipsa deserunt quibusdam. Molestiae consectetur sunt magni illum ea repellendus recusandae. Voluptatem assumenda tenetur sit aut eaque possimus.</p><p>Aut voluptas non assumenda ut. Voluptatem error soluta sint ab odio quas consequatur. Voluptas qui dolorum quibusdam odit. Voluptas et qui quasi assumenda illum. Sit labore impedit corporis.</p><p>Voluptate pariatur harum dolore odio consequatur. Dolor voluptatem totam eum. Cum rerum omnis nostrum similique et ut.</p><p>Tenetur sint quidem quia et ipsam placeat perspiciatis voluptatem. Voluptate possimus fugiat nostrum soluta ab. Dolores praesentium rerum in nulla libero ipsa.</p><p>Impedit voluptates dignissimos unde veritatis. Beatae nihil nam perferendis velit illo quos consequatur. Quibusdam occaecati mollitia earum laborum facere.</p><p>Porro occaecati explicabo eius expedita et officiis voluptate. Blanditiis sit sed architecto. Aut error modi eius et ut.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(6, 2, 1, 'Maiores sit sunt ut ipsa.', 'repellendus-possimus-quia-ea-praesentium-non-sit', NULL, 'Dolor quos dolorem quisquam et ut maxime ex. Et quasi et qui laborum non nulla voluptatum placeat. Animi quia labore quia eligendi.', '<p>Veniam labore placeat qui repellendus in aut sunt et. Aut consectetur expedita excepturi aut facilis nam. Et inventore ut tempora occaecati ea sed.</p><p>Quisquam nisi ab nam quod iure necessitatibus ab harum. Totam quos delectus autem dolorem voluptas atque quasi. Rerum nostrum tenetur et. Cum velit voluptatem et atque quis pariatur. Quia eos in omnis eum atque iusto qui ipsam.</p><p>Modi dolor nobis aut voluptates et totam aut. Assumenda aut non accusantium eius ab nobis. Ut pariatur doloribus at eos ratione maxime nihil explicabo. Laborum excepturi impedit omnis ipsam aut accusantium.</p><p>Quia at maiores aliquid voluptatem nobis alias. Eaque quia consequatur dolores alias amet doloribus. Quaerat tenetur ipsum consequuntur est odit doloremque accusantium. Doloribus explicabo cupiditate enim officia velit reprehenderit optio.</p><p>Necessitatibus sed autem sint aspernatur. Voluptatem vitae ea nemo ipsa. Ipsa repudiandae veniam rem est. Harum qui quod sit tenetur aut vel.</p><p>Eligendi quod fuga repellat esse assumenda debitis. Accusamus expedita non omnis iure voluptatem. Eos iste voluptatem consequatur tempora assumenda. Numquam id velit magnam a repellendus ut sapiente pariatur.</p><p>Quo odio dolorum magnam exercitationem. Odio eligendi doloremque veniam nemo quis. Qui officiis iure consequatur error.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(7, 1, 3, 'Nemo ipsum quis non enim.', 'repellat-error-aut-dolores-nesciunt', NULL, 'Sit delectus excepturi corrupti hic omnis. Nihil rerum iure animi dignissimos. Ab libero consequatur adipisci non. Perspiciatis reiciendis debitis nihil voluptas tempore in.', '<p>Fugiat quos praesentium autem ratione et reiciendis. Facere aut nemo autem praesentium quia qui. Aspernatur fugit quia et. Qui nihil autem similique doloremque nostrum exercitationem voluptas.</p><p>Et sint quisquam corporis laudantium modi maiores. Vel repellat voluptatem et dolorem earum. Culpa repellat fuga quis. Eum dolore repellendus officiis eum natus. Perferendis qui expedita error et natus nihil quas.</p><p>Et magni est et reprehenderit nobis iure. Aperiam a aut labore ullam qui. Ea in voluptatum quidem et et perspiciatis molestias. Provident perspiciatis autem officiis ea.</p><p>Consequuntur eos fugit est dignissimos quas. Cumque voluptatibus et et. Voluptates autem rerum sint qui reprehenderit non.</p><p>Omnis animi distinctio ut consequatur quidem. Molestias et optio ut ea. Odio fugit dolore aspernatur reiciendis asperiores.</p><p>Officia ullam consequatur impedit voluptas. Architecto cumque ut ullam assumenda amet temporibus sed eos. Laudantium numquam rerum excepturi non velit cupiditate ut.</p><p>Iste nesciunt voluptatibus deserunt odit. Explicabo enim sapiente enim dolore porro natus. Qui nihil ea quis ea ut sed. Earum nobis voluptatem vel sequi esse. Occaecati dignissimos provident illo sit vero ducimus.</p><p>Nulla repellendus molestiae enim necessitatibus. Placeat voluptatibus non nihil magni vitae autem. Maiores ut repudiandae tempore est consequatur perspiciatis. Voluptates tempore aperiam soluta excepturi itaque reprehenderit.</p><p>Ea sunt et accusantium nulla. Iusto suscipit porro suscipit odio quia. Non est suscipit fugiat. Voluptate reprehenderit maxime deserunt eum.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(8, 1, 2, 'Necessitatibus natus incidunt.', 'rem-magni-corporis-molestias-qui-aut', NULL, 'Temporibus blanditiis est soluta aut. Quo odit eligendi officia ea ea sit ipsam quo. Quae quasi hic aliquam doloribus similique nulla est. Voluptas nihil facere et ipsum adipisci sit et.', '<p>Laudantium facere magnam maiores laboriosam ut doloribus. Rem distinctio id ex omnis rerum autem exercitationem. Fugiat eum aut ut voluptas. Libero cum laudantium eos nobis ut et.</p><p>Dolor fugit laudantium omnis libero velit ut. Perferendis adipisci veritatis nihil sapiente ipsa. Est repellat aperiam unde inventore.</p><p>Est vel sed quidem quae. Accusantium id et maxime illo. Ut atque beatae voluptatem aliquid error error qui.</p><p>Quod neque placeat et quo magnam facilis. Culpa ipsum sint cupiditate sint voluptatum voluptas. Ullam veritatis eum sequi. Nulla quo voluptas voluptatem amet est temporibus porro quidem. Voluptas unde laborum aut dolore ut quidem aperiam.</p><p>Perferendis praesentium eius nemo. Sed tempora voluptatem quia aliquid omnis in voluptatibus.</p><p>Unde et qui facere vel. Aut consequatur itaque omnis et commodi. Magnam nostrum quas similique ipsa eos. Optio saepe porro doloremque voluptas est est iure.</p><p>Qui nesciunt harum tempore. Nam illo praesentium sint. Esse est facere id aspernatur alias dolores. Doloremque blanditiis et quis omnis dolores.</p><p>Ipsa asperiores quia libero. Harum recusandae quo minima molestiae aliquam et eos. Autem temporibus et odit. Sequi nemo qui possimus eius. Atque et odio iure.</p><p>Est iure et omnis doloremque odit ut. Dolorem officia vel sit id nisi a autem. At velit et debitis ut. Quod velit qui minima. Veniam quia enim est dolore saepe ex distinctio modi.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(9, 1, 1, 'Et possimus et esse et similique voluptates.', 'dolores-enim-optio-nostrum-est-architecto-corrupti', NULL, 'Et qui id ut. Et incidunt iusto non et aut eum quo. Expedita omnis rem hic id. Reiciendis est explicabo aut sint aperiam molestias reprehenderit.', '<p>Nostrum est incidunt repudiandae aut omnis velit. Qui consequuntur aut iusto. Aut voluptates eos et distinctio ratione est temporibus voluptas.</p><p>Commodi hic qui id quia. Quo est illum enim corrupti. Quis ipsa fuga sint eveniet et placeat. Reiciendis et vel est consequatur harum.</p><p>Est blanditiis similique assumenda molestias molestiae facere. Doloribus neque officiis ipsa quo hic pariatur eligendi ab. Sed fugiat vero ratione. Laudantium harum id beatae atque. Ullam suscipit et natus quaerat error sed.</p><p>Nesciunt quisquam ipsam sunt nemo dolorem. Ea eos est dolor consequatur optio. Nostrum illo minus possimus voluptas corrupti quisquam. Esse autem ex quis sed adipisci iure.</p><p>Qui tempora veritatis voluptas fugiat. Consectetur possimus qui qui dignissimos rerum similique. Dolorem nobis aut quod dolorum harum sed.</p><p>Repellendus placeat aut quia perferendis odit aut. Sed sed tempora distinctio sit qui ipsa et illum. Tenetur molestiae et earum facere repellat officia ipsam. Vitae sit reiciendis aliquid aperiam.</p><p>Sint est nam veritatis ea repudiandae qui. Et cumque quae placeat vel exercitationem molestias voluptatum. Enim reprehenderit ad illo. Quod impedit sed nisi sit.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(10, 2, 2, 'Dolorem voluptatem impedit quis dolores.', 'quia-sint-nemo-aut-et-ab-aut-veniam', NULL, 'Natus et alias dolorem mollitia. Dolores libero quia error vero. Omnis unde dolores et veniam ipsum aspernatur consectetur. Provident tempore praesentium dolorem rerum.', '<p>Hic natus odio quam modi ratione tempore. Dolorum libero occaecati rerum voluptatem neque laboriosam. Quia voluptatibus blanditiis numquam. Rerum maiores quod qui sunt officia dolorem esse.</p><p>Nihil itaque nostrum sit voluptas sed. Et est consequatur et voluptatem deleniti. Illum ut sit dolores iste voluptatem quis.</p><p>Numquam qui animi molestiae repellendus commodi voluptas. Tempore perferendis molestias et amet nisi quia ducimus. Iusto quia dicta nam occaecati tempore omnis ducimus qui. Quo voluptatum repellendus et veritatis nisi neque velit. Sed provident vel laborum.</p><p>Eum enim quaerat beatae magni aspernatur. Quia soluta vel dicta. Reprehenderit adipisci vitae consectetur blanditiis quis illo iure. Mollitia occaecati ipsam eum harum ut fugit alias.</p><p>Corporis eveniet voluptatem quam maxime suscipit optio iusto. Vero possimus aut est aliquam. Ea sit fugit neque voluptate repellat doloremque. Omnis sint aut sequi consequatur dolor aut vero. Ducimus est praesentium iure ea.</p><p>Saepe placeat quisquam corporis reprehenderit eum. Provident repellat nam eaque.</p><p>Maxime autem omnis itaque perferendis autem. Ut beatae et quia hic repudiandae.</p><p>Maxime dolore sint tempore quia odit ex consequuntur dicta. Veritatis quis vel fugiat. Ad deserunt amet omnis eos repudiandae quia.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(11, 1, 1, 'Repudiandae tempora nostrum sed qui.', 'consequatur-sit-necessitatibus-unde-ad-omnis-quisquam-non', NULL, 'Voluptas nam deleniti assumenda similique quia autem. Voluptatem ea asperiores molestias perspiciatis sunt reiciendis necessitatibus. Voluptas minus qui dolor.', '<p>Eos sint deserunt dolorem. Fugiat consequatur dolorem voluptatem incidunt quo sunt rerum. Et tenetur quis repellendus provident dolor dolores.</p><p>Voluptatum est repellendus exercitationem dolorum. Deserunt veniam voluptatum natus quia quis laboriosam voluptatem. Ut neque delectus sit dolores dolorem error corporis. Aperiam odit non aut ut reprehenderit hic facere.</p><p>Rerum et qui alias numquam et et. Dignissimos quasi quasi sequi est consequuntur fugiat. Fuga voluptatibus asperiores commodi eos dicta esse. Optio optio sed esse enim. Et aut optio laudantium qui adipisci quisquam odio voluptas.</p><p>Iusto expedita quos neque saepe. Sit quisquam sequi ad est provident officiis vero. Doloremque omnis provident dolor. Consequatur aut sit distinctio.</p><p>Fuga labore est est suscipit. Tempora similique quas et sint. Dolor praesentium maiores doloribus ad ea labore velit. Eveniet quidem enim repudiandae voluptas et harum odio.</p><p>Autem dolor dolorem laborum. Repudiandae et quae perferendis ut nostrum. Id sequi dolorem aliquid cum laborum assumenda in. Modi quibusdam sapiente voluptates ratione voluptas autem iure.</p><p>Et et deserunt magnam sed recusandae et. Repudiandae nulla velit ut quae. Ratione voluptas ut iusto ut distinctio dolore quia est. Inventore maxime quasi amet temporibus magnam adipisci.</p><p>Quasi sint suscipit magnam rerum dicta vel. Ex consequuntur necessitatibus ab iusto aspernatur. Ex et voluptatem nisi quidem magnam.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(12, 2, 1, 'Voluptatem earum praesentium sint in nam unde hic.', 'soluta-necessitatibus-possimus-ratione-accusantium-optio', NULL, 'Fuga ut ipsam est repellat. Nam in animi veniam omnis. Modi voluptatum eum suscipit modi aut repudiandae. Cupiditate eligendi porro molestiae unde dolor.', '<p>Quam id provident dolorem rerum mollitia rerum quidem doloribus. Ut dolores aut sit soluta accusamus incidunt.</p><p>Doloremque quam at recusandae voluptatibus qui et eligendi. Consequatur ut voluptas dolore voluptas dicta. Nihil voluptas tenetur temporibus eos fugit. Id id ut in omnis ipsa.</p><p>Est praesentium adipisci corporis officiis dolore nulla. Magnam ut nisi eius iste quibusdam voluptates veritatis. Ad ut sed occaecati cumque animi accusamus.</p><p>Vel tempora accusamus velit provident esse. Cum velit quibusdam sed ipsa et. Commodi voluptate ipsa aut explicabo quaerat nisi quidem et. Praesentium enim reprehenderit quis hic voluptatem ducimus mollitia.</p><p>Quos dicta itaque impedit ut ut numquam. Amet animi vero labore quia eos est labore. Sed sunt voluptas minima non dolorem dolor et. Quis reiciendis nam ipsam dolorem id fugiat corporis.</p><p>Hic temporibus iure voluptatem suscipit dolorum laudantium est. Ipsum porro est iure quibusdam quasi dignissimos. Quia quo iste nisi earum.</p><p>Ipsam libero commodi aut enim dignissimos nesciunt amet fugiat. Nesciunt quisquam laudantium nihil. Est nesciunt quo est. In doloremque natus qui sint.</p><p>Sit rerum nostrum quo. Debitis accusamus nulla tempore deserunt odio fuga illum. Aspernatur labore recusandae consectetur et doloremque. Ducimus provident deleniti nihil dolor qui at ea. Eum rerum officiis aut ratione fugiat modi sapiente.</p><p>Eum eius aut at quia tempora. Neque doloremque ut maiores at et at autem vitae. Maiores et iste cumque sint qui recusandae. Molestiae animi aspernatur minima.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(13, 2, 2, 'Aut vel nesciunt in qui dolorem reiciendis saepe aliquid libero velit.', 'fugit-vitae-minus-cumque-enim-dolore-consequuntur-voluptatem-et', NULL, 'Et itaque alias accusantium quis. Animi animi voluptatem ex nihil eum consequuntur repudiandae enim. Perferendis veritatis quos iure est qui vel.', '<p>Sit natus non ducimus ducimus harum. Quo possimus est autem possimus debitis. Qui ea nihil mollitia fuga fugiat velit minima. Quos officiis quam eius in voluptatem officia vitae.</p><p>Reprehenderit et iste expedita. Voluptatem aut aut adipisci sunt sunt fugiat. Quia fugit eos omnis alias optio pariatur est. Corporis quos omnis vero.</p><p>Ut quo eum et ea dolore quia assumenda est. Illo repellat quam tempore.</p><p>Placeat itaque consectetur unde libero a delectus harum. Et expedita doloribus vero illo quaerat temporibus. Omnis iusto dolore est distinctio nemo voluptatem. Recusandae soluta pariatur fugiat fuga similique explicabo.</p><p>Recusandae quia et sit sint. Natus tenetur ab quam id nihil.</p><p>Inventore illum rerum quam cumque. Quia corrupti dolorem perspiciatis magnam. Aut quam laudantium asperiores recusandae qui dolor neque.</p><p>Voluptate corporis sed nihil sequi assumenda rerum. Eveniet minima quae ipsa qui nam dolorum. Voluptas tempora nihil odio qui. Sit illum iusto et unde sunt. Distinctio dolorum ab ipsa ab quidem rem.</p><p>Aut tenetur aut ut quaerat. Alias voluptatum qui dignissimos culpa quibusdam molestias alias. Labore est fugiat qui ut. Saepe harum quidem deleniti.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(14, 2, 1, 'Debitis molestias natus quaerat.', 'et-et-architecto-quo-exercitationem', NULL, 'Neque incidunt pariatur nisi occaecati. Est cumque architecto ab voluptas fuga et inventore.', '<p>Architecto ullam voluptate qui in optio fugit. Ratione est est nobis ipsum accusamus quo fuga. Consectetur est omnis modi nemo pariatur. Sunt ut rerum et fuga incidunt provident voluptatem.</p><p>Eum qui ea voluptas dolorem et ipsa autem itaque. Fugiat id aliquid dolore cupiditate illum provident. Voluptas nam et qui eos adipisci cumque temporibus. Dolor ex dolores tempore soluta porro.</p><p>Pariatur est sint nobis esse at distinctio incidunt sit. Id sed nam earum quia vitae qui dolores. Maiores inventore similique sed laudantium dolor voluptas.</p><p>Asperiores aut qui dolor. Consectetur aut numquam qui eaque fuga beatae consectetur praesentium. Non ipsam natus cumque in et est. Molestiae iure neque possimus corporis omnis animi rerum.</p><p>Eum ducimus minus rerum ipsum consequuntur rerum et. Soluta culpa illum non. Nemo cum magni asperiores placeat omnis. Occaecati iste facere autem rem delectus et tempora.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(15, 2, 1, 'Sit minus voluptatum.', 'deserunt-cumque-ea-suscipit-omnis-est-fugit', NULL, 'Consequatur eius quo et cupiditate temporibus exercitationem iusto. Ea non cum nihil aut perferendis doloribus soluta quia. Unde occaecati ut ut cupiditate.', '<p>Aut dolorum molestiae consequatur molestiae. Velit neque necessitatibus sint quibusdam dolore repellat saepe illo. Nihil cum quia quae vero ratione exercitationem. Veniam exercitationem consequatur maiores.</p><p>Voluptates ut voluptates vitae dignissimos numquam nemo. Non neque quis reiciendis deleniti commodi quibusdam. Nostrum eligendi qui consequatur quos harum.</p><p>Ipsa optio voluptas voluptate aut commodi. Ea maxime et non qui. Quaerat amet est quasi nobis ut nemo asperiores. Mollitia molestias beatae fugit nostrum.</p><p>Unde et aliquam necessitatibus nihil illo. Ut sed autem doloribus modi est veniam pariatur. Aspernatur unde quibusdam sit. Sunt ab rerum facilis et commodi.</p><p>Quia quaerat esse illum aut id. Veniam quo consequatur ut quisquam amet harum. Rerum autem est iusto repudiandae sit praesentium.</p><p>Magni inventore maiores et aperiam labore. Eius quam praesentium expedita sapiente labore.</p><p>Neque aspernatur nisi dolor quia ea occaecati. Sit molestiae quasi magnam odit quis deserunt porro. Velit dignissimos id rerum aspernatur adipisci quos.</p><p>Porro libero voluptas voluptatem nulla quo ex quibusdam veritatis. Voluptas et in fugiat officia ullam suscipit. Maxime quas voluptatibus sed ut consectetur voluptatem commodi vero. Accusantium sed est iure voluptate.</p><p>Asperiores ut sed sit non atque. Perferendis ut nam pariatur quo voluptatem. Rerum repudiandae quo quia ipsum impedit at accusantium.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(16, 1, 2, 'Quo voluptates velit illum occaecati ipsa aut.', 'facilis-itaque-sit-aut-ut-laborum', NULL, 'Explicabo odit quis qui omnis nam ut provident. Perspiciatis quis dicta nobis doloremque praesentium vitae. Porro dolor non ut enim accusantium.', '<p>Aut voluptas accusamus totam. Sit laboriosam tempora doloremque quidem quia corrupti deserunt. Praesentium consequatur corrupti ut sit neque. Quia libero quos est recusandae.</p><p>Voluptas voluptatem tempora reprehenderit explicabo facilis et. Perferendis doloremque libero voluptatem accusamus nam at. Veritatis quibusdam et porro tempora cupiditate.</p><p>Aut eligendi voluptates ut dolorem dignissimos occaecati. Voluptas nihil delectus aut repellendus molestiae sunt consequatur culpa. Aliquam quibusdam incidunt qui beatae fuga nemo. Illum et voluptas et magnam quod ut vel. Rerum numquam culpa consequatur adipisci ipsum dolores explicabo illum.</p><p>Nulla occaecati sunt consequatur autem. Sequi molestiae aliquam sequi voluptatem quaerat. Adipisci quia omnis vel est et.</p><p>Consequuntur voluptates nostrum culpa illo velit sunt doloribus. Quas hic assumenda quae quis. Dignissimos veritatis non est illo.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(17, 2, 1, 'Autem saepe dolore eum molestiae.', 'quasi-harum-beatae-et-dolorem-rem-alias', NULL, 'Quia autem ut mollitia assumenda sunt minus sit voluptatem. Facilis qui nesciunt commodi delectus sint deserunt. Quis reiciendis atque exercitationem qui ut necessitatibus. Sed aliquid assumenda quae sunt neque nisi quis. Sed ut ut minus consequatur voluptates.', '<p>Illum aperiam libero aliquid aut sed saepe. Non maiores odit quia delectus velit et. Odit optio ex qui rerum voluptatem animi accusamus. Maxime iure odit nobis.</p><p>Quia dolor fuga et ut odit non nemo enim. Facere quasi voluptatum non officiis. Optio dolor cupiditate sunt repellat at amet. Facere dicta sunt est aut libero maxime sint. Voluptatibus animi ratione ut quas.</p><p>Veritatis rem laudantium facere. Officia ut inventore nostrum ut tempora. Officia non officiis quia quasi. Sunt quasi eius asperiores tempora accusantium voluptatem quia.</p><p>Provident facere sunt expedita optio ex rerum. Sed modi repudiandae sit assumenda quae ea. Omnis necessitatibus vel sed voluptatem.</p><p>Consectetur nihil eaque veniam voluptatem eius. Voluptas consequuntur dolor aut delectus voluptates. Commodi pariatur nesciunt accusantium. Corporis illum ut rerum expedita accusamus. Eos consequatur magnam pariatur enim modi.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(18, 2, 2, 'Sapiente perspiciatis harum.', 'consectetur-et-nostrum-porro-qui-placeat', NULL, 'Voluptatem corporis quas omnis impedit. Veniam perferendis in veniam id.', '<p>Quo laboriosam dolor ipsam. In deleniti deserunt doloremque est voluptatem et architecto. Corporis quisquam expedita deleniti sed possimus quos.</p><p>In et dicta dolore quis aut. Quis autem mollitia eos et ut consequatur. Voluptatum beatae quis numquam eligendi.</p><p>Magni explicabo qui voluptates ut nobis. Ut voluptatem suscipit laboriosam et dolorem occaecati sequi non. Quisquam qui vel ut minus adipisci esse modi.</p><p>Veniam debitis voluptates nemo dolore. Veniam voluptatem ipsam earum facere culpa consectetur eos eius.</p><p>Quae sit architecto temporibus incidunt perferendis molestiae tenetur. Praesentium ut minima harum aut temporibus laboriosam. Ab natus repellendus magnam reprehenderit laudantium dolorem.</p><p>Rem eos sit eos. Modi odit omnis alias rerum voluptatem ex provident blanditiis. Labore ea officia pariatur inventore sapiente pariatur fuga.</p><p>Reprehenderit et qui adipisci cumque atque sit. Quisquam iste aut cum molestias repudiandae et. Est vitae nulla quae aut. Et omnis quasi inventore earum modi est illo.</p><p>Modi quo rerum ea fuga voluptatem quae. Pariatur harum illum consectetur harum. Et facere vitae est pariatur minus culpa. Et ut aut aliquam.</p><p>Minima blanditiis est sunt iste eum. Velit velit voluptatem molestiae consequatur quam. Quia reiciendis odit voluptatem ullam quibusdam tenetur. Aspernatur voluptas sed sequi et nostrum placeat excepturi cumque.</p><p>Expedita quaerat inventore ut voluptates quia odio inventore eveniet. Hic qui velit amet eius et nemo dolorem.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(19, 2, 3, 'Omnis voluptatem.', 'sequi-deleniti-illum-quos-ut-facere-eius', NULL, 'Aut magni quod assumenda et voluptatem. Aut autem ducimus sapiente labore. Quas nam ut at qui temporibus voluptas temporibus.', '<p>Magni saepe ad possimus reiciendis natus saepe. Dolor nesciunt et voluptates. Mollitia odit et laudantium minus laborum et.</p><p>Autem qui optio sapiente aperiam inventore iusto. Recusandae aut soluta quibusdam veritatis quia. Et cumque illum et ut. Ut aut omnis perspiciatis molestiae.</p><p>Ex inventore optio consequatur dolores quis eos. Aliquid vero unde delectus delectus laudantium. Fugit quas laborum amet ducimus earum similique. Adipisci ut inventore ut veniam.</p><p>Quia non a doloribus qui saepe dolores qui. Reiciendis nesciunt debitis blanditiis placeat. Deserunt illo quis aperiam autem nulla recusandae. Veniam aperiam omnis enim harum quasi.</p><p>Possimus sed est sint iure. Porro aliquid sed nisi. Dolorum aspernatur rerum architecto veritatis.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(20, 1, 1, 'A iste deleniti nisi tenetur nemo aperiam.', 'molestias-quia-numquam-non', NULL, 'Vel quaerat qui sed dolores placeat expedita ipsam. Eos ullam veniam earum rem qui ut dolores. Eaque enim est autem consectetur fugiat sequi similique est.', '<p>Et blanditiis assumenda et quod ut. Consequuntur autem laudantium id.</p><p>At consequatur voluptas dolores adipisci aliquid distinctio vel. Eaque commodi sit est.</p><p>Assumenda est aspernatur ea est magni. Voluptatum reprehenderit voluptatem voluptatem nisi deleniti eveniet. Fugiat minima magni amet earum rerum quia.</p><p>Hic suscipit dolor et tempore. Et quidem repudiandae dolorem exercitationem repellat sint quo quaerat. Sit rem magni et tenetur doloribus.</p><p>Maiores esse recusandae placeat magni eos illo necessitatibus. Maxime id est eligendi quibusdam non incidunt maiores. Sint quibusdam dolorem qui quibusdam iure modi consequatur.</p><p>Quia nisi mollitia eaque sit voluptas nisi. Totam consequuntur cupiditate hic quasi voluptatem. Necessitatibus tenetur quo laboriosam et fugit temporibus veniam.</p><p>Et corrupti sit sed magnam enim magni. Laboriosam atque atque et fugiat. Architecto amet perferendis quas hic ipsa. Ab velit tenetur sunt unde sed blanditiis sequi.</p><p>At ab delectus voluptas itaque. Ea possimus vero quidem sunt.</p><p>Aut nostrum libero vitae est dolorum aut omnis. Non quis repellendus quod numquam laborum voluptatibus adipisci. Nemo debitis dicta voluptas dolores recusandae.</p>', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27');

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
(1, '', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(2, '', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. x', '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(3, '', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. xx', '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(4, '', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. xxx', '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(5, '', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. xxxx', '2022-11-01 03:25:27', '2022-11-01 03:25:27'),
(6, '', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. xxxxx', '2022-11-01 03:25:27', '2022-11-01 03:25:27');

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
(1, '2022-11-01 03:25:27', '2022-11-01 03:25:27', 'Investasikan Segera Harta Anda Sebagai Bekal di Akhirat Kelak Dengan Program Wakaf Tunai Pembangunan', '\n            <blockquote class=\"blockquote my-4\">“Perumpamaan (nafkah yang dikeluarkan oleh) orang-orang yang menafkahkan hartanya di jalan Allah adalah serupa dengan sebutir benih yang menumbuhkan tujuh bulir, pada tiap-tiap bulir: seratus biji. Allah melipat gandakan (ganjaran) bagi siapa yang Dia kehendaki. Dan Allah Maha Luas (kurnia-Nya) lagi Maha Mengetahui.”\n            (QS. Al Baqarah: 261)</blockquote>\n          <blockquote class=\"blockquote my-4\">“Jika seseorang meninggal dunia, maka terputuslah amalannya kecuali tiga perkara (yaitu): sedekah jariyah, ilmu yang dimanfaatkan, atau do’a anak yang sholeh”\n            (HR. Muslim no. 1631)</blockquote>\n            <h3 class=\"mb-4\">Wakaf itu Mudah dan Pahalanyapun Melimpah</h3>\n            <p class=\"mb-4\">Wakaf adalah amalan sedekah yang bersifat jariyah, meski usia terputus pahalanya mengalir terus menerus selama barang atau benda yang diwakafkan itu masih berguna dan bermanfaat. Selain mendapatkan bonus pahala mengalir di akhirat, muwakifpun akan mendapatkan keberkahan di dunia berupa keberlimpahan harta, jiwa yang bersih serta kebahagiaan yang tidak terputus karena muwakif telah mengeluarkan harta yang dia cintai di jalan Allah (menafkahkan di jalan Allah).</p>\n            <p class=\"mb-4\">Yayasan Zaid Bin Tsabit Radhiyallahu’anhu, Insyaa Allah akan membangun gedung 4 lantai di atas tanah wakaf dengan luas bangunan sekitar 1200 M2 yang letaknya di jalan Gajahmada barat, Tirto, Kota Pekalongan. Gedung baru ini selanjutnya akan kami pergunakan untuk pondok pesantren Markaz Tahfidzul Qur’an Zaid bin Tsabit Pekalongan dikarenakan santri yang mendaftar semakin banyak, sementara saat ini kami masih menyewa rumah untuk kegiatan belajar dan asrama santri, maka dari itu perlu adanya pembangunan gedung baru yang fungsinya untuk Asrama, Kelas, Kantor, Masjid dan lain sebagainya.Oleh karenanya kami mengajak kepada seluruh muhsinin untuk ikut membantu dan mewakafkan harta terbaiknya untuk bekal di akhirat kelak.\n            </p>\n          \n          <blockquote class=\"blockquote my-4\">Sementara ini lokasi pondok pesantren Markaz Zaid Bin Tsabit Pekalongan yang pertama terletak di jalan Teratai Gg. 7 Barat No. 42 Klego, Kota Pekalongan, sedangkan lokasi kedua dalam proses pembangunan gedung 4 lantai diatas tanah wakaf di jalan Gajah Mada Barat Kelurahan Tirto Pekalongan Timur Kota Pekalongan.</blockquote>\n          \n          <p class=\"mb-4\">Untuk menyalurkan donasi Anda mohon untuk <strong>meluangkan waktu</strong> sejenak untuk membaca <strong>Petunjuk dan Rincian Anggaran </strong>dengan cara klik tombol \"Panduan Wakaf\" dibawah ini;</p>\n          \n          <div class=\"text-center\">\n            <a href=\"/panduan-wakaf-pembangunan\" type=\"button\" target=\"blank\" class=\"btn btn-lg btn-info mb-4 justify-content-center\">Panduan Wakaf</a>\n          </div>\n\n          <p class=\"mb-4\">Jika Anda ada pertanyaan terkait proyek pembangunan gedung pondok pesantren Markaz Tahfid Al Qur’an Zaid Bin Tsabit silakan hubungi kontak berikut :</p>\n          <ul>\n            <li>Ust. Ahmad Rijal, Lc., M.H.I. (0856 9429 1964)</li>\n            <li>Dr. Gholib Hasan (0815 6593 847)</li>\n            <li>Setiyo Hermawan (0815 6593 847)\n            </li>\n          </ul>\n          <p class=\"mb-5\">Tunggu apa lagi, mari wakafkan harta terbaik Anda sebagai wujud kepedulian terhadap masa depan bangsa dan masyarakat.</p>\n            ', 'static-page-images/U46GvQpcaoyd1gCjXJ7QL5EGurMYzHrtLBlk2pSi.jpg', 'Progress Pembangunan', 'Wakaf -> Pembangunan Gedung Baru');

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
(1, 'Jumhan Prayitno', 'jumhan', 'jumhan@gmail.com', NULL, '$2y$10$6FwLe9MVGNOsgFsWI/5ZJOcCXXwG1KjzBFETMeIHns3MwG4TRKmpu', NULL, '2022-11-01 03:25:27', '2022-11-01 03:25:27', 1),
(2, 'Puti Aryani', 'ifa33', 'leo78@example.com', '2022-11-01 03:25:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9UMjNdAM9N', '2022-11-01 03:25:27', '2022-11-01 03:25:27', 0),
(3, 'Victoria Purnawati', 'gambira73', 'olazuardi@example.com', '2022-11-01 03:25:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vw9C8FE0EG', '2022-11-01 03:25:27', '2022-11-01 03:25:27', 0),
(4, 'Taswir Prabowo Adriansyah', 'tarihoran.kayla', 'talia.hastuti@example.com', '2022-11-01 03:25:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jows2ddb6v', '2022-11-01 03:25:27', '2022-11-01 03:25:27', 0);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
