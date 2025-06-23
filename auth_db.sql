-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2025 pada 11.10
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `damage_reports`
--

CREATE TABLE `damage_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room` varchar(255) NOT NULL,
  `damage_type` varchar(255) NOT NULL,
  `found_date` date NOT NULL,
  `description` text DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `reported_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `damage_reports`
--

INSERT INTO `damage_reports` (`id`, `room`, `damage_type`, `found_date`, `description`, `photo_path`, `status`, `reported_by`, `created_at`, `updated_at`) VALUES
(6, 'Mandalika Room', 'AC Rusak', '2025-06-02', 'ga dingin', 'damage_photos/Hoe6s3GExheNn3Kggjq4GQMewmX0uBxwf2pGfPeu.png', 'done', 1, '2025-06-03 05:52:31', '2025-06-05 03:08:28'),
(7, 'Mandalika Room', 'AC Rusak', '2025-06-04', 'Ga tau  ni', 'damage_photos/YkDNbYBWt2OBEPPLz7HIPfjZliXTZbgRSjKfwdQS.png', 'done', 4, '2025-06-03 08:56:43', '2025-06-03 09:42:01'),
(8, 'Toba Room', 'AC Rusak', '2025-06-11', 'asd', 'damage_photos/A74xNd8jN7NfqopkXtSRgVbipgIsEogYwyfkNx97.png', 'Pending', 4, '2025-06-03 08:58:12', '2025-06-03 08:58:12'),
(9, 'Function Room B1', 'AC Rusak', '2025-06-05', 'asd', 'damage_photos/YDxfu0S8tLsv8NlT5uvmasUQvFS7ZOGRlTQEzC5T.png', 'on progress', 4, '2025-06-03 08:58:49', '2025-06-05 03:12:23'),
(11, 'Krakatau Room', 'AC Rusak', '2025-06-04', NULL, NULL, 'done', 4, '2025-06-03 09:00:10', '2025-06-08 02:53:06'),
(12, 'Mandalika Room', 'AC Rusak', '2025-06-04', NULL, NULL, 'Pending', 4, '2025-06-03 09:00:34', '2025-06-03 09:00:34'),
(16, 'Mandalika Room', 'AC Rusak', '2025-06-06', 'asdads', 'damage_photos/wThaCUF0RICrXI1EVtiuI9o6WHCy9v7zial1tcfC.png', 'Pending', 1, '2025-06-05 03:12:50', '2025-06-05 03:12:50');

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
(7, '0001_01_01_000000_create_users_table', 1),
(8, '0001_01_01_000001_create_cache_table', 1),
(9, '0001_01_01_000002_create_jobs_table', 1),
(10, '2025_05_27_124714_add_role_to_users_table', 1),
(11, '2025_05_27_151352_create_rooms_table', 1),
(12, '2025_05_30_092058_create_room_bookings_table', 1),
(13, '2025_05_31_140831_create_notifications_table', 2),
(14, '2025_06_03_121909_create_damage_reports_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9e9956f3-157a-48fa-b916-e309b71ce646', 'App\\Notifications\\BookingCreated', 'App\\Models\\User', 1, '{\"title\":\"room_changed\",\"message\":\"Sorry, \\\"Toba Room\\\" Cannot be used. We are directing you to use \\\"Raja Ampat Room\\\".\"}', '2025-06-08 02:41:56', '2025-06-08 02:41:54', '2025-06-08 02:41:56'),
('a38476b5-c370-4d5f-a56a-09ba840cf9b2', 'App\\Notifications\\BookingCreated', 'App\\Models\\User', 1, '{\"title\":\"approved\",\"message\":\"Your Booking has been approved.\"}', '2025-06-08 02:27:46', '2025-06-08 02:27:44', '2025-06-08 02:27:46'),
('ed47c961-c2dd-4921-b94a-cf9fdde10d6a', 'App\\Notifications\\BookingCancelled', 'App\\Models\\User', 1, '{\"message\":\"Admin has canceled \\\"Krakatau Room\\\" at 09-07-2025.\"}', '2025-06-08 02:53:19', '2025-06-08 02:53:16', '2025-06-08 02:53:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `location`, `capacity`, `available`, `created_at`, `updated_at`) VALUES
(7, 'Mandalika Room', 'Gedung B1', 30, 1, '2025-06-01 06:48:55', '2025-06-05 03:11:29'),
(8, 'Function Room B1', 'Gedung B1', 35, 0, '2025-06-01 06:49:19', '2025-06-05 00:26:03'),
(9, 'Toba Room', 'Gedung B2', 40, 1, '2025-06-01 06:49:45', '2025-06-01 06:49:45'),
(10, 'Krakatau Room', 'Gedung B2', 40, 0, '2025-06-01 06:50:08', '2025-06-05 05:44:32'),
(11, 'Raja Ampat Room', 'Gedung B2', 40, 0, '2025-06-01 06:50:25', '2025-06-03 18:58:21'),
(12, 'Function Room', 'Gedung B2', 30, 1, '2025-06-01 06:50:48', '2025-06-01 06:50:48'),
(13, 'Komodo Room', 'Gedung B3', 40, 1, '2025-06-01 06:51:17', '2025-06-01 06:51:17'),
(14, 'Weru Room', 'Gedung B3', 30, 1, '2025-06-01 06:51:32', '2025-06-03 18:35:38'),
(15, 'Natuna Room', 'Gedung B3', 35, 1, '2025-06-01 06:52:06', '2025-06-03 18:35:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_bookings`
--

CREATE TABLE `room_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('approved','decline','pending') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `room_bookings`
--

INSERT INTO `room_bookings` (`id`, `user_id`, `applicant_name`, `room_name`, `activity_type`, `capacity`, `booking_date`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(11, 4, 'Udin', 'Mandalika Room', 'Praktikum', 15, '2025-06-02', '00:41:00', '05:36:00', 'approved', '2025-05-31 05:36:56', '2025-06-01 08:31:39'),
(15, 4, 'Albertus', 'Function Room B1', 'Praktikum', 12, '2025-06-03', '08:47:00', '12:47:00', 'approved', '2025-05-31 05:47:51', '2025-06-03 06:23:26'),
(35, 1, 'Albert', 'Function Room', 'Praktikum', 25, '2025-06-05', '21:31:00', '22:31:00', 'approved', '2025-06-03 06:31:21', '2025-06-03 18:55:10'),
(43, 1, 'Admin', 'Raja Ampat Room', 'Praktikum', 15, '2025-06-06', '11:57:00', '17:58:00', 'approved', '2025-06-05 02:58:02', '2025-06-08 02:41:54'),
(44, 1, 'Jamal', 'Raja Ampat Room', 'Praktikum', 15, '2025-06-06', '13:03:00', '18:03:00', 'approved', '2025-06-05 03:03:38', '2025-06-08 02:27:43'),
(48, 4, 'Jamal', 'Natuna Room', 'Praktikum', 16, '2025-06-13', '08:14:00', '13:14:00', 'approved', '2025-06-05 03:14:08', '2025-06-05 03:14:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'employee',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Udin', '+6281212125544', 'test@gmail.com', '$2y$12$BVJzE366LYCdcjk.nUiuJO6c0MbiArT6vUQ3VYjVs5PNUCdePpzr2', 'admin', '2025-05-30 09:32:45', '2025-06-03 09:14:20'),
(3, 'Guest', NULL, '00000000', 'guest@example.com', '$2y$12$WzW7GCwBgTZ0KpDKrR6u7u.RueDCnTMSxO8/Tm0XrLmuYapZ2ukxG', 'guest', '2025-05-31 02:21:11', '2025-05-31 02:25:10'),
(4, 'Jamal', 'Setiabudi', '+6289511114521', 'test2@gmail.com', '$2y$12$nR8vgC5ztTZ48tmLgNloY.IV2bkcOONFYuut8Qj0nmtA.NRrZFGDu', 'employee', '2025-05-31 04:21:48', '2025-06-03 09:41:40');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `damage_reports`
--
ALTER TABLE `damage_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `damage_reports_reported_by_foreign` (`reported_by`);

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
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_bookings_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT untuk tabel `damage_reports`
--
ALTER TABLE `damage_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `room_bookings`
--
ALTER TABLE `room_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `damage_reports`
--
ALTER TABLE `damage_reports`
  ADD CONSTRAINT `damage_reports_reported_by_foreign` FOREIGN KEY (`reported_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD CONSTRAINT `room_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
