-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2022 pada 03.47
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
  `detail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 46, 'Simbatan Wetan, Simbatan, Kec. Nguntoronadi, Kabupaten Magetan, Jawa Timur 63383', NULL, NULL);

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
(17, 11, 'Jakarta Selatan', NULL, NULL),
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
(31, 13, 'Magelang', NULL, NULL),
(32, 13, 'Pekalongan', NULL, NULL),
(33, 13, 'Salatiga', NULL, NULL),
(34, 13, 'Semarang', NULL, NULL),
(35, 13, 'Surakarta', NULL, NULL),
(36, 13, 'Tegal', NULL, NULL),
(37, 15, 'Batu', NULL, NULL),
(38, 15, 'Blitar', NULL, NULL),
(39, 15, 'Kediri', NULL, NULL),
(40, 15, 'Madiun', NULL, NULL),
(41, 15, 'Malang', NULL, NULL),
(42, 15, 'Mojokerto', NULL, NULL),
(43, 15, 'Pasuruan', NULL, NULL),
(44, 15, 'Probolinggo', NULL, NULL),
(45, 15, 'Surabaya', NULL, NULL),
(46, 15, 'Magetan', NULL, NULL),
(47, 20, 'Pontianak', NULL, NULL),
(48, 20, 'Singkawang', NULL, NULL),
(49, 22, 'Banjarbaru', NULL, NULL),
(50, 22, 'Banjarmasin', NULL, NULL),
(51, 21, 'Palangkaraya', NULL, NULL),
(52, 23, 'Balikpapan', NULL, NULL),
(53, 23, 'Bontang', NULL, NULL),
(54, 23, 'Samarinda', NULL, NULL),
(55, 24, 'Tarakan', NULL, NULL),
(56, 10, 'Batam', NULL, NULL),
(57, 10, 'Tanjungpinang', NULL, NULL),
(58, 8, 'Bandar Lampung', NULL, NULL),
(59, 8, 'Metro', NULL, NULL),
(60, 32, 'Ternate', NULL, NULL),
(61, 32, 'Tidoro Kepulauan', NULL, NULL),
(62, 31, 'Ambon', NULL, NULL),
(63, 31, 'Tual', NULL, NULL),
(64, 18, 'Bima', NULL, NULL),
(65, 18, 'Mataram', NULL, NULL),
(66, 19, 'Kupang', NULL, NULL),
(67, 34, 'Sorong', NULL, NULL),
(68, 33, 'Jayapura', NULL, NULL),
(69, 4, 'Dumai', NULL, NULL),
(70, 4, 'Pekanbaru', NULL, NULL),
(71, 27, 'Makassar', NULL, NULL),
(72, 27, 'Palopo', NULL, NULL),
(73, 27, 'Parepare', NULL, NULL),
(74, 26, 'Palu', NULL, NULL),
(75, 28, 'Baubau', NULL, NULL),
(76, 28, 'Kendari', NULL, NULL),
(77, 28, 'Bitung', NULL, NULL),
(78, 25, 'Kotamobagu', NULL, NULL),
(79, 25, 'Manado', NULL, NULL),
(80, 25, 'Tomohon', NULL, NULL),
(81, 3, 'Bukittinggi', NULL, NULL),
(82, 3, 'Padang', NULL, NULL),
(83, 3, 'Padang Panjang', NULL, NULL),
(84, 3, 'Pariaman', NULL, NULL),
(85, 3, 'Sawahlunto', NULL, NULL),
(86, 3, 'Solok', NULL, NULL),
(87, 6, 'Lubuklinggau', NULL, NULL),
(88, 6, 'Pagar Alam', NULL, NULL),
(89, 6, 'Palembang', NULL, NULL),
(90, 6, 'Prabumulih', NULL, NULL),
(91, 6, 'Sekayu', NULL, NULL),
(92, 2, 'Binjai', NULL, NULL),
(93, 2, 'Gunungsitoli', NULL, NULL),
(94, 2, 'Medan', NULL, NULL),
(95, 2, 'Padang Sidempuan', NULL, NULL),
(96, 2, 'Pematangsiantar', NULL, NULL),
(97, 2, 'Sibolga', NULL, NULL),
(98, 2, 'Tanjungbalai', NULL, NULL),
(99, 2, 'Tebing Tinggi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_couriers` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `code`, `nama_couriers`, `created_at`, `updated_at`) VALUES
(1, 'jne', 'JNE', NULL, NULL),
(2, 'pos', 'POS', NULL, NULL),
(3, 'tiki', 'TIKI', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_order`
--

CREATE TABLE `detail_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `invoice` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subtotal` int(11) NOT NULL,
  `no_resi` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weigth` int(11) NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stok` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `weigth`, `categories_id`, `created_at`, `updated_at`, `stok`) VALUES
(1, 'Batik Ciprat Obat Nyamuk', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'gambar 2.jpg', '150000', 100, 3, NULL, NULL, '50'),
(3, 'Batik Ciprat Kecubung', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'gambar 1.jpg', '150000', 100, 5, NULL, NULL, '30'),
(4, 'Batik Ciprat Motif Bunga Tulip', 'Batik Ciprat motif bunga tulip\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'gambar 7.png', '150000', 100, 5, NULL, NULL, '80'),
(5, 'Batik Pelangi Coret', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif pelangi coret\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm', 'gambar 12.png', '150000', 100, 3, NULL, NULL, '20'),
(6, 'Batik Tumpul Jumput', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif batik Tumpul Jumput\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm\r\n', 'gambar 13.png', '150000 - 400000', 100, 5, NULL, NULL, '15'),
(7, 'Batik Gelombang Laut', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif Gelombang Laut\r\nBahan   : katun jepang\r\nUkuran  :105cm x 220cm', 'gambar 14.png', '150000 - 200000', 100, 4, NULL, NULL, '30'),
(8, 'Batik Gelombang Laut', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif Gelombang Laut\r\nBahan   : katun jepang\r\nUkuran  :105cm x 220cm', 'gambar 14.png', '150000 - 200000', 100, 4, NULL, NULL, '30'),
(9, 'Batik Ciprat Morat - marit', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif lurik pojok\r\nBahan   : katun Jepang\r\nUkuran  :105cm x 220cm', 'gambar 15.png', '200000', 100, 2, NULL, NULL, '43'),
(10, 'Batik Ciprat Bintang', 'Motif Ciprat Bintang\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nReady stok\r\n160rb', 'batik_bintang.png', '160.000', 100, 2, NULL, NULL, '100'),
(11, 'Batik Ciprat Motif Dong Telo', 'Motif Dong Telo\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 200rb', 'batik_dongtelo.png', '200.000', 100, 5, NULL, NULL, '90'),
(12, 'Batik Motif Kembang Krokot', 'Motif Terbaru Kembang Krokot\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb', 'batik_kembangkrokot.png', '150.000', 100, 5, NULL, NULL, '30'),
(13, 'Batik Motif Cahaya Pelangi', 'Motif cahaya pelangi\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nHarga 160rb', 'cahaya_pelangi.png', '160.000', 100, 1, NULL, NULL, '50'),
(14, 'Batik MOtif Ciprat Anyaman', 'Motif ciprat anyaman\r\nUkuran 2,15 x 1,10\r\nKain Primisima\r\nReady stok', 'ciprat_anyaman.png', '160.000', 100, 2, NULL, NULL, '30'),
(15, 'Batik Ciprat Motif Balok', 'Motif ciprat balok\r\nPrimisima\r\nUkuran 2,15 x 1,10\r\nReady stok\r\nBisa reques warna', 'ciprat_balok.png', '160.000', 100, 6, NULL, NULL, '29'),
(16, 'Batik Ciprat Rumput', 'Motif ciprat Rumput\r\nUkuran 2,15 x 1,10\r\nReady stok\r\n150rb\r\nBisa reques warna', 'ciprat_rumput.png', '150.000', 100, 1, NULL, NULL, '10'),
(17, 'Batik Ciprat Motif Prapatan', 'Motif Prapatan\r\nHarga 160rb\r\nUkuran 2,15 x 1,10\r\nWarna bisa memilih\r\nReady stok kain primisima', 'motif_prapatan.png', '160.000', 100, 6, NULL, NULL, '20'),
(18, 'Batik Ciprat Motif Rubik', 'Motif rubik\r\nUkuran 2,15 x 1,10\r\nPrimisima\r\nHarga 160rb\r\nReady stok', 'motif_rubik.png', '160.000', 100, 3, NULL, NULL, '30'),
(19, 'Batik Ciprat Motif  Kotak', 'Motif kotak\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 160rb\r\nBisa reques warna', 'motif_kotak.png', '160.000', 100, 3, NULL, NULL, '35'),
(20, 'Batik Ciprat Motif Matahari', 'Motif Bunga Matahari\r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb\r\nBisa reques warna', 'motif_bungamatahari.png', '150.000', 100, 6, NULL, NULL, '40'),
(21, 'Batik Ciprat Cendol Dawet', 'Motif Terbaru Cendol Dawet \r\nReady stok\r\nUkuran 2,15 x 1,10\r\nHarga 150rb\r\nBisa reques warna', 'krokot.png', '150.000', 100, 5, NULL, NULL, '15'),
(22, 'Batik Motif Kembang Api', 'Motif KEMBANG API\r\nUkuran 2,15×1,10\r\nKatun primisima\r\n160rb', 'kembang_api.png', '160.000', 100, 6, NULL, NULL, 'pre-order'),
(23, 'Batik Motif Ciprat Gasing', 'Motif ciprat gasing\r\nUkuran 2,15×1,10\r\nKain primisima\r\nHarga 160rb', 'gasing.png', '160.000', 100, 6, NULL, NULL, 'pre-order');

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Pengrajin','Customer','Ketua') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `alamat`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'Ds. Simbatan, Simbatan Wetan, Kec. Nguntoronadi, Kab.Magetan', NULL, '$2y$10$AiGWa', 'Admin', NULL, NULL, NULL),
(2, 'Ruqayah', 'ruqayah@gmail.com', '', NULL, '$2y$10$XM9BZ', 'Admin', NULL, '2022-06-16 16:33:15', '2022-06-16 16:33:15');

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
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_index` (`user_id`),
  ADD KEY `status_order_id` (`status_order_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
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
-- AUTO_INCREMENT untuk tabel `status_order`
--
ALTER TABLE `status_order`
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
  ADD CONSTRAINT `detail_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
