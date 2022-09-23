-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2022 pada 00.30
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
-- Database: `bersanding`
--
CREATE DATABASE IF NOT EXISTS `bersanding` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bersanding`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `acara`
--

CREATE TABLE `acara` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_akad` varchar(50) NOT NULL,
  `jam_akad` varchar(50) NOT NULL,
  `tempat_akad` varchar(100) NOT NULL,
  `alamat_akad` text NOT NULL,
  `tanggal_resepsi` varchar(50) NOT NULL,
  `jam_resepsi` varchar(50) NOT NULL,
  `tempat_resepsi` varchar(100) NOT NULL,
  `alamat_resepsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `acara`
--

INSERT INTO `acara` (`id`, `id_user`, `tanggal_akad`, `jam_akad`, `tempat_akad`, `alamat_akad`, `tanggal_resepsi`, `jam_resepsi`, `tempat_resepsi`, `alamat_resepsi`, `created_at`, `updated_at`) VALUES
(1, 1, '2020/01/10', '10.00 Pagi', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020/01/10', '10.00 Malam', 'Kediaman Mempelai Pri', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020-07-26 14:16:43', '2020-08-27 04:17:26'),
(13, 16, '2020/01/10', '10.00 Pagi', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020/01/10', '10.00 Malam', 'Kediaman Mempelai Pri', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020-07-26 14:16:43', '2020-08-27 04:17:26'),
(14, 17, '2020/09/10', 'CSD', 'LBHL', 'BL', '2020/09/08', 'LJBJ', 'JLJN;', '', '2020-09-07 15:20:40', '2020-09-07 15:20:40'),
(15, 18, '2016/07/10', '07.00 Pagi ', 'Kediaman Mempelai Putri', 'Jl.  Mayjend Sutoyo Gg. Cempaka, Sewunut,  Denasri Wetan Batang ', '2016/07/10', '10. 00 Pagi', 'Kediaman Mempelai Putri', 'Jl. Mayjend Sutoyo Gg. Cempaka, Sewunut,  Denasri Wetan Batang ', '2020-09-07 15:38:49', '2020-09-08 00:50:12'),
(16, 19, '2020/09/02', 'csdc', 'sdcsdc', 'sdcsdc', '2020/09/18', 'csdcs', 'csdc', 'csdcsd', '2020-09-16 23:18:50', '2020-09-16 23:18:50'),
(17, 20, '2020/11/30', 'Dolor quia nemo veli', 'Reprehenderit praese', 'Repudiandae veritati', '2020/11/30', 'Obcaecati velit ex c', 'Autem temporibus ab ', 'Esse velit itaque r', '2020-11-21 22:57:32', '2020-11-21 22:57:32'),
(18, 21, '2020/12/11', 'P', 'P', 'P', '2020/12/11', 'P', 'P', 'P', '2020-12-21 06:24:21', '2020-12-21 06:24:21'),
(19, 22, '2021/02/26', '10.00 Pagi', 'kediaman', 'jhjkhdskjhf', '2021/02/28', '10.00 pagi', 'ytryutiuytiuyui', 'hfkjhdkfjhdafh', '2021-02-13 14:03:32', '2021-02-13 14:03:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `nama_lengkap`, `created_at`) VALUES
(1, 'admin', 'e172dd95f4feb21412a692e73929961e', 'admin@admin.com', 'Admin', '2020-08-27 04:38:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `album` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id`, `id_user`, `album`) VALUES
(1, 1, 'album1'),
(2, 1, 'album2'),
(3, 1, 'album3'),
(4, 1, 'album4'),
(5, 1, 'album5'),
(6, 1, 'album6'),
(7, 1, 'album7'),
(8, 1, 'album8'),
(9, 1, 'album9'),
(10, 1, 'album10'),
(87, 16, 'album1'),
(88, 16, 'album2'),
(89, 16, 'album3'),
(90, 16, 'album4'),
(91, 16, 'album5'),
(92, 16, 'album6'),
(93, 16, 'album7'),
(94, 16, 'album8'),
(95, 16, 'album9'),
(96, 16, 'album10'),
(111, 18, 'album1'),
(113, 18, 'album2'),
(120, 18, 'album4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cerita`
--

CREATE TABLE `cerita` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_cerita` varchar(50) NOT NULL,
  `judul_cerita` text NOT NULL,
  `isi_cerita` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cerita`
--

INSERT INTO `cerita` (`id`, `id_user`, `tanggal_cerita`, `judul_cerita`, `isi_cerita`, `created_at`, `updated_at`) VALUES
(49, 1, '14 Januari 2020', 'Pertama bertemu', 'Waktu Pertama Kali\r\nKulihat Dirimu Hadir\r\nRasa hati ini inginkan dirimu ', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(50, 1, '15 Maret 2020', 'Jatuh Cinta', 'Hati tenang mendengar \r\nsuara indah menyapa\r\nGeloranya hati ini\r\nTak ku sangka..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(51, 1, '1 Mei 2020', 'Ta\'aruf', 'Rasa ini.. tak tertahan..\r\nHati ini..slalu untukmu..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(52, 1, '16 Mei 2020', 'Khitbah', 'Terimalah lagu ini dari orang biasa\r\nTapi cintaku padamu luar biasa\r\nAku tak punya bunga\r\nAku tak punya harta\r\nYang ku punya hanyalah\r\nHati yang setia.. Tulus.. Padamu.. :)', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(61, 16, '14 Januari 2020', 'Pertama bertemu', 'Waktu Pertama Kali\r\nKulihat Dirimu Hadir\r\nRasa hati ini inginkan dirimu ', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(62, 16, '15 Maret 2020', 'Jatuh Cinta', 'Hati tenang mendengar \r\nsuara indah menyapa\r\nGeloranya hati ini\r\nTak ku sangka..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(63, 16, '1 Mei 2020', 'Ta\'aruf', 'Rasa ini.. tak tertahan..\r\nHati ini..slalu untukmu..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(64, 16, '16 Mei 2020', 'Khitbah', 'Terimalah lagu ini dari orang biasa\r\nTapi cintaku padamu luar biasa\r\nAku tak punya bunga\r\nAku tak punya harta\r\nYang ku punya hanyalah\r\nHati yang setia.. Tulus.. Padamu.. :)', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(66, 18, '10 Juli 2016', 'Hanya sebuah sample', 'Silakan,  bagi kakak-kakak semua yang sedang galau cari undangan pernikahan.  Invitasi.online salah satu solutif buat anda.  Dengan low budget & mudah dishare ke teman-teman ', '2020-09-07 23:54:33', '2020-09-07 23:54:33'),
(67, 20, 'Eum debitis nesciunt', 'Laborum voluptatem ', 'Culpa dolores incidunt quis velit velit quasi sequi ea consequatur aliquam quo deserunt inventore modi ab aut ut sint sequi', '2020-11-21 22:57:32', '2020-11-21 22:57:32'),
(68, 20, 'Ullamco quis qui aut', 'Rerum officia repreh', 'Commodi cillum tempora consectetur velit nulla optio sint qui consectetur eos et reprehenderit eaque rerum distinctio Nulla rerum', '2020-11-21 22:57:32', '2020-11-21 22:57:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `foto_pria` varchar(50) NOT NULL DEFAULT '0',
  `foto_wanita` varchar(50) NOT NULL DEFAULT '0',
  `maps` text DEFAULT NULL,
  `video` varchar(100) NOT NULL,
  `kunci` varchar(100) NOT NULL,
  `salam_pembuka` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `id_user`, `foto_pria`, `foto_wanita`, `maps`, `video`, `kunci`, `salam_pembuka`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.705836876672!2d106.82198811476884!3d-6.170129095532956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sMerdeka%20Palace!5e0!3m2!1sen!2sid!4v1595773648767!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://youtu.be/qtvIQ9D99LI', 'mIjh78y8ge13b89d99c1a29132e57d2ca', 'Assalamu\'alaikum warahmatullahi wabarakatuh\r\n\r\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\r\n\r\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan kami.', '2020-07-26 14:16:43', '2020-09-15 15:15:45'),
(12, 16, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.705836876672!2d106.82198811476884!3d-6.170129095532956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sMerdeka%20Palace!5e0!3m2!1sen!2sid!4v1595773648767!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://youtu.be/qtvIQ9D99LI', '36b735f9e13b89d99c1a29132e57d2ca', 'Assalamu\'alaikum warahmatullahi wabarakatuh\r\n\r\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\r\n\r\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan kami.', '2020-07-26 14:16:43', '2020-09-15 15:16:14'),
(13, 17, '0', '0', '', '', '5c5598a23ab24f2ac6acccd6ff4b39e3', 'Assalamu\'alaikum warahmatullahi wabarakatuh\r\n\r\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\r\n\r\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan kami.', '2020-09-07 15:20:40', '2020-09-15 15:16:14'),
(14, 18, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.012378851527!2d109.67751831477273!3d-6.8891199950219235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNsKwNTMnMjAuOCJTIDEwOcKwNDAnNDcuMCJF!5e0!3m2!1sid!2sid!4v1599526057257!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://youtu.be/pqBMJK6Rc2k', '71e54b2e14081f3c8f102c54af4b35a9', 'Assalamu\'alaikum warahmatullahi wabarakatuh\r\n\r\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\r\n\r\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan kami.', '2020-09-07 15:38:49', '2020-09-15 15:16:14'),
(15, 19, '1', '0', '', '', 'c2358ef95d4252e51c0076dfe1ab2f68', 'Assalamu\'alaikum warahmatullahi wabarakatuh\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan Kami.\n			', '2020-09-16 23:18:50', '2020-09-16 23:18:50'),
(16, 20, '0', '0', 'Recusandae A nihil ', '', 'f022b1b74e262e8c3e65f51fe675378f', 'Assalamu\'alaikum warahmatullahi wabarakatuh\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan Kami.\n			', '2020-11-21 22:57:32', '2020-11-21 22:57:32'),
(17, 21, '0', '0', 'P', '', 'ff562d1c75f3a34b6d8a5d87f0001cfa', 'Assalamu\'alaikum warahmatullahi wabarakatuh\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan Kami.\n			', '2020-12-21 06:24:21', '2020-12-21 06:24:21'),
(18, 22, '0', '0', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2181.130061011195!2d109.70548020572252!3d-6.891861585372155!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e702438069a101b%3A0xba32c67d60db3f3!2sSMP%20Negeri%2017%20Pekalongan!5e0!3m2!1sid!2sid!4v1613224917282!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '', 'e7a31a80f63f2ba8ca010b3d954f6180', 'Assalamu\'alaikum warahmatullahi wabarakatuh\nMahasuci Allah telah menciptakan makhluk hidup dengan berpasang-pasangan. Begitu pula manusia. Sungguh besar rahmat dan karunia yang diberikan-Nya kepada  Kami.\nMaka izinkan Kami mengundang sekaligus mengharapkan doa restu dari keluarga Bapak/Ibu dan Saudara/i dalam acara pernikahan Kami.\n			', '2021-02-13 14:03:32', '2021-02-13 14:03:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_komentar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_komentar` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komen`
--

INSERT INTO `komen` (`id`, `id_user`, `nama_komentar`, `isi_komentar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aninda Safira', 'Alhamdulilah, selamat atas pernikahan kalian. Semoga pernikahan kalian dilimpahi oleh cinta, kebaikan dan kebahagiaan. Jazakallahu khairan khatira.. 😊😊😇', '2020-08-23 15:10:31', '2020-08-29 11:41:35'),
(2, 1, 'Raisa Andriana', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’ ', '2020-08-22 15:12:45', '2020-08-22 01:17:42'),
(3, 1, 'Anisa Rahma', 'Alhamdulillah.. Selamat ya. Semoga Allah Swt selalu melimpahkan rahmatNya untuk pernikahan kalian.', '2020-08-20 15:14:44', '2020-08-22 01:18:37'),
(4, 1, 'Maudy Ayunda', 'MasyaAllah.. Selamat buat kalian berdua 🥰😘 Barakallah', '2020-08-22 15:32:50', '2020-08-29 11:41:51'),
(5, 1, 'Citra Kirana', 'Baarakallahu laka wa baaraka ‘alaika wa jama’a bainakumaa fii khaiir.\r\n\r\nSemoga Allah memberikan keberkahan untukmu dan atasmu, serta semoga Dia mengumpulkan di antara kalian berdua dalam kebaikan. \r\n\r\n🤲🤲🤗🤗', '2020-07-26 16:00:41', '2020-07-26 23:00:41'),
(6, 1, 'Nissya Sabyan', 'Semoga pernikahan kalian langgeng dan selalu dinaungi petunjuk Allah dalam setiap langkah.. Aamiin 😘😘', '2020-07-26 16:03:18', '2020-07-26 23:03:18'),
(11, 16, 'Aninda Safira', 'Alhamdulilah, selamat atas pernikahan kalian. Semoga pernikahan kalian dilimpahi oleh cinta, kebaikan dan kebahagiaan. Jazakallahu khairan khatira.. 😊😊😇', '2020-08-23 15:10:31', '2020-08-29 11:41:35'),
(12, 16, 'Raisa Andriana', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’ ', '2020-08-22 15:12:45', '2020-08-22 01:17:42'),
(13, 16, 'Anisa Rahma', 'Alhamdulillah.. Selamat ya. Semoga Allah Swt selalu melimpahkan rahmatNya untuk pernikahan kalian.', '2020-08-20 15:14:44', '2020-08-22 01:18:37'),
(14, 16, 'Maudy Ayunda', 'MasyaAllah.. Selamat buat kalian berdua 🥰😘 Barakallah', '2020-08-22 15:32:50', '2020-08-29 11:41:51'),
(15, 16, 'Citra Kirana', 'Baarakallahu laka wa baaraka ‘alaika wa jama’a bainakumaa fii khaiir.\r\n\r\nSemoga Allah memberikan keberkahan untukmu dan atasmu, serta semoga Dia mengumpulkan di antara kalian berdua dalam kebaikan. \r\n\r\n🤲🤲🤗🤗', '2020-07-26 16:00:41', '2020-07-26 23:00:41'),
(16, 16, 'Nissya Sabyan', 'Semoga pernikahan kalian langgeng dan selalu dinaungi petunjuk Allah dalam setiap langkah.. Aamiin 😘😘', '2020-07-26 16:03:18', '2020-07-26 23:03:18'),
(17, 18, 'Tes', 'Tess tes', '2020-09-09 15:09:25', '2020-09-09 15:09:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mempelai`
--

CREATE TABLE `mempelai` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pria` varchar(50) NOT NULL,
  `nama_panggilan_pria` varchar(50) NOT NULL,
  `nama_ibu_pria` varchar(50) NOT NULL,
  `nama_ayah_pria` varchar(50) NOT NULL,
  `nama_wanita` varchar(50) NOT NULL,
  `nama_panggilan_wanita` varchar(50) NOT NULL,
  `nama_ibu_wanita` varchar(50) NOT NULL,
  `nama_ayah_wanita` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mempelai`
--

INSERT INTO `mempelai` (`id`, `id_user`, `nama_pria`, `nama_panggilan_pria`, `nama_ibu_pria`, `nama_ayah_pria`, `nama_wanita`, `nama_panggilan_wanita`, `nama_ibu_wanita`, `nama_ayah_wanita`, `created_at`, `updated_at`) VALUES
(1, 1, 'Reynaldi Aditya Wisnu', 'Rey', 'Raisa Andriana', 'Hamish Daud', 'Khodijah Dinda Hauwu', 'Dinda', 'Kartika Putri', 'Usman Bin Yahya', '2020-07-26 14:16:43', '2020-08-27 04:16:32'),
(13, 16, 'Reynaldi Aditya Wisnu', 'Rey', 'Raisa Andriana', 'Hamish Daud', 'Khodijah Dinda Hauwu', 'Dinda', 'Kartika Putri', 'Usman Bin Yahya', '2020-07-26 14:16:43', '2020-08-27 04:16:32'),
(14, 17, 'JACK', 'JAKC', 'KBJBJ', 'XASXA', '.NN.JKN', 'N;NN;', 'NLJNJ;', 'JNJN;JN;G;', '2020-09-07 15:20:40', '2020-09-07 15:20:40'),
(15, 18, 'Riski Hermawan ', 'Riski ', 'Durohtul Yatimah (ALLAH YARHAMUHA) ', 'Ahmad fauzan', 'Reza Kusuma Ningtyas', 'Reza', 'Wahyuningsih', 'Radul', '2020-09-07 15:38:49', '2020-09-08 00:22:30'),
(16, 19, 'svsvsdv', 'sdcsdc', 'sdcsdc', 'dcscd', 'csdcs', 'csdcsd', 'cdscs', 'sdcsdc', '2020-09-16 23:18:50', '2020-09-16 23:18:50'),
(17, 20, 'Minus quis assumenda', 'Aperiam delectus la', 'Cumque fugiat ullam', 'Pariatur Consequatu', 'Est voluptas simili', 'Accusantium duis vel', 'Ratione eu minim sed', 'Culpa provident cum', '2020-11-21 22:57:32', '2020-11-21 22:57:32'),
(18, 21, 'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P', '2020-12-21 06:24:21', '2020-12-21 06:24:21'),
(19, 22, 'riksi', 'dskfj', 'hufhdhfd', 'hfkdskkfj', 'guguhgkjjk', 'guiguigiug', 'yufgyuyu', 'yugyugyug', '2021-02-13 14:03:32', '2021-02-13 14:03:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `id_user`, `domain`, `theme`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'demo', '2', 1, '2020-07-26 14:16:43', '2020-08-29 12:20:53'),
(13, 16, 'reydinda', '2', 1, '2020-07-26 14:16:43', '2020-08-29 12:20:38'),
(14, 17, 'test', '2', 1, '2020-09-07 15:20:40', '2020-09-09 15:39:36'),
(15, 18, 'Riskireza', '4', 0, '2020-09-07 15:38:49', '2020-09-10 00:52:57'),
(16, 19, 'asx', '12', 1, '2020-09-16 23:18:50', '2020-09-17 03:15:23'),
(17, 20, 'jembut', '1', 1, '2020-11-21 22:57:32', '2020-11-21 22:57:32'),
(18, 21, 'P', '10', 1, '2020-12-21 06:24:21', '2020-12-21 06:24:21'),
(19, 22, 'tyaskiky', '1', 1, '2021-02-13 14:03:32', '2021-02-13 14:03:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_user`, `invoice`, `nama_lengkap`, `nama_bank`, `bukti`, `status`, `created_at`) VALUES
(1, 1, '0', 'Demo', 'Bri Syariah', '2007155.png', 2, '2020-08-26 01:36:07'),
(7, 16, '2007155', 'Dinda rahma', 'Bri Syariah', '2007155.png', 2, '2020-08-26 01:36:07'),
(8, 17, '20091713', '', '', '', 2, '2020-09-07 15:20:40'),
(9, 18, '20091830', '', '', '', 2, '2020-09-07 15:38:49'),
(10, 19, '20091954', 'tes', 'drive', '20091954.png', 2, '2020-09-16 23:18:50'),
(11, 20, '20112053', '', '', '', 0, '2020-11-21 22:57:32'),
(12, 21, '20122158', '', '', '', 0, '2020-12-21 06:24:21'),
(13, 22, '21022273', '', '', '', 0, '2021-02-13 14:03:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pengunjung` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `id_user`, `nama_pengunjung`, `addr`, `created_at`, `updated_at`) VALUES
(1, 1, 'Maudy Ayunda', '0.0.0.0', '2020-08-18 18:02:10', '2020-08-22 02:49:58'),
(2, 1, 'Aninda Safira', '0.0.0.0', '2020-08-21 18:02:10', '2020-08-29 11:43:21'),
(3, 1, 'Adinda Soraya', '0.0.0.0', '2020-08-20 19:48:36', '2020-08-22 02:50:39'),
(22, 1, 'Citra Kirana', '127.0.0.1', '2020-08-27 13:31:02', '2020-08-29 11:43:27'),
(23, 1, 'Raisa Andriana', '127.0.0.1', '2020-08-27 13:31:31', '2020-08-29 11:47:38'),
(24, 1, 'Unknown', '127.0.0.1', '2020-08-27 13:31:42', '2020-08-27 20:31:42'),
(25, 1, 'Unknown', '127.0.0.1', '2020-08-27 13:31:49', '2020-08-27 20:31:49'),
(26, 1, 'Maudy Ayunda', '127.0.0.1', '2020-08-27 13:33:57', '2020-08-29 11:43:45'),
(27, 1, 'Anisa Rahma', '127.0.0.1', '2020-08-27 13:34:22', '2020-08-29 11:44:16'),
(31, 1, 'Unknown', '127.0.0.1', '2020-08-27 15:46:11', '2020-08-27 22:46:11'),
(32, 1, 'Unknown', '127.0.0.1', '2020-08-27 15:46:28', '2020-08-27 22:46:28'),
(33, 1, 'Nissya Syaban', '127.0.0.1', '2020-08-27 15:46:58', '2020-08-29 11:44:36'),
(63, 1, 'Unknown', '127.0.0.1', '2020-08-29 04:48:52', '2020-08-29 11:48:52'),
(64, 1, 'Raffi Ahmad', '127.0.0.1', '2020-08-29 04:49:01', '2020-08-29 11:51:42'),
(65, 1, 'Nagita Slavina', '127.0.0.1', '2020-08-29 04:49:09', '2020-08-29 11:51:48'),
(66, 1, 'Luna Maya', '127.0.0.1', '2020-08-29 04:49:15', '2020-08-29 11:51:37'),
(67, 1, 'Unknown', '127.0.0.1', '2020-08-29 04:49:18', '2020-08-29 11:49:18'),
(68, 1, 'Unknown', '127.0.0.1', '2020-08-29 04:49:21', '2020-08-29 11:49:21'),
(69, 1, 'Atta Halilintar', '127.0.0.1', '2020-08-29 04:49:26', '2020-08-29 11:51:31'),
(70, 1, 'Unknown', '127.0.0.1', '2020-08-29 05:05:51', '2020-08-29 12:05:51'),
(71, 16, 'Atta Halilintar', '127.0.0.1', '2020-08-29 04:49:26', '2020-08-29 11:51:31'),
(72, 16, 'Unknown', '127.0.0.1', '2020-08-29 04:49:21', '2020-08-29 11:49:21'),
(73, 16, 'Unknown', '127.0.0.1', '2020-08-29 04:49:18', '2020-08-29 11:49:18'),
(74, 16, 'Luna Maya', '127.0.0.1', '2020-08-29 04:49:15', '2020-08-29 11:51:37'),
(75, 16, 'Nagita Slavina', '127.0.0.1', '2020-08-29 04:49:09', '2020-08-29 11:51:48'),
(76, 16, 'Raffi Ahmad', '127.0.0.1', '2020-08-29 04:49:01', '2020-08-29 11:51:42'),
(77, 16, 'Unknown', '127.0.0.1', '2020-08-29 04:48:52', '2020-08-29 11:48:52'),
(78, 16, 'Nissya Syaban', '127.0.0.1', '2020-08-27 15:46:58', '2020-08-29 11:44:36'),
(79, 16, 'Unknown', '127.0.0.1', '2020-08-27 15:46:28', '2020-08-27 22:46:28'),
(80, 16, 'Unknown', '127.0.0.1', '2020-08-27 15:46:11', '2020-08-27 22:46:11'),
(81, 16, 'Anisa Rahma', '127.0.0.1', '2020-08-27 13:34:22', '2020-08-29 11:44:16'),
(82, 1, 'Maudy Ayunda', '127.0.0.1', '2020-08-27 13:33:57', '2020-08-29 11:43:45'),
(83, 16, 'Unknown', '127.0.0.1', '2020-08-27 13:31:49', '2020-08-27 20:31:49'),
(84, 16, 'Unknown', '127.0.0.1', '2020-08-27 13:31:42', '2020-08-27 20:31:42'),
(85, 16, 'Raisa Andriana', '127.0.0.1', '2020-08-27 13:31:31', '2020-08-29 11:47:38'),
(86, 16, 'Citra Kirana', '127.0.0.1', '2020-08-27 13:31:02', '2020-08-29 11:43:27'),
(87, 16, 'Aninda Safira', '0.0.0.0', '2020-08-21 18:02:10', '2020-08-29 11:43:21'),
(88, 16, 'Adinda Soraya', '0.0.0.0', '2020-08-20 19:48:36', '2020-08-22 02:50:39'),
(89, 16, 'Maudy Ayunda', '0.0.0.0', '2020-08-18 18:02:10', '2020-08-22 02:49:58'),
(90, 16, 'Unknown', '36.73.21.148', '2020-09-07 15:15:19', '2020-09-07 15:15:19'),
(91, 17, 'Unknown', '36.73.21.148', '2020-09-07 15:20:54', '2020-09-07 15:20:54'),
(92, 17, 'Unknown', '36.73.21.148', '2020-09-07 15:21:40', '2020-09-07 15:21:40'),
(93, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:39:00', '2020-09-07 15:39:00'),
(94, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:40:12', '2020-09-07 15:40:12'),
(95, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:44:57', '2020-09-07 15:44:57'),
(96, 18, 'Unknown', '36.73.21.148', '2020-09-07 15:46:42', '2020-09-07 15:46:42'),
(97, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:47:18', '2020-09-07 15:47:18'),
(98, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:49:51', '2020-09-07 15:49:51'),
(99, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:49:58', '2020-09-07 15:49:58'),
(100, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:50:33', '2020-09-07 15:50:33'),
(101, 18, 'Unknown', '114.125.81.114', '2020-09-07 15:52:34', '2020-09-07 15:52:34'),
(102, 18, 'Unknown', '114.125.117.38', '2020-09-07 16:11:54', '2020-09-07 16:11:54'),
(103, 18, 'Unknown', '114.125.117.20', '2020-09-07 16:12:18', '2020-09-07 16:12:18'),
(104, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:35:37', '2020-09-07 23:35:37'),
(105, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:41:10', '2020-09-07 23:41:10'),
(106, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:45:53', '2020-09-07 23:45:53'),
(107, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:48:08', '2020-09-07 23:48:08'),
(108, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:48:37', '2020-09-07 23:48:37'),
(109, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:49:41', '2020-09-07 23:49:41'),
(110, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:50:03', '2020-09-07 23:50:03'),
(111, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:54:35', '2020-09-07 23:54:35'),
(112, 18, 'Unknown', '114.125.81.114', '2020-09-07 23:59:36', '2020-09-07 23:59:36'),
(113, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:01:59', '2020-09-08 00:01:59'),
(114, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:02:11', '2020-09-08 00:02:11'),
(115, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:02:47', '2020-09-08 00:02:47'),
(116, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:04:12', '2020-09-08 00:04:12'),
(117, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:07:48', '2020-09-08 00:07:48'),
(118, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:14:17', '2020-09-08 00:14:17'),
(119, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:16:44', '2020-09-08 00:16:44'),
(120, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:17:43', '2020-09-08 00:17:43'),
(121, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:19:02', '2020-09-08 00:19:02'),
(122, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:19:08', '2020-09-08 00:19:08'),
(123, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:23:38', '2020-09-08 00:23:38'),
(124, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:26:25', '2020-09-08 00:26:25'),
(125, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:35:00', '2020-09-08 00:35:00'),
(126, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:37:25', '2020-09-08 00:37:25'),
(127, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:45:57', '2020-09-08 00:45:57'),
(128, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:51:29', '2020-09-08 00:51:29'),
(129, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:52:26', '2020-09-08 00:52:26'),
(130, 18, 'Unknown', '114.125.81.114', '2020-09-08 00:53:42', '2020-09-08 00:53:42'),
(131, 18, 'Unknown', '114.125.81.114', '2020-09-08 01:08:50', '2020-09-08 01:08:50'),
(132, 18, 'Unknown', '114.125.81.114', '2020-09-08 01:23:39', '2020-09-08 01:23:39'),
(133, 18, 'Unknown', '114.125.81.114', '2020-09-08 01:25:01', '2020-09-08 01:25:01'),
(134, 18, 'Unknown', '36.68.54.86', '2020-09-08 01:28:54', '2020-09-08 01:28:54'),
(135, 18, 'Unknown', '103.132.52.59', '2020-09-08 01:31:06', '2020-09-08 01:31:06'),
(136, 18, 'Unknown', '36.68.54.31', '2020-09-08 01:34:05', '2020-09-08 01:34:05'),
(137, 18, 'Unknown', '114.125.81.114', '2020-09-08 01:35:04', '2020-09-08 01:35:04'),
(138, 18, 'Unknown', '114.142.171.15', '2020-09-08 01:35:15', '2020-09-08 01:35:15'),
(139, 18, 'Unknown', '114.142.171.15', '2020-09-08 01:36:00', '2020-09-08 01:36:00'),
(140, 18, 'Unknown', '149.154.161.4', '2020-09-08 01:36:49', '2020-09-08 01:36:49'),
(141, 18, 'Unknown', '103.132.52.59', '2020-09-08 01:37:05', '2020-09-08 01:37:05'),
(142, 18, 'Unknown', '103.132.52.59', '2020-09-08 01:54:07', '2020-09-08 01:54:07'),
(143, 18, 'Unknown', '61.8.75.43', '2020-09-08 15:13:18', '2020-09-08 15:13:18'),
(144, 18, 'Unknown', '36.73.133.141', '2020-09-08 15:14:51', '2020-09-08 15:14:51'),
(145, 18, 'Unknown', '36.73.133.141', '2020-09-09 14:59:47', '2020-09-09 14:59:47'),
(146, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:00:05', '2020-09-09 15:00:05'),
(147, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:02:19', '2020-09-09 15:02:19'),
(148, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:02:21', '2020-09-09 15:02:21'),
(149, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:02:22', '2020-09-09 15:02:22'),
(150, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:02:23', '2020-09-09 15:02:23'),
(151, 1, 'Unknown', '36.73.133.141', '2020-09-09 15:03:46', '2020-09-09 15:03:46'),
(152, 1, 'Unknown', '36.73.133.141', '2020-09-09 15:08:11', '2020-09-09 15:08:11'),
(153, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:08:39', '2020-09-09 15:08:39'),
(154, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:09:55', '2020-09-09 15:09:55'),
(155, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:11:00', '2020-09-09 15:11:00'),
(156, 17, 'Unknown', '36.73.133.141', '2020-09-09 15:12:55', '2020-09-09 15:12:55'),
(157, 17, 'Unknown', '36.73.133.141', '2020-09-09 15:13:37', '2020-09-09 15:13:37'),
(158, 18, 'Unknown', '36.73.133.141', '2020-09-09 15:15:46', '2020-09-09 15:15:46'),
(159, 18, 'Unknown', '103.132.52.59', '2020-09-10 00:50:09', '2020-09-10 00:50:09'),
(160, 18, 'Unknown', '103.132.52.59', '2020-09-10 00:53:04', '2020-09-10 00:53:04'),
(161, 18, 'Unknown', '182.2.69.161', '2020-09-10 01:15:36', '2020-09-10 01:15:36'),
(162, 1, 'Unknown', '103.132.52.59', '2020-09-10 01:16:23', '2020-09-10 01:16:23'),
(163, 1, 'Unknown', '182.2.69.161', '2020-09-10 01:17:11', '2020-09-10 01:17:11'),
(164, 1, 'Unknown', '182.2.69.161', '2020-09-10 01:24:55', '2020-09-10 01:24:55'),
(165, 1, 'riski', '103.132.52.59', '2020-09-10 01:24:58', '2020-09-10 01:24:58'),
(166, 18, 'Unknown', '182.2.69.161', '2020-09-10 01:25:09', '2020-09-10 01:25:09'),
(167, 1, 'Unknown', '182.2.69.161', '2020-09-10 01:26:21', '2020-09-10 01:26:21'),
(168, 18, 'Unknown', '182.2.69.161', '2020-09-10 01:26:29', '2020-09-10 01:26:29'),
(169, 18, 'Unknown', '182.2.69.161', '2020-09-10 01:26:31', '2020-09-10 01:26:31'),
(170, 1, 'Unknown', '182.2.69.161', '2020-09-10 01:26:57', '2020-09-10 01:26:57'),
(171, 1, 'Unknown', '182.2.69.161', '2020-09-10 01:27:23', '2020-09-10 01:27:23'),
(172, 18, 'Unknown', '182.2.69.161', '2020-09-10 01:35:04', '2020-09-10 01:35:04'),
(173, 18, 'Unknown', '182.2.69.161', '2020-09-10 01:35:43', '2020-09-10 01:35:43'),
(174, 18, 'Unknown', '182.2.69.161', '2020-09-10 01:38:21', '2020-09-10 01:38:21'),
(175, 19, 'Unknown', '180.246.83.85', '2020-09-16 23:21:40', '2020-09-16 23:21:40'),
(176, 19, 'Unknown', '180.246.83.85', '2020-09-16 23:44:38', '2020-09-16 23:44:38'),
(177, 19, 'Unknown', '103.132.52.59', '2020-09-17 02:12:49', '2020-09-17 02:12:49'),
(178, 19, 'Unknown', '103.132.52.59', '2020-09-17 02:14:55', '2020-09-17 02:14:55'),
(179, 19, 'Unknown', '103.132.52.59', '2020-09-17 02:15:32', '2020-09-17 02:15:32'),
(180, 19, 'Unknown', '103.132.52.59', '2020-09-17 02:15:51', '2020-09-17 02:15:51'),
(181, 20, 'Unknown', '103.247.196.28', '2020-11-21 22:57:41', '2020-11-21 22:57:41'),
(182, 21, 'Unknown', '202.67.46.253', '2020-12-21 06:24:26', '2020-12-21 06:24:26'),
(183, 22, 'Unknown', '36.73.13.215', '2021-02-13 14:03:43', '2021-02-13 14:03:43'),
(184, 22, 'Unknown', '36.73.13.215', '2021-02-13 14:06:43', '2021-02-13 14:06:43'),
(185, 22, 'Unknown', '36.73.13.215', '2021-02-13 14:07:36', '2021-02-13 14:07:36'),
(186, 22, 'Unknown', '36.73.13.215', '2021-02-13 14:10:15', '2021-02-13 14:10:15'),
(187, 22, 'Unknown', '36.73.13.215', '2021-02-13 14:11:18', '2021-02-13 14:11:18'),
(188, 22, 'jumhan', '36.73.13.215', '2021-02-13 14:11:33', '2021-02-13 14:11:33'),
(189, 1, 'Unknown', '36.73.145.84', '2021-03-11 07:15:47', '2021-03-11 07:15:47'),
(190, 22, 'Unknown', '36.73.145.84', '2021-03-11 07:15:56', '2021-03-11 07:15:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rules`
--

CREATE TABLE `rules` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sampul` int(11) NOT NULL,
  `mempelai` int(11) NOT NULL,
  `acara` int(11) NOT NULL,
  `komen` int(11) NOT NULL,
  `gallery` int(11) NOT NULL,
  `cerita` int(11) NOT NULL,
  `lokasi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rules`
--

INSERT INTO `rules` (`id`, `id_user`, `sampul`, `mempelai`, `acara`, `komen`, `gallery`, `cerita`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-26 14:16:43', '2020-08-26 06:26:16'),
(14, 16, 1, 1, 1, 1, 1, 1, 1, '2020-07-26 14:16:43', '2020-08-29 12:18:37'),
(15, 17, 1, 1, 1, 1, 0, 0, 1, '2020-09-07 15:20:40', '2020-09-07 15:20:40'),
(16, 18, 1, 1, 1, 1, 1, 1, 1, '2020-09-07 15:38:49', '2020-09-07 23:49:34'),
(17, 19, 1, 1, 1, 1, 0, 0, 1, '2020-09-16 23:18:50', '2020-09-16 23:18:50'),
(18, 20, 1, 1, 1, 1, 0, 1, 1, '2020-11-21 22:57:32', '2020-11-21 22:57:32'),
(19, 21, 1, 1, 1, 1, 0, 0, 1, '2020-12-21 06:24:21', '2020-12-21 06:24:21'),
(20, 22, 1, 1, 1, 1, 0, 0, 1, '2021-02-13 14:03:32', '2021-02-13 14:03:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `harga` double NOT NULL,
  `nama_bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `norek` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemilik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `harga`, `nama_bank`, `norek`, `nama_pemilik`, `img`, `created_at`) VALUES
(1, 200000, 'BNI (009)', '0484 085 303', 'Jumhan Prayitno', 'bank.png', '2020-09-21 03:24:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `nama_theme` varchar(50) NOT NULL,
  `kode_theme` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `themes`
--

INSERT INTO `themes` (`id`, `nama_theme`, `kode_theme`, `created_at`, `updated_at`) VALUES
(1, 'hwflower', 'A002', '2020-07-26 13:23:40', '2020-08-29 01:26:02'),
(2, 'tealflower', 'A003', '2020-07-26 13:23:40', '2020-08-29 01:26:04'),
(3, 'greenflower', 'A004', '2020-08-17 01:03:22', '2020-08-29 01:26:07'),
(4, 'prettyflower', 'A005', '2020-08-28 18:22:30', '2020-08-29 01:26:46'),
(5, 'blueroses', 'A006', '2020-08-28 17:03:54', '2020-08-29 01:26:49'),
(6, 'redroses', 'A007', '2020-08-28 17:04:08', '2020-08-29 01:26:51'),
(8, 'radiantyellow', 'A008', '2020-08-28 19:56:29', '2020-08-29 02:56:29'),
(9, 'radiantdark', 'A009', '2020-08-28 19:56:29', '2020-08-29 02:56:29'),
(10, 'goldmoment', 'A010', '2020-09-10 15:17:12', '2020-09-10 15:17:12'),
(11, 'cocktailglass', 'A011', '2020-09-15 06:25:37', '2020-09-15 06:25:37'),
(12, 'roads', 'A012', '2020-09-16 23:12:35', '2020-09-16 23:12:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hp` decimal(15,0) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_unik` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `hp`, `email`, `username`, `password`, `id_unik`, `created_at`, `updated_at`) VALUES
(1, '89839273811', 'demo@demo.com', 'demo', 'e82c34e9f1b1774edec24c60c0ece0a2', '2007155', '2020-07-26 14:16:42', '2020-08-29 12:18:09'),
(16, '89839273811', 'reydinda@gmail.com', 'reydinda', 'e82c34e9f1b1774edec24c60c0ece0a2', '2007155', '2020-07-26 14:16:42', '2020-08-25 14:19:38'),
(17, '876869', 'test@gmail.com', 'test@gmail.com', '25d55ad283aa400af464c76d713c07ad', '20091713', '2020-09-07 15:20:40', '2020-09-07 15:20:40'),
(18, '85876270076', 'rskhrmwn@gmail.com', 'rskhrmwn@gmail.com', '0662cbbe8cc25d981e1ac4091d5b00ab', '20091830', '2020-09-07 15:38:49', '2020-09-07 15:38:49'),
(19, '865666', 'asx@gmail.com', 'asx@gmail.com', '25d55ad283aa400af464c76d713c07ad', '20091954', '2020-09-16 23:18:50', '2020-09-16 23:18:50'),
(20, '89737627632', 'jembut@mailinator.com', 'jembut@mailinator.com', '25f9e794323b453885f5181f1b624d0b', '20112053', '2020-11-21 22:57:32', '2020-11-21 22:57:32'),
(21, '8998937095', 'syahdanfilsafan58@gmail.com', 'syahdanfilsafan58@gmail.com', '202cb962ac59075b964b07152d234b70', '20122158', '2020-12-21 06:24:21', '2020-12-21 06:24:21'),
(22, '85876270076', 'add.as.friends@gmail.com', 'add.as.friends@gmail.com', '0662cbbe8cc25d981e1ac4091d5b00ab', '21022273', '2021-02-13 14:03:32', '2021-02-13 14:03:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mempelai`
--
ALTER TABLE `mempelai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `acara`
--
ALTER TABLE `acara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `mempelai`
--
ALTER TABLE `mempelai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT untuk tabel `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"zaid_new\",\"table\":\"user\"},{\"db\":\"zaid_new\",\"table\":\"user_sub_menu\"},{\"db\":\"sdik_new\",\"table\":\"user_sub_menu\"},{\"db\":\"sdik_new\",\"table\":\"vnilai_all\"},{\"db\":\"sdik_new\",\"table\":\"trx_penilaian\"},{\"db\":\"sdik_new\",\"table\":\"master_mapel\"},{\"db\":\"sdik_new\",\"table\":\"master_rombel\"},{\"db\":\"sdik_new\",\"table\":\"tahun_ajaran\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-02-07 12:06:42', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sdik_new`
--
CREATE DATABASE IF NOT EXISTS `sdik_new` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sdik_new`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_guru_tendik`
--

CREATE TABLE `master_guru_tendik` (
  `nama` varchar(128) NOT NULL,
  `nuptk` varchar(16) NOT NULL,
  `jk` char(1) NOT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nip` varchar(16) DEFAULT NULL,
  `status_kepegawaian` varchar(20) DEFAULT NULL,
  `jenis_ptk` varchar(20) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `alamat_jalan` varchar(128) DEFAULT NULL,
  `rt` char(3) DEFAULT NULL,
  `rw` char(3) DEFAULT NULL,
  `nama_dusun` varchar(50) DEFAULT NULL,
  `desa_kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tugas_tambahan` varchar(100) DEFAULT NULL,
  `sk_cpns` varchar(16) DEFAULT NULL,
  `tanggal_cpns` date DEFAULT NULL,
  `sk_pengangkatan` varchar(50) DEFAULT NULL,
  `tmt_pengangkatan` date DEFAULT NULL,
  `lembaga_pengangkatan` varchar(50) DEFAULT NULL,
  `pangkat_golongan` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(20) DEFAULT NULL,
  `nama_ibu_kandung` varchar(128) DEFAULT NULL,
  `status_perkawinan` char(1) DEFAULT NULL,
  `nama_pasangan` varchar(128) DEFAULT NULL,
  `nip_pasangan` varchar(16) DEFAULT NULL,
  `pekerjaan_pasangan` varchar(100) DEFAULT NULL,
  `tmt_pns` date DEFAULT NULL,
  `lisensi_kepsek` char(1) DEFAULT NULL,
  `diklat_kepengawasan` char(1) DEFAULT NULL,
  `skill_braile` char(1) DEFAULT NULL,
  `skill_bhs_isyarat` char(1) DEFAULT NULL,
  `npwp` varchar(15) DEFAULT NULL,
  `nama_wp` varchar(128) DEFAULT NULL,
  `kewarganegaraan` char(4) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `no_rekeneing_bank` varchar(50) DEFAULT NULL,
  `rekening_atas_nama` varchar(128) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `no_kk` varchar(16) DEFAULT NULL,
  `karpeg` varchar(16) DEFAULT NULL,
  `karsis_karsu` varchar(16) DEFAULT NULL,
  `lintang` double DEFAULT NULL,
  `bujur` double DEFAULT NULL,
  `nuks` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_guru_tendik`
--

INSERT INTO `master_guru_tendik` (`nama`, `nuptk`, `jk`, `tempat_lahir`, `tanggal_lahir`, `nip`, `status_kepegawaian`, `jenis_ptk`, `agama`, `alamat_jalan`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `telepon`, `hp`, `email`, `tugas_tambahan`, `sk_cpns`, `tanggal_cpns`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkatan`, `pangkat_golongan`, `sumber_gaji`, `nama_ibu_kandung`, `status_perkawinan`, `nama_pasangan`, `nip_pasangan`, `pekerjaan_pasangan`, `tmt_pns`, `lisensi_kepsek`, `diklat_kepengawasan`, `skill_braile`, `skill_bhs_isyarat`, `npwp`, `nama_wp`, `kewarganegaraan`, `bank`, `no_rekeneing_bank`, `rekening_atas_nama`, `nik`, `no_kk`, `karpeg`, `karsis_karsu`, `lintang`, `bujur`, `nuks`) VALUES
('Wahyu Tri Setya Rina', '0040768669130093', 'P', 'Pekalongan', '1990-07-08', '-', 'Guru Honor Sekolah', 'Guru Kelas', 'Islam', 'Jl. Palapa Raya N0. 28 Pekalongan', '4', '8', '-', 'Kandang Panjang', 'Kec. Pekalongan Utara', '-', '-', '082327363278', 'wahyutrisetyarina@gmail.com', '-', '-', '0000-00-00', '04/SKPTS/YAN/VII/2016', '2017-07-18', 'Ketua Yayasan', '-', 'Yayasan', 'Duminah', '0', '-', '-', 'Tidak dapat diterapkan', '0000-00-00', '0', '0', '0', '0', '716630694502000', '-', 'ID', '-', '-', '-', '3375034807900002', '-', '-', '-', 0, 0, '-'),
('Ema Lin Darsih', '0557764665130213', 'P', 'Batang', '1986-12-25', '-', 'Guru Honor Sekolah', 'Guru Mapel', 'Islam', 'Landungsari Gg. 1C No. 31', '2', '8', '-', 'Noyontaansari', 'Kec. Pekalongan Timur', '51129', '-', '082210930329', 'emalindarsih@gmail.com', '-', '-', '0000-00-00', '7/B/I/08', '2008-01-02', 'Kepala Sekolah', '-', 'Sekolah', 'Nur Suwanti', '1', 'Amin Faizin', '-', 'Wiraswasta', '0000-00-00', '0', '0', '0', '0', '554377002513000', 'Ema Lin darsih', 'ID', '-', '-', '-', '3325116512860002', '-', '-', '-', -6.8907, 109.6753, '-'),
('Riski Hermawan', '1837768669130112', 'L', 'Pekalongan', '1990-05-05', '-', 'Guru Honor Sekolah', 'Guru Mapel', 'Islam', 'Jl. Mayjend Sutoyo, Sewunut Gg. Cempaka, Denasri Wetan, Batang', '5', '4', 'Sewunut', 'Denasri Wetan', 'Kec. Batang', '51216', '-', '085876270076', 'rskhrmwn@gmail.com', 'Bendahara BOS', '-', '0000-00-00', '-', '2017-07-18', 'Ketua Yayasan', '-', 'Yayasan', 'Durotul Yatimah', '1', 'Reza Kusuma Ningtyas', '-', 'Tidak bekerja', '0000-00-00', '0', '0', '0', '0', '-', '-', 'ID', '-', '-', '-', '3375020505900003', '3325110812170001', '-', '-', -6.8907, 109.6753, '-'),
('Priyanti', '2752743645300012', 'P', 'Pekalongan', '1965-04-20', '-', 'GTY/PTY', 'Guru Kelas', 'Islam', 'Sugih Waras Gg 9 No 9a Rt 02 Rw 01', '2', '1', '-', 'SUGIH WARAS', 'Kec. Pekalongan Timur', '51125', '-', '08569999670', 'Priyanti633@gmail.com', '-', '-', '0000-00-00', 'SDI/Sek/031/XI/1991', '1991-11-09', 'Lainnya', '-', 'Yayasan', 'Siti Asiah', '1', 'Imam Ghozali', '-', 'Karyawan Swasta', '0000-00-00', '0', '0', '0', '0', '691400683502000', '-', 'ID', '-', '-', '-', '3375026004650002', '-', '-', '-', 0, 0, '-'),
('R Mohammad Awalludin', '3633754655200030', 'L', 'Pekalongan', '1976-03-01', '-', 'GTY/PTY', 'Guru Mapel', 'Islam', 'Jl Kh Wahid Hasyim Kauman Gg 12 Rt 04 Rw 02 No 20', '5', '2', '-', 'KAUMAN', 'Kec. Pekalongan Timur', '51127', '-', '081227373437', 'uudalkaumani@gmail.com', '-', '-', '0000-00-00', '27/SKPTS/YAN/IV/1998', '1998-04-01', 'Ketua Yayasan', '-', 'Yayasan', 'Fatmah', '0', '-', '-', 'Lainnya', '0000-00-00', '0', '0', '0', '0', '691642029502000', 'R. MOHAMAD AWALUDIN', 'ID', '-', '-', '-', '3375020103760002', '3375021909070090', '-', '-', -6.891481148883, 109.67459321022, '-'),
('Naily Murodah', '4835761662130202', 'P', 'Pekalongan', '1983-05-03', '-', 'GTY/PTY', 'Guru Mapel', 'Islam', 'CLUCUK GANG 1 RT 014 RW 004 WARUNGASEM', '0', '0', '-', 'SIDOREJO', 'Kec. Warungasem', '0', '-', '085642842072', 'nailymurodah3583@gmail.com', '-', '-', '0000-00-00', '07/ SKPTS/ YAN/ VII/ 2017', '2017-07-13', 'Ketua Yayasan', '-', 'Sekolah', 'SHOLIHAH', '1', '-', '-', 'Tidak dapat diterapkan', '0000-00-00', '0', '0', '0', '0', '-', '-', 'ID', '-', '-', '-', '3375044305830005', '-', '-', '-', 0, 0, '-'),
('Nurussufi', '5142746648200063', 'L', 'Pekalongan', '1968-08-10', '-', 'GTY/PTY', 'Kepala Sekolah', 'Islam', 'Perum Griya Permai II Blok F.11', '4', '15', '-', 'Kebulen', 'Kec. Pekalongan Barat', '-', '085865604053', '081548037535', 'nurussufi10@gmail.com', 'Kepala Sekolah', '-', '0000-00-00', 'SDI/Sek/015/II/1989', '1989-02-01', 'Ketua Yayasan', '-', 'Yayasan', 'Zahroh', '1', 'Inuk Prihandayani', '-', 'Tidak bekerja', '0000-00-00', '1', '0', '0', '0', '691642516502000', '-', 'ID', '-', '-', '-', '3375011008680003', '-', '-', '-', 0, 0, '19023L0010364221063191'),
('M Rizqi Robby', '6460757660200002', 'L', 'Pekalongan', '1979-01-28', '-', 'GTY/PTY', 'Guru Kelas', 'Islam', 'Kauman Gg 6 No 9a', '4', '1', '-', 'KAUMAN', 'Kec. Pekalongan Timur', '51127', '0285413305', '085747332498', 'rizkirobby79@gmail.com', '-', '-', '0000-00-00', '04/SKPTS/YAN/2006', '2006-07-25', 'Ketua Yayasan', '-', 'Yayasan', 'Ratna Churiyah', '1', 'Revi Mariza Ni\'mah', '-', 'Karyawan Swasta', '0000-00-00', '1', '0', '0', '0', '691642508502000', '-', 'ID', '-', '-', '-', '3375022801790003', '-', '-', '-', 0, 0, '-'),
('Istiqomah', '7150762663300013', 'P', 'Pekalongan', '1984-08-18', '-', 'GTY/PTY', 'Guru Kelas', 'Islam', 'Noyontaan Gg.9/22', '4', '3', '-', 'NOYONTAANSARI', 'Kec. Pekalongan Timur', '51121', '-', '0895344430578', 'istiqomah.ais@gmail.com', '-', '-', '0000-00-00', '04/SKPTS/YAN/VIII/2010', '2010-08-08', 'Ketua Yayasan', '-', 'Yayasan', 'Umyanah', '1', 'Choirul Abdullah', '-', 'Karyawan Swasta', '0000-00-00', '0', '0', '0', '0', '691400667502000', '-', 'ID', '-', '-', '-', '3375025808840008', '3375022711170009', '-', '-', -6.896002613628, 109.67835366726, '-'),
('Khafidhoh', '8137743645300013', 'P', 'Pekalongan', '1965-08-05', '-', 'GTY/PTY', 'Guru Kelas', 'Islam', 'Pabean Rt 03 Rw 02', '3', '3', '-', 'PABEAN', 'Kec. Pekalongan Utara', '51144', '0285413226', '085866333009', 'khafidhohafa@gmail.com', '-', '-', '0000-00-00', 'SDI/Sek/032/IX/1985', '1985-09-01', 'Ketua Yayasan', '-', 'Yayasan', 'Faridah', '2', 'Sohidin', '-', 'Lainnya', '0000-00-00', '0', '0', '0', '0', '691400675502000', '-', 'ID', '-', '-', '-', '3375034508650007', '-', '-', '-', 0, 0, '-'),
('Dian Mayang Suri', '9243758660300073', 'P', 'Pekalongan', '1980-09-11', '-', 'GTY/PTY', 'Guru Kelas', 'Islam', 'Jl Gajah Mada No 5 Rt 01 Rw 01', '1', '1', '-', 'KRAMATSARI', 'Kec. Pekalongan Timur', '51118', '-', '085700837039', 'dianmayang354@gmail.com', '-', '-', '0000-00-00', '07/SKPTS/YAN/IX/2005', '2005-06-18', 'Ketua Yayasan', '-', 'Yayasan', 'Im Suimah', '1', 'Muhammad Khotib Amrullah', '-', 'Karyawan Swasta', '0000-00-00', '0', '0', '0', '0', '689036101502000', '-', 'ID', '-', '-', '-', '3375015109800006', '-', '-', '-', 0, 0, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kelompok_mapel`
--

CREATE TABLE `master_kelompok_mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_kelompok_mapel`
--

INSERT INTO `master_kelompok_mapel` (`id`, `nama`) VALUES
(1, 'Pendidikan Kewarganegaraan (Pkn)'),
(2, 'Bahasa Indonesia'),
(3, 'Matematika'),
(4, 'Seni Budaya dan Prakarya (SbdP)'),
(5, 'Pendidikan IPA'),
(6, 'Pendidikan IPS'),
(7, 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)'),
(8, 'Pendidikan Agama Islam'),
(9, 'Muatan Lokal Bahasa Daerah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_mapel`
--

CREATE TABLE `master_mapel` (
  `id` int(11) NOT NULL,
  `kelompok_mapel_id` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status_kurikulum` varchar(50) NOT NULL,
  `rombel_id` int(11) NOT NULL,
  `rombel_nama` varchar(20) NOT NULL,
  `guru_nuptk` varchar(16) NOT NULL,
  `guru_nama` varchar(128) NOT NULL,
  `ta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_mapel`
--

INSERT INTO `master_mapel` (`id`, `kelompok_mapel_id`, `kode`, `nama`, `status_kurikulum`, `rombel_id`, `rombel_nama`, `guru_nuptk`, `guru_nama`, `ta_id`) VALUES
(1, 1, '-', 'Pendidikan Kewarganegaraan (Pkn)', 'Kurikulum SD 2013', 1, 'Kelas 1', '0040768669130093', 'Wahyu Tri Setya Rina', 1),
(2, 2, '-', 'Bahasa Indonesia', 'Kurikulum SD 2013', 1, 'Kelas 1', '0040768669130093', 'Wahyu Tri Setya Rina', 1),
(3, 3, '-', 'Matematika', 'Kurikulum SD 2013', 1, 'Kelas 1', '0040768669130093', 'Wahyu Tri Setya Rina', 1),
(4, 4, '-', 'Seni Budaya dan Prakarya (SbdP)', 'Kurikulum SD 2013', 1, 'Kelas 1', '0040768669130093', 'Wahyu Tri Setya Rina', 1),
(5, 5, '-', 'Pendidikan IPA', 'Kurikulum SD 2013', 1, 'Kelas 1', '0040768669130093', 'Wahyu Tri Setya Rina', 1),
(6, 6, '-', 'Pendidikan IPS', 'Kurikulum SD 2013', 1, 'Kelas 1', '0040768669130093', 'Wahyu Tri Setya Rina', 1),
(7, 7, '-', 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)', 'Kurikulum SD 2013', 1, 'Kelas 1', '3633754655200030', 'R Mohammad Awalludin', 1),
(8, 8, '-', 'Pendidikan Agama Islam', 'Kurikulum SD 2013', 1, 'Kelas 1', '4835761662130202', 'Naily Murodah', 1),
(9, 9, '-', 'Muatan Lokal Bahasa Daerah', 'Kurikulum SD 2013', 1, 'Kelas 1', '1837768669130112', 'Riski Hermawan', 1),
(11, 1, '-', 'Pendidikan Kewarganegaraan (Pkn)', 'Kurikulum SD 2013', 2, 'Kelas 2', '8137743645300013', 'Khafidhoh', 1),
(12, 2, '-', 'Bahasa Indonesia', 'Kurikulum SD 2013', 2, 'Kelas 2', '8137743645300013', 'Khafidhoh', 1),
(13, 3, '-', 'Matematika', 'Kurikulum SD 2013', 2, 'Kelas 2', '8137743645300013', 'Khafidhoh', 1),
(14, 4, '-', 'Seni Budaya dan Prakarya (SbdP)', 'Kurikulum SD 2013', 2, 'Kelas 2', '8137743645300013', 'Khafidhoh', 1),
(15, 5, '-', 'Pendidikan IPA', 'Kurikulum SD 2013', 2, 'Kelas 2', '8137743645300013', 'Khafidhoh', 1),
(16, 6, '-', 'Pendidikan IPS', 'Kurikulum SD 2013', 2, 'Kelas 2', '8137743645300013', 'Khafidhoh', 1),
(17, 7, '-', 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)', 'Kurikulum SD 2013', 2, 'Kelas 2', '3633754655200030', 'R Mohammad Awalludin', 1),
(18, 8, '-', 'Pendidikan Agama Islam', 'Kurikulum SD 2013', 2, 'Kelas 2', '4835761662130202', 'Naily Murodah', 1),
(19, 9, '-', 'Muatan Lokal Bahasa Daerah', 'Kurikulum SD 2013', 2, 'Kelas 2', '1837768669130112', 'Riski Hermawan', 1),
(21, 1, '-', 'Pendidikan Kewarganegaraan (Pkn)', 'Kurikulum SD 2013', 3, 'Kelas 3', '2752743645300012', 'Priyanti', 1),
(22, 2, '-', 'Bahasa Indonesia', 'Kurikulum SD 2013', 3, 'Kelas 3', '2752743645300012', 'Priyanti', 1),
(23, 3, '-', 'Matematika', 'Kurikulum SD 2013', 3, 'Kelas 3', '2752743645300012', 'Priyanti', 1),
(24, 4, '-', 'Seni Budaya dan Prakarya (SbdP)', 'Kurikulum SD 2013', 3, 'Kelas 3', '2752743645300012', 'Priyanti', 1),
(25, 5, '-', 'Pendidikan IPA', 'Kurikulum SD 2013', 3, 'Kelas 3', '2752743645300012', 'Priyanti', 1),
(26, 6, '-', 'Pendidikan IPS', 'Kurikulum SD 2013', 3, 'Kelas 3', '2752743645300012', 'Priyanti', 1),
(27, 7, '-', 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)', 'Kurikulum SD 2013', 3, 'Kelas 3', '3633754655200030', 'R Mohammad Awalludin', 1),
(28, 8, '-', 'Pendidikan Agama Islam', 'Kurikulum SD 2013', 3, 'Kelas 3', '4835761662130202', 'Naily Murodah', 1),
(29, 9, '-', 'Muatan Lokal Bahasa Daerah', 'Kurikulum SD 2013', 3, 'Kelas 3', '1837768669130112', 'Riski Hermawan', 1),
(31, 1, '-', 'Pendidikan Kewarganegaraan (Pkn)', 'Kurikulum SD 2013', 4, 'Kelas 4', '6460757660200002', 'M Rizqi Robby', 1),
(32, 2, '-', 'Bahasa Indonesia', 'Kurikulum SD 2013', 4, 'Kelas 4', '6460757660200002', 'M Rizqi Robby', 1),
(33, 3, '-', 'Matematika', 'Kurikulum SD 2013', 4, 'Kelas 4', '6460757660200002', 'M Rizqi Robby', 1),
(34, 4, '-', 'Seni Budaya dan Prakarya (SbdP)', 'Kurikulum SD 2013', 4, 'Kelas 4', '6460757660200002', 'M Rizqi Robby', 1),
(35, 5, '-', 'Pendidikan IPA', 'Kurikulum SD 2013', 4, 'Kelas 4', '6460757660200002', 'M Rizqi Robby', 1),
(36, 6, '-', 'Pendidikan IPS', 'Kurikulum SD 2013', 4, 'Kelas 4', '6460757660200002', 'M Rizqi Robby', 1),
(37, 7, '-', 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)', 'Kurikulum SD 2013', 4, 'Kelas 4', '3633754655200030', 'R Mohammad Awalludin', 1),
(38, 8, '-', 'Pendidikan Agama Islam', 'Kurikulum SD 2013', 4, 'Kelas 4', '4835761662130202', 'Naily Murodah', 1),
(39, 9, '-', 'Muatan Lokal Bahasa Daerah', 'Kurikulum SD 2013', 4, 'Kelas 4', '1837768669130112', 'Riski Hermawan', 1),
(41, 1, '-', 'Pendidikan Kewarganegaraan (Pkn)', 'Kurikulum SD 2013', 5, 'Kelas 5', '0557764665130213', 'Ema Lin Darsih', 1),
(42, 2, '-', 'Bahasa Indonesia', 'Kurikulum SD 2013', 5, 'Kelas 5', '0557764665130213', 'Ema Lin Darsih', 1),
(43, 3, '-', 'Matematika', 'Kurikulum SD 2013', 5, 'Kelas 5', '0557764665130213', 'Ema Lin Darsih', 1),
(44, 4, '-', 'Seni Budaya dan Prakarya (SbdP)', 'Kurikulum SD 2013', 5, 'Kelas 5', '0557764665130213', 'Ema Lin Darsih', 1),
(45, 5, '-', 'Pendidikan IPA', 'Kurikulum SD 2013', 5, 'Kelas 5', '0557764665130213', 'Ema Lin Darsih', 1),
(46, 6, '-', 'Pendidikan IPS', 'Kurikulum SD 2013', 5, 'Kelas 5', '0557764665130213', 'Ema Lin Darsih', 1),
(47, 7, '-', 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)', 'Kurikulum SD 2013', 5, 'Kelas 5', '3633754655200030', 'R Mohammad Awalludin', 1),
(48, 8, '-', 'Pendidikan Agama Islam', 'Kurikulum SD 2013', 5, 'Kelas 5', '4835761662130202', 'Naily Murodah', 1),
(49, 9, '-', 'Muatan Lokal Bahasa Daerah', 'Kurikulum SD 2013', 5, 'Kelas 5', '1837768669130112', 'Riski Hermawan', 1),
(51, 1, '-', 'Pendidikan Kewarganegaraan (Pkn)', 'Kurikulum SD 2013', 6, 'Kelas 6', '9243758660300073', 'Dian Mayang Suri', 1),
(52, 2, '-', 'Bahasa Indonesia', 'Kurikulum SD 2013', 6, 'Kelas 6', '9243758660300073', 'Dian Mayang Suri', 1),
(53, 3, '-', 'Matematika', 'Kurikulum SD 2013', 6, 'Kelas 6', '9243758660300073', 'Dian Mayang Suri', 1),
(54, 4, '-', 'Seni Budaya dan Prakarya (SbdP)', 'Kurikulum SD 2013', 6, 'Kelas 6', '9243758660300073', 'Dian Mayang Suri', 1),
(55, 5, '-', 'Pendidikan IPA', 'Kurikulum SD 2013', 6, 'Kelas 6', '9243758660300073', 'Dian Mayang Suri', 1),
(56, 6, '-', 'Pendidikan IPS', 'Kurikulum SD 2013', 6, 'Kelas 6', '9243758660300073', 'Dian Mayang Suri', 1),
(57, 7, '-', 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)', 'Kurikulum SD 2013', 6, 'Kelas 6', '3633754655200030', 'R Mohammad Awalludin', 1),
(58, 8, '-', 'Pendidikan Agama Islam', 'Kurikulum SD 2013', 6, 'Kelas 6', '4835761662130202', 'Naily Murodah', 1),
(59, 9, '-', 'Muatan Lokal Bahasa Daerah', 'Kurikulum SD 2013', 6, 'Kelas 6', '1837768669130112', 'Riski Hermawan', 1),
(61, 1, '-', 'Pendidikan Kewarganegaraan (Pkn)', 'Kurikulum SD 2013', 7, 'Kelas 5B', '7150762663300013', 'Istiqomah', 1),
(62, 2, '-', 'Bahasa Indonesia', 'Kurikulum SD 2013', 7, 'Kelas 5B', '7150762663300013', 'Istiqomah', 1),
(63, 3, '-', 'Matematika', 'Kurikulum SD 2013', 7, 'Kelas 5B', '7150762663300013', 'Istiqomah', 1),
(64, 4, '-', 'Seni Budaya dan Prakarya (SbdP)', 'Kurikulum SD 2013', 7, 'Kelas 5B', '7150762663300013', 'Istiqomah', 1),
(65, 5, '-', 'Pendidikan IPA', 'Kurikulum SD 2013', 7, 'Kelas 5B', '7150762663300013', 'Istiqomah', 1),
(66, 6, '-', 'Pendidikan IPS', 'Kurikulum SD 2013', 7, 'Kelas 5B', '7150762663300013', 'Istiqomah', 1),
(67, 7, '-', 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)', 'Kurikulum SD 2013', 7, 'Kelas 5B', '3633754655200030', 'R Mohammad Awalludin', 1),
(68, 8, '-', 'Pendidikan Agama Islam', 'Kurikulum SD 2013', 7, 'Kelas 5B', '4835761662130202', 'Naily Murodah', 1),
(69, 9, '-', 'Muatan Lokal Bahasa Daerah', 'Kurikulum SD 2013', 7, 'Kelas 5B', '1837768669130112', 'Riski Hermawan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_penilaian`
--

CREATE TABLE `master_penilaian` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_penilaian`
--

INSERT INTO `master_penilaian` (`id`, `kode`, `keterangan`) VALUES
(1, 't1', 'Tema I'),
(2, 't2', 'Tema II'),
(3, 't3', 'Tema III'),
(4, 't4', 'Tema IV'),
(5, 't5', 'Tema V'),
(6, 't6', 'Tema VI'),
(7, 't7', 'Tema VII'),
(8, 't8', 'Tema VIII'),
(9, 't9', 'Tema IX'),
(10, 'pts-1', 'PTS I'),
(11, 'pas', 'PAS'),
(12, 'pts-2', 'PTS II'),
(13, 'pat', 'PAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_rombel`
--

CREATE TABLE `master_rombel` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `guru_nuptk` varchar(16) NOT NULL,
  `guru_nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_rombel`
--

INSERT INTO `master_rombel` (`id`, `nama`, `guru_nuptk`, `guru_nama`) VALUES
(1, 'Rombel I', '0040768669130093', 'Wahyu Tri Setya Rina'),
(2, 'Rombel II', '8137743645300013', 'Khafidhoh'),
(3, 'Rombel III', '2752743645300012', 'Priyanti'),
(4, 'Rombel IV', '6460757660200002', 'M Rizqi Robby'),
(5, 'Rombel V', '0557764665130213', 'Ema Lin Darsih'),
(6, 'Rombel VI', '9243758660300073', 'Dian Mayang Suri'),
(7, 'Rombel VI A', '7150762663300013', 'Istiqomah'),
(8, 'Rombel VI B', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_siswa`
--

CREATE TABLE `master_siswa` (
  `no_register` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `nipd` int(11) NOT NULL,
  `jk` char(1) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tempat_lahir` varchar(128) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `rt` smallint(6) NOT NULL,
  `rw` smallint(6) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `skhun` varchar(20) NOT NULL,
  `penerima_kps` char(1) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `nama_ayah` varchar(128) NOT NULL,
  `tahun_lahir_ayah` int(11) NOT NULL,
  `jenjang_pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `penghasilan_ayah` varchar(128) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `nama_ibu` varchar(128) NOT NULL,
  `tahun_lahir_ibu` int(11) NOT NULL,
  `jenjang_pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `penghasilan_ibu` varchar(128) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `nama_wali` varchar(128) NOT NULL,
  `tahun_lahir_wali` int(11) NOT NULL,
  `jenjang_pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(50) NOT NULL,
  `penghasilan_wali` varchar(128) NOT NULL,
  `nik_wali` varchar(16) NOT NULL,
  `rombel_id` int(11) NOT NULL,
  `no_peserta_ujian_nasional` varchar(50) NOT NULL,
  `no_seri_ijazah` varchar(50) NOT NULL,
  `penerima_kip` char(1) NOT NULL,
  `nomor_kip` varchar(50) NOT NULL,
  `nama_di_kip` char(1) NOT NULL,
  `nomor_kks` varchar(50) NOT NULL,
  `no_registrasi_akta_lahir` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `nomor_rekening_bank` varchar(50) NOT NULL,
  `rekening_atas_nama` varchar(128) NOT NULL,
  `layak_pip` char(1) NOT NULL,
  `alasan_layak_pip` varchar(50) NOT NULL,
  `kebutuhan_khusus` char(1) NOT NULL,
  `sekolah_asal` varchar(128) NOT NULL,
  `anak_ke_berapa` int(11) NOT NULL,
  `lintang` double NOT NULL,
  `bujur` double NOT NULL,
  `no_kk` varchar(50) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `lingkar_kepala` int(11) NOT NULL,
  `jml_saudara_kandung` int(11) NOT NULL,
  `jarak_rumah_ke_sekolah_km` int(11) NOT NULL,
  `is_valid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_siswa`
--

INSERT INTO `master_siswa` (`no_register`, `nama`, `nipd`, `jk`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `agama`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `jenjang_pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nik_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `jenjang_pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nik_ibu`, `nama_wali`, `tahun_lahir_wali`, `jenjang_pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `nik_wali`, `rombel_id`, `no_peserta_ujian_nasional`, `no_seri_ijazah`, `penerima_kip`, `nomor_kip`, `nama_di_kip`, `nomor_kks`, `no_registrasi_akta_lahir`, `bank`, `nomor_rekening_bank`, `rekening_atas_nama`, `layak_pip`, `alasan_layak_pip`, `kebutuhan_khusus`, `sekolah_asal`, `anak_ke_berapa`, `lintang`, `bujur`, `no_kk`, `berat_badan`, `tinggi_badan`, `lingkar_kepala`, `jml_saudara_kandung`, `jarak_rumah_ke_sekolah_km`, `is_valid`) VALUES
(1, 'Alesha Zahra Ramahani', 0, 'P', '0159645018', 'Pekalongan', '2015-06-21', '3375026106150001', 'Islam', 'Kauman gang 2 No.5', 2, 6, '-', 'Kauman', 'Kauman', '51127', 'Bersama orang tua', 'Sepeda motor', '(0285) 431712', '082227506860', '-', '-', '0', '-', 'Maulana Achmaddin', 1993, 'SMP / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', '3375020209930002', 'Nina Catur Ferinanda', 1993, 'SMA / sederajat', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '3375026102930003', '-', 0, 'Tidak sekolah', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '-', 1, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Pemegang PKH/KPS/KKS', '0', '-', 2, 0, 0, '-', 15, 120, 0, 0, 0, 0),
(2, 'ALLENA NAURA SABENA', 0, 'P', '0157032194', 'PEKALONGAN', '2015-03-03', '3375024303150002', 'Islam', 'SAMPANGAN GG.10 NO.26', 3, 10, 'SAMPANGAN', 'KAUMAN', 'Kec. Pekalongan Timur', '51126', 'Bersama orang tua', 'Sepeda motor', '-', '08157946992', '-', '-', '0', '-', 'M. YUSUF SETIAWAN', 1982, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020204820005', 'DIANA ISNAINI ROSYDA', 1989, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375045704890007', 'M. YUSUF SETIAWAN', 1982, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020204820005', 1, '-', '-', '0', '-', '1', '-', '3375-LU-10042015-0009', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(3, 'ARFA RADITYA', 0, 'L', '3159927229', 'PEKALONGAN', '2015-06-04', '3375020406150001', 'Islam', 'Poncol 14 A Mawar No. 22', 3, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '088229932754', '-', '-', '0', '-', '-', 1991, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'TASLIMATUL FARIDAH', 1993, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LU-25062015-0045', '-', '-', '-', '0', '-', '0', '-', 1, 0, 0, '3375020406150000', 0, 0, 0, 0, 0, 0),
(4, 'Atiffan Rizky Ramadhan', 0, 'L', '3142532865', 'Pemalang', '2014-07-02', '3327090207140004', 'Islam', 'Dusun Kalibaros RT/RW 003/009 Taman Pemalang 52361', 3, 9, 'Taman', 'Taman', 'Kec. Taman', '52359', 'Bersama orang tua', 'Sepeda motor', '-', '081228254154', '-', '-', '0', '-', '-', 1989, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'Devi Syam Febriani', 1996, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3327-LU-29082014-0010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '3327091408140000', 0, 0, 0, 0, 0, 0),
(5, 'Dona Aura Zhafirah', 0, 'P', '0141338419', 'Pekalongan', '2014-08-10', '3326105008140002', 'Islam', 'Tegalsuruh RT/RW 001/004 Tegal Suruh Sragi  Kab. Pekalongan 51155', 1, 4, 'Tegal Suruh', 'Tegal Suruh', 'Kec. Sragi', '51153', 'Bersama orang tua', 'Sepeda motor', '-', '085742896367', '-', '-', '0', '-', '-', 1983, 'S1', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Nur Diana', 0, '-', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3326-LT-01102014-0135', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '3326102701150000', 0, 0, 0, 0, 0, 0),
(6, 'Galuh Aulia', 0, 'P', '0149434761', 'PEKALONGAN', '2014-08-25', '3375016508140003', 'Islam', 'Sapuro Indah No.75', 3, 7, '-', 'Sapuro Kebulen', 'Sapuro Kebulen', '51112', 'Bersama orang tua', 'Sepeda motor', '-', '085640022213', '-', '-', '0', '-', 'Achmad Rofiq Syaifi', 1979, 'SD / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375010705790004', 'Ratna Kasiana', 1984, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375016409840012', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '682.0097843', '-', '-', '-', '0', 'Pemegang PKH/KPS/KKS', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(7, 'Hanna Faizatul Kamila', 0, 'P', '0142519991', 'Pekalongan', '2014-10-04', '3375024410140002', 'Islam', 'Setono Rt 02 Rw 01', 2, 0, 'Setono', 'Setono', 'Kec. Pekalongan Timur', '51123', 'Bersama orang tua', 'Sepeda motor', '-', '085641725250', '-', '-', '0', '-', '-', 1975, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Nur Janah', 1977, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LU-18112014-0044', '-', '-', '-', '0', '-', '0', '-', 3, 0, 0, '3375022809070085', 0, 0, 0, 0, 0, 0),
(8, 'Hasna Nabila', 0, 'P', '0147499454', 'Peklongan', '2014-10-06', '3375024103160005', 'Islam', 'Noyontaan Gg.9 No.22', 4, 3, 'Noyontaansari', 'Noyontaansari', 'Kec. Pekalongan Timur', '51121', 'Bersama orang tua', 'Sepeda motor', '-', '0895344430578', '-', '-', '0', '-', 'Choirul Abdullah', 1983, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '3327082911830041', 'Istiqomah', 1984, 'D3', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '3375025808840008', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LT-28122017', '-', '-', '-', '0', '-', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(9, 'Illiansyah Fachrial Maula Achmad', 0, 'L', '0141062584', 'Pekalongan', '2014-12-30', '3375023012140004', 'Islam', 'Jalan KH. Dewantoro Gang II B No19', 4, 9, '-', 'Noyontaansari', 'Kec. Pekalongan Timur', '51129', 'Bersama orang tua', 'Sepeda motor', '-', '085642727320', '-', '-', '0', '-', 'Rofikudin', 1978, 'SMA / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', '3375020101780008', 'Ainun Ni\'mah', 1980, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025205800005', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LT-20032015-0001', '-', '-', '-', '0', '-', '0', '-', 3, 0, 0, '3375020808070093', 0, 0, 0, 0, 0, 0),
(10, 'KHAIRA HASNA HIBATULLAH', 0, 'P', '0153246664', 'PEKALONGAN', '2015-03-26', '3375036603150001', 'Islam', 'KANDANG PANJANG GG.7A/65', 3, 4, 'KANDANG PANJANG', 'KANDANG PANJANG', 'Kec. Pekalongan Utara', '51142', 'Bersama orang tua', 'Sepeda motor', '-', '088225115979', '-', '-', '0', '-', 'HASAN ROMADHON', 1984, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'NUR KHASANAH', 1988, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', 'HASAN ROMADHON', 1984, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 1, '-', '-', '0', '-', '1', '-', '3375-LT-04062015-0003', '-', '-', '-', '0', '-', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(11, 'Langit Alfarizi Ghaisan', 0, 'L', '3151346043', 'Pontianak', '2015-07-01', '6171050107150001', 'Islam', 'Balikpapan Baru Pos 11 Blok T6 03', 0, 0, '-', 'Gunung Samarinda', 'Kec. Balikpapan Utara', '0', 'Bersama orang tua', 'Mobil pribadi', '-', '-', '-', '-', '0', '-', '-', 1984, 'S1', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000', '-', 'Irdita Anggeraini', 1987, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '7380144585', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '6112010103170012', 0, 0, 0, 0, 0, 0),
(12, 'M Galih Satria Diputra', 0, 'L', '0135681717', 'Pekalongan', '2015-07-27', '3375022707150001', 'Islam', 'Perum Omah Alit Blok B No 8', 0, 0, 'Setono', 'Setono', 'Setono', '51123', 'Bersama orang tua', 'Sepeda motor', '-', '087860978442', '-', '-', '0', '-', 'M Arqom Adi Pratama', 1982, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Aprillia Fransisca Tumbol', 1984, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 1, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(13, 'M. Raditya Saputra', 0, 'L', '0143053309', 'Kota Pekalongan', '2014-09-14', '3375021409140002', 'Islam', 'Kauman Gg. 3 RT/RW 002/008 Pekalongan Timur 51121', 2, 8, 'Kauman', 'Kauman', 'Kec. Pekalongan Timur', '51121', 'Bersama orang tua', 'Sepeda motor', '-', '-', '-', '-', '0', '-', '-', 1989, 'SD / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Rodza', 1995, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LT-27042016-0044', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '3375021409140002', 0, 0, 0, 0, 0, 0),
(14, 'M. Rizky Aulia Dwi Wardana', 0, 'L', '0143471287', 'PEKALONGAN', '2014-10-11', '3375021110140001', 'Islam', 'Kauman Gang 12 No.24', 5, 7, '-', 'Kauman', 'Kauman', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '085642805072', '-', '-', '0', '-', 'Somad', 1972, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375022304720002', 'Fitriyah', 1978, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', '3375024909780007', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '682.0098319', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(15, 'Maimun Saba', 0, 'L', '0148078051', 'Pekalongan', '2014-09-22', '3375042209140002', 'Islam', 'Yosorejo Gang.3 Rt/Rw 004/010 Kuripan Yosorejo Pekalongan Selatan 51137', 4, 1, 'Yosorejo', 'Kuripan Yosorejo', 'Kec. Pekalongan Selatan', '51137', 'Bersama orang tua', 'Sepeda motor', '-', '089501256032', '-', '-', '0', '-', '-', 1969, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Munasifah', 1980, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LU-23101014-0027', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 6, 0, 0, '3375040210070022', 0, 0, 0, 0, 0, 0),
(16, 'Mohammad Tsaqiif', 0, 'L', '0144661227', 'PEKALONGAN', '2014-01-25', '3375022501140003', 'Islam', 'Jalan Jlamprang Gang Klego Baru No.28', 4, 1, '-', 'Klego', 'Klego', '51124', 'Bersama orang tua', 'Sepeda motor', '-', '085642523043', '-', '-', '0', '-', 'Mohammad Latif', 1978, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022508780002', 'Fidya Nisya', 1981, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375026210810002', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 1, '-', '-', '0', '-', '0', '-', '682.0100634', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(17, 'Muh. Abyan Khalif AlGhifari', 0, 'L', '0131865891', 'PALU', '2015-09-12', '3375021209150002', 'Islam', 'Kauman Gang 10 No.30', 1, 7, '-', 'Kauman', 'Kauman', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '085786384442', '-', '-', '0', '-', 'Moh. Sobkhan Edi Wibowo', 1981, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021106810005', 'Putri Khusnul Khotimah', 1985, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025207850004', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '682.011343', '-', '-', '-', '0', 'Pemegang PKH/KPS/KKS', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(18, 'Muhammad Aiman Fahd Al-Fatih', 0, 'L', '0141409929', 'PEKALONGAN', '2014-09-09', '3375020909140001', 'Islam', 'Keputran Gang 3 No.15', 2, 2, '-', 'Kauman', 'Kauman', '51128', 'Bersama orang tua', 'Sepeda motor', '-', '085601111745', '-', '-', '0', '-', 'Ahmad Zulfikar', 1992, 'D3', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020101920003', 'Herlina Ita Nurjanah', 1989, 'D2', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '3326015407890003', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '682.00923', '-', '-', '-', '0', 'Pemegang PKH/KPS/KKS', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(19, 'MUHAMMAD AMMAR MUKTI', 0, 'L', '0156180691', 'PEKALONGAN', '2015-02-13', '3375021302150004', 'Islam', 'SUGIHWARAS GG.9 NO.1', 2, 14, 'SUGIHWARAS', 'KAUMAN', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '082136640703', '-', '-', '0', '-', 'MOCHAMMAD FREDDY MUKTI', 1990, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022807900005', 'MILA ANGGRAINI', 1989, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375036308890011', 'MOCHAMMAD FREDDY MUKTI', 1990, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022807900005', 1, '-', '-', '0', '-', '1', '-', '3375-LT-23062015-0034', '-', '-', '-', '0', '-', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(20, 'MUHAMMAD DANIEL ATHAR', 0, 'L', '0143738420', 'PEKALONGAN', '2014-05-20', '3375022005140001', 'Islam', 'KAUMAN', 3, 7, 'KAUMAN', 'KAUMAN', 'Kauman', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '085325463396', '-', '-', '0', '-', 'ISMAIL', 1976, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375022102760004', 'YULIANA', 1982, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375026507820002', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LT-06012016-0018', '-', '-', '-', '1', 'Pemegang PKH/KPS/KKS', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(21, 'MUHAMMAD HAIDAR RASYID', 0, 'L', '0158546827', 'PEKALONGAN', '2015-04-14', '3375011404150003', 'Islam', 'GRIYA PERMAI II BLOK F-10 RT/RW 004/005 SAPURO KEBULEN PEKALONGAN BARAT 51112', 4, 5, 'Sapuro', 'Sapuro Kebulen', 'Kec. Pekalongan Barat', '51112', 'Bersama orang tua', 'Sepeda motor', '-', '85891289550', '-', '-', '0', '-', '-', 1981, 'S1', 'Karyawan swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'ARI MULYANI', 0, 'SMP / Sederajat', 'Tidak dapat diterapkan', '', '-', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LT-29062015-0034', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '3375011102080008', 0, 0, 0, 0, 0, 0),
(22, 'Muhammad Nabil Al Ghifari', 0, 'L', '0141312385', 'Pekalongan', '2014-07-29', '3375022907140001', 'Islam', 'Sugihwaras Gg 3 No 15', 4, 17, 'Sugihwaras', 'Kauman', 'Sugihwaras', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '087819022708', '-', '-', '0', '-', 'Ahmad Imron', 1980, 'D4', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999', '3375021907800004', 'Azizah', 1987, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025102870002', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LT-22122014-0035', '-', '-', '-', '0', 'Pemegang PKH/KPS/KKS', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(23, 'muhammad rasya aslam', 0, 'L', '0152327477', 'Pekalongan', '2015-01-15', '3326151501150002', 'Islam', 'bandengan', 4, 1, 'bandengan', 'bandengan', 'Bandengan', '51143', 'Bersama orang tua', 'Sepeda motor', '-', '088215307009', '-', '-', '0', '-', 'Ari Dwi hariyanto', 1978, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3326151810760002', 'henny widya ningrum', 1079, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3326156006790001', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3326-LU-11102015-0012', '-', '-', '-', '0', '-', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(24, 'MUHAMMAD SEPTIAN', 0, 'L', '0145478493', 'Pekalongan', '2014-09-20', '3375022009140002', 'Islam', 'Poncol Gg 15 No 24', 3, 6, 'Poncol', 'Poncol', 'Poncol', '51122', 'Bersama orang tua', 'Jalan kaki', '-', '085600505175', '-', '-', '0', '-', 'Mukromin', 1972, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375022412720001', 'Nur Laela', 1976, 'SD / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000', '3375024912760001', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 1, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '0', '-', '0', '-', 3, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(25, 'MUHAMMAD ZELGA RISQUALLAH', 0, 'L', '0159088733', 'PEKALONGAN', '2015-05-01', '3375030105150004', 'Islam', 'JL. ANGKATAN 45 GG.9 NO.9', 1, 9, 'PADUKUHANKRATON', 'PADUKUHANKRATON', 'Padukuhan Kraton', '0', 'Bersama orang tua', 'Sepeda motor', '-', '87794898278', '-', '-', '0', '-', 'MUHAMMAD MUBAROK', 1981, 'SMP / Sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'FARIDAH', 1982, 'SMP / Sederajat', 'Tidak dapat diterapkan', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 1, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(26, 'Mutya Soraya', 0, 'P', '0148196542', 'Pekalongan', '2014-08-23', '3375026308140005', 'Islam', 'Jalan Matana Gang Rukun', 2, 8, '-', 'Poncol', 'Poncol', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '087872790080', '-', '-', '0', '-', 'Budi Haryono', 1982, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020107820147', 'Nur Amaliah', 1984, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', '3375024311840007', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '0', 'Pemegang PKH/KPS/KKS', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(27, 'Nafeeza Azka Ramadhani', 0, 'P', '0153275699', 'Pekalongan', '2015-06-18', '3375025806150003', 'Islam', 'Perum Limas Jl. Sigma Raya No. 10 Blok 2 C D', 5, 18, '-', 'Krapyak', 'Kec. Pekalongan Timur', '51144', 'Bersama orang tua', 'Sepeda motor', '-', '081770632443', '-', '-', '0', '-', 'Khaerudin', 1982, 'D3', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Nur Azizah', 1979, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3325145907790001', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LU-20082015-0016', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '-', 12, 90, 0, 0, 0, 0),
(28, 'Nazeera Azka Ramadhani', 0, 'P', '0159199599', 'Pekalongan', '2015-06-18', '3375025806150002', 'Islam', 'Perum Limas Jl. Sigma Raya No. 10 Blok 2 C D', 5, 18, '-', 'Krapyak', 'Kec. Pekalongan Timur', '51144', 'Bersama orang tua', 'Sepeda motor', '-', '081770632443', '-', '-', '0', '-', 'Khaerudin', 1982, 'D3', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Nur Azizah', 1979, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3325145907790001', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LU-20082015-0015', '-', '-', '-', '0', '-', '0', '-', 3, 0, 0, '-', 11, 90, 0, 0, 0, 0),
(29, 'NOUVALDA ALJAZAIR', 0, 'L', '0146238612', 'Pekalongan', '2014-11-10', '3375041011140001', 'Islam', 'Kuripan Lor GGang 1B', 2, 1, '-', 'Kuripan Yosorejo', 'Kec. Pekalongan Selatan', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085869542808', '-', '-', '0', '-', '-', 1985, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Wagiati', 1987, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LU-15122014-0005', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '3375042312110002', 0, 0, 0, 0, 0, 0),
(30, 'Rizky Nazar', 0, 'L', '0148626348', 'Pekalongan', '2014-03-07', '3375030703140003', 'Islam', 'Jl. WR. Supratman Gang I', 6, 7, '-', 'Panjang Wetan', 'Panjang Wetan', '51141', 'Bersama orang tua', 'Sepeda motor', '-', '088214824154', '-', '-', '0', '-', 'Nur Cholis', 1982, 'SD / sederajat', 'Buruh', 'Rp. 2,000,000 - Rp. 4,999,999', '3375030801820002', 'Atikah Yuniarmi', 1986, 'SMP / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', '3375036506860007', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3375-LT-29102014-0039', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(31, 'Rugayah', 0, 'P', '3155565572', 'Tegal', '2015-07-28', '3328076807150001', 'Islam', 'Dukuh Karang Anyar RT/RW 014/004 Sumbarang Jatinegara Tegal 52473', 14, 4, 'Sumbarang', 'Sumbarang', 'Kec. Tegal Selatan', '52468', 'Bersama orang tua', 'Sepeda motor', '-', '085802258572', '-', '-', '0', '-', '-', 1982, 'SMP / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Khodijatul Haniyah', 1990, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '3328-LT-23012018-0178', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '3328070207140001', 0, 0, 0, 0, 0, 0),
(32, 'Syafira Nur Hasani', 0, 'P', '0148538597', 'Pekalongan', '2014-08-11', '3375025108140002', 'Islam', 'Sugihwaras Gang IX No. 12', 2, 14, '-', 'Kauman', 'Kauman', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '081329604279', '-', '-', '0', '-', 'Sugimin', 1984, 'SMP / sederajat', 'Buruh', 'Rp. 2,000,000 - Rp. 4,999,999', '3375020804840001', 'Nur Laelawati', 1980, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025703800005', '-', 0, '-', '-', '-', '-', 1, '-', '-', '0', '-', '0', '-', '682.009245', '-', '-', '-', '0', 'Pemegang PKH/KPS/KKS', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(33, 'Ainun Qotrunnada Rusyada', 0, 'P', '0145904795', 'Pekalongan', '2014-01-20', '3375026001140002', 'Islam', 'Matana Gg.Mekar 2', 1, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085802711021', '-', '-', '0', '-', 'Tuherman', 1978, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020612780005', 'Umi Hafifah', 1992, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3326154605920006', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-05022014-0016', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(34, 'Alendra Surya Saputra', 0, 'L', '0139335405', 'Pekalongan', '2013-10-01', '3375010110130001', 'Islam', 'Sapuro Indah No.20', 2, 1, '-', 'Sapuro Kebulen', 'Sapuro Kebulen', '51112', 'Bersama orang tua', 'Sepeda', '-', '089613766343', '-', '-', '0', '-', 'Ali Rozikin', 1974, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375011103740001', 'Neny Widuri', 1982, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375015410820005', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(35, 'Alifia Maulida', 0, 'P', '0145940675', 'Pekalongan', '2014-01-08', '3375024801140002', 'Islam', 'Poncol Gg.Melati 14B', 2, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085842346867', '-', '-', '0', '-', 'Darsono Kudung', 1975, 'SD / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3326110205750008', 'Sri Pudjiati', 1977, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024506770005', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-30012014-0011', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(36, 'Ardiva Nur Rizkyara Salsabila', 0, 'P', '0136063772', 'Banjarnegara', '2013-12-08', '3304184812130002', 'Islam', 'Poncol Gg.Dahlia', 0, 0, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '082322244148', '-', '-', '0', '-', 'Slamet Budiarjo', 1966, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3304180502660001', 'Anggi Sami Yanti', 1982, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3304186709820002', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3304-LU-20012014-0016', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(37, 'Arjuna Aryadika', 0, 'L', '0141391329', 'Pekalongan', '2014-01-13', '3375021301140001', 'Islam', 'Tondano Gg.12 No.2B', 4, 5, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '08812784263', '-', '-', '0', '-', 'Irvan Subbianto', 1987, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022011870006', 'Dwi Astianingsih', 1987, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375026808870002', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-05022014-0017', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(38, 'Arsala Diva Estetika', 0, 'P', '0133217570', 'Pekalongan', '2013-08-29', '3375026908130001', 'Islam', 'Poncol Baru', 4, 8, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085726416201', '-', '-', '0', '-', 'Muhammad Royyan', 1983, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022010830008', 'Sumiyatun Chasanah', 1988, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375026708880003', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-14092013-0024', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(39, 'Atika Zahra Latifa', 0, 'P', '0131902806', 'Pekalongan', '2013-12-09', '3375024912130001', 'Islam', 'Poncol Gg.Kemangi 14 D No.15', 4, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '089676265169', '-', '-', '0', '-', 'Muhammad Fatkhurrohman', 1987, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375042608870006', 'Andriani Puji Astuti', 1994, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025208940006', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-31122013', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(40, 'Calista Amanda Mikayla', 0, 'P', '0139410240', 'Pekalongan', '2013-10-24', '3375026410130003', 'Islam', 'Poncol Gg.Gumuk Permai', 4, 10, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '082325781180', '-', '-', '0', '-', 'Deny Anis Seityanto', 1985, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3374022412850006', 'Ummu Hani', 1988, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375025007880004', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LT-08012014', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(41, 'Kevin Al Ghani', 0, 'L', '0146276414', 'Pekalongan', '2014-04-07', '3375020704140001', 'Islam', 'Sampangan Gang 11No.3', 1, 10, '-', 'Kauman', 'Kauman', '51126', 'Bersama orang tua', 'Sepeda motor', '-', '085647224498', '-', '-', '0', '-', 'M. Mushoddiqurrohman', 1978, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020410780001', 'Linah', 1981, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025412810006', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '682.0126633', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(42, 'Khafisatul Khusna', 0, 'P', '0138846479', 'Pekalongan', '2013-12-29', '3375026912130003', 'Islam', 'Poncol Gg.Mawar 14 A No.47', 3, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '088226459709', '-', '-', '0', '-', 'Akhmat Wakhidin', 1976, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022001760005', 'Femina', 1981, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024710810003', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-17022014-0029', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(43, 'Khaylila Zada Maulidya', 0, 'P', '0148691076', 'Pekalongan', '2014-01-17', '3375025701140002', 'Islam', 'Jalan Kintamani No.25 A', 1, 2, '-', 'Kauman', 'Kauman', '51128', 'Bersama orang tua', 'Sepeda motor', '-', '089619502281', '-', '-', '0', '-', 'Rif\'an Jaya', 1966, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020402660002', 'Elly Handayani', 1977, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024411770002', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '682.0100647', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(44, 'Khusnul Khotimah', 0, 'P', '0149449529', 'Pekalongan', '2014-03-14', '3375035403140001', 'Islam', 'Jalan Jlamprang Gang1', 2, 2, '-', 'Krapyak', 'Krapyak', '51149', 'Bersama orang tua', 'Sepeda motor', '-', '085743122388', '-', '-', '0', '-', 'Ahmad Khusaini', 1987, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3326141005870001', 'Setiawati', 1990, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375035706900004', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(45, 'Kindo Alfarezel Ghaisan', 0, 'L', '3143665009', 'Pontianak', '2014-06-10', '6171051006140005', 'Islam', 'Gn. Samarinda', 0, 0, '-', 'Gunung Samarinda', 'Kec. Balikpapan Utara', '0', 'Bersama orang tua', 'Mobil/bus antar jemput', '-', '0811562219', '-', '-', '0', '-', 'M. Rizky Purnama', 0, 'S1', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999', '-', 'Irdita Anggeraini', 0, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '0', '-', '0', '-', 1, -1.2538, 116.8817, '-', 0, 0, 0, 0, 0, 0),
(46, 'M. Naufal Nabil Al Fayath', 0, 'L', '0144232833', 'Pekalongan', '2014-01-12', '3375011201140004', 'Islam', 'Urip Sumoharjo', 4, 2, '-', 'Podosugih', 'Kec. Pekalongan Utara', '51111', 'Bersama orang tua', 'Sepeda motor', '-', '085740873539', '-', '-', '0', '-', 'Muhammad Miftakhussurur', 1984, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375010604840003', 'Tri Hesti Utami', 1986, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375025706800003', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-04022014', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(47, 'Mikayla Yumna Rabbani', 0, 'P', '0145194556', 'Pekalongan', '2014-04-17', '3375025704140001', 'Islam', 'Poncol Gg.14 D No.32', 4, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085929353989', '-', '-', '0', '-', 'Mochammad Safrudin', 2014, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021702740003', 'Laksmi Pamungkasih', 1979, 'D3', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375026909790004', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-19052014-0037', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(48, 'Moch Alfi Maulana Yafi', 0, 'L', '0139189407', 'Pekalongan', '2013-10-17', '3375011710130003', 'Islam', 'Pesindon', 1, 12, 'Pesindon', 'Kergon', 'Kec. Pekalongan Barat', '51113', 'Bersama orang tua', 'Jalan kaki', '-', '081226753789', '-', '-', '0', '-', 'Moch Darma Setiawan', 1985, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375012012860005', 'Wadinah', 1991, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375035702910001', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-25112013-0041', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(49, 'Mochamad Kenzi Alfano', 0, 'L', '0148208845', 'Kuningan', '2014-06-23', '3208052306140003', 'Islam', 'Terate Poncol Gg. Gumuk Indah 10 A', 2, 11, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Jalan kaki', '-', '085642830546', '-', '-', '0', '-', 'Rusdani', 1986, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3208050411850002', 'Emi Sunarti', 1988, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025005880004', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3208-LU-24072014-0042', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(50, 'Mohammad Wildan Al Widodo', 0, 'L', '0145126480', 'Pekalongan', '2014-02-07', '3375020702140001', 'Islam', 'Poncol Gumuk Permai', 4, 10, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Jalan kaki', '-', '089501839095', '-', '-', '0', '-', 'Arifi', 1987, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3375020410870003', 'Hana Aulia Sunanti', 1987, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375027008870001', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LT-05082014-0034', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(51, 'MUHAMMAD DZAKWAN MAHRUZ', 0, 'L', '0148614119', 'PEKALONGAN', '2014-02-17', '3375011702140002', 'Islam', 'JL. SETIA BAKTI GG 1 NO. 12', 1, 3, '-', 'PODOSUGIH', 'Kec. Pekalongan Barat', '51111', 'Bersama orang tua', 'Sepeda motor', '-', '085740875822', '-', '-', '0', '-', 'EDY SUSANTO', 1968, 'S1', 'PNS/TNI/Polri', 'Rp. 1,000,000 - Rp. 1,999,999', '3375012205680004', 'ANITA ROCHMANINGSIH', 1985, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375016112850005', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-24032014-0008', '-', '-', '-', '0', '-', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(52, 'Muhammad Farhan Nizami', 0, 'L', '0129981108', 'Pekalongan', '2012-12-12', '3375011212120005', 'Islam', 'Jalan Slamet No.12 C', 4, 8, '-', 'Bendan', 'Bendan Kergon', '51111', 'Bersama orang tua', 'Sepeda motor', '-', '085740138952', '-', '-', '0', '-', 'M. Fannanul Ghofirin', 1981, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022205810003', 'Indah Triastuti', 1983, 'S1', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375015404830008', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '682.0086919', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(53, 'MUHAMMAD NAFIL HAIKAL', 0, 'L', '0131274063', 'PEKALONGAN', '2013-10-04', '3375020410130004', 'Islam', 'JL. H. AGUS SALIM GG 1 B NO. 19', 3, 18, '-', 'KAUMAN', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '081325223713', '-', '-', '0', '-', 'MUHAMAD AMILIN', 1983, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020409830005', 'URIPAH', 1986, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3325115203860001', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LT-14072017-0025', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(54, 'Muhammad Rafa Azka Putra', 0, 'L', '0147653335', 'Pekalongan', '2014-06-05', '3375020506140006', 'Islam', 'KH.Hasyim Ashari', 4, 9, 'Setono', 'Setono', 'Kec. Pekalongan Timur', '51123', 'Bersama orang tua', 'Sepeda motor', '-', '081517609424', '-', '-', '0', '-', 'Sunarya Diyono', 1994, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3325121206940001', 'Faridhotun Khasanah', 1992, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3375025807920005', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LT-06012015-0021', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(55, 'Muhammad Rizqi Abbi Sankan', 0, 'L', '0131742103', 'Pekalongan', '2013-10-26', '3375022610130002', 'Islam', 'Poncol Gg.Asparagas B', 2, 12, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '081358874262', '-', '-', '0', '-', 'Sarwo', 1988, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021203880012', 'Hendro Rustiyaningsih', 1985, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3315105806850002', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LT-15012014-0041', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(56, 'Oggi Mikael Ferdinand', 0, 'L', '0132907183', 'Pekalongan', '2013-08-17', '3375021708130004', 'Islam', 'Kauman Gang X No.1', 6, 6, '-', 'Kauman', 'Kauman', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085869284919', '-', '-', '0', '-', 'Muhamad Ferdinan', 1982, 'S1', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3275010611820036', 'Yulianti Rahayu', 1982, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan', '3275014807820028', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '682.0089326', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(57, 'Philanthropy Ravaela Wick', 0, 'P', '0149364272', 'KOTA PEKALONGAN', '2014-07-12', '3375025207140003', 'Islam', 'Jl.KH. Wahid Hasyim', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Jalan kaki', '-', '089699348032', '-', '-', '0', '-', 'Arief Wicaksono', 1972, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Mira Farina', 1977, 'D3', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(58, 'Shabrina Annajwa', 0, 'P', '0135985926', 'Pekalongan', '2013-04-07', '3375024704130005', 'Islam', 'Poncol Gg.14 D', 4, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '088212397944', '-', '-', '0', '-', 'Abdul kadir', 1983, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021410830007', 'Istiqomah Dewi', 1990, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375026412900003', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LT-25072013-0020', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(59, 'Syahm Hanan Fakhraza', 0, 'L', '0138669695', 'Pekalongan', '2013-05-15', '3375021505130001', 'Islam', 'Tondano Poncol Baru', 4, 7, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '082236516453', '-', '-', '0', '-', 'Chaeroni', 1980, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021001800003', 'Ani Rochyatin', 1982, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024204820008', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-20052013', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(60, 'Syarin Aszira', 0, 'P', '0144873691', 'Pekalongan', '2014-04-27', '3375026704140002', 'Islam', 'Klego Gg.4', 1, 6, 'klego', 'Klego', 'Kec. Pekalongan Timur', '51124', 'Bersama orang tua', 'Sepeda motor', '-', '085741976789', '-', '-', '0', '-', 'Chairul Anwar', 1983, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021102830006', 'Muslikha', 1982, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375026603820002', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '3375-LU-19052014-0019', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(61, 'Zahwa Salsabila', 0, 'P', '0139778021', 'Pekalongan', '2013-12-16', '3375025612130001', 'Islam', 'Keputran Gg. 3 No. 15', 2, 4, 'Keputran', 'Kauman', 'Keputran', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085747241983', '-', '-', '0', '-', 'Muhammad Junaidi', 1990, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Lutfiyah', 1983, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 2, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(62, 'Zian Alfaro Gavriel', 0, 'L', '0142646117', 'PEKALONGAN', '2014-08-08', '3375020808140001', 'Islam', 'Sampangan Gang 11 No.3', 1, 10, '-', 'Kauman', 'Kauman', '51126', 'Bersama orang tua', 'Sepeda motor', '-', '085642847662', '-', '-', '0', '-', 'Mulyani', 1980, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375012808800004', 'Ziada Tunni\'mah', 1985, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375027008850002', '-', 0, 'Tidak sekolah', 'Tidak bekerja', '-', '-', 2, '-', '-', '0', '-', '0', '-', '682.0092517', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(63, 'Achmad Ekza Al Farizi', 2076, 'L', '0123252525', 'Pekalongan', '2012-11-29', '3375022911120001', 'Islam', 'Poncol Gg.Gumuk Indah', 2, 11, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Jalan kaki', '-', '088221195364', '-', '-', '0', '-', 'Eko Adi Nugroho', 1985, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020106860004', 'Nur Azzizah', 1990, 'SMP / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375024711900004', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '3375-LU-11122012-0049', '-', '-', '-', '1', 'Pernah Drop Out', '0', '-', 1, -6.890149731727, 109.68451738357, '-', 0, 0, 0, 0, 0, 0),
(64, 'Afiqah faeyza Putri', 2077, 'P', '3139412030', 'Pekalongan', '2013-04-03', '-', 'Islam', 'Setono Gg. V No.18', 1, 1, 'Setono', 'Setono', 'Kec. Pekalongan Timur', '51123', 'Bersama orang tua', 'Sepeda motor', '-', '085869032600', '-', '-', '1', '-', 'Akhirudin', 1985, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021303850003', 'Dhian Hiemawati Fitria Khasanah', 1985, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024505890006', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(65, 'Ahmad Nata Waqtana', 2078, 'L', '0122884775', 'Pekalongan', '2012-11-30', '3375023011120002', 'Islam', 'Jalan Matana Gang Rukun', 2, 8, '-', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '087872790080', '-', '-', '0', '-', 'Budi Haryono', 1982, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020107820147', 'Nur Amaliah', 1984, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', '3375024311840007', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.892322602597, 109.68255400658, '-', 0, 0, 0, 0, 0, 0),
(66, 'Aira Azahra', 0, 'P', '0133924870', 'Batang', '2013-02-21', '3325136102130001', 'Islam', 'Poncol Gg. Katalia', 3, 10, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085832607477', '-', '-', '0', '-', 'Arofik', 1978, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3325101004780002', 'Suntari', 1982, 'SMP / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375016006820013', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '3325-LU-04032013-0045', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.890852720451, 109.68391656876, '-', 0, 0, 0, 0, 0, 0),
(67, 'Aliya Rizky Avriyanti', 0, 'P', '0128128665', 'Pekalongan', '2012-11-05', '3375014511120001', 'Islam', 'Parang Garudo III no 11', 0, 0, '-', 'Medono', 'Kec. Pekalongan Barat', '0', 'Bersama orang tua', 'Jalan kaki', '-', '085225177476', '-', '-', '0', '-', 'Arif Marsudi', 1978, 'S1', 'Sudah Meninggal', 'Tidak Berpenghasilan', '-', 'Avi Feriyanti', 1981, 'D3', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999', '-', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.89691329212, 109.65962648392, '-', 0, 0, 0, 0, 0, 0),
(68, 'Alvaro Raffa Ramadhan', 2081, 'L', '3135856286', 'Pekalongan', '2013-07-12', '-', 'Islam', 'Pringlangu Gg. 2 No. 2E', 1, 14, '-', 'Pringrejo', 'Kec. Pekalongan Barat', '51117', 'Bersama orang tua', 'Sepeda motor', '-', '085600487477', '-', '-', '1', '-', 'Irawan', 1990, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Sevi Taqiya Putri', 1992, 'Tidak sekolah', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(69, 'Amirah Azalia Zanetta', 0, 'P', '0132497382', 'Pekalongan', '2013-06-17', '3375015706130001', 'Islam', 'Sriwedari Gg. Asoka', 0, 0, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '087790928660', '-', '-', '0', '-', 'Moch. Chasan', 1985, 'SMA / sederajat', 'Pedagang Besar', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Yuni Mayasari', 1984, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '3375-LU-12072013-0010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.888413558139, 109.68430280685, '-', 0, 0, 0, 0, 0, 0),
(70, 'Bening Putri Rahmadani', 0, 'P', '0129228393', 'Pekalongan', '2012-08-14', '3375025408120003', 'Islam', 'Kauman Gang 7 No 18', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '082138607571', '-', '-', '0', '-', 'Adem Sujati', 1984, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Riskiyana', 1988, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 14, -6.890309501983, 109.67310190201, '-', 0, 0, 0, 0, 0, 0),
(71, 'Caroline Anjani', 0, 'P', '0138383953', 'Pekalongan', '2013-08-06', '3375024608130002', 'Islam', 'Sampangan Gg.X No.26', 3, 10, 'Sampangan', 'Kauman', 'Kec. Pekalongan Timur', '51126', 'Bersama orang tua', 'Sepeda motor', '-', '08157946992', '-', '-', '0', '-', 'M. Yusuf Setiawan', 1982, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020204820005', 'Diana Isnaini Rosyda', 1989, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375045704890007', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '3375-LU-18092013-0014', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.889004709982, 109.67481851578, '-', 0, 0, 0, 0, 0, 0),
(72, 'Farrel Gibran Al-Khakim', 0, 'L', '0137095387', 'Pekalongan', '2013-06-09', '3375020906130001', 'Islam', 'Poncol Gang 15 No.29', 3, 6, '-', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085876651931', '-', '-', '0', '-', 'Solaeman Khakim', 1986, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021104860002', 'Dian Novita', 1985, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375026911850002', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.89164091869, 109.68466758728, '-', 0, 0, 0, 0, 0, 0),
(73, 'M Sholayhuddin', 0, 'L', '0121859698', 'Pekalongan', '2012-02-23', '3375032302120001', 'Islam', 'Mulia Gg 10 No 59', 4, 6, 'Kraton Lor', 'Pasir Kraton Kramat', 'Kec. Pekalongan Barat', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085725821979', '-', '-', '0', '-', 'Musdiyanto', 1982, '-', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'Risla Dinina', 1985, '-', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.886485652414, 109.66662168503, '-', 0, 0, 0, 0, 0, 0),
(74, 'M. Aqil Danish', 0, 'L', '0132429881', 'Pekalongan', '2013-02-25', '3375012502130001', 'Islam', 'Jalan Sulawesi Gang 1B No.43', 2, 6, '-', 'Sapuro Kebulen', 'Kec. Pekalongan Barat', '51112', 'Bersama orang tua', 'Jalan kaki', '-', '085648588469', '-', '-', '0', '-', 'Nasrudin', 1980, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Nurul Afifah', 1982, 'D3', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.891811339759, 109.67162132263, '-', 0, 0, 0, 0, 0, 0),
(75, 'M. Raffi', 0, 'L', '0132207002', 'Pekalongan', '2013-01-21', '3375022101130002', 'Islam', 'Sugihwaras Gang 1B No. 26', 3, 18, '-', 'Kauman', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '0895379121256', '-', '-', '0', '-', 'Mohammad Farid', 1988, 'SD / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020905880004', 'Kumalasari', 1990, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375036901900004', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.887699914392, 109.67701792717, '-', 0, 0, 0, 0, 0, 0);
INSERT INTO `master_siswa` (`no_register`, `nama`, `nipd`, `jk`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `agama`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `jenjang_pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nik_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `jenjang_pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nik_ibu`, `nama_wali`, `tahun_lahir_wali`, `jenjang_pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `nik_wali`, `rombel_id`, `no_peserta_ujian_nasional`, `no_seri_ijazah`, `penerima_kip`, `nomor_kip`, `nama_di_kip`, `nomor_kks`, `no_registrasi_akta_lahir`, `bank`, `nomor_rekening_bank`, `rekening_atas_nama`, `layak_pip`, `alasan_layak_pip`, `kebutuhan_khusus`, `sekolah_asal`, `anak_ke_berapa`, `lintang`, `bujur`, `no_kk`, `berat_badan`, `tinggi_badan`, `lingkar_kepala`, `jml_saudara_kandung`, `jarak_rumah_ke_sekolah_km`, `is_valid`) VALUES
(76, 'M.Ghiffari Faza', 0, 'L', '0138379445', 'Pekalongan', '2013-03-14', '3375021403130002', 'Islam', 'Noyontaan Gg.6 No.9A', 2, 2, 'Noyontaan', 'Noyontaan', 'Kec. Pekalongan Timur', '51121', 'Bersama orang tua', 'Sepeda motor', '-', '081327303814', '-', '-', '0', '-', 'Risiyanto', 1975, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022007750004', 'Murningsih', 1978, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375026207780004', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '3375-LU-10042013-0007', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, -6.900950079788, 109.69764947891, '-', 0, 0, 0, 0, 0, 0),
(77, 'Muchamad Avril Al Kairo', 2087, 'L', '0125242463', 'Pekalongan', '2012-04-20', '3375022004120004', 'Islam', 'Jln. Kintamani Gg.3a No.1', 1, 2, '-', 'Kauman', 'Kec. Pekalongan Timur', '51126', 'Bersama orang tua', 'Sepeda motor', '-', '083830000964', '-', '-', '1', '-', 'Much. Marwan', 1983, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022312830003', 'Rosmanidar', 1985, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375026705850003', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(78, 'MUHAMMAD AZKA ARGANI', 0, 'L', '0132735826', 'PEKALONGAN', '2013-06-01', '3375020106130001', 'Islam', 'Jl.Dr Wahidin Noyontaan 9/34', 2, 1, 'Noyontaan', 'Noyontaansari', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Jalan kaki', '-', '081393432611', '-', '-', '0', '-', 'Muhammad Hilmy S', 1975, 'S1', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Khairun Nisa', 1982, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.901503937153, 109.69651222229, '-', 0, 0, 0, 0, 0, 0),
(79, 'MUHAMMAD FAHMI MUAYYAD', 0, 'L', '0136701398', 'PEKALONGAN', '2013-04-25', '3375022504130001', 'Islam', 'poncol Gg.15 No. 7A', 0, 0, '-', 'kuripan yosorejo', 'Kec. Pekalongan Selatan', '0', 'Bersama orang tua', 'Sepeda motor', '-', '087832784023', '-', '-', '0', '-', 'SUPRIYADI', 1984, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'SAFINGATUN', 1987, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(80, 'Muhammad Ibnu Najah', 0, 'L', '0133154612', 'Pekalongan', '2013-07-20', '3375022007130003', 'Islam', 'Matana Gg. Rukun', 2, 8, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085601130004', '-', '-', '0', '-', 'Sumeji', 1974, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022705740006', 'Ita Indiani', 1980, 'SMP / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375024112800003', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '3375-LT-30092014', '-', '-', '-', '0', '-', '0', '-', 3, -6.893558152179, 109.6828007698, '-', 0, 0, 0, 0, 0, 0),
(81, 'MUHAMMAD REZA SAEFANI', 0, 'L', '0133592546', 'PEKALONGAN', '2013-02-25', '3375022502130001', 'Islam', 'Poncol', 3, 6, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '081391747548', '-', '-', '0', '-', 'Mohammad Saeful', 1982, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Nur Aini', 1984, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8910550958, 109.68314409256, '-', 0, 0, 0, 0, 0, 0),
(82, 'Muhammad Sandy Alvaro', 0, 'L', '0139426720', 'Pekalongan', '2013-05-22', '3375022205130001', 'Islam', 'Sugihwaras Gang 1B nO.26', 3, 18, '-', 'Kauman', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '085328777537', '-', '-', '0', '-', 'Sholikuh Surur', 1978, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022707780001', 'Nur Irma', 0, '-', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'M. Arifin', 0, '-', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.88718864657, 109.67670679092, '-', 0, 0, 0, 0, 0, 0),
(83, 'Naufal Khoirul Azzam', 2095, 'L', '3126793092', 'Pekalongan', '2012-10-26', '-', 'Islam', 'Noyontaan Gg.4 No.19', 4, 1, '-', 'Noyontaansari', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085842335440', '-', '-', '1', '-', 'Doni Sudarmaji', 1978, 'D3', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3375023001780003', 'Nurul lailiyah', 1978, 'Tidak sekolah', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(84, 'Nisrina Faihaa', 0, 'P', '0131106502', 'Pekalongan', '2013-02-10', '3375035002130001', 'Islam', 'Jalan Hayam Wuruk Sampangan Gang 11/3', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085290951313', '-', '-', '0', '-', 'Toto Sugiharto', 0, '-', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Zulfah Dianah', 0, '-', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.887646657353, 109.6729516983, '-', 0, 0, 0, 0, 0, 0),
(85, 'Putra Adi Nugroho', 0, 'L', '0132521117', 'Pekalongan', '2013-02-23', '3375012302130005', 'Islam', 'Sapuro Indah', 1, 7, '-', 'Sapuro Kebulen', 'Kec. Pekalongan Barat', '51112', 'Bersama orang tua', 'Sepeda motor', '-', '089692089492', '-', '-', '0', '-', 'Bambang Arisyanto', 1981, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020409810004', 'Ani Muliana', 1980, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024308800003', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.898862457744, 109.67893838882, '-', 0, 0, 0, 0, 0, 0),
(86, 'PUTRI NABILA', 0, 'P', '3127005098', 'PEKALONGAN', '2012-11-29', '3375026911120001', 'Islam', 'DEKORO', 1, 2, '-', 'SETONO', 'Kec. Pekalongan Timur', '51123', 'Bersama orang tua', 'Sepeda motor', '-', '085742059681', '-', '-', '0', '-', 'SUDIRNO', 1973, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'SRI MULYATI', 1981, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.894048110604, 109.71078157425, '-', 0, 0, 0, 0, 0, 0),
(87, 'SILVIA AILA SABELA', 0, 'P', '0139240477', 'Pekalongan', '2013-09-13', '3375015309130001', 'Islam', 'Sapuro Gg 3 no 2', 1, 6, '-', 'sapuro kebulen', 'Kec. Pekalongan Barat', '51112', 'Bersama orang tua', 'Sepeda motor', '-', '085713796179', '-', '-', '0', '-', 'JOYO WARDOYO', 1990, 'SD / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '3325070606900001', 'AYU PUTRI PURNAMASARI', 1999, '-', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375016402910001', '-', 0, 'Tidak sekolah', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '3375LU300920130024', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.894239833328, 109.67288732529, '-', 0, 0, 0, 0, 0, 0),
(88, 'Soraya Azkia Akbar', 0, 'P', '0122506712', 'Pekalongan', '2012-09-21', '3375026109120003', 'Islam', 'Jalan KH. Wahid Hasyim Keputran Ledok 3 / 18', 6, 3, '-', 'Keputran', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Jalan kaki', '-', '082329094112', '-', '-', '0', '-', 'Muhyidin Akbar', 1987, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375031806870006', 'Halimatussa\'diyah', 1986, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375026212860010', '-', 0, '-', '-', '-', '-', 3, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.892684746774, 109.6749740839, '-', 0, 0, 0, 0, 0, 0),
(89, 'Aesya Queennisaa', 0, 'P', '0125248959', 'Pekalongan', '2012-10-21', '3375026410120003', 'Islam', 'Kauman Gang 4 No 22', 3, 6, '-', 'Kauman', 'Kec. Pekalongan Timur', '51123', 'Bersama orang tua', 'Sepeda motor', '-', '085640013884', '-', '-', '0', '-', 'Abdul Gowi', 1964, 'S1', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Uswatun Chasanah', 1982, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.889856819451, 109.67413187027, '-', 0, 0, 0, 0, 0, 0),
(90, 'Ahmad RAmadhani', 0, 'L', '0123190407', 'Pekalongan', '2012-08-11', '3375021108120001', 'Islam', 'Jl. KH. Wahid Hasyim', 5, 6, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '085201473231', '-', '-', '0', '-', 'Mustofa Kirom', 1968, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375022209680003', 'Siswanti', 1971, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', 'AL 6820050113', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.889920727599, 109.67330574989, '3375021912100032', 0, 0, 0, 0, 0, 0),
(91, 'Aisya Dzil Karima Uji', 0, 'P', '0126956597', 'Pekalongan', '2012-07-21', '3375026107120002', 'Islam', 'Terate Poncol Gg. Bougenvil', 4, 11, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Jalan kaki', '-', '085624613183', '-', '-', '0', '-', 'Sujiyono', 1973, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '3375021209730003', 'Luckhiana', 1977, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025311770004', '-', 0, '-', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', 'AL6820049889', '-', '-', '-', '0', '-', '0', '-', 3, -6.888211181663, 109.68135237694, '3375022404070013', 0, 0, 0, 0, 0, 0),
(92, 'Arum Nadya Shofwan', 0, 'P', '0119915446', 'Pekalongan', '2011-11-29', '3375026911110005', 'Islam', 'Poncol Gg. Melati No. 100', 2, 9, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '087722126398', '-', '-', '0', '-', 'Arief Nugroho', 1981, 'D3', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020404810006', 'Jumiyati', 1984, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3327134304840006', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '61/2012', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.891220191415, 109.68430817127, '3375022209110003', 0, 0, 0, 0, 0, 0),
(93, 'Calista Azkadina F', 0, 'P', '0124498543', 'Pekalongan', '2012-03-23', '3375026303120002', 'Islam', 'Kauman Gang 2 No 11', 2, 6, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '0811562219', '-', '-', '0', '-', 'Yuski Fitrianto', 1983, 'SMA / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000', '3375031207830011', 'Aminah', 1983, 'S1', 'Lainnya', 'Kurang dari Rp. 500,000', '3375026711830004', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '3375-LU-23042012-0010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.889510650164, 109.67410504818, '-', 0, 0, 0, 0, 0, 0),
(94, 'Fatih Muhammad Hammam', 0, 'L', '0113399276', 'Pekalongan', '2011-12-16', '3375031612110002', 'Islam', 'Jl. Rajawali No. 54', 3, 1, 'Panjang Wetan', 'Panjang Wetan', 'Kec. Pekalongan Utara', '51141', 'Bersama orang tua', 'Sepeda motor', '-', '081326964818', '-', '-', '0', '-', 'Mohhamad Iwan', 1975, 'S1', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375030210750008', 'Dwi Anggraeni Pusparini', 1975, 'D3', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3375035104790001', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '207/2012', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.875647694087, 109.67387974262, '-', 0, 0, 0, 0, 0, 0),
(95, 'Icha Aurelia Shavira', 0, 'P', '0122756987', 'Pekalongan', '2012-04-07', '3375024704120001', 'Islam', 'Keputran Ledok Gang 2 No 27', 5, 3, 'Ledok', 'Kauman', 'Kec. Pekalongan Timur', '51128', 'Bersama orang tua', 'Sepeda motor', '-', '085640506496', '-', '-', '0', '-', 'Agus Setiawan', 1982, '-', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Kanisih', 1989, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024204890006', '-', 0, '-', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '3375-LU-24052012-0005', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.891965783799, 109.67511355877, '3375020511090010', 0, 0, 0, 0, 0, 0),
(96, 'Kania Marwa Nadzifah', 0, 'P', '0112668678', 'Pekalongan', '2011-11-03', '3375024311110001', 'Islam', 'Poncol Gg. Bunga Matahari', 5, 11, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51112', 'Bersama orang tua', 'Sepeda motor', '-', '085729976343', '-', '-', '0', '-', 'Slamet Trimo', 1984, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022102840003', 'Devi Arisanti,S.Pd', 1987, 'S1', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3375025712870005', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '0', '-', '4261/2011', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.894516766015, 109.68432426453, '3375021005110004', 0, 0, 0, 0, 0, 0),
(97, 'M. Faris Maulana Hidayat', 0, 'L', '0128391541', 'Pekalongan', '2012-07-05', '3375020507120003', 'Islam', 'Kauman Gg.15 No.3', 1, 8, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '085201142299', '-', '-', '0', '-', 'Santoso Heri Pawan', 1967, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375022008670005', 'Yarotun', 1972, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025006720003', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(98, 'Malika Raniya A K', 0, 'P', '0129240504', 'Pekalongan', '2012-04-25', '3375026504120001', 'Islam', 'Kauman Gang 6 No 21', 4, 6, 'Kauman', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '085726284658', '-', '-', '0', '-', 'M Agung Budhy K', 1975, 'S1', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3375020803750002', 'Yuniarti', 1979, 'D3', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024306790007', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '3375-LU-15062012-007', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.889851493771, 109.67404603958, '3375022509070229', 0, 0, 0, 0, 0, 0),
(99, 'Moh. Rizqi Arjuna', 0, 'L', '0116588758', 'Pekalongan', '2011-06-25', '3375022506110004', 'Islam', 'Jl. KH. Wahid Hasyim Kauman Gg.2 No.4', 2, 1, 'Kauman', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '082226097432', '-', '-', '0', '-', 'Amirudin Rozi', 1968, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375020903680001', 'Wijiati', 1971, 'SD / sederajat', 'Pedagang Kecil', 'Kurang dari Rp. 500,000', '3375025507710006', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '2309/2011', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 4, -6.889718351766, 109.67472732067, '3375020207080027', 0, 0, 0, 0, 0, 0),
(100, 'MUHAMMAD ADITYA RIZQI', 0, 'L', '0122592925', 'PEKALONGAN', '2012-05-11', '3375021105120002', 'Islam', 'PONCOL GG. FLAMBOYAN 17B', 3, 7, 'PONCOL', 'PONCOL', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '083822548569', '-', '-', '0', '-', 'KOM EDI', 1977, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021111770005', 'SRI ADRIYANI', 1984, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375026012840004', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '3375-LT-12012016-0026', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.894037459339, 109.68359470367, '-', 0, 0, 0, 0, 0, 0),
(101, 'Muhammad arkaan Asyafaani', 0, 'L', '0127934904', 'Pekalongan', '2012-04-14', '3375021404120003', 'Islam', 'Poncol Baru No.22', 4, 8, 'Poncol', 'poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085866237171', '-', '-', '0', '-', 'Riyadi Susanto', 1987, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375021706870002', 'Nur Anisah', 1990, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375025603900007', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '3375-LU-15052012-0034', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.894101366924, 109.68302607536, '3375021309110030', 0, 0, 0, 0, 0, 0),
(102, 'Muhammad Salma Dunakh', 0, 'L', '0117312859', 'Pekalongan', '2011-12-27', '3375022712110001', 'Islam', 'Matana Gg.Rukun', 2, 8, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085601130004', '-', '-', '0', '-', 'Sumeji', 1974, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 1,000,000 - Rp. 1,999,999', '3375022705740006', 'Ita Indiani', 1980, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024112800003', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '629/2012', '-', '-', '-', '0', '-', '0', '-', 2, -6.89308949582, 109.68350887299, '3375022006080007', 0, 0, 0, 0, 0, 0),
(103, 'Najwaa Sahiraa', 0, 'P', '0112959017', 'Pekalongan', '2011-10-05', '3375024510110001', 'Islam', 'Jl. Teratai Klego Gg.4', 1, 6, 'Klego', 'Klego', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '081466854595', '-', '-', '0', '-', 'Iskandar Imaduddin', 1972, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '3375020709720004', 'Chamidah', 1979, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024807790008', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '2653/2011', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.885015752177, 109.68203902244, '3375022609070312', 0, 0, 0, 0, 0, 0),
(104, 'Narova Icexel Mayla Putri', 0, 'P', '0126124719', 'Pekalongan', '2012-05-01', '3375034105120001', 'Islam', 'Jl. Selat Karimata 102', 4, 1, '-', 'Bandengan', 'Kec. Pekalongan Utara', '51143', 'Bersama orang tua', 'Sepeda motor', '-', '085642743171', '-', '-', '0', '-', 'Choirul Malik', 1985, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375011707850012', 'Sri Puji Astuti', 1986, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375034612860009', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '0', '-', '3375-LU-25062012-0007', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(105, 'REZKY ENDHITA PRATAMA', 0, 'L', '0123779890', 'PEKALONGAN', '2012-05-26', '3375022605120003', 'Islam', 'KI SURONTOKO', 2, 12, 'SETONO', 'SETONO', 'Kec. Pekalongan Timur', '51120', 'Bersama orang tua', 'Sepeda motor', '-', '085767021398', '-', '-', '0', '-', 'MOCHAMAD MAKSUN', 1984, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375021109840009', 'ENI AFRIYATI', 1989, 'SD / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', '3375026203890003', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '0', '-', '3375-LU-15062012-0004', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.890064520902, 109.68831539154, '3375021907100013', 0, 0, 0, 0, 0, 0),
(106, 'Sabiq Al-Fathin Nizham', 0, 'L', '3120302591', 'Pekalongan', '2012-04-09', '-', 'Islam', 'Noyontaan, Gg. 7A No. 12', 5, 2, '-', 'Noyontaan', 'Kec. Pekalongan Timur', '51121', 'Bersama orang tua', 'Sepeda motor', '-', '085600249706', '-', '-', '0', '-', 'M. Lukman Hakim', 1984, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020812840003', 'Sari Indrianti', 1988, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375015101880004', '-', 1984, 'SMA / sederajat', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', 'AL 6820047921', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.900055385754, 109.67928171158, '3375021702120002', 0, 0, 0, 0, 0, 0),
(107, 'Salman Fakhri', 0, 'L', '0118918739', 'Pekalongan', '2011-06-03', '3375010308110001', 'Islam', 'Sapuro Indah No. 15', 1, 7, '-', 'Sapuro Kebulen', 'Kec. Pekalongan Barat', '51112', 'Bersama orang tua', 'Sepeda motor', '-', '085876232172', '-', '-', '0', '-', 'Surya Edi Purnomo', 1982, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Andri Ritna', 1984, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, '-', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.898862457744, 109.67889547348, '-', 0, 0, 0, 0, 0, 0),
(108, 'Sayla Risqina', 0, 'P', '0127585691', 'Pekalongan', '2012-04-08', '3375024804120001', 'Islam', 'Tondano Gg.12 No.3', 4, 5, 'Poncol', 'Poncol', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085600501872', '-', '-', '0', '-', 'M.Zarkasi Zaini', 1969, 'S1', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Eva Marlia', 1979, 'D3', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.892919075211, 109.68254327774, '-', 0, 0, 0, 0, 0, 0),
(109, 'Thufail Amadheo', 0, 'L', '0127172947', 'Pekalongan', '2012-07-12', '3375021207120002', 'Islam', 'Sampangan Gang 11 No. 3', 1, 10, '-', 'Kauman', 'Kec. Pekalongan Timur', '51126', 'Bersama orang tua', 'Sepeda motor', '-', '085647224498', '-', '-', '0', '-', 'Muh. Mushoddiqurrohman', 1978, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375020410780001', 'Linah', 1981, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025412810006', '-', 0, '-', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '3375-LU-31072012-0008', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.887572097488, 109.67297315598, '3375022106120001', 0, 0, 0, 0, 0, 0),
(110, 'Tsania Kumaira', 0, 'P', '0121255825', 'Pekalongan', '2012-02-25', '3375026502120001', 'Islam', 'Sugihwaras Gg.3 No.15', 4, 4, 'Sugihwaras', 'Kauman', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Jalan kaki', '-', '085867438955', '-', '-', '0', '-', 'Muhammad Taufik', 1977, 'D3', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020202770003', 'Dyah Bayu Rini', 1989, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375044901890009', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '1', '-', '3375-LU-26032012-0005', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 4, -6.886964966724, 109.67640638351, '3375020210090019', 0, 0, 0, 0, 0, 0),
(111, 'Zen', 0, 'L', '0096444648', 'Tegal', '2009-11-05', '3328070511090004', 'Islam', 'Dukuh Karang Anyar', 14, 4, '-', 'Sumbarang', 'Kec. Jatinegara', '52473', 'Bersama orang tua', 'Sepeda motor', '-', '085292348029', '-', '-', '0', '-', 'Abdurrahman', 1982, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3328070811820001', 'Khodijatul Haniyah', 1990, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3328074611900004', '-', 0, 'Tidak sekolah', '-', '-', '-', 4, '-', '-', '0', '-', '0', '-', '3328-LT-28042016-0190', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(112, 'ANGELINA WILDA MAGHFIROH', 2027, 'P', '0107759007', 'PEKALONGAN', '2010-06-01', '3542094106100002', 'Islam', 'JL. SELAT KARIMATA', 1, 1, 'BANDENGAN', 'BANDENGAN', 'Kec. Pekalongan Utara', '51143', 'Bersama orang tua', 'Sepeda motor', '-', '085743180430', '-', '-', '0', '-', 'Maghfur', 1977, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3542092206770002', 'Roihatun Ni\'mah', 1981, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3524094612810001', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL6820070178', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 1, -6.875610413214, 109.67050552368, '3375032005140006', 0, 0, 0, 0, 0, 0),
(113, 'Citra Lestari', 1984, 'P', '0099990018', 'Pekalongan', '2009-10-06', '3375044610090001', 'Islam', 'Jl. K.H. Wahid Hasyim', 4, 4, '-', 'Keputran', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda', '-', '089529898816', '-', '-', '0', '-', 'Mustakim', 1976, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'Dahlia', 1983, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'TP/604/2009', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(114, 'Diny Tsabita Imania', 1985, 'P', '0097463421', 'Pekalongan', '2009-09-09', '3375024909090001', 'Islam', 'Jl. K.H. Wahid Hasyim', 3, 7, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '087822392374', '-', '-', '0', '-', 'Moh. Rofiudin', 1974, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Rr. Eny Hidayati', 1975, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', 'POSPX6', '2960/2009', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(115, 'Kevindra Ahmad', 1987, 'L', '0102301326', 'Pekalongan', '2010-11-14', '3375021411100001', 'Islam', 'Jl K.H. Wahid Hasyim', 6, 3, '-', 'Kauman', 'Kec. Pekalongan Timur', '51128', 'Bersama orang tua', 'Sepeda motor', '-', '085600501699', '-', '-', '0', '-', 'Abdul Rozak', 1967, 'SD / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', '3375020506670003', 'Siti Selisiasih', 1978, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024404780003', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', '4128/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.891465171899, 109.67544615269, '3375022906070007', 0, 0, 0, 0, 0, 0),
(116, 'KEYLA OCTAVIA SABRINA', 2029, 'P', '0116084981', 'PEKALONGAN', '2011-10-29', '3375026910110003', 'Islam', 'PONCOL Gg. BUNGA MATAHARI II', 5, 11, 'PONCOL', 'PONCOL', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '08895206905', '-', '-', '0', '-', 'Saifudin', 1981, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021006810010', 'Wahyuni', 1987, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024306970004', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL.682.0116908', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 2, -6.891917852896, 109.6826505661, '3375020510150001', 0, 0, 0, 0, 0, 0),
(117, 'M. ABDI WIJAYA', 2075, 'L', '0101087751', 'Tembilahan', '2010-09-02', '3375020209100005', 'Islam', 'Kauman Gg.5 No.22', 3, 8, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda', '-', '082134272056', '-', '-', '0', '-', 'Selamat', 1973, 'SMP / sederajat', 'Wiraswasta', 'Kurang dari Rp. 500,000', '3375023012730000', 'Nuning Indriyani', 1978, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375026111780003', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'II/17.020-TPL/2012', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 4, -6.89020831416, 109.6730697155, '3375021306130003', 0, 0, 0, 0, 0, 0),
(118, 'M. ALIF HAIDAR AMRU', 2030, 'L', '0118956499', 'PEKALONGAN', '2011-07-04', '3375010407110003', 'Islam', 'JL. URIP SUMOHARJO Gg. H. PALAL 91', 4, 2, 'PODOSUGIH', 'PODOSUGIH', 'Kec. Pekalongan Barat', '51111', 'Bersama orang tua', 'Sepeda motor', '-', '085642599084', '-', '-', '0', '-', 'Mukhammad Miftakhussurur', 1984, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375010604840003', 'Tri Hesti Utami', 1986, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375025706860003', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL6820085603', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 1, -6.901077893084, 109.66509819031, '3375011901100001', 0, 0, 0, 0, 0, 0),
(119, 'M. HANEY ROBBANI', 2031, 'L', '0119822308', 'PEKALONGAN', '2011-04-20', '3375022004110003', 'Islam', 'KAUMAN Gg. 12 No. 5', 5, 2, 'KAUMAN', 'KAUMAN', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda', '-', '082324908624', '-', '-', '1', '201541000180809', 'Irawadi', 1972, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375020994720005', 'Rochimah', 1980, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025811800007', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', 'PZ8PCQ', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK ISLAM KAUMAN', 2, -6.891033793135, 109.67330574989, '3375021909070085', 0, 0, 0, 0, 0, 0),
(120, 'M. SINATRYA NUR AFRIZKY', 2, 'L', '0117156459', 'PEKALONGAN', '2011-04-13', '3375021304110004', 'Islam', 'SUGIHWARAS Gg.IX No.18', 2, 14, 'KAUMAN', 'KAUMAN', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '0882005503120', '-', '-', '0', '-', 'Lendro Suratmin', 1979, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020303790007', 'Agustina Nurul Syamsiyah', 1974, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025308740007', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL 682.0089978', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 2, -6.889468044696, 109.67796206474, '3375022702190007', 0, 0, 0, 0, 0, 0),
(121, 'M. ZAID AN NAFI', 2033, 'L', '0117372420', 'PEKALONGAN', '2011-04-17', '3375021704110003', 'Islam', 'KAUMAN Gg. 12 No. 35', 3, 2, 'KAUMAN', 'KAUMAN', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda', '-', '088221503794', '-', '-', '0', '-', 'H. Moch. Nurdin', 1952, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375021204520004', 'Khilmiyati', 1974, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '3375024906740094', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL6820079001', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK MASYITHOH KAUMAN', 3, -6.891406589621, 109.67494189739, '3375022509070222', 0, 0, 0, 0, 0, 0),
(122, 'MILA HANISAH', 2034, 'P', '0118238654', 'PEKALONGAN', '2011-04-16', '3375025604110001', 'Islam', 'JL. TONDANO Gg. MAWAR 14A No.51', 3, 9, 'PONCOL', 'PONCOL', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085725291446', '-', '-', '0', '-', 'Suryanto', 1986, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375021610860004', 'Kismiyati', 1981, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025507810006', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL6820076895', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 2, -6.891150957777, 109.68502700329, '3375020605090006', 0, 0, 0, 0, 0, 0),
(123, 'MUHAMMAD AKMA DEVIN KEYSA MAULANA', 0, 'L', '0113431081', 'PEMALANG', '2011-09-07', '3327130709110002', 'Islam', 'PERUM PISMA GRIYA PERMAI 2 WIRADESA - PEKALONGAN', 5, 3, '-', 'ROWOSARI', 'Kec. Wonokerto', '0', 'Bersama orang tua', 'Sepeda motor', '-', '081903477956', '-', '-', '0', '-', 'MUHAMMAD NANANG MAULANA', 1985, 'D3', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'PITRIANA', 1985, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', '3327-LT-26082013-0117', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.886198063596, 109.55940842628, '3327132209120002', 0, 0, 0, 0, 0, 0),
(124, 'MUHAMMAD ARGA RAMANSYAH', 2035, 'L', '0115250891', 'PEKALONGAN', '2011-06-03', '3375020306110004', 'Islam', 'SUGIHWARAS Gg.1 No.1', 3, 5, 'SUGIHWARAS', 'SUGIHWARAS', 'Kec. Pekalongan Timur', '51125', 'Bersama orang tua', 'Sepeda motor', '-', '089521615320', '-', '-', '0', '-', 'Mochamad Farizal', 1980, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375021305800005', 'Khotimah', 1988, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375025402880001', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL6820059093', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 2, -6.889382833748, 109.67685699463, '3375020309080031', 0, 0, 0, 0, 0, 0),
(125, 'MUHAMMAD AUFA AHDAN', 2, 'L', '0112983901', 'PEKALONGAN', '2011-04-20', '3375022004110002', 'Islam', 'PONCOL Gg. GUMUK INDAH', 2, 11, 'PONCOL', 'PONCOL', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '082322199705', '-', '-', '0', '-', 'M. Dhofir Mudhofar', 1974, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375020901740002', 'Suciati', 1978, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024606780004', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL6820078991', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 2, -6.890969885137, 109.68368589878, '3375022809070278', 0, 0, 0, 0, 0, 0),
(126, 'MUHAMMAD DEVA MAULANA', 2, 'L', '0108843304', 'PEKALONGAN', '2010-12-06', '3375010612100005', 'Islam', 'JL.MULIA 53', 4, 9, 'PADUKUHAN KRATON', 'PADUKUHAN KRATON', 'Kec. Pekalongan Utara', '51145', 'Bersama orang tua', 'Sepeda', '-', '085229312998', '-', '-', '0', '-', '.-', 0, 'SMP / sederajat', 'Lainnya', 'Tidak Berpenghasilan', '-', 'Channanah', 1980, 'SMA / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', '3375015402800003', 'Murjoko', 1977, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375031507770011', 5, '-', '-', '0', '-', '1', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 1, -6.884760116889, 109.66738343239, '3375032305090004', 0, 0, 0, 0, 0, 0),
(127, 'MUHAMMAD FARHAN', 2, 'L', '0113447062', 'PEKALONGAN', '2011-12-08', '3375020812110001', 'Islam', 'JL. MATANA Gg. MEKAR II No.31', 1, 9, 'PONCOL', 'PONCOL', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '0882005768971', '-', '-', '0', '-', 'Faisal Rizal', 0, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '-', 'Nur Chalimah', 1977, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024706770001', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL 6820050822', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 1, -6.894388950949, 109.68430280685, '3375020406120040', 0, 0, 0, 0, 0, 0),
(128, 'MUHAMMAD ZIYAN ATH\'HAR AHSAN', 2, 'L', '0117380752', 'PEKALONGAN', '2011-04-14', '3375031404110002', 'Islam', 'JL. ANGKATAN 45 Gg.9 No.5', 1, 9, 'PADUKUHAN KRATON', 'PADUKUHAN KRATON', 'Kec. Pekalongan Utara', '51145', 'Bersama orang tua', 'Sepeda motor', '-', '082241979560', '-', '-', '0', '-', 'Fatchurochman', 1977, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375031306770007', 'Tatik Diana', 1981, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375035609810006', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL 682.0035323', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 2, -6.886016989065, 109.66747999191, '3375030509070074', 0, 0, 0, 0, 0, 0),
(129, 'SAFIRA HIMMATUL ULYA', 2, 'P', '0119780011', 'PEKALONGAN', '2011-03-19', '3375015903110002', 'Islam', 'JL. URIP SUMOHARJO NO.11', 6, 1, 'PODOSUGIH', 'PODOSUGIH', 'Kec. Pekalongan Barat', '51111', 'Bersama orang tua', 'Sepeda motor', '-', '081567978440', '-', '-', '0', '-', 'Ismail', 1976, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '3375013011760002', 'Nurul Chasanah', 1981, 'D3', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375016704810006', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL 682.0029283', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK MASYITHOH SAMPANGAN', 2, -6.899032876215, 109.66496944427, '3375012305070048', 0, 0, 0, 0, 0, 0),
(130, 'SYARIFA HIDAYATI SALSABILA', 2, 'P', '0119566555', 'PEKALONGAN', '2011-04-06', '3375014604110003', 'Islam', 'JL. SULAWESI Gg.3 No.5A KERGON', 7, 14, 'BENDAN KERGON', 'BENDAN KERGON', 'Kec. Pekalongan Barat', '51113', 'Bersama orang tua', 'Sepeda motor', '-', '085802481960', '-', '-', '0', '-', 'Muh. Ghufron', 1973, 'S1', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375010101730002', 'Muyasaroh', 1980, 'S1', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '3375015308800005', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL 682.0098185', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 3, -6.890277547936, 109.67151403427, '3375010904070019', 0, 0, 0, 0, 0, 0),
(131, 'VINO ALDYANSYAH', 2, 'L', '0103240440', 'PEKALONGAN', '2010-11-13', '3375021311100001', 'Islam', 'PONCOL Gg. Walet No. 3', 5, 7, 'PONCOL', 'PONCOL', 'Kec. Pekalongan Timur', '51122', 'Bersama orang tua', 'Sepeda motor', '-', '085647398905', '-', '-', '0', '-', 'Riyanto', 1977, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375020504770005', 'Ruwastriyah', 1982, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024710820007', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL 6820052731', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK ISLAM KAUMAN', 2, -6.894245158958, 109.68428134918, '3375021809070214', 0, 0, 0, 0, 0, 0),
(132, 'YUANITA PUTRI HANDAYANI', 2, 'P', '0111789864', 'PEKALONGAN', '2011-06-05', '3375034506110001', 'Islam', 'PABEAN', 2, 14, 'PADUKUHAN KRATON', 'PADUKUHAN KRATON', 'Kec. Pekalongan Utara', '51144', 'Bersama orang tua', 'Sepeda motor', '-', '085727847835', '-', '-', '0', '-', 'Miftah', 1975, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375031404750001', 'Tutwuri Handayani', 1982, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '3375034710820004', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', 'AL 682.0030455', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', 'TK', 2, -6.878997634893, 109.66005563736, '3375032408070219', 0, 0, 0, 0, 0, 0),
(133, 'ZAAHIRAH SALSABILA', 2133, 'P', '0113698917', 'PEKALONGAN', '2011-03-10', '3375015003110002', 'Islam', 'Jl. Setia Bakti Gg. 1 No. 12', 1, 3, '-', 'Podosugih', 'Kec. Pekalongan Barat', '51111', 'Bersama orang tua', 'Sepeda motor', '-', '085740875866', '-', '-', '0', '-', 'Edy Susanto', 1968, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '-', 'Anita Rochmaningsih', 1985, 'SMA / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 5, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '0', '-', '0', '-', 1, 0, 0, '-', 0, 0, 0, 0, 0, 0),
(134, 'Ahmad Rafi Santoso', 1980, 'L', '0109432685', 'Gresik', '2010-01-15', '3525141501100001', 'Islam', 'Jl Hayam Wuruk', 0, 0, '-', 'KAUMAN', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '085290764488', '-', '-', '0', '-', 'Supriyadi', 1971, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'Mardiana', 1981, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '5211/T/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(135, 'Amanda Sheilvy Ramadhanni', 1981, 'P', '0106171174', 'Pekalongan', '2010-08-24', '3375016408100002', 'Islam', 'Jl. Dr. Wahidin Noyontaan Gg.6 No.9', 4, 4, '-', 'Noyontaan', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '081548440892', '-', '-', '0', '-', 'Aman Susilo', 1979, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Popi Yuliani', 1981, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '2988/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(136, 'Amrina Rosada', 1982, 'P', '0106266556', 'Pekalongan', '2010-10-17', '3375025710100001', 'Islam', 'Tondano', 4, 11, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda', '-', '085786388350', '-', '-', '0', '-', 'Birrul Walidain', 1965, 'SMA / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', '-', 'Fitriyah', 1969, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '3777/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(137, 'Bayu Novanda Maretha', 1983, 'L', '0102495659', 'Pekalongan', '2010-03-21', '3375032103100003', 'Islam', 'Pantaisari', 0, 0, '-', 'Panjang', 'Kec. Pekalongan Utara', '0', 'Bersama orang tua', 'Sepeda', '-', '08816599639', '-', '-', '0', '-', 'Ance', 1965, 'SMA / sederajat', 'Sudah Meninggal', 'Tidak Berpenghasilan', '-', 'Nunung Nurhayati', 1968, 'Tidak sekolah', 'Pedagang Kecil', 'Kurang dari Rp. 500,000', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '1672/2010', 'BANK BRI', '006801049897509', 'BAYU NOVANDA MARETHA', '1', 'Yatim Piatu/Panti Asuhan/Panti Sosial', '0', '-', 3, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(138, 'Jisa Nursidiq', 1986, 'L', '0104363796', 'Pekalongan', '2010-07-23', '3375022307100004', 'Islam', 'Dr. Wahidin', 0, 0, '-', 'Noyontaan', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda', '-', '087822392374', '-', '-', '0', '-', 'Jamino', 1972, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Tumirah', 1979, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '2814/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(139, 'M. Banyu Pratama Putra', 1988, 'L', '0102478207', 'Pekalongan', '2010-08-07', '3375020708100002', 'Islam', 'Jl. K.H. Hayam Wuruk', 4, 6, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '087860978442', '-', '-', '0', '-', 'M. Arqom Adi Pratama', 1983, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Aprillia Fransisca Tumbol', 1984, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '2916/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(140, 'M. Rizqi Assafa\'', 1989, 'L', '0103840521', 'Pekalongan', '2010-05-23', '3375022305100002', 'Islam', 'Jl. Tondano', 4, 5, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085600501872', '-', '-', '0', '-', 'M. Zarkasi Zaini', 1969, 'S1', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Eva Marlia', 1979, 'D3', 'Wiraswasta', 'Kurang dari Rp. 500,000', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '3375-LT-09102013-0006', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(141, 'M. USMAN DZINURAIN', 2101, 'L', '0108681319', 'Pekalongan', '2010-03-20', '3326142003100002', 'Islam', 'Kertijayan Gg.12 No.27', 0, 0, 'Kertijayan', 'Kertijayan', 'Kec. Buaran', '51171', 'Bersama orang tua', 'Jalan kaki', '-', '082327079343', '-', '-', '0', '-', 'M. AFFAN', 1974, 'SMP / sederajat', 'Pedagang Kecil', 'Rp. 2,000,000 - Rp. 4,999,999', '3326142009740004', 'MARIYATUL QIBTIYAH', 1984, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '3326144912840002', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '3326CLU1604201004195', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.955842706457, 109.64913368225, '-', 0, 0, 0, 0, 0, 0),
(142, 'Mochamad Firdaus Abadan', 1990, 'L', '0102514667', 'Pekalongan', '2010-02-06', '3375020602100002', 'Islam', 'Jl. Hayam Wuruk', 2, 7, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '085740875848', '-', '-', '0', '-', 'Bambang Susilo', 1960, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Zamronah', 1970, 'SMA / sederajat', 'Sudah Meninggal', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '7982010', 'BANK BRI', '006801049650509', 'MOCHAMAD FIRDAUS ABADAN', '1', 'Yatim Piatu/Panti Asuhan/Panti Sosial', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(143, 'Muhamad Haikal Pratama', 1991, 'L', '0103803337', 'Pekalongan', '2010-06-28', '3375022806100001', 'Islam', 'Jl. Tondano', 4, 10, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '088902828946', '-', '-', '0', '-', 'Arianto', 0, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Mahmudah', 0, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '2541/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(144, 'Muhammad Pasha Natharshah', 1992, 'L', '0102671107', 'Pekalongan', '2010-08-27', '3375032708100003', 'Islam', 'Jl. K.H. Wahid Hasyim', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '088802899526', '-', '-', '0', '-', 'Rafika Kamal', 1978, 'D3', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Ira Zul Inayah', 1979, 'D3', 'Wiraswasta', 'Kurang dari Rp. 500,000', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '552/TP/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(145, 'Nanda Zahra Ade Purwanti', 1994, 'P', '0103385610', 'Pekalongan', '2010-05-04', '3375034405100003', 'Islam', 'Jl. Tondano', 2, 11, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '089524192905', '-', '-', '0', '-', 'Budi Purwanto', 1979, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Eva Haniva', 1980, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '1571/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(146, 'Nasywa Kamila Raya', 1995, 'P', '0109555928', 'Pekalongan', '2010-09-16', '3375025609100001', 'Islam', 'JL. R.A. Kartini', 0, 0, '-', 'Keputran', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '087830580058', '-', '-', '0', '-', 'Roy Patimura', 1978, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Santi Rachmawati', 1979, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '3523/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(147, 'Rava Fahri Sya\'bana', 1996, 'L', '0107370264', 'Pekalongan', '2010-07-30', '3375023007100001', 'Islam', 'Jl. Tondano', 0, 0, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '082313898618', '-', '-', '0', '-', 'Heri Sucipto', 1982, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Fifa', 1987, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '266/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(148, 'Salila Lilyatul Nada', 1997, 'P', '0107527217', 'Pekalongan', '2010-10-09', '3326164910100002', 'Islam', 'Poncol', 0, 0, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085727629384', '-', '-', '0', '-', 'Alimin', 1975, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Mifroh', 1979, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '3326CLI2812201002616', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0);
INSERT INTO `master_siswa` (`no_register`, `nama`, `nipd`, `jk`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `agama`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `jenjang_pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nik_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `jenjang_pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nik_ibu`, `nama_wali`, `tahun_lahir_wali`, `jenjang_pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `nik_wali`, `rombel_id`, `no_peserta_ujian_nasional`, `no_seri_ijazah`, `penerima_kip`, `nomor_kip`, `nama_di_kip`, `nomor_kks`, `no_registrasi_akta_lahir`, `bank`, `nomor_rekening_bank`, `rekening_atas_nama`, `layak_pip`, `alasan_layak_pip`, `kebutuhan_khusus`, `sekolah_asal`, `anak_ke_berapa`, `lintang`, `bujur`, `no_kk`, `berat_badan`, `tinggi_badan`, `lingkar_kepala`, `jml_saudara_kandung`, `jarak_rumah_ke_sekolah_km`, `is_valid`) VALUES
(149, 'Saskia Tabina Azura', 1998, 'P', '0109198606', 'Pekalongan', '2010-08-25', '3375016508100002', 'Islam', 'Kebulen', 4, 15, '-', 'Kebulen', 'Kec. Pekalongan Barat', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085866324777', '-', '-', '0', '-', 'Mohammad Arief, ST', 1981, 'S1', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'aRI mULYANI, ST', 1982, 'S1', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(150, 'Syakira Nur Rizqia', 1999, 'P', '0109330232', 'Tasikmalaya', '2010-06-04', '3375024406100002', 'Islam', 'Jl. TOndano', 0, 0, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '089501839095', '-', '-', '0', '-', 'Arifi', 1987, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Hana Aulia Sunanti', 1987, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(151, 'Vania Azaria', 2001, 'P', '0109713995', 'Pekalongan', '2010-03-09', '3375024903100004', 'Islam', 'Jl. Hayam Wuruk', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '085700837039', '-', '-', '0', '-', 'Herry Riyanto', 1973, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Rini', 1978, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '1672/DSP.I/2011', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(152, 'Zulfaa Azifa Lillah', 2002, 'P', '0096954379', 'Pekalongan', '2009-10-30', '3375027010090001', 'Islam', 'Jl Tondano', 0, 0, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '082236516453', '-', '-', '0', '-', 'Chaeroni', 1980, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Ani Rochyatin', 1982, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 7, '-', '-', '0', '-', '0', '-', '3941/2009', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(153, 'Asfa Aneira Terrin', 2003, 'P', '0098586605', 'Pekalongan', '2009-12-11', '3375015112090002', 'Islam', 'Jl Parahyangan Gama Permai', 0, 0, '-', 'Tirto', 'Kec. Pekalongan Barat', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085803158911', '-', '-', '0', '-', 'Piter Wilianto, SH', 1981, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '-', 'Indah Rahmawati', 1982, 'S1', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '0', '-', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(154, 'Athi Rizqiyani Machbubah', 2004, 'P', '0093400905', 'Pekalongan', '2009-11-08', '3375024811090001', 'Islam', 'Jl. K.H.Wahid Hasyim', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '082324908624', '-', '-', '1', '3c9xv951121A08', 'Irawadi', 1972, 'SMP / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', '-', 'Rochimah', 1980, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '89/TP/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(155, 'Bagas Eko Setiatmaja', 2005, 'L', '0103696531', 'Pekalongan', '2010-03-31', '3375023103100001', 'Islam', 'Jl. Tondano', 0, 0, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085890389076', '-', '-', '0', '-', 'Sigit Setiawan', 1984, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '3375022101840002', 'A\'imatun', 1985, 'D3', 'Tidak bekerja', 'Tidak Berpenghasilan', '3375024301850009', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '1760/2010', '-', '-', '-', '0', '-', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(156, 'Carissa Aqila Azzahra', 2006, 'P', '0103112201', 'Batang', '2010-06-09', '3325114906100003', 'Islam', 'Jl. Dr.Wahidin', 0, 0, '-', 'Noyontaan', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085735639987', '-', '-', '0', '-', 'Suharto', 1978, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'Atik Sugiati', 1988, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '2122/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(157, 'Ferizka Aurellia Dienisya', 2007, 'P', '0101387328', 'Pekalongan', '2010-10-20', '3375026010100002', 'Islam', 'Jl. K.H. Wahid Hasyim', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Jalan kaki', '-', '088227205728', '-', '-', '0', '-', 'M. Rusdi Saifuddin', 1979, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'Nining Purwaningsih', 1980, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(158, 'Kanaya Namira Aluna', 2009, 'P', '0094903148', 'Pekalongan', '2009-10-08', '3375014810090001', 'Islam', 'Jl. Hayam Wuruk', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '085740138952', '-', '-', '0', '-', 'M. Fannanul Ghofirin', 1981, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Indah Triastuti', 1983, 'S1', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '3856/2009', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(159, 'Karina Lintang Adlina', 2010, 'P', '0106038410', 'Batang', '2010-10-15', '3325115510100009', 'Islam', 'Perum. Graha Prima Estate', 0, 0, '-', 'Batang', 'Kec. Batang', '0', 'Bersama orang tua', 'Sepeda motor', '-', '082314130005', '-', '-', '0', '-', '.-', 0, 'Tidak sekolah', 'Tidak dapat diterapkan', 'Tidak Berpenghasilan', '-', 'Ana Sundari', 1978, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '12148/TP.II/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(160, 'M. Fathurohman Hidayat', 2011, 'L', '0104690275', 'Pekalongan', '2010-03-09', '3375022104100002', 'Islam', 'Jl. Hayam Wuruk', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '085201142299', '-', '-', '0', '-', 'Santoso Heri pawan', 1965, 'SD / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', '-', 'nah', 1970, 'Tidak sekolah', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 3, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(161, 'M. Sony Farhan Fakhrial', 2016, 'L', '0101660121', 'Pekalongan', '2010-05-23', '3375022305100001', 'Islam', 'Jl. Tondano', 0, 0, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '0895380108210', '-', '-', '0', '-', 'Mohammad Royyan', 1983, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Sumiyatun Chasanah', 1988, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '1890/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(162, 'Muchammad Najhan Ali Al Khaeroni', 2013, 'L', '0102223517', 'Pekalongan', '2010-05-11', '3375011105100001', 'Islam', 'Jl. Sudirman Perum Grogolan Baru No.6 Kebulen', 4, 14, '-', 'Kebulen', 'Kec. Pekalongan Barat', '0', 'Bersama orang tua', 'Mobil pribadi', '-', '085803642608', '-', '-', '0', '-', 'Moh. Khaeroni', 1975, 'SMA / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', '-', 'Wardah Karimah', 1977, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '1859/2010', '-', '-', '-', '0', '-', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(163, 'Muhammad Naufal Arkaan', 2017, 'L', '0106706598', 'Pekalongan', '2010-09-19', '3375021909100001', 'Islam', 'Jl. Agus Salim', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '081548443429', '-', '-', '0', '-', 'Ahmad Imron', 1980, 'S1', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '-', 'Azizah', 1987, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(164, 'Muhammad Rhafif Akbar Kurniawan', 2015, 'L', '0091128499', 'Pekalongan', '2009-11-19', '3375021911090001', 'Islam', 'Jl. Hayam Wuruk', 4, 6, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '085726284658', '-', '-', '0', '-', 'Muhammad Agung Budhy Kurniawan', 1975, 'S1', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999', '-', 'Yuniarti', 1979, 'D3', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '3920/2009', '-', '-', '-', '0', '-', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(165, 'Muhammad Zaki', 2019, 'L', '0105060617', 'Pekalongan', '2010-03-20', '3375022003100001', 'Islam', 'Jl. Tondano', 0, 0, '-', 'Poncol', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085727065766', '-', '-', '0', '-', 'Zaenal Hakim', 1980, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Tri Muti', 1982, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '1153/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(166, 'Naela Rahmadhani', 2020, 'P', '0106801368', 'Pekalongan', '2010-08-31', '3375027108100002', 'Islam', 'Jl. Hayam Wuruk', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Jalan kaki', '-', '082227506860', '-', '-', '0', '-', 'Maulana Achmaddin', 1993, 'S1', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999', '-', 'Nina Catur Ferinanda', 1993, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '-', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(167, 'Nafi\' Rif\'an', 2021, 'L', '0105551607', 'Pekalongan', '2010-04-17', '3375021704100002', 'Islam', 'Jl. Teratai Klego Gg.4', 0, 0, '-', 'KLego', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda', '-', '085802829534', '-', '-', '0', '-', 'Solichin', 1970, 'SD / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', '-', 'Zaenah', 1974, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '1', 'DK5X2S', '0', '-', '1383/2010', 'BANK BRI', '006801047168506', 'NAFI  RIF AN', '1', '-', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(168, 'Qayla Isaura Ferdinand', 2022, 'P', '0096521644', 'Jakarta', '2009-12-31', '3275017112090001', 'Islam', 'Jl. Hayam Wuruk', 0, 0, '-', 'Kauman', 'Kec. Pekalongan Timur', '51127', 'Bersama orang tua', 'Sepeda motor', '-', '085600510561', '-', '-', '0', '-', 'Muhamad Ferdinan', 1982, 'S1', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000', '-', 'Yulianti Rahayu', 1982, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '5049/KLU/JS/2010', '-', '-', '-', '0', '-', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(169, 'Raikhanun Naura Rizqi', 2023, 'P', '0099296185', 'Pekalongan', '2009-12-27', '3375026712090001', 'Islam', 'Jl. K.H. Ahmad Dahlan', 0, 0, '-', 'Tirto', 'Kec. Pekalongan Barat', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085642584446', '-', '-', '0', '-', 'Achmad Yan Yamin', 1984, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Khusnul Khotimah', 1985, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '472/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 2, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(170, 'Safira Tul Aira', 1975, 'P', '0091628064', 'Pekalongan', '2009-12-17', '3375025712090001', 'Islam', 'Jl. Teratai', 0, 0, '-', 'Klego', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085741976789', '-', '-', '0', '-', 'Chairul Anwar', 1982, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Muslikha', 1984, 'SMP / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, '-', '-', '-', '-', 8, '-', '-', '1', 'DK62MC', '0', '-', '-', 'BANK BRI', '006801047069508', 'SAFIRA TUL AIRA', '1', '-', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(171, 'Shela Arifa Rahmatika', 2024, 'P', '0109629629', 'Pekalongan', '2010-05-22', '3375036205100001', 'Islam', 'Jl. Sekar Jagad', 0, 0, '-', 'Medono', 'Kec. Pekalongan Barat', '0', 'Wali', 'Sepeda motor', '-', '085876804822', '-', '-', '0', '-', 'Solichin SR', 1970, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', '-', 'Nur Khawah', 1972, 'SMA / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', 'Drs. Abdul Wahib', 1960, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '-', 8, '-', '-', '0', '-', '1', '-', '2117/2010', '-', '-', '-', '0', '-', '0', '-', 4, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0),
(172, 'Talfita Amalia', 2000, 'P', '0093558858', 'Pekalongan', '2009-12-06', '3375034612090001', 'Islam', 'Jl. Dr. Wahidin', 0, 0, '-', 'Noyontaan', 'Kec. Pekalongan Timur', '0', 'Bersama orang tua', 'Sepeda motor', '-', '085747155018', '-', '-', '0', '-', 'Mohamad Amin', 1979, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', '-', 'Eni Inayawati', 1982, 'SD / sederajat', 'Tidak bekerja', 'Tidak Berpenghasilan', '-', '-', 0, 'Tidak sekolah', '-', '-', '-', 8, '-', '-', '0', '-', '0', '-', '76/TP/2010', '-', '-', '-', '1', 'Siswa Miskin/Rentan Miskin', '0', '-', 1, -6.8907, 109.6753, '-', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_blog`
--

CREATE TABLE `my_blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `headline` varchar(140) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(35) NOT NULL,
  `time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `publish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `my_blog`
--

INSERT INTO `my_blog` (`id`, `title`, `headline`, `image`, `category_id`, `content`, `author`, `time`, `update_time`, `publish`) VALUES
(1, 'Verval Ponsel Tahap 1 & 2', 'Menindaklajuti Surat edaran dari Kementerian Pendidikan dan Kebudayaan Pusadatin Nomor : 4573/J1/KP/2020 Kami selaku operator melakukan Veri', '16203691991620369199verval.jpg', 1, '<p>Menindaklajuti Surat edaran dari Kementerian Pendidikan dan Kebudayaan Pusadatin <strong>Nomor : 4573/J1/KP/2020</strong> Kami selaku operator melakukan Verifikasi dan Validasi ponsel.</p>\r\n\r\n<p>Dan berikut Daftar Nama dan Nomor ponsel yang telah kami Verifikasi dan Validasi ponsel</p>\r\n\r\n<p>Tahap 1 :&nbsp;<a href=\"https://drive.google.com/drive/u/1/folders/13g8_9-acSCGWt36AKHxlnNI5EXDMOxXL\">https://drive.google.com/drive/u/1/folders/13g8_9-acSCGWt36AKHxlnNI5EXDMOxXL</a></p>\r\n\r\n<p>Tahap 2 :&nbsp;<a href=\"https://drive.google.com/drive/u/1/folders/15Kqai9pJ-uQ_uRTp_SM2hUi-HZWobSr8\">https://drive.google.com/drive/u/1/folders/15Kqai9pJ-uQ_uRTp_SM2hUi-HZWobSr8</a></p>\r\n', 'Admin', 0, 1620369187, 1),
(4, 'Cara Memasang CKEditor pada Form Codeigniter (Bagian 1)', 'is being made\r\n', '', 2, '<p>is being made</p>\r\n', 'Admin', 1614003497, 1614004690, 0),
(5, 'Preview E-rekrutmen', 'Is being made\r\n', '', 1, '<p>Is being made</p>\r\n', 'Admin', 1614003585, 0, 0),
(6, 'Cara Memasang CKEditor pada Form Codeigniter (Bagian 2)', 'Is being made\r\n', '', 2, '<p>Is being made</p>\r\n', 'Admin', 1614004722, 0, 0),
(8, 'My Hobby', '\r\nHai gaess, aku ikka alsias ika Kusuma tul janah ????\r\nAku lulusan tahun 2019 dan sekarang aku kelas VIII di smp 7 negeri Pekalongan. Kakak', '16203669591620366959hobby.jpg', 3, '<article id=\"post-314\">\r\n<p>Hai gaess, aku ikka alsias ika Kusuma tul janah ????<br />\r\nAku lulusan tahun 2019 dan sekarang aku kelas VIII di smp 7 negeri Pekalongan. Kakak ucapkan selamat datang bagi adik-adikku semua yang ketrima di smp 7. Jangan segan-segan yaa buat nyapa atau ngobrol2 sama kakak. Hhehehe ✌️piss.<br />\r\noy lupa, salam hormatku kepada semua assatidza sdi kauman, i can&rsquo;t write how to say thank for everything ????<br />\r\nDisini aku mau posting gambar dari hasil karya aku sendiri, yaitu gambar anime. Sesuai dengan hobi aku. Bagi kakak2 alumni maupun adik2ku yg pny hobi sama, kita bisa saling sharing yaa. Semuga dari postingan gambar anime yang gaje ini ???? dapat menularkan energi positip bagi semuanya. Amiin ya Allah.<br />\r\noiya, bagi teman-teman yang kepingin coret2 ke halaman website ini, bisa main-main ke sdi kauman dan temui admin-nya ????</p>\r\n</article>\r\n', 'Admin', 1614134863, 1620366890, 1),
(9, 'Kisah The Knights Templar', 'Bermula pada 1099 M ketika pasukan Katolik dari Eropa mengambil alih Kota Yerusalem dari kendali umat Muslim pada Perang Salib pertama (musl', '16143930351614393035knights-templar.jpg', 1, '<p>Bermula pada 1099 M ketika pasukan Katolik dari Eropa mengambil alih Kota Yerusalem dari kendali umat Muslim pada Perang Salib pertama (muslim menyebutnya dengan perang sabil).</p>\r\n\r\n<p>Kemudian para peziarah kristen dari Eropa datang membanjiri Tanah Suci, namun banyak di antara mereka yang dirampok dalam perjalanan menuju ke Kota Yerusalem.</p>\r\n\r\n<p>Untuk mengatasi permasalahan ini,&nbsp;ksatria Prancis bernama Hugues de Payens menciptakan kesatuan militer yang dinamai <strong>Ksatria Kristus Papa dari Kuil Sulaiman</strong>&mdash;selanjutnya dikenal sebagai the &quot;<strong>Knights Templar&quot;</strong>&mdash;sekitar tahun 1118 M.</p>\r\n\r\n<p>Kesatuan elite para ksatria ini lantas mendirikan markasnya di Haram al Sharif, seraya berikrar melindungi semua peziarah Kristen yang datang ke Yerusalem. Seiring waktu, para ksatria ini mengumpulkan kekayaan yang diberikan oleh para peziarah sebagai balas jasa atas perlindungan mereka.</p>\r\n\r\n<p>Kekuatan the Knights Templar berkembang pesat pada 1139 dan mulai menyebar ke luar Yerusalem ketika Paus Innocent II memberikan sejumlah keistimewaan, termasuk pengecualian pajak di manapun di dunia dan hak menyimpan hadiah dari para peziarah yang datang ke Tanah Suci.</p>\r\n\r\n<p>Pada tahun yang sama, Raja Louis VII menyumbangkan properti kepada para ksatria di sebelah timur laut Kota Paris&mdash;tempat mereka mendirikan kastil-kastil markas, dan di kastil-kastil itu pulalah sebagian besar harta kekayaan mereka disimpan hingga tercipta&nbsp;&nbsp;<em>&quot;negara di dalam negara&quot;</em>&nbsp;yang bebas dari campur tangan raja Prancis.</p>\r\n\r\n<p dir=\"ltr\">Kondisi ini bertahan selama beberapa tahun sampai 1303 M ketika the Knights Templar dipaksa memindahkan basis operasi dari Haram al Sharif di Yerusalem ke markas mereka di Eropa&mdash;enclos du Temple&mdash;lantaran Yerusalem direbut oleh tentara Muslim.</p>\r\n\r\n<p dir=\"ltr\">Raja Philip yang menguasai Prancis saat itu amat membenci <em>&quot;negara di dalam negara&quot;</em> the Knights Templar sehingga dia bertekad menghancurkan organisasi tersebut dengan cara apapun.&nbsp;Banyak dari kalangan akademisi meyakini motif&nbsp;Raja Philip ingin menghancurkan The Knight Templar dilatarbelakangi alasan keuangan dan rasa iri dengan kesuksesan kaum templar.</p>\r\n\r\n<p dir=\"ltr\">Disaat yang sama Paus Clement V juga beranggapan bahwa harta kekayaan yang dikuasai Knight Templar boleh diambil oleh Vatican sehingga Paus Clement V meminta dukungan kepada kerajaan untuk mengambil harta mereka. Sehingga keduanya bekerja sama menyusun strategi untuk membubarkan The Knight Templar.</p>\r\n\r\n<p dir=\"ltr\">Pada <strong>13 Oktober 1307</strong>, dilakukan penangkapan sejumlah ksatria templar beserta Jacques de Molay selaku pemimpin tertinggi the Knights Templar atas tuduhan menyembah iblis, penghujatan, penyembahan berhala, dan homoseksual.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Jacques de Molay diksekusi mati pada 18 Maret 1314 dengan cara&nbsp;dibakar hidup-hidup di tiang gantungan setelah tujuh tahun mendekam di penjara. Disebutkan bahwa pada detik-detik menjelang ajalnya, De Molay mengutuk Paus Clement V, Raja Philip, dan semua keturunannya. Dia menyumpah bahwa dalam setahun baik Philip maupun Clement akan mati dan keturunan Philip tidak akan berkuasa lagi di Prancis.</p>\r\n\r\n<p dir=\"ltr\">Takdir memang berkata&nbsp;kedua pria itu memang mati ditahun itu dan selang 14 tahun kemudian semua keturunan Raja Philip musnah sehingga garis keturunan keluarga penguasa Prancis selama tiga abad mendadak punah.</p>\r\n\r\n<p dir=\"ltr\">Sebuah fakta mengejutkan dari operasi pembubaran The Knight Templar adalah tidak ditemukannya harta kekayaan didalam kastil-kastil milik knight templar. Harta tersebut LENYAP bersamaan dengan lenyapnya organisasi bernama The Knight Templar.&nbsp;</p>\r\n', 'jumhan', 1614390768, 1634913815, 0),
(10, 'Laporan Dana B.O.S Tahun 2020', 'Berikut kami laporkan realisasi dana Bantuan Operasional Sekolah (B.O.S) tahun 2020 tahap satu sampai dengan tahap tiga.\r\n\r\nSilakan download', '16219835941621983594danabos.jpg', 1, '<p>Berikut kami laporkan realisasi dana Bantuan Operasional Sekolah (B.O.S) tahun 2020 tahap satu sampai dengan tahap tiga.</p>\r\n\r\n<p>Silakan download rincianya dengan klik link dibawah ini:</p>\r\n\r\n<p><a href=\"https://sdi-kauman.sch.id/blog_assets/library/docs/laporanBOS2020.pdf\" target=\"_blank\">Download Laporan Dana BOS Tahun 2020</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Admin', 1621982606, 1621986547, 1),
(11, 'Penerimaan Peserta Didik Baru Tahun Pelajaran 2021 / 2022', 'Untuk mendaftar secara online silakan klik tombol dibawah ini.\r\n\r\nDaftar Sekarang\r\n', '16220010801622001080ppp.jpg', 1, '<p>Untuk mendaftar secara online silakan klik tombol dibawah ini.</p>\r\n\r\n<p><a href=\"http://bit.ly/PPDB2021-SDIK\" target=\"_blank\"><button class=\"btn btn-success rounded-pill\">Daftar Sekarang</button></a></p>\r\n', 'Admin', 1622000468, 1622001536, 1),
(12, 'Penetapan Kelulusan Tahun Ajaran 2020/2021', 'Berdasarkan Surat Edaran Kepala Dinas Pendidikan Kota Pekalongan Nomor 420/ 1160, tanggal 9 Juni 2021 Tentang Penetapan Kelulusan Peserta Di', '16235493791623549379DSC_0240.JPG', 2, '<p>Berdasarkan Surat Edaran Kepala Dinas Pendidikan Kota Pekalongan Nomor 420/ 1160, tanggal 9 Juni 2021 Tentang Penetapan Kelulusan Peserta Didik Pada Satuan Pendidikan Sekolah Dasar (SD) Tahun pelajaran 2020/2021, kami sampaikan hal-hal sebagai berikut :</p>\r\n\r\n<ol>\r\n	<li>Kelulusan SD Kota Pekalongan ditetapkan tanggal <strong>15 Juni 2021.</strong></li>\r\n	<li><b>Tanggal Kelulusan&nbsp;</b>tersebut sekaligus merupakan tanggal penyampaian pengumuman kelulusan dan <strong>Surat Keterangan Lulus&nbsp;</strong>yang di tandatangani oleh Kepala Sekolah atau pejabat yang berwenang.</li>\r\n	<li>Dengan ditetapkannyatanggal kelulusan, maka buku rapor kelas VI diatur tanggal 15 Juni 2021 dan tanggal mutasi diatur tanggal 16 Juni 2021.</li>\r\n</ol>\r\n\r\n<p>Informasi detail terkait&nbsp;Surat Edaran Kepala Dinas Pendidikan Kota Pekalongan Nomor 420/ 1160 dapat diunduh dengan dengan <a href=\"https://sdi-kauman.sch.id/blog_assets/library/docs/SE_Dinas_Pendidikan_Kota_Pekalongan.pdf\" target=\"_blank\">klik link ini.</a></p>\r\n', 'Admin', 1623382852, 1623549329, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_category`
--

CREATE TABLE `my_category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `my_category`
--

INSERT INTO `my_category` (`id`, `category`) VALUES
(1, 'Berita'),
(2, 'Info Akademik'),
(3, 'Artikel'),
(4, 'Trivia'),
(5, 'Tes'),
(6, 'wkwkwk'),
(7, 'Tokoh'),
(8, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(11) NOT NULL,
  `ta` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `ta`, `is_active`) VALUES
(1, '2021-2022', 1),
(2, '2022-2023', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_jurnal`
--

CREATE TABLE `trx_jurnal` (
  `id` int(11) NOT NULL,
  `trx_jenis` varchar(20) NOT NULL,
  `trx_no` varchar(20) NOT NULL,
  `coa` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `ta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trx_jurnal`
--

INSERT INTO `trx_jurnal` (`id`, `trx_jenis`, `trx_no`, `coa`, `tanggal`, `deskripsi`, `debet`, `kredit`, `ta_id`) VALUES
(2, 'KAS', 'TRX-00001', '0001', '2021-08-06', 'IURAN SPP BULAN AGUSTUS', 90000, 0, 1),
(3, 'KAS', 'TRX-00001', '0159645018', '2021-08-06', 'IURAN SPP BULAN AGUSTUS', 0, 90000, 1),
(8, 'KAS', 'TRX-00007', '0001', '2021-08-11', 'IURAN SPP BULAN 8', 50000, 0, 1),
(9, 'KAS', 'TRX-00007', '0159645018', '2021-08-11', 'IURAN SPP BULAN 8', 0, 50000, 1),
(10, 'KAS', 'TRX-00009', '0001', '2021-10-31', 'IURAN SPP BULAN 10', 70000, 0, 1),
(11, 'KAS', 'TRX-00009', '0145940675', '2021-10-31', 'IURAN SPP BULAN 10', 0, 70000, 1),
(12, 'KAS', 'TRX-00012', '0001', '2021-08-15', 'IURAN SPP BULAN 08', 10000, 0, 1),
(13, 'KAS', 'TRX-00012', '0159645018', '2021-08-15', 'IURAN SPP BULAN 08', 0, 10000, 1),
(14, 'KAS', 'TRX-00014', '0001', '2021-09-01', 'IURAN SPP BULAN 09', 100000, 0, 1),
(15, 'KAS', 'TRX-00014', '0159645018', '2021-09-01', 'IURAN SPP BULAN 09', 0, 100000, 1),
(16, 'KAS', 'TRX-00016', '0001', '2021-09-15', 'IURAN SPP BULAN 09', 50000, 0, 1),
(17, 'KAS', 'TRX-00016', '0159645018', '2021-09-15', 'IURAN SPP BULAN 09', 0, 50000, 1),
(18, 'KAS', 'TRX-00018', '0001', '2021-09-16', 'IURAN SPP BULAN sept', 50000, 0, 1),
(19, 'KAS', 'TRX-00018', '0159645018', '2021-09-16', 'IURAN SPP BULAN sept', 0, 50000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_penilaian`
--

CREATE TABLE `trx_penilaian` (
  `id` int(11) NOT NULL,
  `trx_no` varchar(9) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nilai` float NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `catatan` text NOT NULL,
  `ta_id` int(11) NOT NULL,
  `user_log` varchar(128) NOT NULL,
  `time_log` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trx_penilaian`
--

INSERT INTO `trx_penilaian` (`id`, `trx_no`, `mapel_id`, `siswa_id`, `tanggal`, `nilai`, `jenis`, `catatan`, `ta_id`, `user_log`, `time_log`) VALUES
(1, 'NIL-00001', 2, 15, '2021-11-09', 70, '1', '', 1, 'Riski Hermawan', 1636474196),
(2, 'NIL-00001', 2, 17, '2021-11-09', 60, '1', '', 1, 'Riski Hermawan', 1636474196),
(3, 'NIL-00003', 1, 10, '2021-11-09', 10, '9', '', 1, 'Riski Hermawan', 1636474244);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Sandhika Galih', 'sandhikagalih1@unpas.ac.id', 'profile1.jpg', '$2y$10$nXnrqGQTjpvg58OtOB/N.evYQjVlz7KIW37oUSQSQ2EgNMD0Dgrzq', 1, 1, 1552120289),
(6, 'Doddy Ferdiansyah', 'doddy1@gmail.com', 'man.jpg', '$2y$10$FhGzXwwTWLN/yonJpDLR0.nKoeWlKWBoRG9bsk0jOAgbJ007XzeFO', 7, 1, 1552285263),
(11, 'Sandhika Galih', 'sandhikagalih1@gmail.com', 'default.jpg', '$2y$10$0QYEK1pB2L.Rdo.ZQsJO5eeTSpdzT7PvHaEwsuEyGSs0J1Qf5BoSq', 3, 1, 1553151354),
(12, 'jumhan', 'jumhan@gmail.com', 'default.jpg', '$2y$10$D2oX0tZhvESmRdj5x/5hDukOqpKHE/k4E0sTmhWdSin0nCYSfQOsu', 2, 1, 1633830842),
(13, 'Riski Hermawan', 'riski@gmail.com', 'default.jpg', '$2y$10$B/3RHA/WLCG5RU0tO5GTge0QMP2gEaryWGpQKsr1XSxLuOTplgDm2', 4, 1, 1634367874),
(14, 'Alesha Zahra Ramahani', '0159645018', '0159645018.jpg', '$2y$10$sckoKLOGt5qFDwsn5Fq/7e9Gp3GbOZ.JDRj5A1aFeVRxb3FvIYHiu', 7, 1, 1634569400),
(15, 'ALLENA NAURA SABENA', '0157032194', '0157032194.jpg', '$2y$10$AixMsTX5ZqfbxpmWOiciuu9hZgWu03IYSsMmtBFARbGmRduY0seAO', 7, 1, 1634569400),
(16, 'ARFA RADITYA', '3159927229', '3159927229.jpg', '$2y$10$NByBEM1CKvd3vWcuPIUBIO/DQb6tYAx3heH/TKlqEoT6RkBGPMrrW', 7, 1, 1634569400),
(17, 'Atiffan Rizky Ramadhan', '3142532865', '3142532865.jpg', '$2y$10$RtvooKurhxL2jHgYoGR3Re8cX3aZcNmdgr.0Is8YxCKY1Zq6Cj5OK', 7, 1, 1634569400),
(18, 'Dona Aura Zhafirah', '0141338419', '0141338419.jpg', '$2y$10$oAKdDtK/XpOh9FHv6xIx7uvGNFDrzHLQJ4PVgn8Z6GW7pHoHEd9NC', 7, 1, 1634569400),
(19, 'Galuh Aulia', '0149434761', '0149434761.jpg', '$2y$10$O7.Z6tyqf6QRFImc8vIVee2QTSgEoHnG259MEoue/NVVF9SnsEpFa', 7, 1, 1634569400),
(20, 'Hanna Faizatul Kamila', '0142519991', '0142519991.jpg', '$2y$10$pboURSlv1fdPEA7osnDVHevSlRflpCQ5XCsOFcSPn8uwdqT1sQRM6', 7, 1, 1634569400),
(21, 'Hasna Nabila', '0147499454', '0147499454.jpg', '$2y$10$OWXqBely/3Tg9D7RCwen2eJXjRoSfugTm0tp7eurrjNOwXjGNnFyC', 7, 1, 1634569400),
(22, 'Illiansyah Fachrial Maula Achmad', '0141062584', '0141062584.jpg', '$2y$10$x0GvsTPbZVZr.JAox7WgeO2E4Jw.sIMXp0J2U1mcOiVr7W.5gIfyO', 7, 1, 1634569400),
(23, 'KHAIRA HASNA HIBATULLAH', '0153246664', '0153246664.jpg', '$2y$10$e5cGQE4ZPiGbAZXT9S.GseccwWRjfzaOlLMGWz6ZUnnmyuE5URhDS', 7, 1, 1634569400),
(24, 'Langit Alfarizi Ghaisan', '3151346043', '3151346043.jpg', '$2y$10$Jvt8oqhyKw9JrECdCZLXH.fGBW2uSas1dEky.u2w2VP4GI9tnSBOu', 7, 1, 1634569400),
(25, 'M Galih Satria Diputra', '0135681717', '0135681717.jpg', '$2y$10$befS30A5Le0a3qxVuLQKfuBjzDoOYKQxGf08MbN4VVTcgpB7M53ju', 7, 1, 1634569400),
(26, 'M. Raditya Saputra', '0143053309', '0143053309.jpg', '$2y$10$/L217yqgfgdGxwKEXykdQObgMYZ42YjZpiFYk7hNOWK65PuBVS04.', 7, 1, 1634569400),
(27, 'M. Rizky Aulia Dwi Wardana', '0143471287', '0143471287.jpg', '$2y$10$nYEv3h2KubMsM2P0yVDERuiYaIIiJmJlssrV1VWyE0WTP/si1KX..', 7, 1, 1634569401),
(28, 'Maimun Saba', '0148078051', '0148078051.jpg', '$2y$10$FcsJ3aglF73yTERWj9kDnesgAV7P4TxbJWt9Ye4t3n2Z.mdQJPyRy', 7, 1, 1634569401),
(29, 'Mohammad Tsaqiif', '0144661227', '0144661227.jpg', '$2y$10$oAP7f6ipbfYSNSx4hLoxAeNnBTHHUA0vG3VWxrx6/NYXa2YDzkaPK', 7, 1, 1634569401),
(30, 'Muh. Abyan Khalif AlGhifari', '0131865891', '0131865891.jpg', '$2y$10$vk33eIkhYz2YuVnxn3Z2JuK8st78uOv2Gxt5SpRhGBfcCijqtuxRu', 7, 1, 1634569401),
(31, 'Muhammad Aiman Fahd Al-Fatih', '0141409929', '0141409929.jpg', '$2y$10$KWj4T4hygTC.602wW.RkkOLr.s4xAW7Wquv/MTZl893tzrn3NYlB2', 7, 1, 1634569401),
(32, 'MUHAMMAD AMMAR MUKTI', '0156180691', '0156180691.jpg', '$2y$10$r5Zf1qflPb/2xvlT9BDZauhQd4esQhuXgRCQkEx/EsQ7Q/DZHEWrG', 7, 1, 1634569401),
(33, 'MUHAMMAD DANIEL ATHAR', '0143738420', '0143738420.jpg', '$2y$10$.lwflluitITPMhlwSc4TsONBZmKpRkTWY.G/L1zIHPdArhnlM9DTq', 7, 1, 1634569401),
(34, 'Muhammad Haidar Rasyid', '0158546827', '0158546827.jpg', '$2y$10$wakQuImOtrKQTEnqNcwzUOGMb28jUEFyhbgl8YZotFzBegwbo7mVu', 7, 1, 1634569401),
(35, 'Muhammad Nabil Al Ghifari', '0141312385', '0141312385.jpg', '$2y$10$P5fCU6c8pjGjP.5bk73RiuWxjehSG./LRB3x/C2iPq4rzRVlEsgqe', 7, 1, 1634569401),
(36, 'muhammad rasya aslam', '0152327477', '0152327477.jpg', '$2y$10$TOOTp1RhwAbmuuigfqw/2OowCmhbW4IVPC1gEw2T1hB9d2bisLngi', 7, 1, 1634569401),
(37, 'MUHAMMAD SEPTIAN', '0145478493', '0145478493.jpg', '$2y$10$Lolcr.vqr70bpwyFRbDJ2eoIx.9K0yC2hBFn7nSK3lCtglYC2B9C2', 7, 1, 1634569401),
(38, 'MUHAMMAD ZELGA RISQUALLAH', '0159088733', '0159088733.jpg', '$2y$10$UVdXLIVgpJlG/dDfSedhh..GN/CwbzXeUkPQur7kjh169PQUPakVu', 7, 1, 1634569401),
(39, 'Mutya Soraya', '0148196542', '0148196542.jpg', '$2y$10$eshh/UPZslWLokwv0Ab10e.fE9d4meq0elc6QLcLt8fqNUXD2.f3u', 7, 1, 1634569401),
(40, 'Nafeeza Azka Ramadhani', '0153275699', '0153275699.jpg', '$2y$10$vg6mtjUtkJJDmpJYMm0XX.y4ncplwxvC//PG1p6XN2gRwvRak1UUa', 7, 1, 1634569401),
(41, 'Nazeera Azka Ramadhani', '0159199599', '0159199599.jpg', '$2y$10$sM460fo3kVKiQpOqme33.e0ikgyYjUsIe0pPmBcvfzfc/FBO6aKJK', 7, 1, 1634569401),
(42, 'NOUVALDA ALJAZAIR', '0146238612', '0146238612.jpg', '$2y$10$4lKwaviXp0rYFThoslWZ8.BQKVbZUxECYL/9Gix4O/CTQMGHonCbO', 7, 1, 1634569402),
(43, 'Rizky Nazar', '0148626348', '0148626348.jpg', '$2y$10$hUuwUrP0FdlTS2knHVE54uXwbOtaBZVmpXFdpMLESdGh/Y9W7NRHq', 7, 1, 1634569402),
(44, 'Rugayah', '3155565572', '3155565572.jpg', '$2y$10$cj/X/p4AwsU9HzqXXuZwi.bv9WlWQ6T6yeTr2IGwQwpdzV2zUTILa', 7, 1, 1634569402),
(45, 'Syafira Nur Hasani', '0148538597', '0148538597.jpg', '$2y$10$DVnf8GAleUU1WADSgGa4q.wVam69Z3oKATK8zBCoLJCSpzM5uVLua', 7, 1, 1634569402),
(46, 'Ainun Qotrunnada Rusyada', '0145904795', '0145904795.jpg', '$2y$10$nrRBgpEbEhK9gipH.k0otetBLZoQZBGqyrYkEnryUw/6BuI9YWKee', 7, 1, 1634569402),
(47, 'Alendra Surya Saputra', '0139335405', '0139335405.jpg', '$2y$10$MxCVMz./tbA0A0VbxBNZQOnd8kAxN5R5E1bSPT7PpWYNNzR7HKnx2', 7, 1, 1634569402),
(48, 'Alifia Maulida', '0145940675', '0145940675.jpg', '$2y$10$PrLpb4rbXUWz7xxv0Oq/Iuz64B38EMwASvRhXGCfOZUouSrjGm1K.', 7, 1, 1634569402),
(49, 'Ardiva Nur Rizkyara Salsabila', '0136063772', '0136063772.jpg', '$2y$10$tm3IjS8ecwydCkh9LLOQnOix7lsAusWW8Zne3Q/iYF.zz/fBxckvy', 7, 1, 1634569402),
(50, 'Arjuna Aryadika', '0141391329', '0141391329.jpg', '$2y$10$.lmUZS7yupU6Tnz3CUkvtuAJB8tQPbK0Z00eEK/6xh2.K1kK0TSG2', 7, 1, 1634569402),
(51, 'Arsala Diva Estetika', '0133217570', '0133217570.jpg', '$2y$10$mibqMfjB3OOSl5jtOjt0COcgTXEVa04hPPDxTuGdccuVyVhjDGcGO', 7, 1, 1634569402),
(52, 'Atika Zahra Latifa', '0131902806', '0131902806.jpg', '$2y$10$dX5NogrGo4cmosNXCM02Huf3pQ1QhojJEj.8RVH1KAQFbN02JPD6i', 7, 1, 1634569402),
(53, 'Calista Amanda Mikayla', '0139410240', '0139410240.jpg', '$2y$10$QRBNgu4Ww4qjMs./7EUQD.L7HqqKmsFK1484wAFtP7sgjhbDLHMvW', 7, 1, 1634569402),
(54, 'Kevin Al Ghani', '0146276414', '0146276414.jpg', '$2y$10$qpjXzjPGJARoFtvFb6eD4eY0SnzauHRMuM8kLtjXDxj3Hroim3FSm', 7, 1, 1634569402),
(55, 'Khafisatul Khusna', '0138846479', '0138846479.jpg', '$2y$10$9UnDHq/piqH4PlEKnmyOAu0RtPjXw3NdteuJX4YixujgoU/7hJRZu', 7, 1, 1634569402),
(56, 'Khaylila Zada Maulidya', '0148691076', '0148691076.jpg', '$2y$10$I/s63xu5.W0SY4RKRZGEteTPeuFvtq.0JJM.uTVy9xNJBCpJ.Jlr.', 7, 1, 1634569402),
(57, 'Khusnul Khotimah', '0149449529', '0149449529.jpg', '$2y$10$sO90LkT3/XASdG0LBiB0k.qEbgL9E/RkJXU7xk7ANQ6X8yN1kgESG', 7, 1, 1634569403),
(58, 'Kindo Alfarezel Ghaisan', '3143665009', '3143665009.jpg', '$2y$10$Bov9lP1kVoUzxKMUkmi7COvaLYiC/FcbHDAzx.upqIOuMV0E9/pPO', 7, 1, 1634569403),
(59, 'M. Naufal Nabil Al Fayath', '0144232833', '0144232833.jpg', '$2y$10$aFFAOjh0RmQJRUMTs7xZs.N7CWSx7Ri3nhFyYJOvvq2UdUqv9j6kC', 7, 1, 1634569403),
(60, 'Mikayla Yumna Rabbani', '0145194556', '0145194556.jpg', '$2y$10$QzHVS.LAK2.xKGfWW3AGr.Sjv2cPDz5rWhJDSuWoXNqwN8E.HN2Ui', 7, 1, 1634569403),
(61, 'Moch Alfi Maulana Yafi', '0139189407', '0139189407.jpg', '$2y$10$FxJ7cjVHJDhy1h6Pl5OUzep7Q0BXB90EX0aipyL8lb.6AlAYHQFk.', 7, 1, 1634569403),
(62, 'Mochamad Kenzi Alfano', '0148208845', '0148208845.jpg', '$2y$10$xiOnauVPR1Hg9zGnNW2Cd.XgHqdOb7zrhUCkl3muqI.VoPLhV9r02', 7, 1, 1634569403),
(63, 'Mohammad Wildan Al Widodo', '0145126480', '0145126480.jpg', '$2y$10$ZKlXuIkWH0mxL7LLp6IntuSihCcNlShZQqePb3lXdD3rdBGQIyt8i', 7, 1, 1634569403),
(64, 'MUHAMMAD DZAKWAN MAHRUZ', '0148614119', '0148614119.jpg', '$2y$10$cgObVJWCPfPKyjTCZc3f3e45tsbC157V5R6oz1zjCvxDDSu2cTnY2', 7, 1, 1634569403),
(65, 'Muhammad Farhan Nizami', '0129981108', '0129981108.jpg', '$2y$10$liiYccdi0PpZY2eCClzraOTIa0WjovNEvkaphEfTww8//3nJHjYNu', 7, 1, 1634569403),
(66, 'MUHAMMAD NAFIL HAIKAL', '0131274063', '0131274063.jpg', '$2y$10$YQJXdH8VjEvxhYRILqXii.e8WQg.mldtgB8xVjtPfKjbjLFiNXXXa', 7, 1, 1634569403),
(67, 'Muhammad Rafa Azka Putra', '0147653335', '0147653335.jpg', '$2y$10$IlsR9NYdnOdxugdGKVVCSejhZZL1cdZ18OdspYpCXIqBmAVuVk0.K', 7, 1, 1634569403),
(68, 'Muhammad Rizqi Abbi Sankan', '0131742103', '0131742103.jpg', '$2y$10$LYkxedeNOb9D97AzO.N1bOLQQjuo/NuTC5v5fICZLGiwFd0Sem4Qe', 7, 1, 1634569403),
(69, 'Oggi Mikael Ferdinand', '0132907183', '0132907183.jpg', '$2y$10$d2gWGBG/4.pvMekIZOTHdePE26uksbPFDI6rPSo2Bw1GZ/qkcUcaO', 7, 1, 1634569403),
(70, 'Philanthropy Ravaela Wick', '0149364272', '0149364272.jpg', '$2y$10$.IP8gKBBNqSFwEaS2HT6Reg1aVFjr123kTHDHB2tuNJgTpa0Tyu.O', 7, 1, 1634569403),
(71, 'Shabrina Annajwa', '0135985926', '0135985926.jpg', '$2y$10$psMiPEG3YWALJlGwHhkwGeXy/m.ET6xV8ean1cM9ryL5JzVl4IKaO', 7, 1, 1634569403),
(72, 'Syahm Hanan Fakhraza', '0138669695', '0138669695.jpg', '$2y$10$Lddc7S8Sn4fuU7MsH6eVROsrHfIkl1RxcA9R9MOR4nzXU7PmHYCNO', 7, 1, 1634569404),
(73, 'Syarin Aszira', '0144873691', '0144873691.jpg', '$2y$10$lSgIANmYnXk2KVwej97z/u4HJqjGCA4azGPY4HP/1fXWaOBo9hrWG', 7, 1, 1634569404),
(74, 'Zahwa Salsabila', '0139778021', '0139778021.jpg', '$2y$10$ul1mz076bMhH0UpL/hHLr.BZGdS0oRojBG29QfeJKKJAVOS5EHELu', 7, 1, 1634569404),
(75, 'Zian Alfaro Gavriel', '0142646117', '0142646117.jpg', '$2y$10$hGqoirwu4TN4upx1Ftm1WeajlchOzh6/XTUzEuTOVEtb13S01qfQ2', 7, 1, 1634569404),
(76, 'Achmad Ekza Al Farizi', '0123252525', '0123252525.jpg', '$2y$10$o4qGOlnaqbS.ZBB0v1sWmO8q/AQ6A6Cvn3SeXRwdXJnKs0IIPOh2u', 7, 1, 1634569404),
(77, 'Afiqah faeyza Putri', '3139412030', '3139412030.jpg', '$2y$10$yPE.O5GNXp16kKVCSGooW..cYoF4VosbrOV9x7XcvNWXPF8cqU9MC', 7, 1, 1634569404),
(78, 'Ahmad Nata Waqtana', '0122884775', '0122884775.jpg', '$2y$10$cUfylEdsEgbGaCk312ErkuglyecuNyfAWalYe4plbTbrGkFbWZ.vm', 7, 1, 1634569404),
(79, 'Aira Azahra', '0133924870', '0133924870.jpg', '$2y$10$GcvweliEhLJO.td0DTRoXephRzG6.MbP3RBszDqbLBLZzkxO.gAI2', 7, 1, 1634569404),
(80, 'Aliya Rizky Avriyanti', '0128128665', '0128128665.jpg', '$2y$10$nCefGTH0ZBS9ZpfgPqRtaOWciYBGpNpujBIp4YXcz49wBTCVkxI2C', 7, 1, 1634569404),
(81, 'Alvaro Raffa Ramadhan', '3135856286', '3135856286.jpg', '$2y$10$G9jswwr4Z9EYApyvr1XJg.fxHWVt9ZuAX98LBsiYkSftDjQETC/ZG', 7, 1, 1634569404),
(82, 'Amirah Azalia Zanetta', '0132497382', '0132497382.jpg', '$2y$10$lyOgQPcvM1Heqb2HSW5wdeMPUAybcikPm/oCk3T8vAZWQc4gfcY.y', 7, 1, 1634569404),
(83, 'Bening Putri Rahmadani', '0129228393', '0129228393.jpg', '$2y$10$RpQmJ8jgHImGfg/EhiENU.uS2pEMQaVIQvA6KcFFvo62GeMdJTk9C', 7, 1, 1634569404),
(84, 'Caroline Anjani', '0138383953', '0138383953.jpg', '$2y$10$ljq8Q2fFZbzmfMcy9npd7OChv0qn13wcllnQeIydwDNlncIEjlf4W', 7, 1, 1634569404),
(85, 'Farrel Gibran Al-Khakim', '0137095387', '0137095387.jpg', '$2y$10$N7BI59VpZcikOnAuqgJ4rea053Qv.Xp05D62OWYYftc8CdxLjP0nm', 7, 1, 1634569404),
(86, 'M Sholayhuddin', '0121859698', '0121859698.jpg', '$2y$10$9uQxeukcC7OSNaMPWZg14.gyfsnHNLeBF5K2//q1yWKAMIANc6.S.', 7, 1, 1634569404),
(87, 'M. Aqil Danish', '0132429881', '0132429881.jpg', '$2y$10$5iq66Pn5cWcz7Sf2ivdB5.kCMk5w2RSj9i7UhcKR4r.4EInWBKYu.', 7, 1, 1634569405),
(88, 'M. Raffi', '0132207002', '0132207002.jpg', '$2y$10$S8VHxL2/QgKOKZUPGncFKOfIBrSZMbmbYi9H9CaJU59TbaBK4IhuK', 7, 1, 1634569405),
(89, 'M.Ghiffari Faza', '0138379445', '0138379445.jpg', '$2y$10$Gw7w.nqVCFjhh1p3kN9Z1OxvtL.B3GaYUP6qk/a2XHYDP4dBHXN1q', 7, 1, 1634569405),
(90, 'Muchamad Avril Al Kairo', '0125242463', '0125242463.jpg', '$2y$10$6OWxday2u3naW7SnOZ.5eugdYliyZfLx1jTiwn9d9M4k31VtbZEXW', 7, 1, 1634569405),
(91, 'MUHAMMAD AZKA ARGANI', '0132735826', '0132735826.jpg', '$2y$10$MK0KD3vOIIvrOKPF4bEs/Of9BGzH7RDv2ipEXH5zGVkbWr5OiqIRW', 7, 1, 1634569405),
(92, 'MUHAMMAD FAHMI MUAYYAD', '0136701398', '0136701398.jpg', '$2y$10$z0DVXHiotk5Aquc3..h6HeySjL0e4j3dgJOXwtvDvb4pYcKSplvMm', 7, 1, 1634569405),
(93, 'Muhammad Ibnu Najah', '0133154612', '0133154612.jpg', '$2y$10$RPZfe2ptNn32ihG6tXz43u8SbIAaFBhLbR67BEpfm/J2m07Y1iJvS', 7, 1, 1634569405),
(94, 'MUHAMMAD REZA SAEFANI', '0133592546', '0133592546.jpg', '$2y$10$Rd8zpkbXB0iEobolsOn0ueVoCDJUXESETH0S3.J8DW/uA6Ycr70pW', 7, 1, 1634569405),
(95, 'Muhammad Sandy Alvaro', '0139426720', '0139426720.jpg', '$2y$10$oYyUxYU9ANJ.MHiAm4P4guBUDgOhxSmD1Kt.wrzsGiXu0St.JsVmS', 7, 1, 1634569405),
(96, 'Naufal Khoirul Azzam', '3126793092', '3126793092.jpg', '$2y$10$JdUXsZCOiz9oIS1GYWz3.ucY9c2pu0hROCPtb8nHG67liAWGtJNsO', 7, 1, 1634569405),
(97, 'Nisrina Faihaa', '0131106502', '0131106502.jpg', '$2y$10$Dter/ds1xQWGFGHsmx7vzeJHVgpp4fE3Jy4QYzsogDUEMYvxgqtTC', 7, 1, 1634569405),
(98, 'Putra Adi Nugroho', '0132521117', '0132521117.jpg', '$2y$10$qbUlJZ/GE4sdXiv8TlmK9OiM5nrzkgXcpaga0J/KriJCqBWUq96Ji', 7, 1, 1634569405),
(99, 'PUTRI NABILA', '3127005098', '3127005098.jpg', '$2y$10$NbyyGYokXesfnvsIDeo9eOMiB0jXhtpVrSnxcMfxLYGjpzV2VkH6u', 7, 1, 1634569405),
(100, 'SILVIA AILA SABELA', '0139240477', '0139240477.jpg', '$2y$10$0S93X1aL7DfCGEkO9bn8A.UiR2T.ptbsrY5slO44bqbbvZmxQJ3uC', 7, 1, 1634569405),
(101, 'Soraya Azkia Akbar', '0122506712', '0122506712.jpg', '$2y$10$JH1ZOVUTrmsDI8oO1bQu0OO.cTD0071mq38k3rcGrsLRTkXVAUhu6', 7, 1, 1634569405),
(102, 'Aesya Queennisaa', '0125248959', '0125248959.jpg', '$2y$10$GmmuxjuwYX7kqmCzlaaezep6oCBJbke.4EuHiUyQ6GuYPufB.5Jei', 7, 1, 1634569406),
(103, 'Ahmad RAmadhani', '0123190407', '0123190407.jpg', '$2y$10$GEky5.g0buh6atgcSszScOk2WXs7FVjZ8ryMxXvL8ImZxwEDGdZCe', 7, 1, 1634569406),
(104, 'Aisya Dzil Karima Uji', '0126956597', '0126956597.jpg', '$2y$10$VmyvIa/1rVhWY/OHNAMVkut/VLmwoT8Va2b5BWRrjAvWFjhjoxkhq', 7, 1, 1634569406),
(105, 'Arum Nadya Shofwan', '0119915446', '0119915446.jpg', '$2y$10$ETAvFRUq/BipEm4Xk9hs8.fT9htErDVNkOyTO1UaalPwEHCPNTYMu', 7, 1, 1634569406),
(106, 'Calista Azkadina F', '0124498543', '0124498543.jpg', '$2y$10$MjA3iIXPocMdCXSRntk3NeyyL4mIKmHW6R5tFB6n5p8ZzxJ2ZF7Ci', 7, 1, 1634569406),
(107, 'Fatih Muhammad Hammam', '0113399276', '0113399276.jpg', '$2y$10$qVhFM.SdkrV2WwtQUGNWpOEbjMaJ7I7ilhj/Nl5O5mSSXHKeptWve', 7, 1, 1634569406),
(108, 'Icha Aurelia Shavira', '0122756987', '0122756987.jpg', '$2y$10$v6H1HQWxzFh9Zmiksc.GnOIwjpYzP9nHAcbCL.o2lkU8hMliWEEoC', 7, 1, 1634569406),
(109, 'Kania Marwa Nadzifah', '0112668678', '0112668678.jpg', '$2y$10$tqlJ3RXUVmTh9Ih6ju66qefcVrCha5RbTuEvdrhQmvETEI/Jg958i', 7, 1, 1634569406),
(110, 'M. Faris Maulana Hidayat', '0128391541', '0128391541.jpg', '$2y$10$nuKy1n4psp/ZBV5faORsWuAPeVmaWTand2jg3E7Z1nXv3LgoBsQ5e', 7, 1, 1634569406),
(111, 'Malika Raniya A K', '0129240504', '0129240504.jpg', '$2y$10$U/2Tn.FZYjaQ62brqJHEm.FZen8GLjEJbHdnUxFHFHNGnqmR0fsLa', 7, 1, 1634569406),
(112, 'Moh. Rizqi Arjuna', '0116588758', '0116588758.jpg', '$2y$10$.jK8xevAQWlI33DAqRuYUOFEUuweA0rk6mL.eE3ZwdVEqeOSpsCgS', 7, 1, 1634569406),
(113, 'MUHAMMAD ADITYA RIZQI', '0122592925', '0122592925.jpg', '$2y$10$cmdNJEf15fEd3c2KAm5Cqejgz5pDgcL1Egno/1mSwLP0thiDBV0Qe', 7, 1, 1634569406),
(114, 'Muhammad arkaan Asyafaani', '0127934904', '0127934904.jpg', '$2y$10$5U4JO/IKYmB6SK5R2jIkgeYpOYqk6vi6LdavWi3h1XdAhr4KLkZVG', 7, 1, 1634569406),
(115, 'Muhammad Salma Dunakh', '0117312859', '0117312859.jpg', '$2y$10$zxe9nf9GC/Zdrqjk1uawuuMtTvclN3hY2eX7ifmQnjTpIecnAzSS6', 7, 1, 1634569406),
(116, 'Najwaa Sahiraa', '0112959017', '0112959017.jpg', '$2y$10$tHKbouXzUJWnvqWmjkDJl.ysINvV2/6WMFqcavXPHHdJuKQX3P5HG', 7, 1, 1634569406),
(117, 'Narova Icexel Mayla Putri', '0126124719', '0126124719.jpg', '$2y$10$oCtjU4apUR2TpmoxbH2ZXu6jyxKZ8/rfpymouN6Kd.Z9IaqZBNlUS', 7, 1, 1634569407),
(118, 'REZKY ENDHITA PRATAMA', '0123779890', '0123779890.jpg', '$2y$10$bUxMwX87bCDsDegHv8qHROcXonhSdRINqwL0hA7vh3U2508bXEUnu', 7, 1, 1634569407),
(119, 'Sabiq Al-Fathin Nizham', '3120302591', '3120302591.jpg', '$2y$10$4pQldFR20nPTJ/wkZ4bTeuhk4xqlkJwX6xS8sQvu/bHBcLA1TY6tq', 7, 1, 1634569407),
(120, 'Salman Fakhri', '0118918739', '0118918739.jpg', '$2y$10$J6jWiLsv/up9KQvEcW0qPefoPOyXaGHCdmAAFFvBaOiytt0SbF3TW', 7, 1, 1634569407),
(121, 'Sayla Risqina', '0127585691', '0127585691.jpg', '$2y$10$lnIzyPd0bP6ud2hgvFuaUeNXzrqIC1xvzT8OhR2g7leZ3fuCz0VAS', 7, 1, 1634569407),
(122, 'Thufail Amadheo', '0127172947', '0127172947.jpg', '$2y$10$b/NMbMK0KUCPoV8AS/lfdOdwRDcTvV4IcFXUxvEFcAI7xuuQRYaeu', 7, 1, 1634569407),
(123, 'Tsania Kumaira', '0121255825', '0121255825.jpg', '$2y$10$s6lWELghrBT4Jhm97dMeT.H3URMbaU4mYOQFFKQ8cqgUqB/x1l0Rm', 7, 1, 1634569407),
(124, 'Zen', '0096444648', '0096444648.jpg', '$2y$10$uOb4lG60dIjkB3EbrYmFwePdrZj9jjh46vzzQY1Z9ZxockweWKTvK', 7, 1, 1634569407),
(125, 'ANGELINA WILDA MAGHFIROH', '0107759007', '0107759007.jpg', '$2y$10$S/DjLNr5jXT5rcuTPvCDne.PqKJbXRgj/2lmKv4rHXn0FV9zmboza', 7, 1, 1634569407),
(126, 'Citra Lestari', '0099990018', '0099990018.jpg', '$2y$10$fxKJVGl5dOWrxQP7aTI2Uu2WrqKgV4F7a6ltfCvYkXYNz6o/s.RMe', 7, 1, 1634569407),
(127, 'Diny Tsabita Imania', '0097463421', '0097463421.jpg', '$2y$10$OUm9RHlxOp270yf5HFbhLOBT9t0XjWhk7BG51U48CQmX0XwmgS56a', 7, 1, 1634569407),
(128, 'Kevindra Ahmad', '0102301326', '0102301326.jpg', '$2y$10$ga6DgGm.1S0dq5NdUzHJmeUHegYQW/ofaRuG4m3/YJ1RiWKH2NtDm', 7, 1, 1634569407),
(129, 'KEYLA OCTAVIA SABRINA', '0116084981', '0116084981.jpg', '$2y$10$r6erNGlDMt7.Hu9oHAFMWOARp/5wakX57pkO1SBDKosrdK9aaO8la', 7, 1, 1634569407),
(130, 'M. ABDI WIJAYA', '0101087751', '0101087751.jpg', '$2y$10$TaLfj0d5YeJKAoggLblGXecNFoMYbAMvX7L0BqavybVjnKa4/5gSO', 7, 1, 1634569407),
(131, 'M. ALIF HAIDAR AMRU', '0118956499', '0118956499.jpg', '$2y$10$V0qXDEsZk2tWTPsHHiqIjeHZCTSbaifNxiCUib66X6mMF2Tmwwizi', 7, 1, 1634569407),
(132, 'M. HANEY ROBBANI', '0119822308', '0119822308.jpg', '$2y$10$krSUeM3meTvp0pe6PIPC0ulwDdaBLn95FMbGgjPdaLALDPf81vkRu', 7, 1, 1634569408),
(133, 'M. SINATRYA NUR AFRIZKY', '0117156459', '0117156459.jpg', '$2y$10$mOrQs1zAQyuBVLVuEMmZXePDdsKAwk0iGsZxES97PLrfn8OF1iZzi', 7, 1, 1634569408),
(134, 'M. ZAID AN NAFI', '0117372420', '0117372420.jpg', '$2y$10$.aWxSEgYl1SLw3BtSA66Q.LZu9tYkgYMhBQR5Q.P5QGyiscWOvEjC', 7, 1, 1634569408),
(135, 'MILA HANISAH', '0118238654', '0118238654.jpg', '$2y$10$t8l.O7KsXHMbd4VHVKBwcOdmTpZx4XzyYIABIi9k4s24I9XUHRWpy', 7, 1, 1634569408),
(136, 'MUHAMMAD AKMA DEVIN KEYSA MAULANA', '0113431081', '0113431081.jpg', '$2y$10$aeM8LAtTwBT5ihY1rK16feFJE7iT/9WsXvNpyVNmE6vDbOG3A.eMq', 7, 1, 1634569408),
(137, 'MUHAMMAD ARGA RAMANSYAH', '0115250891', '0115250891.jpg', '$2y$10$/hGX2nJunTUzpwkZ8wdEE.fysjVlMo8TltfEAqRN3Cl4zlbcAQF7O', 7, 1, 1634569408),
(138, 'MUHAMMAD AUFA AHDAN', '0112983901', '0112983901.jpg', '$2y$10$kmYPqRSMYXzG6C6ZBNpViux2Wpprc.E6pLYs4GW2d8/pns8odfPQK', 7, 1, 1634569408),
(139, 'MUHAMMAD DEVA MAULANA', '0108843304', '0108843304.jpg', '$2y$10$spYiAFrFEXzb9ikzEimJhefXHkfe3gBfOFgkMNrWwY93mevbUE8p2', 7, 1, 1634569408),
(140, 'MUHAMMAD FARHAN', '0113447062', '0113447062.jpg', '$2y$10$nK2ufKpvFz5x31mp7cWAQuuiJogvT4mgB/QFNzOhuYXaQIt57MjIy', 7, 1, 1634569408),
(141, 'MUHAMMAD ZIYAN ATH\'HAR AHSAN', '0117380752', '0117380752.jpg', '$2y$10$Tsxjr5gT/O2Rh6P2tHXTfeZpOJBLyd7nzhV/KElvP0IVS9vImvLne', 7, 1, 1634569408),
(142, 'SAFIRA HIMMATUL ULYA', '0119780011', '0119780011.jpg', '$2y$10$wf8aYlw.uNuLUwiXk275be15LqKcqWHlFp.06t9GCTx9EFpDbia0W', 7, 1, 1634569408),
(143, 'SYARIFA HIDAYATI SALSABILA', '0119566555', '0119566555.jpg', '$2y$10$PBntVRhz/MBzfNWHXTNAXesDUk6grW/RAmA9hVKG6pX6H31wXTuui', 7, 1, 1634569408),
(144, 'VINO ALDYANSYAH', '0103240440', '0103240440.jpg', '$2y$10$mnlPhFpZbbbR4LXR16WW3OyutNuO3dHZwfjzprSrRg4TMCXBF.LrK', 7, 1, 1634569408),
(145, 'YUANITA PUTRI HANDAYANI', '0111789864', '0111789864.jpg', '$2y$10$w/4RKCi9kM/n6SZUFTMQ8.3NbAIxrbnT/fC3P.ltgY7ip0m5L56Vu', 7, 1, 1634569408),
(146, 'ZAAHIRAH SALSABILA', '0113698917', '0113698917.jpg', '$2y$10$HERwoyCVwWDlYdFtSiwvOeqf4znlbL8aVXcuHqAB81TJkRStkXVGy', 7, 1, 1634569408),
(147, 'Ahmad Rafi Santoso', '0109432685', '0109432685.jpg', '$2y$10$MpyU3GCiD8eCBMm6OfGTP.yYBwwwi2yLFnd6AZz1G3i7oMgaXxOim', 7, 1, 1634569409),
(148, 'Amanda Sheilvy Ramadhanni', '0106171174', '0106171174.jpg', '$2y$10$H24iG6JwErdJWrAmiNk1xOT7niF7jHRaxrfhD5Ote1N8jvG9MX/gm', 7, 1, 1634569409),
(149, 'Amrina Rosada', '0106266556', '0106266556.jpg', '$2y$10$RPm6BEgECwsle76Pk.As3uYw6oqZ90WySl5bbsDL0iS7KBWFO3bey', 7, 1, 1634569409),
(150, 'Bayu Novanda Maretha', '0102495659', '0102495659.jpg', '$2y$10$G2TpculBkSnJ8lsakYAffebBdknf3SqBZzwwa2CSsSqy8tWFI6A0u', 7, 1, 1634569409),
(151, 'Jisa Nursidiq', '0104363796', '0104363796.jpg', '$2y$10$pbDw6OlsFypOrwglE1hHceNvqRukEpITJJbu1O3Ox4aage4sgHeSa', 7, 1, 1634569409),
(152, 'M. Banyu Pratama Putra', '0102478207', '0102478207.jpg', '$2y$10$XWx6Dsg.azDWTRelrKZRP.gGtjBrOPN7B6SMb9wd/wJ5gl6Pncgi6', 7, 1, 1634569409),
(153, 'M. Rizqi Assafa\'', '0103840521', '0103840521.jpg', '$2y$10$/dVGG1UO5QR4OmrKWTq4u.vSNYwn9y4.nzZmK03SlTbzrTW3Qc4ZO', 7, 1, 1634569409),
(154, 'M. USMAN DZINURAIN', '0108681319', '0108681319.jpg', '$2y$10$XpUJKsAXiKUOAWKVY4M2t.WVuPduI.C1fvqGSqukgpVHZPsDXXbh2', 7, 1, 1634569409),
(155, 'Mochamad Firdaus Abadan', '0102514667', '0102514667.jpg', '$2y$10$ag7uOmOxouswekM3tAMEheTtWCDc92zbLutsOxVDhOoVdUz7pYZe2', 7, 1, 1634569409),
(156, 'Muhamad Haikal Pratama', '0103803337', '0103803337.jpg', '$2y$10$lvUWTCNxD37LVOE7kDu6oOfL3Op8b8fFXT3FQ5bCH/SmCBD/tOw1m', 7, 1, 1634569409),
(157, 'Muhammad Pasha Natharshah', '0102671107', '0102671107.jpg', '$2y$10$uuYrWnNv68YxOGjxTef35Ot7aaJI0E9ph9LrlE1M.PY.Id0BSEKcS', 7, 1, 1634569409),
(158, 'Nanda Zahra Ade Purwanti', '0103385610', '0103385610.jpg', '$2y$10$i3KRNk6ESaQCkb6VNZiuF.jFhkWqkVQVUG0UEePffkj1hPL8CyvmK', 7, 1, 1634569409),
(159, 'Nasywa Kamila Raya', '0109555928', '0109555928.jpg', '$2y$10$iRQFVziT/gfMicY8e./dmOq8q3KpCS54aZNvwvIMHLMr9IFYp4Hku', 7, 1, 1634569409),
(160, 'Rava Fahri Sya\'bana', '0107370264', '0107370264.jpg', '$2y$10$1lPTnWpV/chy/OUjQ1fOA.cnusuXDLZKwN7Mnyq6XzVO0ergSt2yq', 7, 1, 1634569409),
(161, 'Salila Lilyatul Nada', '0107527217', '0107527217.jpg', '$2y$10$5sdZrUJEZuZO3EGRGmztd.dblx/YH1k.YchIBnHo1evvKV9KaMf1O', 7, 1, 1634569409),
(162, 'Saskia Tabina Azura', '0109198606', '0109198606.jpg', '$2y$10$WBHs6atST2VTF0.7aDhdJOQdEo9A65mvaSL42ykqRViseVpAgNRQ6', 7, 1, 1634569410),
(163, 'Syakira Nur Rizqia', '0109330232', '0109330232.jpg', '$2y$10$Htkblg4WIC2Uc4jrno6WcuUNTQgU1L9sTAUfC1EntBJyw0/N7UuyW', 7, 1, 1634569410),
(164, 'Vania Azaria', '0109713995', '0109713995.jpg', '$2y$10$F9kQ9SdWG3n/SHWi5oNjBu61Kl9hriBiGC3Sgattq3NWs.l4LwV9m', 7, 1, 1634569410),
(165, 'Zulfaa Azifa Lillah', '0096954379', '0096954379.jpg', '$2y$10$tHUxAiBm.sS8qSnjJIahNuxjiloX9k6byAUY.A3jzuV.ksqFuqR9q', 7, 1, 1634569410),
(166, 'Asfa Aneira Terrin', '0098586605', '0098586605.jpg', '$2y$10$GHOYyssnWwc0w1nqbaZX/.SYkkwbfNSzpNnX1EziL0/yYkSp4At6G', 7, 1, 1634569410),
(167, 'Athi Rizqiyani Machbubah', '0093400905', '0093400905.jpg', '$2y$10$pq7do/XPq5c2mBW3utRJWuu8H35l2O1otQuxclracVJzrP69.6FR.', 7, 1, 1634569410),
(168, 'Bagas Eko Setiatmaja', '0103696531', '0103696531.jpg', '$2y$10$2EdCx.PQbsXYQZQkE0hlCOz.RTn8hSxmSIkL4LyK/aFnUpAM78pAa', 7, 1, 1634569410),
(169, 'Carissa Aqila Azzahra', '0103112201', '0103112201.jpg', '$2y$10$ON7yemDYcv0ZjD4z0nD/2uUBJKRwaHf/9qXOczpySeJaGfKVsVeV2', 7, 1, 1634569410),
(170, 'Ferizka Aurellia Dienisya', '0101387328', '0101387328.jpg', '$2y$10$xkOMYAPJVWMhcLoS4fr0puQ7eOUcD/jIrjrW.oPfDDgTa0YeeZUY.', 7, 1, 1634569410),
(171, 'Kanaya Namira Aluna', '0094903148', '0094903148.jpg', '$2y$10$bxopEwqiyWx3WVVWhbMtbu821/.dBgTfxLI8Qgzyhb5IWuWINiobe', 7, 1, 1634569410),
(172, 'Karina Lintang Adlina', '0106038410', '0106038410.jpg', '$2y$10$qO0XHDbrooSiVr3pTbzje.Li.DZGwAtycm38lB8DINxIkBXU4CWky', 7, 1, 1634569410),
(173, 'M. Fathurohman Hidayat', '0104690275', '0104690275.jpg', '$2y$10$kHrgQJcuI5wBn1BzpYVP/.Q4EwGAWmc8xf9sjwZswHcm/9bvKjSpe', 7, 1, 1634569410),
(174, 'M. Sony Farhan Fakhrial', '0101660121', '0101660121.jpg', '$2y$10$RWM7Jezwvc5HgHD1Lj1zfeYgoUq/SX2v5LXqt/LDyDHADidJRMetq', 7, 1, 1634569410),
(175, 'Muchammad Najhan Ali Al Khaeroni', '0102223517', '0102223517.jpg', '$2y$10$BWhyXssZzNfxlx7WiIy2D.iSNLCSKhokvjQYwnaTE.R4cQxRSV286', 7, 1, 1634569410),
(176, 'Muhammad Naufal Arkaan', '0106706598', '0106706598.jpg', '$2y$10$aer8OLptnYM.nHLML0V7NeK8.23XQSZxO.4kCPmMJTdwBrR8bWUQm', 7, 1, 1634569410),
(177, 'Muhammad Rhafif Akbar Kurniawan', '0091128499', '0091128499.jpg', '$2y$10$ybWW1rYhB1kHqRkl3BUoAOeoUR4Z7rnjnTazpeHZNAN5qUmlt.A9K', 7, 1, 1634569411),
(178, 'Muhammad Zaki', '0105060617', '0105060617.jpg', '$2y$10$DK/ixm2ndo7s43dNAhr7y.pRfcz34wZQfjA562qPB8QYD4Uyd3j5y', 7, 1, 1634569411),
(179, 'Naela Rahmadhani', '0106801368', '0106801368.jpg', '$2y$10$QAz4sIRdnnZ3Q3tvDZoha.Kxri0AqOIDzVxVT9I5jCcBUCcORLUNW', 7, 1, 1634569411),
(180, 'Nafi\' Rif\'an', '0105551607', '0105551607.jpg', '$2y$10$UdE2C5g8M7qVt2Ou8bRaDesCWWhO0Ly294C2u.feNoE8QgeomtEWi', 7, 1, 1634569411),
(181, 'Qayla Isaura Ferdinand', '0096521644', '0096521644.jpg', '$2y$10$jHMX5QzVL/5FcKutMYSOQOXiNkB5HvxI52a2j8exsMQ03sbLFc782', 7, 1, 1634569411),
(182, 'Raikhanun Naura Rizqi', '0099296185', '0099296185.jpg', '$2y$10$iM.aaV2B0rilpbqJGRwDJuuYb06XYOEYDLXXEdOIHKlILQK483pFa', 7, 1, 1634569411),
(183, 'Safira Tul Aira', '0091628064', '0091628064.jpg', '$2y$10$gKUGgLnOXK6pf4oVs2OHi.GsfYAXAA52jlS8trB735XKvuT3sB2bW', 7, 1, 1634569411),
(184, 'Shela Arifa Rahmatika', '0109629629', '0109629629.jpg', '$2y$10$VRevdhegXrDQdHasewLeDO.WnJ1CDuDwN3TM/9a/8R6H.OdnMRL9W', 7, 1, 1634569411),
(185, 'Talfita Amalia', '0093558858', '0093558858.jpg', '$2y$10$9SL8SOlzdHjoD/wjqeC4peOfw2J.iYV/CRRZMnn8wey4jnYOQJYDK', 7, 1, 1634569411);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 99),
(7, 1, 3),
(8, 1, 99),
(10, 7, 99),
(12, 3, 99),
(13, 3, 5),
(15, 4, 8),
(16, 4, 99),
(17, 4, 5),
(20, 2, 6),
(21, 2, 9),
(23, 4, 102);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(3, 'Menu'),
(5, 'Akademik'),
(6, 'Website'),
(8, 'TU'),
(9, 'My_blog'),
(99, 'User'),
(102, 'Laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Admin'),
(3, 'Guru'),
(4, 'TU'),
(7, 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 99, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 99, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 5, 'Tenaga Pendidik', 'akademik/tendik', 'fas fa-fw fa-user-graduate', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 7, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 5, 'Peserta Didik', 'akademik/psd', 'fas fa-fw fa-users', 1),
(10, 5, 'Mata Pelajaran', 'akademik/mapel', 'fas fa-fw fa-book', 1),
(11, 9, 'Blog Pos', 'my_blog', 'fab fa-fw fa-blogger', 1),
(12, 9, 'Blog Category', 'my_blog/category', 'fas fa-fw fa-tags', 1),
(13, 1, 'Daftar User', 'admin/users', 'fas fa-fw fa-users', 1),
(14, 8, 'Pemasukan', 'tu/pemasukan', 'fas fa-fw fa-file-import', 1),
(15, 8, 'Pengeluaran', 'tu/pengeluaran', 'fas fa-fw fa-file-export', 1),
(16, 8, 'Saldo Rekening', 'tu/saldo', 'fas fa-fw fa-file-invoice-dollar', 1),
(17, 5, 'Input Nilai', 'akademik/penilaian', 'fas fa-fw fa-award', 1),
(18, 102, 'SPP', 'laporan/spp', 'fas fa-fw  fa-money-bill-alt', 1),
(19, 102, 'Nilai Siswa', 'laporan/nilai_all', 'fas fa-fw fa-graduation-cap', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(9, 'jumhan@gmail.com', 'onWGv0pAqtlkHOUpcNz715S8QPzdf3rVzIVYD4Jqs5k=', 1633830842),
(10, 'riski@gmail.com', 'OoYvBRKv/OHwnMANIlvWiPEHFaC5r3ppN6fWHfA+aLA=', 1634367874);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vnilai_all`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vnilai_all` (
`mapel_id` int(11)
,`mapel` varchar(120)
,`nama` varchar(128)
,`01` double
,`02` double
,`03` double
,`04` double
,`05` double
,`06` double
,`07` double
,`08` double
,`09` double
,`10` double
,`11` double
,`12` double
,`13` double
,`ta_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vspp_2021_2022`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vspp_2021_2022` (
`nisn` varchar(10)
,`nama` varchar(128)
,`JAN` decimal(32,0)
,`FEB` decimal(32,0)
,`MAR` decimal(32,0)
,`APR` decimal(32,0)
,`MEI` decimal(32,0)
,`JUN` decimal(32,0)
,`JUL` decimal(32,0)
,`AGT` decimal(32,0)
,`SEP` decimal(32,0)
,`OKT` decimal(32,0)
,`NOV` decimal(32,0)
,`DES` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_jumbotron`
--

CREATE TABLE `web_jumbotron` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `subtittle` varchar(255) NOT NULL,
  `link_video` text NOT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur untuk view `vnilai_all`
--
DROP TABLE IF EXISTS `vnilai_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vnilai_all`  AS  select `a`.`id` AS `mapel_id`,concat(concat(`a`.`nama`,' Kelas'),' ',substr(`d`.`nama`,8)) AS `mapel`,`c`.`nama` AS `nama`,case `b`.`jenis` when '1' then `b`.`nilai` else 0 end AS `01`,case `b`.`jenis` when '2' then `b`.`nilai` else 0 end AS `02`,case `b`.`jenis` when '3' then `b`.`nilai` else 0 end AS `03`,case `b`.`jenis` when '4' then `b`.`nilai` else 0 end AS `04`,case `b`.`jenis` when '5' then `b`.`nilai` else 0 end AS `05`,case `b`.`jenis` when '6' then `b`.`nilai` else 0 end AS `06`,case `b`.`jenis` when '7' then `b`.`nilai` else 0 end AS `07`,case `b`.`jenis` when '8' then `b`.`nilai` else 0 end AS `08`,case `b`.`jenis` when '9' then `b`.`nilai` else 0 end AS `09`,case `b`.`jenis` when '10' then `b`.`nilai` else 0 end AS `10`,case `b`.`jenis` when '11' then `b`.`nilai` else 0 end AS `11`,case `b`.`jenis` when '12' then `b`.`nilai` else 0 end AS `12`,case `b`.`jenis` when '13' then `b`.`nilai` else 0 end AS `13`,`a`.`ta_id` AS `ta_id` from (((`master_mapel` `a` left join `trx_penilaian` `b` on(`a`.`id` = `b`.`mapel_id`)) left join `master_siswa` `c` on(`b`.`siswa_id` = `c`.`no_register`)) left join `master_rombel` `d` on(`a`.`rombel_id` = `d`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vspp_2021_2022`
--
DROP TABLE IF EXISTS `vspp_2021_2022`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vspp_2021_2022`  AS  select `a`.`nisn` AS `nisn`,`a`.`nama` AS `nama`,ifnull(`b`.`iuran`,0) AS `JAN`,ifnull(`c`.`iuran`,0) AS `FEB`,ifnull(`d`.`iuran`,0) AS `MAR`,ifnull(`e`.`iuran`,0) AS `APR`,ifnull(`f`.`iuran`,0) AS `MEI`,ifnull(`g`.`iuran`,0) AS `JUN`,ifnull(`h`.`iuran`,0) AS `JUL`,ifnull(`i`.`iuran`,0) AS `AGT`,ifnull(`j`.`iuran`,0) AS `SEP`,ifnull(`k`.`iuran`,0) AS `OKT`,ifnull(`l`.`iuran`,0) AS `NOV`,ifnull(`m`.`iuran`,0) AS `DES` from ((((((((((((`master_siswa` `a` left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 1 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `b` on(`a`.`nisn` = `b`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 2 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `c` on(`a`.`nisn` = `c`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 3 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `d` on(`a`.`nisn` = `d`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 4 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `e` on(`a`.`nisn` = `e`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 5 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `f` on(`a`.`nisn` = `f`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 6 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `g` on(`a`.`nisn` = `g`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 7 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `h` on(`a`.`nisn` = `h`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 8 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `i` on(`a`.`nisn` = `i`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 9 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `j` on(`a`.`nisn` = `j`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 10 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `k` on(`a`.`nisn` = `k`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 11 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `l` on(`a`.`nisn` = `l`.`coa`)) left join (select sum(`z`.`kredit`) AS `iuran`,month(`z`.`tanggal`) AS `bulan`,`z`.`coa` AS `coa` from `trx_jurnal` `z` where month(`z`.`tanggal`) = 12 and `z`.`ta_id` = 1 group by month(`z`.`tanggal`),`z`.`coa`) `m` on(`a`.`nisn` = `m`.`coa`)) order by `a`.`nama` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `master_guru_tendik`
--
ALTER TABLE `master_guru_tendik`
  ADD PRIMARY KEY (`nuptk`);

--
-- Indeks untuk tabel `master_kelompok_mapel`
--
ALTER TABLE `master_kelompok_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_mapel`
--
ALTER TABLE `master_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_penilaian`
--
ALTER TABLE `master_penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_rombel`
--
ALTER TABLE `master_rombel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_siswa`
--
ALTER TABLE `master_siswa`
  ADD PRIMARY KEY (`no_register`);

--
-- Indeks untuk tabel `my_blog`
--
ALTER TABLE `my_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `my_category`
--
ALTER TABLE `my_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trx_jurnal`
--
ALTER TABLE `trx_jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trx_penilaian`
--
ALTER TABLE `trx_penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_jumbotron`
--
ALTER TABLE `web_jumbotron`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `master_siswa`
--
ALTER TABLE `master_siswa`
  MODIFY `no_register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `my_blog`
--
ALTER TABLE `my_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `my_category`
--
ALTER TABLE `my_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `trx_jurnal`
--
ALTER TABLE `trx_jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `trx_penilaian`
--
ALTER TABLE `trx_penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `toko-online3`
--
CREATE DATABASE IF NOT EXISTS `toko-online3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko-online3`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
(1, 'admin', '$2y$10$hvV.yJLF7YH3v6lMPCSCWerywpwkwYTPnXgS5wQEL1B9z/BMDrpqq', 'i9BjkXpzH08tMZY1FeHFqozayn8jUU5xvAmY9vToEMg732XuhDtklfLhb7K5GdyJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `img`, `url`) VALUES
(9, '1587361271745.png', '#'),
(10, '1587361440299.png', '#'),
(12, '1587373573352.png', 'https://www.tokopedia.com/discovery');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
(2, 'Komputer', '1586455713976.png', 'komputer'),
(3, 'Laptop', '1586456102899.png', 'laptop'),
(4, 'Gadget', '1586457219046.png', 'gadget'),
(6, 'Pakaian Pria', '1586527494296.png', 'pakaian-pria'),
(7, 'Pakaian Wanita', '1586527510434.png', 'pakaian-wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cod`
--

CREATE TABLE `cod` (
  `id` int(11) NOT NULL,
  `regency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cod`
--

INSERT INTO `cod` (`id`, `regency_id`) VALUES
(8, 103);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost_delivery`
--

CREATE TABLE `cost_delivery` (
  `id` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cost_delivery`
--

INSERT INTO `cost_delivery` (`id`, `destination`, `price`) VALUES
(1, 177, 40000),
(2, 105, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_send`
--

CREATE TABLE `email_send` (
  `id` int(11) NOT NULL,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `email_send`
--

INSERT INTO `email_send` (`id`, `mail_to`, `subject`, `message`) VALUES
(11, 19, 'tes', '<p>tes</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `footer`
--

INSERT INTO `footer` (`id`, `page`, `type`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `app_name` varchar(50) NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `navbar_color` varchar(10) NOT NULL,
  `api_rajaongkir` varchar(70) NOT NULL,
  `account_gmail` varchar(50) NOT NULL,
  `pass_gmail` varchar(50) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `whatsappv2` varchar(20) NOT NULL,
  `email_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `general`
--

INSERT INTO `general` (`id`, `app_name`, `slogan`, `navbar_color`, `api_rajaongkir`, `account_gmail`, `pass_gmail`, `whatsapp`, `whatsappv2`, `email_contact`) VALUES
(1, 'Buntomart', 'Toko Online Mudah dan Terpercaya', '#12283F', '777505ec76282c930cff3468e2b75830', 'dianrosanti926@gmail.com', 'pekalongan06111410', '085740074567', '6285740074567', 'aveiro.seven88@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `img_product`
--

INSERT INTO `img_product` (`id`, `id_product`, `img`) VALUES
(1, 22, '1589840767903.jpg'),
(2, 22, '1589840786550.jpg'),
(5, 22, '1589840836102.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `province` int(11) NOT NULL,
  `regency` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address` text NOT NULL,
  `courier` varchar(5) NOT NULL,
  `courier_service` varchar(70) NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_limit` datetime NOT NULL,
  `process` int(11) NOT NULL,
  `send` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_code`, `label`, `name`, `email`, `telp`, `province`, `regency`, `district`, `village`, `zipcode`, `address`, `courier`, `courier_service`, `ongkir`, `total_price`, `total_all`, `date_input`, `date_limit`, `process`, `send`) VALUES
(133, '578475', 'true', 'feqf', '', '1234', 3, 403, 'fef', 'fe', 1234, 'fefe', 'jne', 'OKE', '11000', 1260000, 1271000, '2020-08-20 10:52:58', '2020-08-22 10:52:58', 0, 0),
(134, '666205', 'true', 'koe tak sayang sayang', '', '1234567', 10, 105, 'wfwqfw', 'feqwff', 1234, 'fwfewff', 'antar', 'antar', '10000', 3500000, 3510000, '2020-08-20 10:54:26', '2020-08-22 10:54:26', 1, 1),
(135, '763206', 'true', 'paijo', '', '12345678', 5, 135, 'wedfer', 'dfewfw', 12434, 'fefweffe', 'jne', 'OKE', '13000', 100000, 113000, '2020-08-20 10:56:03', '2020-08-22 10:56:03', 1, 1),
(136, '880590', 'true', 'aokwokw', '', '123456789', 3, 331, 'fdwqfw', 'fdwqfwqfwf', 1234, 'dwqfqwfwqfq', 'jne', 'OKE', '16000', 1500000, 1516000, '2020-08-20 10:58:00', '2020-08-22 10:58:00', 0, 0),
(137, '488204', 'true', 'tes', '', '08787', 8, 97, 'gdfd', 'vsdvds', 51171, 'ssdvs', '', '', '10000', 7000000, 7010000, '2020-10-27 15:48:08', '2020-10-29 15:48:08', 0, 0),
(138, '857133', 'true', 'tesw', '', '5453', 5, 135, 'gdgd', 'dfvdfd', 5546, 'dfdf', '', '', '10000', 1500000, 1510000, '2020-10-27 15:54:17', '2020-10-29 15:54:17', 0, 0),
(139, '102199', 'true', 'tes', '', '085740074567', 10, 348, 'dcsdcl', 'knldcnsl', 51171, 'svsvsdv', '', '', '10000', 100000, 110000, '2020-10-27 15:58:22', '2020-10-29 15:58:22', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `banner` varchar(30) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner` varchar(30) NOT NULL,
  `slug` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `package`
--

INSERT INTO `package` (`id`, `title`, `banner`, `slug`) VALUES
(1, 'Yang Manis Buat Kamu', '1593897287494.jpg', 'yang-manis-buat-kamu'),
(2, 'Gowes Sehat!', '1593923480146.jpg', 'gowes-sehat'),
(4, 'Sushi of Your Own!', '1593925632474.jpg', 'sushi-of-your-own');

-- --------------------------------------------------------

--
-- Struktur dari tabel `package_product`
--

CREATE TABLE `package_product` (
  `id` int(11) NOT NULL,
  `package` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `package_product`
--

INSERT INTO `package_product` (`id`, `package`, `product`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 8),
(4, 1, 10),
(5, 1, 6),
(8, 1, 3),
(9, 2, 22),
(10, 2, 3),
(11, 2, 2),
(12, 2, 10),
(13, 2, 8),
(14, 2, 9),
(17, 4, 5),
(18, 4, 9),
(19, 4, 3),
(21, 4, 1),
(22, 4, 10),
(23, 4, 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
(1, 'Tentang Kami', '<p>Lakukan tugas Anda dengan senang hati dan gunakan humor Anda di waktu kerja terutama saat sulit dan tegang-tegang, itulah salah satu budaya (fun) kami.</p><p>Religious, Passionate, Tough, Knowledgeable, Fun &amp; Customer Service adalah budaya-budaya yang ada di Bhinneka.Com, dan kami sangat menjunjung tinggi budaya kami dengan cara memberikan yang terbaik bagi pelanggan, diri kita, keluarga, dan masyarakat.</p><h2>Visi dan Misi</h2><h3>Visi</h3><p>\"Menjadi sebuah perusahaan kelas dunia dengan semangat pemanfaatan informasi teknologi, dan menjadi kebanggaan bangsa.\"</p><h3>Misi</h3><p>\"Menjadi webstore nomor satu di Indonesia yang menyediakan kelengkapan dan kemudahan belanja, serta memperhatikan dan memberikan pengalaman belanja yang berkesan kepada pelanggan, melalui nilai-nilai delapan dimensi pengalaman.\"</p><h2>Sekapur Sirih</h2><p>Sejak awal Bhinneka.Com berdiri, kami bertekad membangun bisnis yang berdaya tahan panjang. Mengutamakan citra merk dengan pelayanan dan menjadikannya bagian dari budaya kerja. Fokus pada pelayanan berarti memberi nilai tambah dalam setiap layanan. Sebab itulah mengapa pelanggan kami menekan tombol\'beli\' dan tetap kembali lagi di kemudian hari.</p><p>Menengok sejenak ke belakang, kami bersyukur fokus pada pelayanan dan \'human touch\' dalam membangun Bhinneka.Com, yang dirumuskan dengan sebuah kalimat sederhana \'Pelayanan Dari Hati\'. Dan sekarang, kalimat ini telah menjadi esensi dalam setiap langkah yang kami lakukan, mudah dicerna tanpa perlu segala embel-embel dan frase-frase yang sulit untuk dipahami seluruh Bhinnekaners dalam melayani pelanggan kami.</p><p>Standar pelayanan kami pun semakin tinggi setiap tahun. Berinovasi dan menyajikan pengalamanan berbelanja yang berkesan, mulai dari produk yang lengkap, harga yang kompetitif, mudah dalam bertransaksi, jaminan purna jual, hingga kejutan-kejutan mengasyikkan untuk setiap pelanggan kami, yang menjadikan belanja di Bhinneka.Com semakin nyaman, baik online maupun offline.</p><p>Untuk teman-teman komunitas Bhinneka.Com yang bersama dengan kami sejak awal perkembangan internet dimulai di Indonesia, kami akan terus perhatikan dan senantiasa mengembangkan banyak fitur yang akan semakin asyik untuk saling bertemu, berbagi, berbincang, belajar, atau sekedar melakukan jual-beli produk. Offline store Bhinneka juga menjadi tempat untuk workshop, tempat berkumpul, dan ngobrol antar komunitas.</p><p>Akhirnya, saya sangat berbahagia Bhinneka.Com dapat berkontribusi untuk negeri ini dan membawa nilai lebih untuk masyarakat Indonesia. Kami akan selalu berusaha dan mendorong diri kami sendiri untuk menjadi salah satu perusahaan berbasis teknologi yang menjadi kebanggaan bangsa Indonesia.</p>', 'about'),
(2, 'Kontak Kami', '<p>Hubungi Tim Penjualan Kami</p><p><strong>Konsultan Penjualan</strong></p><p>Melayani kebutuhan Anda untuk seluruh kategori produk. Silakan hubungi 021-29292828 atau <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Korporasi &amp; Pemerintah.</strong></p><p>Melayani kebutuhan korporasi &amp; proyek. Silakan email kami ke <a href=\"mailto:corporate@bhinneka.com\">corporate@bhinneka.com</a>.</p><p><strong>Solusi Software &amp; Lisensi</strong></p><p>Melayani kebutuhan lisensi &amp; konsultasi software. Silakan email kami ke <a href=\"mailto:licensing@bhinneka.com\">licensing@bhinneka.com</a>.</p><p><strong>Solusi Percetakan &amp; Signage</strong></p><p>Melayani kebutuhan printer besar, signage, &amp; produk 3D. Silakan <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Kantor Pusat</strong><br>Jl. Gunung Sahari Raya 73C No. 5-6<br>Jakarta 10610, Indonesia</p><p>Hubungi Tim Pendukung Kami</p><p><strong>Layanan Klaim Garansi</strong></p><p>Untuk bantuan teknisi dan klaim garansi produk, silakan telepon ke (021) 2929-2828 atau <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Layanan Pengembalian Barang &amp; Refund</strong></p><p>Jika produk yang diterima salah/cacat/rusak &amp; ingin mengurus pengembalian dana, untuk laporan dan bantuan dapat menghubungi kami <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Layanan Pelanggan</strong></p><p>Silakan berikan feedback atas pelayanan yang kurang berkenan dari tim kami. Tuliskan masukan Anda <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Status Pengiriman</strong></p><p>Untuk bantuan tracking status pesanan &amp; status pengiriman, silakan telepon ke (021) 2929-2828 atau Anda dapat menghubungi kami <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Merchant Bhinneka Marketplace</strong></p><p>Ingin memulai jualan di Bhinneka? Anda bisa mendaftar menjadi merchant &amp; bertanya seputar Bhinneka Marketplace <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Tidak Dapat Menemukan Tim yang Anda Cari?</strong></p><p>Anda dapat menghubungi kami <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p>', 'contact'),
(3, 'Testimoni', '<p>redirect page</p>', 'testimoni'),
(4, 'Kebijakan Privasi', '<h2><strong>KEBIJAKAN PRIVASI SITUS DAN APLIKASI MATAHARI</strong></h2><p>MATAHARI memahami dan menghormati privasi Anda dan nilai hubungan kami dengan Anda. Kebijakan Privasi ini menjelaskan bagaimana Matahari mengumpulkan, mengatur dan melindungi informasi Anda ketika Anda mengunjungi dan/atau menggunakan situs atau aplikasi MATAHARI, bagaimana Matahari menggunakan informasi dan kepada siapa Matahari dapat berbagi. Kebijakan privasi ini juga memberitahu Anda bagaimana Anda dapat meminta Matahari untuk mengakses atau mengubah informasi Anda serta menjawab pertanyaan Anda sehubungan dengan Kebijakan Privasi ini.<br>Kata-kata yang dimulai dengan huruf besar dalam Kebijakan Privacy ini mempunyai pengertian yang sama dengan Syarat dan Ketentuan penggunaan situs dan aplikasi MATAHARI.</p><h2><strong>Informasi yang kami kumpulkan</strong></h2><p>Matahari dapat memperoleh dan mengumpulkan informasi dan/atau konten dari situs dan aplikasi yang Anda atau pengguna lain sambungkan atau disambungkan oleh situs atau aplikasi MATAHARI dengan situs atau pengguna tertentu dan informasi dan/atau konten yang Anda berikan melalui penggunaan situs atau aplikasi MATAHARI dan/atau pengisian Aplikasi.<br>Ketika Anda mengunjungi situs atau aplikasi MATAHARI, Matahari dapat mengumpulkan informasi apapun yang telah dipilih bisa terlihat oleh semua orang dan setiap informasi publik yang tersedia. Informasi ini dapat mencakup nama Anda, gambar profil, jenis kelamin, kota saat ini, hari lahir, email, jaringan, daftar teman, dan informasi-informasi Anda lainnya yang tersedia dalam jaringan. Selain itu, ketika Anda menggunakan aplikasi MATAHARI, atau berinteraksi dengan alat terkait, widget atau plug-in, Matahari dapat mengumpulkan informasi tertentu dengan cara otomatis, seperti cookies dan web beacon. Informasi yang Matahari kumpulkan dengan cara ini termasuk alamat IP, perangkat pengenal unik, karakteristik perambah, karakteristik perangkat, sistem operasi, preferensi bahasa, URL, informasi tentang tindakan yang dilakukan, tanggal dan waktu kegiatan. Melalui metode pengumpulan otomatis ini, Matahari mendapatkan informasi mengenai Anda. Matahari mungkin menghubungkan unsur-unsur tertentu atas data yang telah dikumpulkan melalui sarana otomatis, seperti informasi browser Anda, dengan informasi lain yang diperoleh tentang Anda, misalnya, apakah Anda telah membuka email yang dikirimkan kepada Anda. Matahari juga dapat menggunakan alat analisis pihak ketiga yang mengumpulkan informasi tentang lalu lintas pengunjung situs atau aplikasi MATAHARI. Browser Anda mungkin memberitahu Anda ketika Anda menerima cookie jenis tertentu atau cara untuk membatasi atau menonaktifkan beberapa jenis cookies. Harap dicatat, bahwa tanpa cookie Anda mungkin tidak dapat menggunakan semua fitur dari situs atau aplikasi MATAHARI.<br>Situs atau aplikasi MATAHARI mungkin berisi link ke tempat pihak lain yang dapat dioperasikan oleh pihak lain tersebut yang mungkin tidak memiliki kebijakan privasi yang sama dengan Matahari. Matahari sangat menyarankan Anda untuk membaca dan mempelajari kebijakan privasi dan ketentuan-ketentuan pihak lain tersebut sebelum masuk atau menggunakannya. Matahari tidak bertanggung jawab atas pengumpulan dan/atau penyebaran informasi pribadi Anda oleh pihak lain atau yang berkaitan dengan penggunaan media sosial seperti Facebook dan Twitter dan Matahari dibebaskan dari segala akibat yang timbul atas penyebaran dan/atau penyalahgunaan informasi tersebut.</p><h2><strong>BAGAIMANA MATAHARI MENGGUNAKAN INFORMASI</strong></h2><p>Matahari dapat menggunakan informasi Anda yang diperoleh untuk menyediakan produk dan layanan yang Anda minta, sebagai data riset atau berkomunikasi tentang dan/atau mengelola partisipasi Anda dalam survei atau undian atau kontes atau acara khusus lainnya yang diadakan oleh Matahari, pengoperasian Matahari, memberikan dukungan kepada Anda sebagai pengunjung dan/atau pengguna situs atau aplikasi MATAHARI, merespon dan berkomunikasi dengan Anda mengenai permintaan Anda, pertanyaan dan/atau komentar Anda, membiarkan Anda untuk meninggalkan komentar di situs atau aplikasi MATAHARI atau melalui media sosial lainnya, membangun dan mengelola Akun Anda, mengirimkan berita-berita dan/atau penawaran-penawaran yang berlaku bagi Anda selaku pengunjung dan penguna situs atau aplikasi MATAHARI, untuk mengoperasikan, mengevaluasi dan meningkatkan bisnis Matahari termasuk untuk mengembangkan produk dan layanan baru; untuk mengelola komunikasi Matahari, menentukan efektifitas layanan, pemasaran dan periklanan situs atau aplikasi MATAHARI, dan melakukan akutansi, audit, dan kegiatan Matahari lainnya, melakukan analisis data termasuk pasar dan pencarian konsumen, analisis trend, keuangan, dan informasi pribadi, melaksanakan kerjasama dengan mitra Matahari yang terkait dengan program-program yang diadakan oleh Matahari, melindungi, mengidentifikasi, dan mencegah penipuan dan kegiatan kriminal lainnya, klaim dan kewajiban lainnya, membantu mendiagnosa masalah teknis dan layanan, untuk memelihara, mengoperasikan, atau mengelola situs atau aplikasi MATAHARIyang dilakukan oleh Matahari atau pihak lain yang ditentukan oleh Matahari, mengidentifikasi pengguna situs atau aplikasi MATAHARI, serta mengumpulkan informasi demografis tentang pengguna situs atau aplikasi MATAHARI, untuk cara lain yang Matahari beritahukan pada saat pengumpulan informasi.<br>Matahari tidak akan menjual atau memberikan informasi pribadi Anda kepada pihak lain, kecuali seperti yang dijelaskan dalam kebijakan privasi ini. Matahari akan berbagi informasi dengan afiliasi Matahari atau pihak lain yang melakukan layanan berdasarkan petunjuk dari Matahari. Pihak lain tersebut tidak diizinkan untuk menggunakan atau mengungkapkan informasi tersebut kecuali diperlukan untuk melakukan layanan atas nama Matahari atau untuk mematuhi persyaratan hukum. Matahari juga dapat berbagi informasi dengan pihak lain yang merupakan mitra Matahari untuk menawarkan produk atau jasa yang mungkin menarik bagi Anda<br>Matahari dapat mengungkapkan informasi jika dianggap perlu dalam kebijakan tunggal Matahari, untuk mematuhi hukum yang berlaku, peraturan, proses hukum atau permintaan pemerintah, dan peraturan yang berlaku di Matahari. Selain itu, Matahari dapat mengungkapkan informasi ketika percaya, pengungkapan diperlukan atau wajib dilakukan untuk mencegah kerusakan fisik atau kerugian finansial atau hal lainnya sehubungan dengan dugaan atau terjadinya kegiatan ilegal. Matahari juga berhak untuk mengungkapkan dan/atau mengalihkan informasi yang dimiliki apabila sebagian atau seluruh bisnis atau aset Matahari dijual atau dialihkan.<br>Matahari dapat menyimpan dan/atau memusnahkan informasi tentang Anda sesuai kebijakan yang berlaku atau jika diperlukan.</p><h2><strong>UPDATE KEBIJAKAN PRIVASI INI</strong></h2><p>Kebijakan Privasi ini mungkin diperbarui secara berkala dan tanpa pemberitahuan sebelumnya kepada Anda untuk mencerminkan perubahan dalam praktik informasi pribadi. Matahari akan menampilkan pemberitahuan di bagian info profil website untuk memberitahu Anda tentang perubahan terhadap Kebijakan Privasi dan menunjukkan di bagian atas Kebijakan saat ketika Kebijakan Privasi ini terakhir diperbarui. Kebijakan Privasi ini merupakan satu kesatuan dan menjadi bagian yang tidak terpisahkan dari Syarat dan Ketentuan Penggunaan situs dan aplikasi MATAHARI.</p>', 'privacy-policy'),
(5, 'Syarat dan Ketentuan', '<h2><strong>SYARAT DAN KETENTUAN SITUS DAN APLIKASI MATAHARI</strong></h2><p>Selamat datang dan terima kasih telah mengunjungi situs/aplikasi MATAHARI. Silahkan membaca Syarat dan Ketentuan ini dengan seksama. Syarat dan Ketentuan ini mengatur akses, penelusuran, penggunaan, dan pembelian barang-barang yang ditawarkan atau dijual di www.MATAHARI.com kepada Anda. Dengan mengakses, menelusuri, dan menggunakan situs/aplikasi MATAHARI ini, berarti Anda telah membaca, mengerti, dan setuju untuk tunduk dan terikat pada Syarat dan Ketentuan ini, dan Anda juga setuju untuk tidak mempengaruhi, mengganggu, atau berusaha mempengaruhi atau mengganggu jalannya situs/aplikasi MATAHARI dengan cara apapun. Jika Anda tidak menyetujui salah satu, sebagian, atau seluruh isi Syarat dan Ketentuan ini, maka Anda tidak diperkenankan untuk mengakses, menelusuri atau menggunakan situs/aplikasi MATAHARI ini. Akses, penelusuran, dan penggunaan situs/aplikasi MATAHARI ini hanya untuk penggunaan pribadi Anda. Anda tidak diperkenankan untuk mendistribusikan, memodifikasi, menjual, atau mengirimkan apapun yang Anda akses dari situs/aplikasi MATAHARI ini, termasuk tetapi tidak terbatas pada teks, gambar, audio, dan video untuk keperluan bisnis, komersial, publik atau kepeluan non-personal lainnya.<br>Penggunaan konten situs/aplikasi MATAHARI, logo MATAHARI, merek layanan dan/atau merek dagang yang tidak sah dapat melanggar undang-undang hak kekayaan intelektual, hak cipta, merek, privasi, publisitas, hukum perdata dan pidana tertentu. Syarat dan Ketentuan ini termasuk hak kekayaan intelektual milik MATAHARI yang dilindungi hak cipta. Setiap penggunaan Syarat dan Ketentuan ini oleh pihak manapun, baik sebagian maupun seluruhnya, tidak diizinkan. Pelanggaran atas hak atas kekayaan intelektual MATAHARI ini dapat dikenakan tindakan atau sanksi berdasarkan ketentuan hukum yang berlaku.<br>Anda perlu mengunjungi halaman ini secara berkala untuk mengetahui setiap perubahan Syarat dan Ketentuan ini.</p>', 'terms'),
(6, 'Cara Berbelanja', '<p>Anda bisa mengklik “Blanja sekarang” di blanja.com untuk membeli produk, atau Anda bisa menambahkan produk ke Favorit dahulu lalu menempatkan pesanan.</p><p><strong>1. Blanja sekarang</strong></p><p>1.1 Jika Anda ingin membeli produk langsung ketika Anda melihatnya di Product Detail Page (gambar di bawah), Anda bisa mengklik “Blanja sekarang” setelah Anda memilih atribut, jumlah, dll. dari produk tersebut.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_001.jpg\" alt=\"register_1\"></figure><p>1.2 Setelah Anda mengkonfirmasi alamat pengiriman, informasi pesanan dan informasi lainnya, klik “Selanjutnya”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_002.jpg\" alt=\"register_1\"></figure><p>1.3 Anda bisa masuk ke “My blanja”-“Pesanan Saya” dan melihat pesanan yang telah ditempatkan. Jika Anda sudah mengkonfirmasi jumlah dari pesanan tersebut, klik “Bayar”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_003.jpg\" alt=\"register_1\"></figure><p>1.4 Masuk ke halaman pembayaran dan bayarkan pesanan. Status pemesanan akan berubah menjadi “Telah dibayar”, yang artinya barang sedang menunggu dikirim oleh penjual.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_004.jpg\" alt=\"register_1\"></figure><p>1.5 Setelah penjual berhasil mengirimkan barang, status pemesanan akan berubah menjadi “Telah dikirim”. Ketika anda menerima barang dan mengkonfirmasi, mohon klik “Konfirmasi”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_005.jpg\" alt=\"register_1\"></figure><p>Anda harus memasukkan password Dompet Blanja sebelum mengklik “Konfirmasi”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_006.png\" alt=\"register_1\"></figure><p>1.6 Ketika status berubah ke \"Selesai\", maka berarti transaksi telah selesai</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_007.jpg\" alt=\"register_1\"></figure><p><strong>Checkout beberapa produk yang telah ditambahkan ke Troli blanja secara bersamaan</strong></p><p>Anda bisa menambahkan beberapa produk ke Troli blanja dan membelinya secara bersamaan, lalu menempatkan pesanan dan membayar sekali sekaligus. Prosesnya sama seperti proses “Blanja sekarang”.</p>', 'shopping-help'),
(7, 'Pengiriman Barang', '<ol><li>Pengiriman barang untuk setiap transaksi yang terjadi melalui Platform Bukalapak menggunakan layanan pengiriman barang yang disediakan Bukalapak atas kerjasama Bukalapak dengan pihak jasa ekspedisi pengiriman barang resmi.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk peraturan terkait dengan syarat dan ketentuan pengiriman barang sepenuhnya ditentukan oleh pihak jasa ekspedisi pengiriman barang dan sepenuhnya menjadi tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Bukalapak hanya berperan sebagai media perantara antara Pengguna dengan pihak jasa ekspedisi pengiriman barang.</li><li>Pengguna wajib memahami, menyetujui, serta mengikuti ketentuan-ketentuan pengiriman barang yang telah dibuat oleh pihak jasa ekspedisi pengiriman barang.</li><li>Pengiriman barang atas transaksi melalui sistem Bukalapak menggunakan jasa ekspedisi pengiriman barang dilakukan dengan tujuan agar barang dapat dipantau melalui sistem Bukalapak.</li><li>Pelapak (Penjual) wajib bertanggung jawab penuh atas barang yang dikirimnya.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk kerugian yang dapat timbul akibat kerusakan ataupun kehilangan pada barang, baik pada saat pengiriman barang tengah berlangsung maupun pada saat pengiriman barang telah selesai, adalah sepenuhnya tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Dalam hal diperlukan untuk dilakukan proses pengembalian barang, maka Pengguna, baik Pelapak (Penjual) maupun Pembeli, diwajibkan untuk melakukan pengiriman barang langsung ke masing-masing Pembeli maupun Pelapak (Penjual). Bukalapak tidak menerima pengembalian atau pengiriman barang atas transaksi yang dilakukan oleh Pengguna dalam kondisi apa pun.</li></ol>', 'pengiriman-barang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` int(11) NOT NULL,
  `viewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `stock`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`) VALUES
(1, 'OPPO A91 8/128GB Special Online Edition', 3699000, 17, 4, 1, 300, '1586699074281.jpg', 'Dimensions/Weight\r\nHeight: 160.2mm\r\nWidth: 73.3mm\r\nThickness: 7.9mm\r\nWeight: Approx. 172g\r\n\r\nBasic Parameters\r\nColor: Lightening Black, Unicorn White\r\nOperating System: ColorOS 6.1.2, based on Android 9\r\nCPU: Helio P70\r\nGPU: ARM Mali G72 MP3 900MHz\r\nBattery Capacity: 4000mAh (Standard Value)\r\nRAM:8GB\r\nStorage: 128GB\r\nVOOC Flash Charge: 3.0\r\n\r\nDisplay\r\nSize: 16.2cm(6.4\'\')\r\nTouchscreen: Multi-touch, Capacitive Screen\r\nResolution: 2400 by 1080 pixels at 408 ppi\r\nColors: 16 million colors\r\nScreen Ratio: 90.7%\r\nContrast: 1000000:1\r\nType: AMOLED\r\nBrightness: Typical Value 430nit\r\n\r\nCamera\r\nRear Sensor: 48MP & 8MP & 2MP & 2MP\r\nFront Sensor: 16MP\r\nFlash: LED Flash\r\nAperture :\r\nFront: f/2.0;\r\nRear: Main f/1.79, Wide Angle f/2.25, Portrait & Mono f/2.4\r\nSensor Size:\r\nMain 1/2.25\', 0.8um\r\nSecondary Wide Angle 1/4\', 1.12um 2M 1/5\', 1.75um\r\nPixel Size: 1/3.1\', 1.0um\r\nCamera Mode: Photo, video, professional mode, panorama, portrait, night scene, time-lapse photography, slow motion, etc.\r\nVideo: Rear Camera Defualt: 1080P@30fps; Front Camera Default: 720P@30fps\r\nConnectivity\r\n\r\nFrequencies:\r\n[Frequency 1]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: Bands 1/5/8\r\nFDD-LTE: Bands 1/3/5/8\r\nTD-LTE: Bands 38/40/41\r\n[Frequency 2]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: Bands 1/5/8\r\nFDD-LTE: Bands 1/3/5/7/8\r\nTD-LTE: Bands 38/40/41\r\n[Frequency 3]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: 850/900/1700/1900/2100MHz\r\nFDD-LTE: 700/800/850/900/1700/1800/1900/2100/2600MHz\r\nTD-LTE: 1900/2000/2300/2496-2690/2570-2620MHz\r\nSIM Card Type: Nano-SIM / Nano-USIM\r\nGPS: Built-in GPS; supports A-GPS, Beidou, Glonass\r\nBluetooth: 4.2\r\nWLAN Function: 2.4/5GHz 802.11 a/b/g/n/ac\r\nOTG: Supported\r\n\r\nIn the Box\r\nHandset *1    \r\nHeadset *1    \r\nUSB Cable *1    \r\nAdapter *1    \r\nSIM Card Pin *1    \r\nProtective Case *1    \r\nProtective Film, pre-applied *1\r\nQuick Guide *1    \r\nWarranty Card *1 ', '2020-04-12 20:43:52', 1, 'oppo-a91-8128gb-special-online-edition', 0, 3200000, 56),
(2, 'Black Shark 2 Pro 8GB/128GB Include Rookie Kit - Iceberg Grey', 7499000, 10, 4, 1, 450, '1586623271686.jpg', 'Processor & GPU\r\nQualcomm® Snapdragon™ 855+, 2.96GHz (Qualcomm® Snapdragon™ premium-tier processor)\r\nQualcomm® Adreno™ 640\r\n\r\nRAM & ROM\r\n8GB RAM 128GB ROM\r\n\r\nDimension\r\nHeight: 163.61mm\r\nDepth: 8.77mm (10.07mm at the thickest point)\r\nWidth: 75.01 mm\r\nWeight: 205g\r\n\r\nBattery & Charging\r\n4000mAh(typ)/3900mAh(min)\r\nNon-removable\r\nHandset supports QC4+, 27W/18W. Charger supports QC3.0 (Qualcomm® Quick Charge™ )\r\nStandard USB Type-C\r\n\r\nCamera & Video\r\nRear Cameras\r\nMain?48M 0.8µm (48MP 4in1 PDAF f1.75)\r\nAperture: f/1.75\r\n6p lens\r\nLED flash\r\nSecondary: 12M 1.0µm (12MP PDAF f2.2 ?1.0µm)\r\nAperture: f/2.2\r\n6p lens (2x optical zoom lens)\r\nSupport PDAF / low-light enhancement technology / HDR / portrait photography / panorama / AI camera / super night mode\r\nFront Camera, FF 20M 0.9µm 4in1 Aperture: f/2.0 5p lens\r\n\r\nDisplay\r\n6.39 inch AMOLED\r\n19.5:9 Full screen display\r\n430nit(typ) High brightness (10% lower brightness with DC Dimming)\r\nResolution:1080 × 2340, 403PPI, Contrast Ratio ?60000:1\r\nSupports DCI?P3 108.9%(typ)\r\n\r\nConnectivity\r\nDual nano SIM\r\nTD LTE?FDD LTE?TD?SCDMA?WCDMA?CDMA?GSM\r\nSupports wifi: 802.11a/b/g/n/ac; 2.4G&5.0G\r\nSupports 2*2 mimo, MU MIMO\r\nSupports WIFI Display, WFI Direct, WIFI hotspot\r\nSupports Bluetooth 5.0 wireless, supports aptX & aptX HD & aptX Adaptive & LDAC\r\n\r\nFingerprint & Recognization\r\nVirtual Keys: Recent, HOME, Back\r\nSupports full-screen operation; Supports intelligent dock & game Dock\r\nShark Key to enter Sharkspace\r\n\r\nSensors\r\nGravity sensor, Ambient light sensor, Proximity sensor, Gyroscope, Compass, fingerprint sensor, display touch sensitivity sensor\r\n\r\nKelengkapan dalam paket:\r\n1x Smartphone\r\n1x Rookie Kit (Gamepad Left + Holder 2.0 Left)\r\n1x Power Adapter\r\n1x USB Cable\r\n1x Transparent Protective Case\r\n1x Manual Book\r\n1x Warranty Card\r\n1x Black Shark Sticker\r\n1x SIM Tray Ejector\r\n1x Type-C to 3.5mm Audio Jack Adapter\r\n1x Free Perdana Smartfren', '2020-04-11 18:41:11', 1, 'black-shark-2-pro-8gb128gb-include-rookie-kit-iceberg-grey', 0, 7000000, 86),
(3, 'AMD Paket PC Desktop Gaming Rakitan || Terbatas', 4050000, 2, 2, 2, 12000, '1586699592182.jpg', 'Komputer rakitan\r\nDilengkapi dengan aplikasi game menarik\r\nHdd 500\r\nSSD 240GB\r\nRam 8GB DDR 4', '2020-04-12 15:53:12', 1, 'amd-paket-pc-desktop-gaming-rakitan-terbatas', 0, 3500000, 71),
(4, 'Laptop Termurah Terlaris Dell Latitude E6410 Core i5', 1950000, 10, 3, 2, 1000, '1586700041867.jpg', 'Ready Laptop Dell Latitude E6410\r\nLaptop ini sangat cocok untuk agan yang sedang mencari Laptop dengan Budget Minimal namun mendapatkan Laptop yang Maksimal\r\nTidak perlu diragukan lagi Laptop Dell ini mempunyai daya tahan Material Terbaik\r\n\r\nSpesifikasi :\r\n- Core i5 2.5GHz\r\n- Ram DDR3 4GB\r\n- Hdd 250GB\r\n- Layar 14” inchi\r\n- Webcam\r\n- DVD RW\r\n- Lan Port\r\n- Wifi\r\n- VGA Port\r\n- USB Port\r\n- Windows 7 Pro 64bit\r\n- Office 2013, Winrar, UltraISO, Dll\r\n--------------------\r\nGaransi 1 Bulan\r\n--------------------\r\nKelengkapan :\r\n- Laptop Dell Latitude E6410 Second 93% sd 95%\r\n- Baterai\r\n- Adaptor\r\n- Tas New Slempang\r\n--------------------\r\nHarga : Rp. 1.950.000\r\n--------------------\r\nKondisi :\r\n- Mesin OK 100% Siap Bekerja Keras\r\n- Body Laptop Overall 95% Second Mulus\r\n- Layar Jernih OK 100%\r\n- Keyboard OK 100%\r\n- Sound OK 100%\r\n- Webcam OK 100%\r\n- VGA OK 100%\r\n- USB OK 100%\r\n- LAN Card OK 100%\r\n- SD Card Reader OK 100%\r\nLulus QC khas betet89 100% Maknyus Istimiwir barangnya\r\n--------------------\r\nbetet89 Spesialis Laptop Second Built Up Original \r\nBergaransi, Jujur, dan Amanah sejak 2009\r\nReseller Welcome, harga pasti masuk', '2020-04-12 16:00:41', 1, 'laptop-termurah-terlaris-dell-latitude-e6410-core-i5', 0, 1500000, 63),
(5, 'KEMEJA CORDUROY “SIMUGI”', 153000, 210, 6, 1, 60, '1586700289565.jpg', 'Reggo memiliki dua jenis kemeja corduroy, dimana perbedaannya terdapat pada tekstur bahannya.\r\nDapat kalian pilih di pilihan varian warna ya.\r\nKarena terbagi dua kelompok, ada beberapa warna yang bertekstur halus dan warna lainnya memiliki tekstur standar corduroy.\r\n__________________\r\n\r\nStatus : Ready Stock\r\n\r\nKode Barang : SIMUGI\r\n\r\nTersedia Size : M, L dan XL\r\n\r\nDetail Size :\r\n\r\nM ( P 73cm x 53cm )\r\nL ( P 75cm x 56cm )\r\nXL ( 78cm x 60cm))\r\n\r\nBahan : Corduroy', '2020-04-12 16:04:49', 1, 'kemeja-corduroy-simugi', 0, 100000, 18),
(6, 'LAPTOP ASUS X541S X0632T N3000| RAM 4GB HDD 500GB|15.6\"|DVDRW|WINDOWS 10 ORIGINAL', 4300000, 12, 3, 1, 3000, '1586700419708.jpg', 'SPESIFIKASI : \r\nNotebook : Asus X541SA-X0632T \r\nProcessor : Intel®  Celeron® N3000 CPU  @ 1.04 GHz ( 2C,2T) \r\nRAM : 1X4096 MB DDR3 (4 GB PC3L 12800) ONBOARD \r\nHarddisk : 500 GB \r\nKamera : HD Web Camera \r\nVGA : Intel® UHD Graphics 600, Dedicated 128 MB, Shared 1993 MB, Up to 2121 MB \r\nBaterai : 3 Cell LI-ion 3350 mAh \r\nFitur : BT, WiFi, DVD Super Multi, Web Cam,Card Reader,1 Port USB 2.0 ,1 Port USB 3.0 ,1 Port USB 3.1 Type C,HDMI,Realtek PCIe FE Family Controller (RJ45) \r\nLayar : 15.6 HD SLIM (1366X768) \r\nWarna : Black \r\nOperation System (OS) : Windows 10 Home Single Language 64-Bit \r\nGaransi : 1 Tahun \r\n\r\n\r\n\r\nFITUR :\r\n- DVD Super Multi DL Drive ( DVDRW )\r\n- Card Reader 3 in 1\r\n- Bluetooth\r\n- HD Web Camera\r\n- 3 Cell LI-ion 19V 100-240-50-60 Hz\r\n- Webcam, Cardreader,1 port USB 3.0,1 port USB 2.0,1 port usb 3.1 type C, HDMI, Vga Out\r\n- Warna Hitam\r\n\r\n** BONUS :\r\nTas Laptop\r\n\r\n** KELENGKAPAN :\r\n- Unit + Dus Lengkap\r\n- Charger\r\n- Buku Manual\r\n- Buku Garansi', '2020-04-12 16:06:59', 1, 'laptop-asus-x541s-x0632t-n3000-ram-4gb-hdd-500gb156dvdrwwindows-10-original', 0, 4000000, 41),
(8, 'Baju Gamis Syari Wanita Dewasa Lebaran Kekinian Pakaian Jubah Arab Muslim Muslimah', 156000, 29, 7, 1, 650, '1586791476018.jpeg', 'Assalamualaikum\r\nDapatkan harga TERMURAH tanpa syarat apapun\r\nDetail Produk\r\nBahan Moscrepe mix renda import plus khimar\r\nUkuran : All size fit to L\r\nLd 100-102 cm\r\nPanjang 135-137 cm\r\nToleransi ukuran 1-2 cm\r\n\r\n*PENTING :\r\n-Pastikan alamat yang di tulis ketika checkout diisi dengan sangan LENGKAP guna menghindari kendala pengiriman oleh kurir (Sertakan patokan bila perlu)\r\n-Pastikan nomor HP yang diisi dalam alamat ketika checkout mudah dihubungi (Tlp. & Sms) / (Sertakan 2 Nomor Hp bila perlu)\r\n\r\n\r\nHarga murah kualitas bahan dijammin bagus\r\nStock Barang Aman Jadi Cocok Buat Kamu Yang Jadi RESELLER atau suka sebagai DROPSHIPER\r\nKecepatan pengiriman baik\r\n\r\n\r\nReseller and Dropshiper wlocome\r\nGambar untuk referensi\r\nTingkat kemiripan 85 - 90%', '2020-04-13 17:24:36', 1, 'baju-gamis-syari-wanita-dewasa-lebaran-kekinian-pakaian-jubah-arab-muslim-muslimah', 1, 10000, 38),
(9, 'Baju Batik Pria Lengan Panjang Kemeja Seragam Kantor Busana Muslim Cowok', 118000, 20, 6, 1, 408, '1586792245831.jpg', 'KEMEJA PAGAR BUNGA\r\nEXCLUSIVE DAN MEWAH\r\n\r\nBAHAN KATUN PRIMA\r\n\r\nLINGKAR DADA KEMEJA PANJANG DAN PENDEK\r\nM= 104cm\r\nL= 108cm\r\nXL= 112cm\r\nXXL= 120cm', '2020-04-13 17:37:25', 1, 'baju-batik-pria-lengan-panjang-kemeja-seragam-kantor-busana-muslim-cowok', 0, 0, 7),
(10, 'Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]', 1260000, 12, 4, 1, 430, '1586960622849.jpg', '<h2>Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]</h2><p>&nbsp;</p><h2>Merasakan Pengalaman Layar Full View 5.5 Inch</h2><p>Asus Zenfone Max M1 merupakan smartphone yang sengaja dirancang untuk memenuhi lifestyle&nbsp;pengguna. Dibuktikan dengan desain smartphone yang kelihatan apik berikut dengan tampilan full view display 5.5 inch. Bahkan dengan jenis layar yang sekarang Asus mengklaim nantinya Anda dapat menikmati peningkatan level gambar saat menikmati berbagai konten foto dan video. Apalagi layar HD Asus Max M1 kabarnya sudah menggunakan jenis kaca 2.5D beresolusi HD Plus. Selain itu, tersedianya Triple Slot yang mana nantinya Anda bisa menumpangi dua kartu SIM yang mendukung di jaringan 4G LTE. Ada lagi satu slot untuk MicroSD untuk penyimpanan hingga 256GB.&nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/JzH6nV4.jpg\" alt=\"\"></figure><h2>Video Unboxing Asus Zenfone Max M1 Indonesia</h2><p><a href=\"https://youtu.be/YQ7MZxRTCVY\">https://youtu.be/YQ7MZxRTCVY</a></p><h2>Asus Hadirkan Desain Smartphone Ultra Slim&nbsp;</h2><p>Meski tidak terlalu besar hanya seukuran 5.5” Asus merancang bingkai ultraslim sehingga membuatnya lebih ergonomis saat digenggam. Ditambah lagi dengan sentuhan akhir berbalut warna metalik yang menjadikan Zenfone Max M1 terkesan lebih Premium. Bahkan pilihan warna yang disediakan oleh sang produsen juga cukup beragam diantaranya Deepsea Black, Sunlight Gold, Ruby Red. Kesempurnaan Asus ZB555KL semakin lengkap berkat hadirnya Fingerprint Sensor yang diterapkan pada bagian belakang handphone. Hebatnya lagi, kecepatan pemindai sidik jarinya terbilang cukup intuitif saat digunakan untuk membuka kunci layar.&nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/MMrwiKC.jpg\" alt=\"\"></figure><h2>Interface yang Baru ZenUI 5.0 &amp; Android 8.0</h2><p>Untuk melengkapi debut smartphone terbarunya, Asus Zenfone Max M1 dibekali dengan Android Oreo beserta dengan antarmuka terbaru ZenUI 5.0. Hasilnya Anda dapat merasakan pengalaman baru yang lebih menarik, mudah dan intuitif. Tidak cukup dengan itu, dibagian dalam Asus Zenfone Max M1 ditenagai dengan platform Qualcomm Snapdragon yang lebih cepat dan responsif. Bahkan untuk mengimbanginya, Asus menyandingkan GPU Adreno dan RAM yang cukup untuk hasilkan kualitas grafis bebas<i>&nbsp;‘lag’</i> kala bermain game atau memuat konten multimedia lainnya. &nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/thjKsuy.jpg\" alt=\"\"></figure><p>&nbsp;</p><h2>Kamera 13MP Asus Zenfone Max M1: Lebar dan Jernih</h2><p>Dengan iming-iming sistem dual kamera yang baru maka hasil fotonya tentu semakin menawan. Berbekal kamera utama 13 MP dengan kelengkapan aperture lensa F2.0 memungkinkan Anda motret dengan sudut pandang selebar 120 derajat. Begitupun dengan kemampuan rekam videonya yang memungkinkan menangkap lebih banyak objek / pemandangan yang memukau. Kemampuan lain yang dimiliki kamera smartphone Asus Zenfone Max M1 yakni fase autofukos yang hampir mirip dengan pendeteksian kamera DSLR. Akurasi fokusnya mencapai 0.03 detik untuk mendapatkan foto yang detail dan tajam. Begitupun dengan kamera depan Zenfone Max M1 yang disokong dengan teknologi Camera PixelMaster guna mendapatkan hasil yang lebih bening dan jernih saat selfie atau video call. &nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/Qpk1Fem.jpg\" alt=\"\"></figure><h2>Manajemen Baterai Cerdas Asus PowerMaster</h2><p>Kali ini Asus sekaligus memperkenalkan teknologi Asus PowerMaster sebagai dukungan manajemen daya yang cerdas. Teknologi ini diupayakan untuk mengoptimalkan masa pakai baterai tanpa harus mengesampingkan keamanan dan kinerja smartphone Asus Max M1. Sehubung dengan kapasitas baterainya sebesar 4000 mAh, maka sepantasnya Asus menawarkan fitur pengisian daya cepat / fast charging. Pengguna hanya membutuhkan waktu kurang lebih 3 jam untuk mendapatkan baterai smartphone yang terisi penuh. Dengan catatan sebaiknya Anda melakukan charging menggunakan adaptor yang bersertifikat (original), sehingga keamanan arus tetap stabil dan menghindari tegangan berlebih.&nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/a2nXsuc.jpg\" alt=\"\"></figure><p>&nbsp;</p>', '2020-04-15 16:23:43', 1, 'asus-zenfone-max-m1-zb555kl-smartphone-32gb-3gb-l', 0, 0, 45),
(22, 'KAMI. Yarra Print Scarf Nuvoile Aster Jilbab Segiempat', 192000, 100, 7, 1, 100, '1587463636401.jpg', '<p>KAMI. Yarra Print Scarf Nuvoile Aster Jilbab Segiempat adalah kerudung segiempat berbahan Nuvoile yang didesain comfy dalam patterned dan mudah diatur sehingga nyaman saat digunakan. Ukuran : 115x115 cm</p>', '2020-04-21 12:07:16', 1, 'kami-yarra-print-scarf-nuvoile-aster-jilbab-segiempat', 0, 0, 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `rekening` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id`, `rekening`, `name`, `number`) VALUES
(1, 'DANA [contoh]', 'Toni Suwendi', '088215005600'),
(3, 'GOPAY [contoh]', 'Toni Suwendi', '088215005600'),
(7, 'OVO [contoh]', 'Toni Suwendi', '088215005600');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `regency_id` int(11) NOT NULL,
  `verify` int(11) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `favicon` varchar(30) NOT NULL,
  `ongkir` int(1) NOT NULL,
  `default_ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `regency_id`, `verify`, `logo`, `favicon`, `ongkir`, `default_ongkir`) VALUES
(1, 0, '2020-10-27T20:00', 'Buntomart adalah sebuah situs toko online mudah dan terpercaya. Kami memiliki toko fisik yang bisa Anda kunjungi. Disini jual beragam komputer, gadget, serta pakaian pria dan wanita', 'Jalan WR. Supratman, Jawa Tengah, Indonesia', 349, 1, '1592028333196.png', '1594353789000.png', 0, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'facebook-f', '#'),
(3, 'Twitter', 'twitter', '#'),
(4, 'Linkedin', 'linkedin-in', '#'),
(5, 'Instagram', 'instagram', '#'),
(6, 'Youtube', 'youtube', '#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `date_subs`, `code`) VALUES
(0, 'Semua Email', '2020-04-21 13:59:23', ''),
(19, 'kbayu5217@gmail.com', '2020-10-28 09:07:26', '16038508461485318672');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `photo`, `content`) VALUES
(1, 'Aliyah Wati - Jakarta', '', 'Sist makasih barangnya udah sampe, bagus dan lucu2. Temenku aja pada ngiri. Semoga sukses selalu buat eveshopashopnya. Sory baru bisa kasih kabar.'),
(2, 'Een Enarsih - Banten', '', 'Sis barang ny dh sya trima,mkasih bnyak untuk layan’n ny sngat m’muaskan untuk sya,smu prtanya’n di jwab…\r\nRespon ny jga sngat baek,smoga usaha ny smakin brkembang'),
(3, 'Ayung Darma - Pekalongan', '', 'Oia mf sis,Nich brg nya brsan aja ampe, mksh ya\r\nBrg nya bgs banget, sesuai yg digambarnya, makasih ya'),
(4, 'Via Garolita - Cimahi', '', 'Sistaaaa……\r\nbaju nyaa udah smpee…\r\nbguss dechh…suka bgt…\r\nmaaksiih yaa'),
(5, 'Dewanti - Solo', '', 'Barang tidak mengecewakan.. cs nya fast respon, resi besoknya langsung di share tanpa kita tanya.. mantap tokohijabku'),
(6, 'Dina - Malang', '', 'Respon cs baik, tapi untuk pengirimannya agak lama, padahal pakai ekspedisi ”sicepat”\r\nharusnya bisa cepat sampainya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `id_invoice`, `product_name`, `price`, `qty`, `slug`, `ket`) VALUES
(170, 880590, 'Laptop Termurah Terlaris Dell Latitude E6410 Core i5', 1500000, 1, 'laptop-termurah-terlaris-dell-latitude-e6410-core-i5', ''),
(171, 981179, 'OPPO A91 8/128GB Special Online Edition', 3200000, 1, 'oppo-a91-8128gb-special-online-edition', ''),
(172, 488204, 'Black Shark 2 Pro 8GB/128GB Include Rookie Kit - Iceberg Grey', 7000000, 1, 'black-shark-2-pro-8gb128gb-include-rookie-kit-iceberg-grey', ''),
(173, 857133, 'Laptop Termurah Terlaris Dell Latitude E6410 Core i5', 1500000, 1, 'laptop-termurah-terlaris-dell-latitude-e6410-core-i5', ''),
(174, 102199, 'KEMEJA CORDUROY “SIMUGI”', 100000, 1, 'kemeja-corduroy-simugi', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cod`
--
ALTER TABLE `cod`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cost_delivery`
--
ALTER TABLE `cost_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_send`
--
ALTER TABLE `email_send`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package_product`
--
ALTER TABLE `package_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `cod`
--
ALTER TABLE `cod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `cost_delivery`
--
ALTER TABLE `cost_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `email_send`
--
ALTER TABLE `email_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `package_product`
--
ALTER TABLE `package_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- Database: `wpu_blog`
--
CREATE DATABASE IF NOT EXISTS `wpu_blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wpu_blog`;

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
(5, '2022_08_26_133025_create_posts_table', 1);

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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Judul pertama', 'Judul-pertama', 'facere reiciendis quia suscipit', '<p> ipsum dolor sit amet consectetur adipisicing elit. Blanditiis ipsa sequi,</p><p> delectus ex incidunt sed dolorem, alias cupiditate facilis tempore consectetur sunt itaque perferendis perspiciatis quasi, molestiae deleniti. Nemo cumque consequuntur aspernatur dolorum eligendi natus, accusantium quae. Harum corporis animi quasi iure similique aliquid eius in molestias debitis dolorum ducimus, voluptatem reprehenderit impedit magni voluptatibus quia doloremque non consequatur ipsa quisquam placeat quidem voluptate nesciunt! Cumque eius recusandae, itaque, vel fugiat saepe veritatis perspiciatis accusantium architecto libero, excepturi esse culpa expedita doloremque modi incidunt? Magnam ipsa a facere tempore repellendus rem temporibus molestias maxime! Rem in magni ullam quod illum fuga animi! Quaerat harum molestias ab sapiente culpa, consequuntur qui alias minima id enim. Mollitia dolores dolore facere reiciendis quia suscipit, libero ipsa dicta illum reprehenderit labore architecto, aspernatur deleniti voluptatem excepturi delectus iusto aperiam </p><p> nisi sint consectetur dolorum velit! Eum illum impedit est doloribus, sequi iure ipsum.</p>', NULL, '2022-08-26 08:11:37', '2022-08-26 08:11:37'),
(2, 'Judul kedua', 'Judul-kedua', 'facere reiciendis quia suscipit', '<p> ipsum dolor sit amet consectetur adipisicing elit. Blanditiis ipsa sequi,</p><p> delectus ex incidunt sed dolorem, alias cupiditate facilis tempore consectetur sunt itaque perferendis perspiciatis quasi, molestiae deleniti. Nemo cumque consequuntur aspernatur dolorum eligendi natus, accusantium quae. Harum corporis animi quasi iure similique aliquid eius in molestias debitis dolorum ducimus, voluptatem reprehenderit impedit magni voluptatibus quia doloremque non consequatur ipsa quisquam placeat quidem voluptate nesciunt! Cumque eius recusandae, itaque, vel fugiat saepe veritatis perspiciatis accusantium architecto libero, excepturi esse culpa expedita doloremque modi incidunt? Magnam ipsa a facere tempore repellendus rem temporibus molestias maxime! Rem in magni ullam quod illum fuga animi! Quaerat harum molestias ab sapiente culpa, consequuntur qui alias minima id enim. Mollitia dolores dolore facere reiciendis quia suscipit, libero ipsa dicta illum reprehenderit labore architecto, aspernatur deleniti voluptatem excepturi delectus iusto aperiam </p><p> nisi sint consectetur dolorum velit! Eum illum impedit est doloribus, sequi iure ipsum.</p>', NULL, '2022-08-26 08:12:31', '2022-08-26 08:12:31'),
(3, 'Judul ketiga', 'Judul-ketiga', 'facere reiciendis quia suscipit', '<p> ipsum dolor sit amet consectetur adipisicing elit. Blanditiis ipsa sequi,</p><p> delectus ex incidunt sed dolorem, alias cupiditate facilis tempore consectetur sunt itaque perferendis perspiciatis quasi, molestiae deleniti. Nemo cumque consequuntur aspernatur dolorum eligendi natus, accusantium quae. Harum corporis animi quasi iure similique aliquid eius in molestias debitis dolorum ducimus, voluptatem reprehenderit impedit magni voluptatibus quia doloremque non consequatur ipsa quisquam placeat quidem voluptate nesciunt! Cumque eius recusandae, itaque, vel fugiat saepe veritatis perspiciatis accusantium architecto libero, excepturi esse culpa expedita doloremque modi incidunt? Magnam ipsa a facere tempore repellendus rem temporibus molestias maxime! Rem in magni ullam quod illum fuga animi! Quaerat harum molestias ab sapiente culpa, consequuntur qui alias minima id enim. Mollitia dolores dolore facere reiciendis quia suscipit, libero ipsa dicta illum reprehenderit labore architecto, aspernatur deleniti voluptatem excepturi delectus iusto aperiam </p><p> nisi sint consectetur dolorum velit! Eum illum impedit est doloribus, sequi iure ipsum.</p>', NULL, '2022-08-26 08:12:52', '2022-08-26 08:12:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `zaid_new`
--
CREATE DATABASE IF NOT EXISTS `zaid_new` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zaid_new`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Sandhika Galih', 'sandhikagalih@unpas.ac.id', 'profile1.jpg', '$2y$10$nXnrqGQTjpvg58OtOB/N.evYQjVlz7KIW37oUSQSQ2EgNMD0Dgrzq', 1, 1, 1552120289),
(6, 'Doddy Ferdiansyah', 'doddy@gmail.com', 'profile.jpg', '$2y$10$FhGzXwwTWLN/yonJpDLR0.nKoeWlKWBoRG9bsk0jOAgbJ007XzeFO', 2, 1, 1552285263),
(11, 'Sandhika Galih', 'sandhikagalih@gmail.com', 'default.jpg', '$2y$10$0QYEK1pB2L.Rdo.ZQsJO5eeTSpdzT7PvHaEwsuEyGSs0J1Qf5BoSq', 2, 1, 1553151354);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(7, 1, 3),
(8, 1, 2),
(10, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(5, 'Website');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 5, 'Jumbotron', 'website', 'fab fa-fw fa-adversal', 1),
(10, 5, 'Section Profil', 'website/profil', 'fas fa-fw fa-sitemap', 1),
(11, 5, 'Section Program', 'website/program', 'fab fa-fw fa-leanpub', 1),
(12, 5, 'Section Galeri', 'website/galeri', 'fas fa-fw fa-images', 1),
(13, 5, 'Section Donasi', 'website/donasi', 'fas fa-fw fa-coins', 1),
(14, 5, 'General Setting', 'website/setting', 'fas fa-fw fa-cogs', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_donatur`
--

CREATE TABLE `web_donatur` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(128) NOT NULL,
  `provinsi` varchar(128) NOT NULL,
  `tlp` varchar(25) NOT NULL,
  `email` varchar(60) NOT NULL,
  `bukti` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_insert` date NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `web_donatur`
--

INSERT INTO `web_donatur` (`id`, `nama`, `alamat`, `kota`, `provinsi`, `tlp`, `email`, `bukti`, `tanggal`, `tanggal_insert`, `nominal`, `status`) VALUES
(1, 'Hamba Allah', 'Buaran Sapugarut', 'Pekalongan', 'Jawa Tengah', '081', '-', '-', '2022-03-01', '0000-00-00', 100000, 'NEW'),
(2, 'TES', 'MAMAM', 'KAB. KENDAL', 'JAWA TENGAH', '6212', '', '3.PNG', '2022-03-09', '2022-03-06', 100000, 'NEW'),
(3, 'Ali', 'cdcsc', 'KAB. LOMBOK UTARA', 'NUSA TENGGARA BARAT', '00474', '', '3.PNG', '2022-03-17', '2022-03-06', 200000, 'NEW'),
(4, 'gfdgd', 'fvdv', 'KAB. BANTUL', 'DAERAH ISTIMEWA YOGYAKARTA', '55', '', '1625640371905.jpg', '2022-03-24', '2022-03-06', 100, 'NEW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_galeri`
--

CREATE TABLE `web_galeri` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `web_galeri`
--

INSERT INTO `web_galeri` (`id`, `image`) VALUES
(3, 'DSC00234.jpg'),
(5, 'Psikologi_Peserta_Didik.jpg'),
(6, '622061.jpg'),
(7, 'slider_2.jpg'),
(8, 'slider_3.jpg'),
(9, 'about-image.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_jumbotron`
--

CREATE TABLE `web_jumbotron` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `subtittle` varchar(255) NOT NULL,
  `link_video` text NOT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `web_jumbotron`
--

INSERT INTO `web_jumbotron` (`id`, `tittle`, `subtittle`, `link_video`, `banner`) VALUES
(1, 'MTQ Zaid bin Tsabit', 'Markaz Tahfidz Al Qur\'an & Bahasa Arab. Jalan Teratai, Klego Gg. 7 No. 42 Kota Pekalongan', 'https://www.youtube.com/watch?v=5Dvuw6NVcug', 'img_1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_profil`
--

CREATE TABLE `web_profil` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `subtittle` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `web_profil`
--

INSERT INTO `web_profil` (`id`, `tittle`, `subtittle`, `thumbnail`, `banner`, `deskripsi`) VALUES
(1, 'PROFIL', 'Pondok Pesantren Markaz Tahfidz Al Qur\'an Zaid Bin Tsabit Kota Pekalongan.', 'profil2.jpg', 'img_1.jpg', 'Lorem Ipsum dolo'),
(2, 'STRUKTUR', 'Pondok Pesantren Markaz Tahfidz Al Qur\'an Zaid Bin Tsabit Kota Pekalongan.', 'so.jpg', '16256403719051.jpg', 'img_2.jpg'),
(3, 'Wakaf Tunai', 'Pembangunan Markaz Tahfidz Al Qur\'an & Bahasa Arab Zaid Bin Tsabit Pekalongan.', 'smartpeople.jpg', 'mosque.jpg', 'Lorem Ipsum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_program`
--

CREATE TABLE `web_program` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `deskripsi` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `web_program`
--

INSERT INTO `web_program` (`id`, `nama`, `deskripsi`, `thumbnail`) VALUES
(7, 'Tahfidz', 'Program tahfidz 30 juz. Syarat Masuk : >> Hafal juz 30 >> Usia min. 14 tahun atau sudah lulus SMP Santri mukim. Masa pendidikan 2 tahun. Masa pengabdian 1 tahun. ZZZ', '1625633673106.jpg'),
(8, 'Tahsin', 'Program tahsin & bahasa arab.\r\nSyarat Masuk :\r\n>> Lancar membaca Al Qur\'an\r\n>> Usia min. 14 tahun atau sudah lulus SMP\r\nSantri mukim.\r\nMasa pendidikan 6 bulan atau 1 semester.\r\nJumlah kuota 10 santri.', 'accurate.png'),
(9, 'Batiq', 'Program Bahasa Arab dan Tahsin Al Qur\'an (BATIQ). Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nihil necessitatibus iusto natus tempora consequatur distinctio ipsa sapiente repellat veritatis sit eveniet magni omnis, laboriosam tenetur ab illo officia eaque fugiat similique delectus, quasi unde repudiandae. Nulla, aperiam quo harum molestias perferendis, voluptatem exercitationem impedit voluptate quaerat, consequatur quos tempora! Nemo cum voluptatibus pariatur explicabo numquam dolores molestias quisquam ea praesentium cupiditate, amet nihil molestiae laudantium et neque quam, rem atque illum itaque veniam perspiciatis unde est sapiente? N', 'img_2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_progress`
--

CREATE TABLE `web_progress` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tittle` varchar(128) NOT NULL,
  `deskripsi` text NOT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `web_progress`
--

INSERT INTO `web_progress` (`id`, `tanggal`, `tittle`, `deskripsi`, `banner`) VALUES
(1, '2018-10-18', 'Pengurukan Lahan cc', 'Deskripsi pengurukan lahan Lorem ipsum, dolor sit amet consectetur adipisicing elit. Repellendus eum rerum, distinctio expedita sunt, nobis voluptatibus consequatur laborum iste nihil eos neque earum odio placeat adipisci? Autem earum minus odio doloremque? Modi enim, quam veniam rerum ipsa iusto magnam vitae. Ea sit asperiores suscipit. Non eaque atque aperiam sed? Nihil!', '1625640371905.jpg'),
(2, '2018-11-29', 'Peletakan Besi Pondasi', 'Deskripsi Peletakan Rangka Besi Pondasi vvvv', '1625640381841.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_donatur`
--
ALTER TABLE `web_donatur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_galeri`
--
ALTER TABLE `web_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_jumbotron`
--
ALTER TABLE `web_jumbotron`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_profil`
--
ALTER TABLE `web_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_program`
--
ALTER TABLE `web_program`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_progress`
--
ALTER TABLE `web_progress`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `web_donatur`
--
ALTER TABLE `web_donatur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `web_galeri`
--
ALTER TABLE `web_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `web_program`
--
ALTER TABLE `web_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `web_progress`
--
ALTER TABLE `web_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
