-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2026 pada 16.08
-- Versi server: 10.11.16-MariaDB
-- Versi PHP: 8.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `ginjol`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` varchar(255) NOT NULL,
  `nama_brand` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `nama_brand`, `created_at`, `updated_at`) VALUES
('BRD001', 'Toyota', '2026-11-18 21:48:23', '2026-11-18 21:48:23'),
('BRD002', 'Honda', '2026-11-18 21:48:23', '2026-11-18 21:48:23'),
('BRD003', 'Yamaha', '2026-11-18 21:48:23', '2026-11-18 21:48:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1795014534),
('livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1795014532;', 1795014532);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
('KAT001', 'Mesin', '2026-11-18 21:48:23', '2026-11-18 21:48:23'),
('KAT002', 'Bodi', '2026-11-18 21:48:23', '2026-11-18 21:48:23'),
('KAT003', 'Kelistrikan', '2026-11-18 21:48:23', '2026-11-18 21:48:23'),
('KAT004', 'Kaki-Kaki', '2026-11-18 21:48:23', '2026-11-18 21:48:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_11_18_182724_add_role_to_users_table', 1),
(5, '2026_11_18_182724_create_kategoris_table', 1),
(6, '2026_11_18_182725_create_brands_table', 1),
(7, '2026_11_18_182726_create_produks_table', 1),
(8, '2026_11_18_182727_create_pembelians_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelians`
--

CREATE TABLE `pembelians` (
  `id_pembelian` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_bayar` bigint(20) NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL,
  `status` enum('Verifikasi','Proses','Kirim','Sampai','Selesai') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelians`
--

INSERT INTO `pembelians` (`id_pembelian`, `user_id`, `kode_produk`, `jumlah`, `total_bayar`, `tanggal_transaksi`, `status`, `created_at`, `updated_at`) VALUES
('TRX-J7j6KBJm', 5, 'SP001', 1, 45000, '2026-11-18 15:07:04', 'Verifikasi', '2026-11-18 15:07:04', '2026-11-18 15:07:04'),
('TRX-QSp09bUQ', 5, 'SP002', 4, 340000, '2026-11-18 15:07:01', 'Verifikasi', '2026-11-18 15:07:01', '2026-11-18 15:07:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `tipe_kendaraan` varchar(255) NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`kode_produk`, `nama_produk`, `tipe_kendaraan`, `kategori_id`, `harga`, `stok`, `gambar`, `brand_id`, `created_at`, `updated_at`) VALUES
('21', 'selang bengsin', 'motor', 'KAT001', 23000, 12, NULL, 'BRD002', '2026-11-18 15:08:27', '2026-11-18 15:08:27'),
('SP001', 'Filter Oli Toyota Avanza', 'Mobil', 'KAT001', 45000, 49, 'https://via.placeholder.com/400x300?text=Filter+Oli', 'BRD001', '2026-11-18 21:48:23', '2026-11-18 15:07:04'),
('SP002', 'Kampas Rem Honda Beat', 'Motor', 'KAT004', 85000, 26, 'https://via.placeholder.com/400x300?text=Kampas+Rem', 'BRD002', '2026-11-18 21:48:23', '2026-11-18 15:07:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('g00DeiBY9752w6qqfPvPisEGFN5DK1cCM5lBlarI', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZW9ZSVNIS0tlMzc0eEd1akd6enJERUVaYXU0Wm8yN3pCcnZEZ0x2NSI7czo4OiJmaWxhbWVudCI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjE6e3M6NzoibWFpbGJveCI7czo0MDoibmtZYkFkWVFDSVdjRjF3RzdLcDd5aVlsZ1FDcEUxN05EZWNzYnFtSCI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1795014512),
('iD8WDp1I2tpI7yyf05TIPFz16chSgNUyl1dZu15g', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiOHJEc3FsVkNEaDNFOENRVDdRcUZoUXJsUlNwTkwyR3UzamQzdVFCOCI7czo4OiJmaWxhbWVudCI7YToyOntzOjEzOiJub3RpZmljYXRpb25zIjthOjE6e3M6NzoibWFpbGJveCI7czo0MDoiblI0aWhNUG8zQXJNUTBDdmlPd3ZkWktXRzhhdEh6aDhQZ2ZycnlXciI7fXM6NjoidGFibGVzIjthOjI6e3M6NjQ6Ijg5NTRlMzI3YjIwYmI1ZmU5MDU1YmY5YmMwMGQ2MzNmNzhkMTY2YmYxODc0NmQzM2QzZGZiNTNkYjQ2NmIxODIiO2E6MTp7czo3OiJjb2x1bW5zIjthOjc6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToia29kZV9wcm9kdWsiO3M6NToibGFiZWwiO3M6MTE6IktvZGUgcHJvZHVrIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToibmFtYV9wcm9kdWsiO3M6NToibGFiZWwiO3M6MTE6Ik5hbWEgcHJvZHVrIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNDoidGlwZV9rZW5kYXJhYW4iO3M6NToibGFiZWwiO3M6MTQ6IlRpcGUga2VuZGFyYWFuIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoyMjoia2F0ZWdvcmkubmFtYV9rYXRlZ29yaSI7czo1OiJsYWJlbCI7czo4OiJLYXRlZ29yaSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTY6ImJyYW5kLm5hbWFfYnJhbmQiO3M6NToibGFiZWwiO3M6NToiQnJhbmQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImhhcmdhIjtzOjU6ImxhYmVsIjtzOjU6IkhhcmdhIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJzdG9rIjtzOjU6ImxhYmVsIjtzOjQ6IlN0b2siO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fX1zOjY0OiIzZDI3ZjAwMDY3Y2ZmZGZiYmFkOGMxMzE5NmM5Njc2MWQ2Mzc5NTk5MTZmZDY2NTMwMDdhZjIwZGEyMzZiMjkwIjthOjE6e3M6NzoiY29sdW1ucyI7YTo3OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6ImlkX3BlbWJlbGlhbiI7czo1OiJsYWJlbCI7czoxMjoiSWQgcGVtYmVsaWFuIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJ1c2VyLm5hbWUiO3M6NToibGFiZWwiO3M6ODoiQ3VzdG9tZXIiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE4OiJwcm9kdWsubmFtYV9wcm9kdWsiO3M6NToibGFiZWwiO3M6OToiU3BhcmVwYXJ0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJqdW1sYWgiO3M6NToibGFiZWwiO3M6NjoiSnVtbGFoIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToidG90YWxfYmF5YXIiO3M6NToibGFiZWwiO3M6MTE6IlRvdGFsIGJheWFyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNzoidGFuZ2dhbF90cmFuc2Frc2kiO3M6NToibGFiZWwiO3M6MTc6IlRhbmdnYWwgdHJhbnNha3NpIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJzdGF0dXMiO3M6NToibGFiZWwiO3M6NjoiU3RhdHVzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX19fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL3Byb2R1a3MvMjEvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkSTRKLzBxMER2RFRJSGxld3NrdWExZS9hUUxaWGZvL3N2NS81OHNPcDhSaUlDeGROQktCTzIiO30=', 1795014515);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@example.com', NULL, '$2y$12$I4J/0q0DvDTIHlewskua1e/aQLZXfo/sv5/58sOp8RiICxdNBKBO2', NULL, '2026-11-18 21:48:23', '2026-11-18 21:48:23', 'admin'),
(2, 'Customer', 'customer@example.com', NULL, '$2y$12$NdGYDR7JudBg1inkzQ6C0.hPcfhXhGTjpYsZgoHEhfnMozYLJZZa.', NULL, '2026-11-18 21:48:23', '2026-11-18 21:48:23', 'customer'),
(5, 'ompong', 'ompong@gmail.com', NULL, '$2y$12$YXKmwggOdHK1kT/LsYgWbeUemHS6uH/7yGSTSZ4Vt8BbLhrCwsaCq', NULL, '2026-11-18 15:06:56', '2026-11-18 15:06:56', 'customer');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `pembelians_user_id_foreign` (`user_id`),
  ADD KEY `pembelians_kode_produk_foreign` (`kode_produk`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`kode_produk`),
  ADD KEY `produks_kategori_id_foreign` (`kategori_id`),
  ADD KEY `produks_brand_id_foreign` (`brand_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  ADD CONSTRAINT `pembelians_kode_produk_foreign` FOREIGN KEY (`kode_produk`) REFERENCES `produks` (`kode_produk`),
  ADD CONSTRAINT `pembelians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `produks_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `produks_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
