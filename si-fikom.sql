-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table si_fikom.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kategori_id` bigint NOT NULL,
  `judul_berita` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `konten_berita` text COLLATE utf8mb4_general_ci NOT NULL,
  `gambar_cover` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lampiran` text COLLATE utf8mb4_general_ci,
  `lampiran_nama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kategori_id` (`kategori_id`),
  CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_berita` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table si_fikom.berita: ~1 rows (approximately)
DELETE FROM `berita`;
INSERT INTO `berita` (`id`, `kategori_id`, `judul_berita`, `konten_berita`, `gambar_cover`, `lampiran`, `lampiran_nama`, `created_at`, `updated_at`) VALUES
	(2, 2, 'Judul Berita 2', 'Konten Berita 2', NULL, NULL, '', '2024-06-27 08:51:24', '2024-06-27 08:51:24');

-- Dumping structure for table si_fikom.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.cache: ~4 rows (approximately)
DELETE FROM `cache`;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1751602373),
	('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1751602373;', 1751602373),
	('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1751599390),
	('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1751599390;', 1751599390);

-- Dumping structure for table si_fikom.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.cache_locks: ~0 rows (approximately)
DELETE FROM `cache_locks`;

-- Dumping structure for table si_fikom.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table si_fikom.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;

-- Dumping structure for table si_fikom.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.job_batches: ~0 rows (approximately)
DELETE FROM `job_batches`;

-- Dumping structure for table si_fikom.kategori_berita
CREATE TABLE IF NOT EXISTS `kategori_berita` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table si_fikom.kategori_berita: ~2 rows (approximately)
DELETE FROM `kategori_berita`;
INSERT INTO `kategori_berita` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
	(1, 'Prestasi', '2024-06-27 08:34:43', '2024-06-27 08:34:43'),
	(2, 'Seminar', '2024-06-27 08:34:43', '2024-06-27 08:34:43');

-- Dumping structure for table si_fikom.kategori_kompetisi
CREATE TABLE IF NOT EXISTS `kategori_kompetisi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table si_fikom.kategori_kompetisi: ~2 rows (approximately)
DELETE FROM `kategori_kompetisi`;
INSERT INTO `kategori_kompetisi` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
	(1, 'Internal Competition', '2024-07-13 03:49:57', '2024-07-13 03:49:57'),
	(2, 'External Competition', '2024-07-13 03:49:57', '2024-07-13 03:49:57');

-- Dumping structure for table si_fikom.kompetisi
CREATE TABLE IF NOT EXISTS `kompetisi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kategori_id` bigint NOT NULL,
  `judul_kompetisi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `konten_kompetisi` text COLLATE utf8mb4_general_ci NOT NULL,
  `gambar_kompetisi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lampiran` text COLLATE utf8mb4_general_ci,
  `lampiran_nama` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kategori_id` (`kategori_id`),
  CONSTRAINT `kompetisi_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_kompetisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table si_fikom.kompetisi: ~2 rows (approximately)
DELETE FROM `kompetisi`;
INSERT INTO `kompetisi` (`id`, `kategori_id`, `judul_kompetisi`, `konten_kompetisi`, `gambar_kompetisi`, `lampiran`, `lampiran_nama`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Membuat Sistem Informasi Perpustakaan dengan Kolaborasi 3 Bahasa Pemrograman', 'Kompetisi "Membuat Sistem Informasi Perpustakaan dengan Kolaborasi 3 Bahasa Pemrograman" menantang peserta untuk mengembangkan sebuah sistem informasi perpustakaan yang inovatif dan efisien menggunakan kombinasi tiga bahasa pemrograman yang berbeda. Peserta diharapkan dapat memanfaatkan keunggulan masing-masing bahasa pemrograman untuk menciptakan solusi yang integratif dan mudah digunakan, baik dari segi front-end, back-end, maupun database management. Kompetisi ini mendorong kreativitas, kolaborasi tim, dan kemampuan teknis dalam mengintegrasikan teknologi untuk memenuhi kebutuhan perpustakaan modern, serta meningkatkan aksesibilitas dan manajemen koleksi perpustakaan secara digital.', '01J2N1B97SNHWX5A39RBC0V5G0.jpg', '["01JZ9T3M9BS3TDDM30FKGZ96TS.pdf"]', '{"01JZ9T3M9BS3TDDM30FKGZ96TS.pdf":"Peraturan_Kompetisi_SI_Perpus.pdf"}', '2024-07-13 03:59:59', '2025-07-04 04:11:26'),
	(2, 2, 'Turnamen Data Analytics: Meningkatkan Keputusan Bisnis melalui Analisis Sistem Informasi', 'Selamat datang dalam Turnamen Data Analytics! Kompetisi ini mengundang tim terdiri dari 3-5 anggota untuk mengembangkan solusi inovatif yang meningkatkan keputusan bisnis melalui analisis sistem informasi. Peserta akan menyelesaikan tantangan bisnis nyata dengan menggunakan keterampilan analisis data terkini. Tahapan kompetisi meliputi penyerahan proposal, analisis mendalam, dan presentasi solusi di hadapan juri industri dan akademisi. Tujuan utama adalah mendorong penggunaan data untuk keputusan strategis bisnis yang lebih baik dan memfasilitasi kolaborasi lintas disiplin.\r\n\r\n', '01J2N1E1T7K4AVDQHP91KRYPGW.webp', '["01JZ9T4M5D3DN82Y6ASQQFK6H5.pdf"]', '{"01JZ9T4M5D3DN82Y6ASQQFK6H5.pdf":"Peraturan_Turnamen_Data_Analytics.pdf"}', '2024-07-13 03:59:59', '2025-07-04 04:11:59');

-- Dumping structure for table si_fikom.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.migrations: ~5 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_06_25_145130_add_image_path_to_prestasi_table', 2),
	(5, '2024_06_26_012914_create_presentasi_table', 3);

-- Dumping structure for table si_fikom.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table si_fikom.pengumuman
CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `judul_pengumuman` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `konten_pengumuman` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table si_fikom.pengumuman: ~3 rows (approximately)
DELETE FROM `pengumuman`;
INSERT INTO `pengumuman` (`id`, `judul_pengumuman`, `konten_pengumuman`, `created_at`, `updated_at`) VALUES
	(16001, 'Pendaftaran Kompetisi Poster Ilmiah Telah Dibuka', '📅 04 Juli 2025\n\nKompetisi Poster Ilmiah tingkat fakultas resmi dibuka!\nMahasiswa FIKOM dapat mendaftarkan diri mulai tanggal 5–12 Juli 2025.\nTema tahun ini adalah "Inovasi Digital dalam Komunikasi Modern".\nSegera daftarkan karyamu dan menangkan hadiah menarik serta sertifikat resmi!', '2024-06-23 13:43:57', '2025-07-04 03:58:42'),
	(16002, 'Pengumuman Finalis Lomba Karya Tulis Ilmiah 2025', '📅 30 Juni 2025\n\nSelamat kepada 10 finalis yang lolos seleksi Lomba Karya Tulis Ilmiah SI-FIKOM 2025.\nFinalis akan mengikuti tahap presentasi pada 7 Juli 2025 secara offline di Aula FIKOM.\nDaftar peserta dan panduan presentasi dapat dilihat melalui tautan yang disediakan di laman ini.', '2024-06-23 13:43:57', '2025-07-04 03:59:10'),
	(16003, 'Perubahan Jadwal Kompetisi Debat Bahasa Indonesia', '📅 28 Juni 2025\n\nDikarenakan adanya agenda fakultas mendadak, jadwal kompetisi debat yang semula dilaksanakan pada 4 Juli 2025 diundur menjadi 8 Juli 2025.\nMohon seluruh peserta memperbarui agenda dan hadir sesuai jadwal terbaru.\nWaktu: 13.00 - 16.00 WIB\nTempat: Aula Utama Universitas ABC\nJangan lewatkan kesempatan ini untuk memperluas pengetahuan Anda dalam dunia kewirausahaan. Daftar sekarang dan dapatkan wawasan berharga.', '2024-06-23 13:43:57', '2025-07-04 03:59:41');

-- Dumping structure for table si_fikom.prestasi
CREATE TABLE IF NOT EXISTS `prestasi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `judul_prestasi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi_prestasi` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table si_fikom.prestasi: ~3 rows (approximately)
DELETE FROM `prestasi`;
INSERT INTO `prestasi` (`id`, `judul_prestasi`, `deskripsi_prestasi`, `foto`, `created_at`, `updated_at`) VALUES
	(1618001, 'Mahasiswa UDB Surakarta Raih Beberapa Prestasi Dalam Selang Waktu Dua Bulan Di Tahun 2023', 'Mahasiswa merupakan salah satu kunci dari kesuksesan dan pencapaian dari perguruan tinggi yang mereka tempati dalam menggali ilmu termasuk pada Universitas Duta Bangsa Surakarta. Salah satu pencapaian Mahasiswa UDB Surakarta saat ini adalah dalam waktu selang dua bulan (Mei - Juni), sejumlah 6 mahasiswa mampu meraih prestasi dari beberapa kejuaraan yang digelar oleh beberapa lembaga. Hal tersebut menjadi kebanggaan tersendiri bagi Universitas Duta Bangsa Surakarta karena telah mencetak mahasiswa-mahasiswi penuh dengan prestasi yang mereka dapatkan. Beberapa nama mahasiswa dan juga prestasi yang mereka dapatkan diantaranya adalah : \r\n', '/images/prestasi_001.jpg', '2024-06-23 15:50:40', '2024-06-23 15:50:40'),
	(1618002, 'Mahasiswa FIKOM UDB Surakarta Raih Prestasi Dalam Ajang UNY National Information Technology Competition 2024', 'Prestasi membanggakan kembali diukir oleh mahasiswa Universitas Duta Bangsa Surakarta (UDB Surakarta). Prestasi tersebut dipersembahkan oleh Nikolas Antoni DM, Angky Fay Deleviar, Satria Yudha Mahendra yang merupakan Mahasiswa Program Studi (Prodi) S1 Teknik Informatika, serta Joel Adikurnia Purnama yang merupakan Mahasiswa Program Studi (Prodi) S1 Sistem Informasi Universitas Duta Bangsa Surakarta.\r\n\r\nMereka berhasil meraih Predikat Juara pada Kategori Pengembangan Aplikasi Permainan. UNY National Information Technology Competition merupakan jenis ajang kompetisi inovasi Teknologi Informasi yang diselenggarakan oleh UKM Restek bekerjasama dengan Kemahasiswaan Universitas Negeri Yogyakarta (UNY Yogyakarta), yang bertujuan untuk mewadahi minat dan bakat mahasiswa Indonesia dalam menciptakan solusi teknologi. \r\n\r\nDengan keberhasilan mahasiswa tersebut diharapkan dapat menjadikan motivasi Mahasiswa Universitas Duta Bangsa Surakart untuk meningkatkan semangat dalam memperoleh prestasi dan terus selalu berkarya.', '/images/prestasi_002.jpg', '2024-06-23 15:50:40', '2024-06-23 15:50:40'),
	(1618003, 'Prestasi UDB Dalam Proses Memperbaiki Kualitas SDM Di Bidang Pendidikan', 'Universitas Duta Bangsa dengan bangga mengumumkan prestasi yang luar biasa dalam memperbaiki kualitas sumber daya manusia di dunia pendidikan. Dalam kurun waktu  6 bulan, Universitas Duta Bangsa telah berhasil membantu  menaikkan jabatan fungsional sebanyak 16 dosen menjadi dosen dengan jabatan fungsional "Asisten Ahli". Selain itu, 22 dosen berhasil meningkatkan jabatan fungsional menjadi dosen dengan kualifikasi "Lektor" dan 2 dosen juga berhasil meningkatkan jabatan fungsional menjadi dosen dengan kualifikasi "Lektor Kepala".\r\n\r\nPrestasi ini merupakan hasil dari komitmen Universitas Duta Bangsa untuk meningkatkan kualitas akademik dan kesejahteraan dosen. Melalui program-program pengembangan karier dan pelatihan yang berkelanjutan, universitas telah memberikan dukungan dan bimbingan kepada dosen-dosennya untuk mengembangkan kompetensi dan prestasi mereka. Hingga saat ini, total jabatan fungsional dosen di Universitas Duta Bangsa telah mencapai angka yang baik, yaitu 60% dosen dari 150 dosen telah memiliki jabatan fungsional (diambil dari dashboard lldikti wilayah VI). Angka ini mencerminkan komitmen universitas dalam memajukan karier dosen dan menciptakan lingkungan akademik yang inklusif dan berkualitas.', '/images/prestasi_003.jpg', '2024-06-23 15:50:40', '2024-06-23 15:50:40');

-- Dumping structure for table si_fikom.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.sessions: ~1 rows (approximately)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('pCG1Xu70IqligZik5fljTu9LOrQPRNtXGaLFhVdS', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaGhYRzRNdjJUVXB1NDBsSHd3d2lxeVppbkRUWTdCUk53YkY5S3RuYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcmVzdGFzaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkL3F6a0l3M25NL2w2ak9PMjR0LkppT05Gc3cvTUhmQ1lOTlRaMXRrTE00Y2RoYTdqSEtIR0ciO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1751603280);

-- Dumping structure for table si_fikom.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_fikom.users: ~1 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'salma', '220101060@mhs.udb.ac.id', NULL, '$2y$12$/qzkIw3nM/l6jOO24t.JiONFsw/MHfCYNNTZ1tkLM4cdha7jHKHGG', NULL, '2024-06-25 21:31:38', '2024-06-25 21:31:38');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
