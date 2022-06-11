-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2022 pada 16.02
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
  `id` tinyint(11) UNSIGNED NOT NULL,
  `cities_id` int(11) NOT NULL,
  `detail_alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` tinyint(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat`
--

INSERT INTO `alamat` (`id`, `cities_id`, `detail_alamat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 11, 'magetan', 4, '2022-05-20 00:46:37', '2022-05-20 00:46:37'),
(2, 325, 'Jl.Pahlawan No. 1A Madiun', 2, '2022-05-20 08:44:36', '2022-05-20 08:44:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat_toko`
--

CREATE TABLE `alamat_toko` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `detail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat_toko`
--

INSERT INTO `alamat_toko` (`id`, `city_id`, `detail`, `created_at`, `updated_at`) VALUES
(1, 325, 'Simbatan Wetan, Simbatan, Kec. Nguntoronadi, Kabupaten Magetan, Jawa Timur 63383', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(11) UNSIGNED NOT NULL,
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
(4, 'Gepyokan', NULL, NULL),
(5, 'Kombinasi Canting & Ciprat', NULL, NULL),
(6, 'Jumputan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cekongkir`
--

CREATE TABLE `cekongkir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `nama_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `nama_cities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_couriers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `province_id` tinyint(11) UNSIGNED NOT NULL,
  `city_id` tinyint(11) UNSIGNED NOT NULL,
  `nama_cities` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `city_id`, `nama_cities`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 'Banda Aceh', NULL, NULL),
(2, 1, 12, 'Langsa', NULL, NULL),
(3, 1, 13, 'Lhokseumawe', NULL, NULL),
(4, 1, 14, 'Sabang', NULL, NULL),
(5, 1, 105, 'Subulussalam', NULL, NULL),
(6, 17, 51, 'Denpasar', NULL, NULL),
(7, 9, 19, 'Pangkal Pinang', NULL, NULL),
(8, 16, 36, 'Cilegon', NULL, NULL),
(9, 16, 37, 'Serang', NULL, NULL),
(10, 16, 38, 'Tangerang Selat', NULL, NULL),
(11, 16, 39, 'Tangerang', NULL, NULL),
(12, 7, 17, 'Bengkulu', NULL, NULL),
(13, 14, 34, 'Yogyakarta', NULL, NULL),
(14, 29, 75, 'Gorontalo', NULL, NULL),
(15, 11, 31, 'Jakarta Barat', NULL, NULL),
(16, 11, 30, 'Jakarta Pusat', NULL, NULL),
(17, 11, 29, 'Jakarta Selatan', NULL, NULL),
(18, 11, 28, 'Jakarta Timur', NULL, NULL),
(19, 11, 27, 'Jakarta Utara', NULL, NULL),
(20, 5, 15, 'Sungai Penuh', NULL, NULL),
(21, 5, 115, 'Jambi', NULL, NULL),
(22, 12, 32, 'Bandung', NULL, NULL),
(23, 12, 255, 'Bekasi', NULL, NULL),
(24, 12, 255, 'Bogor', NULL, NULL),
(25, 12, 255, 'Cimahi', NULL, NULL),
(26, 12, 255, 'Cirebon', NULL, NULL),
(27, 12, 255, 'Depok', NULL, NULL),
(28, 12, 255, 'Sukabumi', NULL, NULL),
(29, 12, 255, 'Tasikmalaya', NULL, NULL),
(30, 12, 255, 'Banjar', NULL, NULL),
(31, 13, 33, 'Magelang', NULL, NULL),
(32, 13, 255, 'Pekalongan', NULL, NULL),
(33, 13, 255, 'Salatiga', NULL, NULL),
(34, 13, 255, 'Semarang', NULL, NULL),
(35, 13, 255, 'Surakarta', NULL, NULL),
(36, 13, 255, 'Tegal', NULL, NULL),
(37, 15, 35, 'Batu', NULL, NULL),
(38, 15, 255, 'Blitar', NULL, NULL),
(39, 15, 255, 'Kediri', NULL, NULL),
(40, 15, 255, 'Madiun', NULL, NULL),
(41, 15, 255, 'Malang', NULL, NULL),
(42, 15, 255, 'Mojokerto', NULL, NULL),
(43, 15, 255, 'Pasuruan', NULL, NULL),
(44, 15, 255, 'Probolinggo', NULL, NULL),
(45, 15, 255, 'Surabaya', NULL, NULL),
(46, 15, 255, 'Magetan', NULL, NULL),
(47, 20, 61, 'Pontianak', NULL, NULL),
(48, 20, 255, 'Singkawang', NULL, NULL),
(49, 22, 63, 'Banjarbaru', NULL, NULL),
(50, 22, 255, 'Banjarmasin', NULL, NULL),
(51, 15, 255, 'Malang', NULL, NULL),
(52, 15, 255, 'Mojokerto', NULL, NULL),
(53, 15, 255, 'Pasuruan', NULL, NULL),
(54, 15, 255, 'Probolinggo', NULL, NULL),
(55, 15, 255, 'Surabaya', NULL, NULL),
(56, 20, 61, 'Pontianak', NULL, NULL),
(57, 20, 255, 'Singkawang', NULL, NULL),
(58, 22, 63, 'Banjarbaru', NULL, NULL),
(59, 22, 255, 'Banjarmasin', NULL, NULL),
(60, 21, 62, 'Palangkaraya', NULL, NULL),
(61, 23, 64, 'Balikpapan', NULL, NULL),
(62, 23, 255, 'Bontang', NULL, NULL),
(63, 23, 255, 'Samarinda', NULL, NULL),
(64, 24, 65, 'Tarakan', NULL, NULL),
(65, 10, 21, 'Batam', NULL, NULL),
(66, 10, 201, 'Tanjungpinang', NULL, NULL),
(67, 8, 18, 'Bandar Lampung', NULL, NULL),
(68, 8, 108, 'Metro', NULL, NULL),
(69, 32, 82, 'Ternate', NULL, NULL),
(70, 32, 255, 'Tidoro Kepulaua', NULL, NULL),
(71, 31, 81, 'Ambon', NULL, NULL),
(72, 31, 255, 'Tual', NULL, NULL),
(73, 18, 52, 'Bima', NULL, NULL),
(74, 18, 255, 'Mataram', NULL, NULL),
(75, 19, 53, 'Kupang', NULL, NULL),
(76, 34, 92, 'Sorong', NULL, NULL),
(77, 33, 91, 'Jayapura', NULL, NULL),
(78, 4, 14, 'Dumai', NULL, NULL),
(79, 4, 104, 'Pekanbaru', NULL, NULL),
(80, 27, 73, 'Makassar', NULL, NULL),
(81, 27, 255, 'Palopo', NULL, NULL),
(82, 27, 255, 'Parepare', NULL, NULL),
(83, 26, 72, 'Palu', NULL, NULL),
(84, 28, 74, 'Baubau', NULL, NULL),
(85, 28, 255, 'Kendari', NULL, NULL),
(86, 25, 71, 'Bitung', NULL, NULL),
(87, 25, 255, 'Kotamobagu', NULL, NULL),
(88, 25, 255, 'Manado', NULL, NULL),
(89, 25, 255, 'Tomohon', NULL, NULL),
(90, 3, 13, 'Bukittinggi', NULL, NULL),
(91, 3, 103, 'Padang', NULL, NULL),
(92, 3, 113, 'Padang Panjang', NULL, NULL),
(93, 3, 123, 'Pariaman', NULL, NULL),
(94, 3, 133, 'Sawahlunto', NULL, NULL),
(95, 3, 143, 'Solok', NULL, NULL),
(96, 6, 16, 'Lubuklinggau', NULL, NULL),
(97, 6, 106, 'Pagar Alam', NULL, NULL),
(98, 6, 116, 'Palembang', NULL, NULL),
(99, 6, 126, 'Prabumulih', NULL, NULL),
(100, 6, 136, 'Sekayu', NULL, NULL),
(101, 2, 12, 'Binjai', NULL, NULL),
(102, 2, 102, 'Gunungsitoli', NULL, NULL),
(103, 2, 112, 'Medan', NULL, NULL),
(104, 2, 122, 'Padang Sidempua', NULL, NULL),
(105, 2, 132, 'Pematangsiantar', NULL, NULL),
(106, 2, 142, 'Sibolga', NULL, NULL),
(107, 2, 152, 'Tanjungbalai', NULL, NULL),
(108, 2, 162, 'Tebing Tinggi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kurir` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `code`, `nama_kurir`, `created_at`, `updated_at`) VALUES
(1, 'jne', 'JNE', NULL, NULL),
(2, 'pos', 'POS', NULL, NULL),
(3, 'tiki', 'TIKI', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_order`
--

CREATE TABLE `detail_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
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
(21, '2022_05_21_150210_location_cek_ongkir', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `invoice` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` tinyint(11) UNSIGNED NOT NULL,
  `subtotal` int(11) NOT NULL,
  `no_resi` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order_id` tinyint(15) UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkir` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biaya_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weigth` int(11) NOT NULL,
  `categories_id` tinyint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `weigth`, `categories_id`, `created_at`, `updated_at`, `stok`) VALUES
(1, 'Batik Ciprat Obat Nyamuk', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'gambar 2.jpg', '150000', 2, 3, NULL, NULL, 50),
(2, 'Batik Ciprat Kecubung', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'gambar 1.jpg', '150000', 1, 5, NULL, NULL, 30),
(3, 'Batik Ciprat Motif Bunga Tulip', 'Batik Ciprat motif bunga tulip\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'gambar 7.png', '150000', 1, 5, NULL, NULL, 80),
(4, 'Batik Pelangi Coret', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif pelangi coret\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm', 'gambar 12.png', '150000', 1, 3, NULL, NULL, 20),
(5, 'Batik Tumpul Jumput', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif batik Tumpul Jumput\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm\r\n', 'gambar 13.png', '150000 - 400000', 105, 5, NULL, NULL, 15),
(6, 'Batik Gelombang Laut', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif Gelombang Laut\r\nBahan   : katun jepang\r\nUkuran  :105cm x 220cm', 'gambar 14.png', '150000 - 200000', 105, 4, NULL, NULL, 30),
(7, 'Batik Ciprat Morat - marit', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif lurik pojok\r\nBahan   : katun Jepang\r\nUkuran  :105cm x 220cm', 'gambar 15.png', '200000', 1, 2, NULL, NULL, 43),
(8, 'Batik Ciprat Bintang', 'Motif Ciprat Bintang\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nReady stok\r\n160rb', 'batik_bintang.png', '160.000', 2, 2, NULL, NULL, 100),
(9, 'Batik Ciprat Motif Dong Telo', 'Motif Dong Telo\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 200rb', 'batik_dongtelo.png', '200.000', 2, 5, NULL, NULL, 90),
(10, 'Batik Motif Kembang Krokot', 'Motif Terbaru Kembang Krokot\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb', 'batik_kembangkrokot.png', '150.000', 2, 5, NULL, NULL, 30),
(11, 'Batik Motif Cahaya Pelangi', 'Motif cahaya pelangi\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nHarga 160rb', 'cahaya_pelangi.png', '160.000', 2, 1, NULL, NULL, 50),
(12, 'Batik MOtif Ciprat Anyaman', 'Motif ciprat anyaman\r\nUkuran 2,15 x 1,10\r\nKain Primisima\r\nReady stok', 'ciprat_anyaman.png', '160.000', 2, 2, NULL, NULL, 30),
(13, 'Batik Ciprat Motif Balok', 'Motif ciprat balok\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nReady stok\r\nBisa reques warna', 'ciprat_balok.png', '160.000', 2, 6, NULL, NULL, 29),
(14, 'Batik Ciprat Rumput', 'Motif ciprat Rumput\r\nUkuran 2,15 x 1,10\r\nReady stok\r\n150rb\r\nBisa reques warna', 'ciprat_rumput.png', '150.000', 2, 1, NULL, NULL, 10),
(15, 'Batik Ciprat Tumpul Jumput', 'Motif Tumpal jumput berbagai warna ready \r\n140rb\r\nBisa reques warna', 'tumpal_jumput.png', '140.000', 2, 6, NULL, NULL, 60),
(16, 'Batik Ciprat Pelangi Tetes', 'Motif Pelangi Tetes berbagai warna ready stok\r\nBisa reques warna', 'pelangi_tetes.png', '150.000', 2, 2, NULL, NULL, 47),
(17, 'Batik Ciprat Motif Layangan', 'Motif Layangan\r\nUkuran 2,15 x 1,10\r\nPrimisima\r\nHarga 160rb\r\nReady stok', 'motif_layangan.png', '160.000', 2, 5, NULL, NULL, 20),
(18, 'Batik Ciprat Motif Prapatan', 'Motif Prapatan\r\nHarga 160rb\r\nUkuran 2,15 x 1,10\r\nWarna bisa memilih\r\nReady stok kain primisima', 'motif_prapatan.png', '160.000', 2, 6, NULL, NULL, 20),
(19, 'Batik Ciprat Motif Rubik', 'Motif rubik\r\nUkuran 2,15 x 1,10\r\nPrimisima\r\nHarga 160rb\r\nReady stok', 'motif_rubik.png', '160.000', 2, 3, NULL, NULL, 30),
(20, 'Batik Ciprat Motif  Kotak', 'Motif kotak\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 160rb\r\nBisa reques warna', 'motif_kotak.png', '160.000', 2, 3, NULL, NULL, 35),
(21, 'Batik Ciprat Motif Matahari', 'Motif Bunga Matahari\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb\r\nBisa reques warna', 'motif_bungamata.png', '150.000', 2, 6, NULL, NULL, 40),
(22, 'Batik Ciprat Cendol Dawet', 'Motif Terbaru Cendol Dawet \r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb\r\nBisa reques warna', 'krokot.png', '150.000', 2, 5, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `province_id` tinyint(11) UNSIGNED NOT NULL,
  `nama_province` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `province_id`, `nama_province`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aceh', NULL, NULL),
(2, 2, 'Sumatra Utara', NULL, NULL),
(3, 3, 'Sumatra Barat', NULL, NULL),
(4, 4, 'Riau', NULL, NULL),
(5, 5, 'Jambi', NULL, NULL),
(6, 6, 'Sumatera Selata', NULL, NULL),
(7, 7, 'Bengkulu', NULL, NULL),
(8, 8, 'Lampung', NULL, NULL),
(9, 9, 'Kepulauan Bangka Belitung', NULL, NULL),
(10, 10, 'Kepulauan Riau', NULL, NULL),
(11, 11, 'DKI Jakarta', NULL, NULL),
(12, 12, 'Jawa Barat', NULL, NULL),
(13, 13, 'Jawa Tengah', NULL, NULL),
(14, 14, 'DI Yogyakarta', NULL, NULL),
(15, 15, 'Jawa Timur', NULL, NULL),
(16, 16, 'Banten', NULL, NULL),
(17, 17, 'Bali', NULL, NULL),
(18, 18, 'Nusa Tenggara Barat', NULL, NULL),
(19, 19, 'Nusa Tenggara Timur', NULL, NULL),
(20, 20, 'Kalimantan Barat', NULL, NULL),
(21, 21, 'Kalimantan Tenggara', NULL, NULL),
(22, 22, 'Kalimantan Selatan', NULL, NULL),
(23, 23, 'Kalimantan Timur', NULL, NULL),
(24, 24, 'Kalimantan Utara', NULL, NULL),
(25, 25, 'Sulawesi Utara', NULL, NULL),
(26, 26, 'Sulawesi Tengah', NULL, NULL),
(27, 27, 'Sulawesi Selatan', NULL, NULL),
(28, 28, 'Sulawesi Tenggara', NULL, NULL),
(29, 29, 'Gorontalo', NULL, NULL),
(30, 30, 'Sulawesi Barat', NULL, NULL),
(31, 31, 'Maluku', NULL, NULL),
(32, 32, 'Maluku Utara', NULL, NULL),
(33, 33, 'Papua', NULL, NULL),
(34, 34, 'Papua Barat', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `bank_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'BRI', 'Deni Mustika', '0341-01-000-743xxx', NULL, NULL),
(2, 'Bank Mandiri', 'Saktiyaningrum', ' 111-00-045xxxx-xxx', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_order`
--

CREATE TABLE `status_order` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$I', 'admin', NULL, NULL, NULL),
(2, 'susanti', 'susanti@gmail.com', NULL, '$2y$10$a', 'customer', NULL, '2022-06-05 02:52:54', '2022-06-05 02:52:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alamat_toko`
--
ALTER TABLE `alamat_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cekongkir`
--
ALTER TABLE `cekongkir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_order`
--
ALTER TABLE `status_order`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `alamat_toko`
--
ALTER TABLE `alamat_toko`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `cekongkir`
--
ALTER TABLE `cekongkir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `status_order`
--
ALTER TABLE `status_order`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
