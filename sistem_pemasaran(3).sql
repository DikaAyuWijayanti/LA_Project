-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2022 pada 09.10
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pemasaran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat`
--

CREATE TABLE `alamat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cities_id` int(10) UNSIGNED NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat`
--

INSERT INTO `alamat` (`id`, `cities_id`, `detail`, `user_id`, `kode_pos`, `created_at`, `updated_at`) VALUES
(2, 35, 'Jl. Sate Maju', 18, 0, '2022-06-27 23:06:16', '2022-06-27 23:06:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat_toko`
--

CREATE TABLE `alamat_toko` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `detail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat_toko`
--

INSERT INTO `alamat_toko` (`id`, `city_id`, `detail`, `created_at`, `updated_at`) VALUES
(1, 48, 'Simbatan Wetan, Simbatan, Kec. Nguntoronadi, Kabupaten Magetan, Jawa Timur 63383', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Original Ciprat', NULL, NULL),
(2, 'Lurikan', NULL, NULL),
(3, 'Meteor', NULL, NULL),
(4, 'Meteor', NULL, NULL),
(5, 'Gepyokan', NULL, NULL),
(6, 'Kombinasi Canting & Ciprat', NULL, NULL),
(7, 'Jumputan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `nama_cities` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`city_id`, `province_id`, `nama_cities`, `created_at`, `updated_at`) VALUES
(1, 1, 'Banda Aceh', NULL, NULL),
(2, 1, 'Langsa', NULL, NULL),
(3, 1, 'Lhokseumawe', NULL, NULL),
(4, 1, 'Sabang', NULL, NULL),
(5, 1, 'Subulussalam', NULL, NULL),
(6, 17, 'Denpasar', NULL, NULL),
(7, 9, 'Pangkal Pinang', NULL, NULL),
(8, 16, 'Cilegon', NULL, NULL),
(9, 16, 'Serang', NULL, NULL),
(10, 16, 'Tangerang Selatan', NULL, NULL),
(11, 16, 'Tangerang', NULL, NULL),
(12, 7, 'Bengkulu', NULL, NULL),
(13, 14, 'Yogyakarta', NULL, NULL),
(14, 29, 'Gorontalo', NULL, NULL),
(15, 11, 'Jakarta Barat', NULL, NULL),
(16, 11, 'Jakarta Pusat', NULL, NULL),
(17, 11, 'Jakarta Selatan 	', NULL, NULL),
(18, 11, 'Jakarta Timur', NULL, NULL),
(19, 11, 'Jakarta Utara', NULL, NULL),
(20, 5, 'Sungai Penuh', NULL, NULL),
(21, 5, 'Jambi', NULL, NULL),
(22, 12, 'Bandung', NULL, NULL),
(23, 12, 'Bekasi', NULL, NULL),
(24, 12, 'Bogor', NULL, NULL),
(25, 12, 'Cimahi', NULL, NULL),
(26, 12, 'Cirebon', NULL, NULL),
(27, 12, 'Depok', NULL, NULL),
(28, 12, 'Sukabumi', NULL, NULL),
(29, 12, 'Tasikmalaya', NULL, NULL),
(30, 12, 'Banjar', NULL, NULL),
(31, 12, 'Banjar', NULL, NULL),
(32, 13, 'Magelang', NULL, NULL),
(33, 13, 'Pekalongan', NULL, NULL),
(34, 13, 'Salatiga', NULL, NULL),
(35, 13, 'Semarang', NULL, NULL),
(36, 13, 'Surakarta', NULL, NULL),
(37, 13, 'Tegal', NULL, NULL),
(38, 15, 'Batu', NULL, NULL),
(39, 15, 'Blitar', NULL, NULL),
(40, 15, 'Kediri', NULL, NULL),
(41, 15, 'Madiun', NULL, NULL),
(42, 15, 'Malang', NULL, NULL),
(43, 15, 'Mojokerto', NULL, NULL),
(44, 15, 'Pasuruan', NULL, NULL),
(45, 15, 'Probolinggo', NULL, NULL),
(46, 15, 'Probolinggo', NULL, NULL),
(47, 15, 'Surabaya', NULL, NULL),
(48, 15, 'Magetan', NULL, NULL),
(49, 20, 'Pontianak', NULL, NULL),
(50, 20, 'Singkawang', NULL, NULL),
(51, 22, 'Banjarbaru', NULL, NULL),
(52, 22, 'Banjarmasin', NULL, NULL),
(53, 21, 'Palangkaraya', NULL, NULL),
(54, 23, 'Balikpapan', NULL, NULL),
(55, 23, 'Bontang', NULL, NULL),
(56, 23, 'Samarinda', NULL, NULL),
(57, 24, 'Tarakan', NULL, NULL),
(58, 10, 'Batam', NULL, NULL),
(59, 10, 'Tanjungpinang', NULL, NULL),
(60, 8, 'Bandar Lampung', NULL, NULL),
(61, 8, 'Metro', NULL, NULL),
(62, 32, 'Ternate', NULL, NULL),
(63, 32, 'Tidoro Kepulauan', NULL, NULL),
(64, 31, 'Ambon', NULL, NULL),
(65, 31, 'Tual', NULL, NULL),
(66, 18, 'Bima', NULL, NULL),
(67, 18, 'Mataram', NULL, NULL),
(68, 19, 'Kupang', NULL, NULL),
(69, 34, 'Sorong', NULL, NULL),
(70, 33, 'Jayapura', NULL, NULL),
(71, 4, 'Dumai', NULL, NULL),
(72, 4, 'Pekanbaru', NULL, NULL),
(73, 27, 'Makassar', NULL, NULL),
(74, 27, 'Palopo', NULL, NULL),
(75, 27, 'Parepare', NULL, NULL),
(76, 26, 'Palu', NULL, NULL),
(77, 28, 'Baubau', NULL, NULL),
(78, 28, 'Kendari', NULL, NULL),
(79, 25, 'Bitung', NULL, NULL),
(80, 25, 'Kotamobagu', NULL, NULL),
(81, 25, 'Manado', NULL, NULL),
(82, 25, 'Tomohon', NULL, NULL),
(83, 3, 'Bukittinggi', NULL, NULL),
(84, 3, 'Padang', NULL, NULL),
(85, 3, 'Padang Panjang', NULL, NULL),
(86, 3, 'Pariaman', NULL, NULL),
(87, 3, 'Sawahlunto', NULL, NULL),
(88, 3, 'Solok', NULL, NULL),
(89, 6, 'Lubuklinggau', NULL, NULL),
(90, 6, 'Pagar Alam', NULL, NULL),
(91, 6, 'Palembang', NULL, NULL),
(92, 6, 'Prabumulih', NULL, NULL),
(93, 6, 'Sekayu', NULL, NULL),
(94, 2, 'Binjai', NULL, NULL),
(95, 2, 'Gunungsitoli', NULL, NULL),
(96, 2, 'Medan', NULL, NULL),
(97, 2, 'Pematangsiantar', NULL, NULL),
(98, 2, 'Sibolga', NULL, NULL),
(99, 2, 'Tanjungbalai', NULL, NULL),
(100, 2, 'Tebing Tinggi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_couriers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `code`, `nama_couriers`, `created_at`, `updated_at`) VALUES
(1, 'jne', 'JNE', NULL, NULL),
(2, 'pos', 'POS', NULL, NULL),
(3, 'tiki', 'TIKI', NULL, NULL),
(4, 'jne', 'JNE', NULL, NULL),
(5, 'pos', 'POS', NULL, NULL),
(6, 'tiki', 'TIKI', NULL, NULL),
(7, 'jne', 'JNE', NULL, NULL),
(8, 'pos', 'POS', NULL, NULL),
(9, 'tiki', 'TIKI', NULL, NULL),
(10, 'jne', 'JNE', NULL, NULL),
(11, 'pos', 'POS', NULL, NULL),
(12, 'tiki', 'TIKI', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_order`
--

CREATE TABLE `detail_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `user_id`, `products_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 1, '2022-06-27 00:47:25', '2022-06-27 00:47:25'),
(2, 18, 3, 1, '2022-06-27 23:03:14', '2022-06-27 23:03:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketua`
--

CREATE TABLE `ketua` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2022_05_17_225843_create_provinces_table', 1),
(5, '2022_05_17_231243_create_cities_table', 1),
(6, '2022_05_17_231410_create_alamat_toko_table', 1),
(7, '2022_05_17_231811_create_keranjang_table', 1),
(8, '2022_05_17_232123_create_rekening_table', 1),
(9, '2022_05_17_232319_create_status_order_table', 1),
(10, '2022_05_17_232419_create_detail_order', 1),
(11, '2022_05_17_232503_create_order_table', 1),
(12, '2022_05_17_232614_create_alamat_tables', 1),
(13, '2022_05_17_232704_create_products_tables', 1),
(14, '2022_05_17_232818_create_categories_tables', 1),
(15, '2022_05_17_232918_create_couriers_table', 1),
(16, '2022_05_19_144518_add_pesan_to_order', 1),
(17, '2022_05_19_145455_add_bukti_telepon_to_order', 1),
(18, '2022_05_19_145714_add_keterangan_to_order', 1),
(19, '2022_05_19_145841_add_biaya_cod_to_order', 1),
(20, '2022_05_19_145950_add_stok_to_product', 1),
(21, '2022_06_18_000336_create_testimony_customers_table', 1),
(22, '2022_06_18_040013_create_posts_table', 1),
(23, '2022_06_22_182948_create_permission_tables', 1),
(24, '2022_06_24_174312_create_ongkirs_table', 1),
(25, '2022_06_28_043147_create_roles_table', 2),
(26, '2022_06_28_043838_create_role_users_table', 3),
(27, '2022_06_28_045703_create_role_users_table', 4),
(28, '2022_06_28_050401_create_role_users_table', 5),
(29, '2022_06_28_050936_create_roles_table', 6),
(30, '2022_06_28_091901_create_penggunas_table', 7),
(31, '2022_06_28_144523_create_users_table', 8),
(32, '2022_06_28_234409_create_pengrajins_table', 9),
(33, '2022_06_29_001356_create_pengrajins_table', 10),
(34, '2022_06_29_024223_create_ketuas_table', 11),
(35, '2022_06_29_032214_create_ketuas_table', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkirs`
--

CREATE TABLE `ongkirs` (
  `id` int(10) UNSIGNED NOT NULL,
  `namaKota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ongkirs`
--

INSERT INTO `ongkirs` (`id`, `namaKota`, `tarif`, `created_at`, `updated_at`) VALUES
(1, 'Banda Aceh', 71000, NULL, NULL),
(2, 'Langsa', 85000, NULL, NULL),
(3, 'Lhokseumawe', 85000, NULL, NULL),
(4, 'Sabang', 85000, NULL, NULL),
(5, 'Subulussalam', 85000, NULL, NULL),
(6, 'Denpasar', 20000, NULL, NULL),
(7, 'Pangkal Pinang', 40000, NULL, NULL),
(8, 'Cilegon', 20000, NULL, NULL),
(9, 'Serang', 20000, NULL, NULL),
(10, 'Tangerang Selatan', 18000, NULL, NULL),
(11, 'Tangerang', 18000, NULL, NULL),
(12, 'Bengkulu', 50000, NULL, NULL),
(13, 'Yogyakarta', 15000, NULL, NULL),
(14, 'Gorontalo', 84000, NULL, NULL),
(15, 'Jakarta Barat', 15000, NULL, NULL),
(16, 'Jakarta Pusat', 15000, NULL, NULL),
(17, 'Jakarta Selatan', 15000, NULL, NULL),
(18, 'Jakarta Timur', 15000, NULL, NULL),
(19, 'Jakarta Utara', 15000, NULL, NULL),
(20, 'Sungai Penuh', 48000, NULL, NULL),
(21, 'Jambi', 48000, NULL, NULL),
(22, 'Bandung', 20000, NULL, NULL),
(23, 'Bekasi', 18000, NULL, NULL),
(24, 'Bogor', 18000, NULL, NULL),
(25, 'Cimahi', 20000, NULL, NULL),
(26, 'Cirebon', 20000, NULL, NULL),
(27, 'Depok', 18000, NULL, NULL),
(28, 'Sukabumi', 20000, NULL, NULL),
(29, 'Tasikmalaya', 22000, NULL, NULL),
(30, 'Banjar', 26000, NULL, NULL),
(31, 'Magelang', 15000, NULL, NULL),
(32, 'Pekalongan', 19000, NULL, NULL),
(33, 'Salatiga', 19000, NULL, NULL),
(34, 'Semarang', 15000, NULL, NULL),
(35, 'Surakarta', 15000, NULL, NULL),
(36, 'Tegal', 15000, NULL, NULL),
(37, 'Batu', 8000, NULL, NULL),
(38, 'Blitar', 8000, NULL, NULL),
(39, 'Kediri', 8000, NULL, NULL),
(40, 'Madiun', 7000, NULL, NULL),
(41, 'Malang', 8000, NULL, NULL),
(42, 'Mojokerto', 8000, NULL, NULL),
(43, 'Pasuruan', 8000, NULL, NULL),
(44, 'Probolinggo', 8000, NULL, NULL),
(45, 'Surabaya', 8000, NULL, NULL),
(46, 'Magetan', 7000, NULL, NULL),
(47, 'Pontianak', 51000, NULL, NULL),
(48, 'Singkawang', 65000, NULL, NULL),
(49, 'Banjarbaru', 43000, NULL, NULL),
(50, 'Banjarmasin', 43000, NULL, NULL),
(51, 'Palangkaraya', 42000, NULL, NULL),
(52, 'Balikpapan', 54000, NULL, NULL),
(53, 'Bontang', 63000, NULL, NULL),
(54, 'Samarinda', 58000, NULL, NULL),
(55, 'Tarakan', 64000, NULL, NULL),
(56, 'Batam', 46000, NULL, NULL),
(57, 'Tanjungpinang', 62000, NULL, NULL),
(58, 'Bandar Lampung', 40000, NULL, NULL),
(59, 'Metro', 46000, NULL, NULL),
(60, 'Ternate', 93000, NULL, NULL),
(61, 'Tidoro Kepulaua', 93000, NULL, NULL),
(62, 'Ambon', 87000, NULL, NULL),
(63, 'Tual', 105000, NULL, NULL),
(64, 'Bima', 42000, NULL, NULL),
(65, 'Serang', 30000, NULL, NULL),
(66, 'Kupang', 79000, NULL, NULL),
(67, 'Sorong', 122000, NULL, NULL),
(68, 'Jayapura', 137000, NULL, NULL),
(69, 'Dumai', 67000, NULL, NULL),
(70, 'Pekanbaru', 55000, NULL, NULL),
(71, 'Makassar', 50000, NULL, NULL),
(72, 'Palopo', 58000, NULL, NULL),
(73, 'Parepare', 58000, NULL, NULL),
(74, 'Palu', 71000, NULL, NULL),
(75, 'Baubau', 93000, NULL, NULL),
(76, 'Kendari', 76000, NULL, NULL),
(77, 'Bitung', 89000, NULL, NULL),
(78, 'Kotamobagu', 89000, NULL, NULL),
(79, 'Manado', 86000, NULL, NULL),
(80, 'Tomohon', 89000, NULL, NULL),
(81, 'Bukittinggi', 56000, NULL, NULL),
(82, 'Padang', 46000, NULL, NULL),
(83, 'Padang Panjang', 56000, NULL, NULL),
(84, 'Pariaman', 56000, NULL, NULL),
(85, 'Sawahlunto', 56000, NULL, NULL),
(86, 'Solok', 56000, NULL, NULL),
(87, 'Lubuklinggau', 51000, NULL, NULL),
(88, 'Pagar Alam', 51000, NULL, NULL),
(89, 'Palembang', 45000, NULL, NULL),
(90, 'Prabumulih', 51000, NULL, NULL),
(91, 'Sekayu', 51000, NULL, NULL),
(92, 'Binjai', 67000, NULL, NULL),
(93, 'Gunungsitoli', 57000, NULL, NULL),
(94, 'Medan', 55000, NULL, NULL),
(95, 'Pematangsiantar', 67000, NULL, NULL),
(96, 'Sibolga', 67000, NULL, NULL),
(97, 'Tanjungbalai', 73000, NULL, NULL),
(98, 'Tebing Tinggi', 67000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subtotal` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order_id` bigint(20) UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkir_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biaya_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$TmXtFk.2QCuIrEzIZs9EfujXODvmF8Y7zccynDcaigbMyFaBIoWTq', 'WDSNu4S6jf1QA3k1chbck9tdbUPMzuOnRAFqvDTDaAYyEb1rDyl30uS9XYOb', '2022-06-28 03:11:09', '2022-06-28 03:11:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengrajin`
--

CREATE TABLE `pengrajin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengrajin`
--

INSERT INTO `pengrajin` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Novia', 'pengrajin', 'novia@gmail.com', NULL, '$2y$10$XYDlVZYdAdo6ZBT3Lf.iQuuxZTQ7bCbyaIJOr29L5P75Sl94sTdze', 'TRswxIhVVZNqEH3Usli6JZncS2njtkO7aA4jwpgPjG0JcUoeBcvB8cJZCUqV', '2022-06-28 17:18:19', '2022-06-28 17:18:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('is_ready','Pre_order') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weigth` int(11) NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stok` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `status`, `weigth`, `categories_id`, `created_at`, `updated_at`, `stok`) VALUES
(1, 'Batik Ciprat Obat Nyamuk', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'gambar 2.jpg', '150000', 'is_ready', 100, 3, NULL, NULL, '50'),
(3, 'Batik Ciprat Kecubung', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'gambar 1.jpg', '150000', 'is_ready', 100, 5, NULL, NULL, '30'),
(4, 'Batik Ciprat Motif Bunga Tulip', 'Batik Ciprat motif bunga tulip\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'gambar 7.png', '150000', 'is_ready', 100, 5, NULL, NULL, '80'),
(5, 'Batik Pelangi Coret', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif pelangi coret\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm', 'gambar 12.png', '150000', 'is_ready', 100, 3, NULL, NULL, '20'),
(6, 'Batik Tumpul Jumput', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif batik Tumpul Jumput\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm\r\n', 'gambar 13.png', '150000 - 400000', 'is_ready', 100, 5, NULL, NULL, '15'),
(7, 'Batik Gelombang Laut', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif Gelombang Laut\r\nBahan   : katun jepang\r\nUkuran  :105cm x 220cm', 'gambar 14.png', '150000 - 200000', 'is_ready', 100, 4, NULL, NULL, '30'),
(8, 'Batik Gelombang Laut', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif Gelombang Laut\r\nBahan   : katun jepang\r\nUkuran  :105cm x 220cm', 'gambar 14.png', '150000 - 200000', 'is_ready', 100, 4, NULL, NULL, '30'),
(9, 'Batik Ciprat Morat - marit', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif lurik pojok\r\nBahan   : katun Jepang\r\nUkuran  :105cm x 220cm', 'gambar 15.png', '200000', 'is_ready', 100, 2, NULL, NULL, '43'),
(10, 'Batik Ciprat Bintang', 'Motif Ciprat Bintang\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nReady stok\r\n160rb', 'batik_bintang.png', '160.000', 'is_ready', 100, 2, NULL, NULL, '100'),
(11, 'Batik Ciprat Motif Dong Telo', 'Motif Dong Telo\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 200rb', 'batik_dongtelo.png', '200.000', 'is_ready', 100, 5, NULL, NULL, '90'),
(12, 'Batik Motif Kembang Krokot', 'Motif Terbaru Kembang Krokot\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb', 'batik_kembangkrokot.png', '150.000', 'is_ready', 100, 5, NULL, NULL, '30'),
(13, 'Batik Motif Cahaya Pelangi', 'Motif cahaya pelangi\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nHarga 160rb', 'cahaya_pelangi.png', '160.000', 'is_ready', 100, 1, NULL, NULL, '50'),
(14, 'Batik MOtif Ciprat Anyaman', 'Motif ciprat anyaman\r\nUkuran 2,15 x 1,10\r\nKain Primisima\r\nReady stok', 'ciprat_anyaman.png', '160.000', 'is_ready', 100, 2, NULL, NULL, '30'),
(15, 'Batik Ciprat Motif Balok', 'Motif ciprat balok\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nReady stok\r\nBisa reques warna', 'ciprat_balok.png', '160.000', 'is_ready', 100, 6, NULL, NULL, '29'),
(16, 'Batik Ciprat Rumput', 'Motif ciprat Rumput\r\nUkuran 2,15 x 1,10\r\nReady stok\r\n150rb\r\nBisa reques warna', 'ciprat_rumput.png', '150.000', 'is_ready', 100, 1, NULL, NULL, '10'),
(17, 'Batik Ciprat Motif Prapatan', 'Motif Prapatan\r\nHarga 160rb\r\nUkuran 2,15 x 1,10\r\nWarna bisa memilih\r\nReady stok kain primisima', 'motif_prapatan.png', '160.000', 'is_ready', 100, 6, NULL, NULL, '20'),
(18, 'Batik Ciprat Motif Rubik', 'Motif rubik\r\nUkuran 2,15 x 1,10\r\nPrimisima\r\nHarga 160rb\r\nReady stok', 'motif_rubik.png', '160.000', 'is_ready', 100, 3, NULL, NULL, '30'),
(19, 'Batik Ciprat Motif  Kotak', 'Motif kotak\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 160rb\r\nBisa reques warna', 'motif_kotak.png', '160.000', 'is_ready', 100, 3, NULL, NULL, '35'),
(20, 'Batik Ciprat Motif Matahari', 'Motif Bunga Matahari\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb\r\nBisa reques warna', 'motif_bungamatahari.png', '150.000', 'is_ready', 100, 6, NULL, NULL, '40'),
(21, 'Batik Ciprat Cendol Dawet', 'Motif Terbaru Cendol Dawet \r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb\r\nBisa reques warna', 'krokot.png', '150.000', 'is_ready', 100, 5, NULL, NULL, '15'),
(22, 'Batik Motif Kembang Api', 'Motif KEMBANG API\r\nUkuran 2,15×1,10\r\nKatun primisima\r\n160rb', 'kembang_api.png', '160.000', 'Pre_order', 100, 6, NULL, NULL, '0'),
(23, 'Batik Motif Ciprat Gasing', 'Motif ciprat gasing\r\nUkuran 2,15×1,10\r\nKain primisima\r\nHarga 160rb', 'gasing.png', '160.000', 'Pre_order', 100, 6, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `province_id` int(10) UNSIGNED NOT NULL,
  `nama_province` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`province_id`, `nama_province`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', NULL, NULL),
(2, 'Sumatra Utara', NULL, NULL),
(3, 'Sumatra Barat', NULL, NULL),
(4, 'Riau', NULL, NULL),
(5, 'Jambi', NULL, NULL),
(6, 'Sumatera Selatan', NULL, NULL),
(7, 'Bengkulu', NULL, NULL),
(8, 'Lampung', NULL, NULL),
(9, 'Kepulauan Bangka Belitung', NULL, NULL),
(10, 'Kepulauan Riau', NULL, NULL),
(11, 'DKI Jakarta', NULL, NULL),
(12, 'Jawa Barat', NULL, NULL),
(13, 'Jawa Tengah', NULL, NULL),
(14, 'DI Yogyakarta', NULL, NULL),
(15, 'Jawa Timur', NULL, NULL),
(16, 'Banten', NULL, NULL),
(17, 'Bali', NULL, NULL),
(18, 'Nusa Tenggara Barat', NULL, NULL),
(19, 'Nusa Tenggara Timur', NULL, NULL),
(20, 'Kalimantan Barat', NULL, NULL),
(21, 'Kalimantan Tenggara', NULL, NULL),
(22, 'Kalimantan Selatan', NULL, NULL),
(23, 'Kalimantan Timur', NULL, NULL),
(24, 'Kalimantan Utara', NULL, NULL),
(25, 'Sulawesi Utara', NULL, NULL),
(26, 'Sulawesi Tengah', NULL, NULL),
(27, 'Sulawesi Selatan', NULL, NULL),
(28, 'Sulawesi Tenggara', NULL, NULL),
(29, 'Gorontalo', NULL, NULL),
(30, 'Sulawesi Barat', NULL, NULL),
(31, 'Maluku', NULL, NULL),
(32, 'Maluku Utara', NULL, NULL),
(33, 'Papua', NULL, NULL),
(34, 'Papua Barat', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id` int(10) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'BRI', 'Deni Mustika', '0341-01-000-743xxx', NULL, NULL),
(2, 'Mandiri', 'Saktiyaningrum', '111-00-045xx-xx', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'pengrajin', NULL, NULL),
(4, 'ketua', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(20, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_order`
--

CREATE TABLE `status_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_order`
--

INSERT INTO `status_order` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Belum Bayar', NULL, NULL),
(2, 'Perlu Di Cek', NULL, NULL),
(3, 'Telah Di Bayar', NULL, NULL),
(4, 'Barang Di Kirim', NULL, NULL),
(5, 'Barang Telah Sampai', NULL, NULL),
(6, 'Pesanan Di Batalkan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimony_customers`
--

CREATE TABLE `testimony_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saktiyaningrum', 'admin', 'sakti@gmail.com', NULL, '$2y$10$Vt19y5yh5DOyeXNwdO83mOQznfiuoX/lWen926EGloDVlQJye0Hze', 'FhH0jB5CqSjAy35wdF6koQCi7PsCbR2bKGbYppF2Fukk8qOND1cu2RtwGPq4', '2022-06-28 11:04:07', '2022-06-28 11:04:07'),
(2, 'Bulan', 'user', 'bulan@gmail.com', NULL, '$2y$10$Y.l2MKhSNoJp4.GH/BrVsO1TvlZzkSvHPGs3RpDHTb.JtQY93ueL.', 'lCY2JxX688lkynK5nZEt6OFA36qVPI78krTyccWIVRMqjFLzgZyNQ6EhGQij', '2022-06-28 12:41:08', '2022-06-28 12:41:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alamat_cities_id_index` (`cities_id`),
  ADD KEY `alamat_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `alamat_toko`
--
ALTER TABLE `alamat_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alamat_toko_city_id_foreign` (`city_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indeks untuk tabel `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_order_order_id_index` (`order_id`),
  ADD KEY `detail_order_product_id_index` (`product_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indeks untuk tabel `ketua`
--
ALTER TABLE `ketua`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ketua_email_unique` (`email`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ongkirs`
--
ALTER TABLE `ongkirs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_index` (`user_id`),
  ADD KEY `ongkir_id` (`ongkir_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengguna_email_unique` (`email`);

--
-- Indeks untuk tabel `pengrajin`
--
ALTER TABLE `pengrajin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengrajin_email_unique` (`email`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_customer_id_index` (`customer_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_id_index` (`categories_id`);

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_users`
--
ALTER TABLE `role_users`
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `status_order`
--
ALTER TABLE `status_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimony_customers`
--
ALTER TABLE `testimony_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimony_customers_customer_id_index` (`customer_id`);

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
-- AUTO_INCREMENT untuk tabel `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `alamat_toko`
--
ALTER TABLE `alamat_toko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ketua`
--
ALTER TABLE `ketua`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `ongkirs`
--
ALTER TABLE `ongkirs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengrajin`
--
ALTER TABLE `pengrajin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `province_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `status_order`
--
ALTER TABLE `status_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `testimony_customers`
--
ALTER TABLE `testimony_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `alamat_cities_id_foreign` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alamat_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alamat_toko`
--
ALTER TABLE `alamat_toko`
  ADD CONSTRAINT `alamat_toko_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_order`
--
ALTER TABLE `detail_order`
  ADD CONSTRAINT `detail_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ongkir_id`) REFERENCES `ongkirs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `testimony_customers`
--
ALTER TABLE `testimony_customers`
  ADD CONSTRAINT `testimony_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
