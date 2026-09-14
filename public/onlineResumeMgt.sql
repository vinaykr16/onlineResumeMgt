-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2026 at 03:29 AM
-- Server version: 10.11.18-MariaDB-cll-lve
-- PHP Version: 8.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineResumeMgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_roshinivats108@gmail.com|182.69.180.188:timer', 'i:1752084659;', 1752084659),
('laravel_cache_roshinivats108@gmail.com|182.69.180.188', 'i:1;', 1752084659),
('laravel_cache_hrrachna.jobs@gmail.com|182.69.181.233:timer', 'i:1753647480;', 1753647480),
('laravel_cache_hrrachna.jobs@gmail.com|182.69.181.233', 'i:3;', 1753647480),
('laravel_cache_hrrachna.job@gmail.com|182.69.181.233:timer', 'i:1753647654;', 1753647654),
('laravel_cache_hrrachna.job@gmail.com|182.69.181.233', 'i:4;', 1753647654),
('laravel_cache_roshnivats7@gmail.com|182.69.179.59:timer', 'i:1754145736;', 1754145736),
('laravel_cache_roshnivats7@gmail.com|182.69.179.59', 'i:1;', 1754145736),
('laravel_cache_roshinivats7@gmial.com|182.69.177.221:timer', 'i:1755544802;', 1755544802),
('laravel_cache_roshinivats7@gmial.com|182.69.177.221', 'i:2;', 1755544802),
('laravel_cache_admin@admin.com|3.70.97.140:timer', 'i:1756605952;', 1756605952),
('laravel_cache_admin@admin.com|3.70.97.140', 'i:5;', 1756605952),
('laravel_cache_admin|3.70.97.140:timer', 'i:1756605974;', 1756605974),
('laravel_cache_admin|3.70.97.140', 'i:5;', 1756605974),
('laravel_cache_admin@gmail.com|3.70.97.140:timer', 'i:1756605996;', 1756605996),
('laravel_cache_admin@gmail.com|3.70.97.140', 'i:5;', 1756605996),
('laravel_cache_admin@laptopbazar.co.in|3.70.97.140:timer', 'i:1756606022;', 1756606022),
('laravel_cache_admin@laptopbazar.co.in|3.70.97.140', 'i:5;', 1756606022),
('laravel_cache_co|3.70.97.140:timer', 'i:1756606045;', 1756606045),
('laravel_cache_co|3.70.97.140', 'i:5;', 1756606045),
('laravel_cache_4atoh0yq@gmail.com|167.71.194.68:timer', 'i:1759822820;', 1759822820),
('laravel_cache_4atoh0yq@gmail.com|167.71.194.68', 'i:1;', 1759822820);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vMcuC4GMb4KJBQcNKrywgbKjyKr3bvulqxu1HLNg', NULL, '193.32.162.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTV5VUcyckVkVldrcjl0SWlEeFRRbG9Hd2RYVmR6b0lwV1Exc3dNMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9sYXB0b3BiYXphci5jby5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780809212),
('RBF9DZxrGcfg27OeuvFVCZtvE9rJs1DShmXu3nBI', NULL, '193.32.162.211', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1JvUXRtMTVHdDZnRUlkeU5FSU96bEk1a0pNWHZsbU9qcTFIajZpYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vbGFwdG9wYmF6YXIuY28uaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780809212);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Roshini', 'ssdn108168@gmail.com', NULL, '$2y$12$2YoMeqJGBTNkKl1PxZUzt.ZTSRmj71MnRsCEh5YFV0t3ZgW6RpeW6', NULL, '2025-07-10 12:44:08', '2025-07-10 12:44:08'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$12$0nnOBzcc/SNYpBQgAXQWd.HPiEoM6XShjxt/1kxxwjpO01ZS.JT0y', NULL, '2025-07-10 13:50:19', '2025-07-10 13:50:19'),
(4, 'Roshini Vats', 'roshinivats7@gmail.com', NULL, '$2y$12$0dEoBCIQWhIlZUhCZv8bRu0mpNQMuTTHAF.zMbjG6kCphXIqQsHRG', NULL, '2025-07-28 02:53:13', '2025-07-28 02:53:13'),
(5, 'Rachna', 'hrrachna.jobs@gmail.com', NULL, '$2y$12$WSwScYj8Dtp/uKMSi5arhehoWS1i866IbAEh1oJxrLuL9GwNoUd9W', NULL, '2025-07-28 03:05:14', '2025-07-28 03:05:14'),
(6, 'adminxps', 'budaklzcrew@gmail.com', NULL, '$2y$12$qQzkPC0PE0a.AthP2lSLneAk3SE/MMMT8VR9.3b3QKTyLU/eToZIy', NULL, '2025-08-28 20:18:27', '2025-08-28 20:18:27'),
(7, 'adminxx', 'adminxx@gmail.com', NULL, '$2y$12$Z8Y4zItqGtxd3MZpe2eKaOBHqVuXTImpRXrv9ZCd.wRLFKJw9jZiW', NULL, '2025-10-07 14:39:21', '2025-10-07 14:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(250) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `current_company` varchar(50) DEFAULT NULL,
  `current_ctc` varchar(50) DEFAULT NULL,
  `expected_ctc` varchar(50) DEFAULT NULL,
  `notice_period` varchar(50) DEFAULT NULL,
  `employment_type` varchar(10) DEFAULT NULL,
  `edu_qualification` text DEFAULT NULL,
  `skills` longtext DEFAULT NULL,
  `work_exp` longtext DEFAULT NULL,
  `cover_letter` longtext DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `current_location` text DEFAULT NULL,
  `preferred_location` text DEFAULT NULL,
  `post_applied_for` varchar(250) DEFAULT NULL,
  `company_applied_for` varchar(100) DEFAULT NULL,
  `interview_status` varchar(50) DEFAULT NULL,
  `offer_status` varchar(50) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `resume_attachment` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `email`, `mobile_number`, `dob`, `designation`, `current_company`, `current_ctc`, `expected_ctc`, `notice_period`, `employment_type`, `edu_qualification`, `skills`, `work_exp`, `cover_letter`, `pincode`, `current_location`, `preferred_location`, `post_applied_for`, `company_applied_for`, `interview_status`, `offer_status`, `remarks`, `pan`, `resume_attachment`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(14, 'Radha Rani', 'radhamendhiratta01@gmail.com', '9315524180', '1980-01-31', 'Relationship Manager', 'PNB Met life', '310000', '400000', '1 Month', 'Full time', 'MA', NULL, 'Banca Channel', NULL, '126102', 'Jind', 'Jind', 'Relationship officer', 'Canara Life', 'Not Conducted', NULL, 'Vacancy is full', 'DGUPR344R', '1752138177_RADHA RANi.pdf', '2025-07-27 13:09:09', '2025-07-27 20:09:09', '2025-07-27 20:09:09', 1),
(13, 'Uday', 'udaysingh64353@gmail.com', '7291919076', '2000-12-09', 'Agency Development Manager', 'Star Health', '335000', '400000', '1 Month', 'Full time', 'BCOM', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, 'Not Conducted', NULL, 'Not Interested for Job Change', NULL, '1752145659_Uday.pdf', '2025-07-27 13:11:05', '2025-07-27 20:11:05', '2025-07-27 20:11:05', 1),
(12, 'Amit', 'sagar87500@gmail.com', '8750041201', '1991-09-02', 'Relationship Manager', 'Sud Life', '470000', '600000', '1 Month', 'Full time', 'Diploma in Management', 'Marketing', 'Candidate is working with Kotak Life as a Relationship manager in Banca Channel.', NULL, NULL, 'Noida', 'Noida', NULL, NULL, NULL, NULL, 'Looking job in Banca Channel', NULL, '1752127846_Amit Singh.pdf', '2025-07-27 13:06:07', '2025-07-27 20:06:07', '2025-07-27 20:06:07', 1),
(11, 'vinay kumar', 'vinay99004162081612@gmail.com', '4444444444', '2025-07-29', 'Test designation', 'test company', '34', '45', '4', 'na', 'MCA', 'PHP', 'rrrrrrrr', 'ttttttttttttt', '201306', 'locat', 'pref loc', 'ssssssssssss', 'dddddddddddd', 'In review', NULL, 'eeeeeeeeeeee', 'ABCCD1234B', '1752120646_Political Party User Creation.pdf', '2025-07-09 23:11:05', '2025-07-10 06:11:05', '2025-07-10 06:11:05', 1),
(15, 'Radha Rani', 'radhamendhiratta01@gmail.com', '9315524180', '1980-01-31', 'Relationship Manager', 'PNB Met life', '310000', '400000', '1 Month', 'Full time', 'MA', 'Sales', 'Banca Channel', NULL, '126102', 'Jind', 'Jind', 'CAM', 'HDFC Life', 'Not Conducted', NULL, 'Rejected due to Age', 'DGUPR344R', '1752141357_RADHA RANi.pdf', '2025-07-27 13:09:14', '2025-07-27 20:09:14', '2025-07-27 20:09:14', 1),
(16, 'Nisha Sagar', 'nishasagar06081998@gmail.com', '9910535967', '1996-06-08', 'Sales Executive', 'Hdfc bank', '240000', '300000', '1 Month', 'Full time', 'BCOM', NULL, 'Bank', NULL, '201009', 'Ghaziabad', 'Noida', 'Relationship officer', 'Canara Life', 'Not Conducted', NULL, 'Has other  consultancy applied her profile', 'HAOPS1941D', '1752145092_Nisha Sagar.pdf', '2025-07-27 13:08:39', '2025-07-27 20:08:39', '2025-07-27 20:08:39', 1),
(17, 'Rekha Saini', 'simisaini0962@GMAIL.COM', '9817914309', '1997-04-09', 'Sales Executive', 'ICICI Bank', '1.8', '2.5', '1 Month', 'Full time', 'MA', 'Marketing', 'Bank', NULL, '125001', 'Hisar', 'Hisar', 'CAM', 'HDFC Life', 'Pending', NULL, 'Test not Cleared', 'LHBPS5851G', '1752146933_Rekha.docx', '2025-07-27 13:09:44', '2025-07-27 20:09:44', '2025-07-27 20:09:44', 1),
(18, 'Rekha Saini', 'simisaini0962@gmail.com', '9817914309', '1997-04-09', 'Sales Executive', 'ICICI Bank', '1.8', '2.5', '1 Month', 'Full time', 'MA', 'Marketing', 'Banking', NULL, '125001', 'Hisar', 'Hisar', 'Relationship Manager', 'Pnb Met Life', 'Pending', NULL, 'C0202921 Rekha', 'LHBPS5851G', '1752151147_Rekha.docx', '2025-07-27 13:09:52', '2025-07-27 20:09:52', '2025-07-27 20:09:52', 1),
(19, 'Sheetal', 'pk772815@gmail.com', '9971922428', '1993-06-01', 'Data Entry Operator', 'Max Service Pvt lTD', '200000', '300000', '1 Month', 'Full time', 'BA', 'Marketing', 'Banking', NULL, '110086', 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, 'Not require profile', NULL, '1752154141_Prashant Kumar.pdf', '2025-07-27 13:10:44', '2025-07-27 20:10:44', '2025-07-27 20:10:44', 1),
(20, 'Junaid Khan', 'junaiddybl5@gmail.com', '9329525162', '2000-12-19', 'Agent', 'Policy Bazar', '250000', NULL, '0', NULL, 'BCOM', NULL, 'Insurance Sector', NULL, NULL, 'Delhi', NULL, NULL, NULL, 'Not Conducted', NULL, 'did not pickup the call', NULL, '1752154591_Junaid Khan.pdf', '2025-07-27 13:11:54', '2025-07-27 20:11:54', '2025-07-27 20:11:54', 1),
(21, 'Neeraj Tiwari', 'neeraj.u2012@gmail.com', '7717793877', '1991-07-05', 'Area Business Head', 'India First Life', NULL, NULL, NULL, NULL, NULL, NULL, 'Banca Channel', NULL, NULL, 'Patna', 'Patna', NULL, NULL, NULL, NULL, NULL, NULL, '1752165776_Neeraj Tiwari.pdf', '2025-07-27 13:08:34', '2025-07-27 20:08:34', '2025-07-27 20:08:34', 1),
(22, 'Richa Pareek', 'richaparteek2308@gmail.com', '7891142344', '1996-06-24', 'Relationship Manager', 'Aviva Life', '450000', '450000', '1 Month', 'Full time', 'MCOM', 'Marketing,Sales', 'Direct, Banca Channel', NULL, '302012', 'Jaipur', 'Jaipur', 'Sr Associate', 'Canara Life', 'In review', NULL, NULL, 'FIIPP6443P', '1752166398_Richa pareek.pdf', '2025-07-27 13:10:04', '2025-07-27 20:10:04', '2025-07-27 20:10:04', 1),
(23, 'Ashima Malhotra', 'ashimamahotra2015@gmail.com', '8571941068', '1991-09-02', 'Relationship Manager', 'Sud Life', '360000', '4200000', '1 Month', 'Full time', 'BCOM', 'Marketing,Sales', 'Banca channel', NULL, '132101', 'Panipat', 'Panipat', 'KAM', 'Tata life', 'Conducted', NULL, 'Already applied from other consultancy', 'CJOPM4893A', '1752166786_Ashima_Panipat_3.6_Kam_Yes_15 Days.pdf', '2025-07-27 13:06:42', '2025-07-27 20:06:42', '2025-07-27 20:06:42', 1),
(24, 'Bhawna Gupta', 'bhawnagupta058@gmail.com', '8360104490', '2003-05-05', 'Sr Branch Relationship Manager', 'Aditya Birla Sun Life HDFC Bank', '300000', '400000', '1 Month', 'Full time', NULL, 'Marketing,Sales', 'Banca Channel', NULL, NULL, 'Patiala', 'Patiala', 'Relationship officer', 'Canara Life', 'In review', NULL, NULL, 'DPVPG5539H', '1752167463_Bhawna Gupta.pdf', '2025-07-27 13:07:02', '2025-07-27 20:07:02', '2025-07-27 20:07:02', 1),
(25, 'Aarti Kaushik', 'aartikaushik268@gmail.com', '8769499056', '1999-03-20', 'ERM', 'Bajaj Life', '320000', '400000', '1 Month', 'Full time', 'MCOM', 'Marketing,Sales', 'Banca Channel', NULL, NULL, 'Panipat', 'Panipat', 'CAM', 'HDFC Life', 'Shortlisted', NULL, 'Shared to HR Ashish on 15.07.2025', 'FGVPK0629F', '1752170148_AARTI KAUSHIK.pdf', '2025-07-27 13:05:35', '2025-07-27 20:05:35', '2025-07-27 20:05:35', 1),
(26, 'Aarti Kaushik', 'aartikaushik268@gmail.com', '8769499056', '1999-03-20', 'ERM', 'Aviva Life', '320000', '400000', '1 Month', 'Full time', 'MCOM', 'Marketing,Sales', 'Banca Channel', NULL, NULL, 'Panipat', 'Panipat', 'Relationship officer', 'Canara Life', 'Shortlisted', NULL, 'HR will not considered, he replied got profile earlier with direct Reference.', 'FGVPK0629F', '1752170304_AARTI KAUSHIK.pdf', '2025-07-27 13:05:41', '2025-07-27 20:05:41', '2025-07-27 20:05:41', 1),
(27, 'Bhanwar Lal Verma', 'bhanwarverma4@gmail.com', '8107076962', '1990-07-07', 'Associate Territory Manager', 'Tata Life', '800000', '1000000', '1 Month', 'Full time', 'BCOM', 'Marketing,Sales', 'Banca Channel', NULL, NULL, 'Jaipur', 'Jaipur', 'CBH', 'Canara Life', 'In review', NULL, 'call by hr (Screened) 23.07.25', 'AVFPV6125K', '1752170789_Bhanwar Lal Verma.pdf', '2025-07-27 13:06:57', '2025-07-27 20:06:57', '2025-07-27 20:06:57', 1),
(28, 'Deepak Goutam', 'deepak1986.goutam@gmail.com', '8875024737', '1986-12-29', 'Business Development Manager', 'SBI Life', '650000', '900000', '1 Month', 'Full time', 'MBA', 'Marketing,Sales', 'Banca Channel', NULL, NULL, 'Jaipur', 'Jaipur', 'Deputy Manager', 'Canara  Life', 'Shared', NULL, NULL, NULL, NULL, '2025-07-27 13:07:09', '2025-07-27 20:07:09', '2025-07-27 20:07:09', 1),
(29, 'Aman Rastogi', 'rastogi6323@gmail.com', '8115158873', '2002-02-06', 'Relationship Manager', 'Paisa Bazar', '300000', '400000', '1 Month', 'Full time', NULL, NULL, NULL, NULL, NULL, 'Gurugram', NULL, NULL, NULL, 'Not Conducted', NULL, 'He disconnect the call', NULL, '1752221984_Aman Rastogi.pdf', '2025-07-27 13:06:01', '2025-07-27 20:06:01', '2025-07-27 20:06:01', 1),
(30, 'Satender Kumar', 'satendergujjar13@gmail.com', '9759258899', '1988-08-01', 'Relationship Manager', 'Niva Bupa', '300000', '400000', '3 Months', 'Full time', 'M COM', 'Marketing,Sales', 'Banca Channel', NULL, '247776', 'Shyamli', 'Karnal', 'Relationship Manager', 'Pnb Met Life', 'Pending', NULL, 'Uploaded but it is duplicate id CO156879\r\nSend to Anupam for Recheck', 'EGOPK3760B', '1752233509_satender gujjar resume.pdf', '2025-07-27 13:10:39', '2025-07-27 20:10:39', '2025-07-27 20:10:39', 1),
(31, 'Haridass', 'hari.r3636@gmail.com', '8012805474', '1989-08-01', 'PHP Developer and Tech Lead', 'Surrise sports pvt Ltd', '18 Lpa', '25 Lpa', 'Immediate', 'Full time', 'BCA, MCA, MBA', 'PHP', 'IT', NULL, '605004', 'Pondicherry', 'All India', 'Technical Project Manager', 'Net Quall Technologies', 'In review', NULL, NULL, NULL, NULL, '2025-07-27 13:07:43', '2025-07-27 20:07:43', '2025-07-27 20:07:43', 1),
(32, 'Shrinivas Shinde', 'shrinivasshinde86@gmail.com', '9028695410', '1986-06-29', 'Sr Php Developer and Technical Lead', 'Immply Cloud India Pvt Ltd', '16 Lpa', NULL, 'Immediate', 'Full time', 'BCA,MCA', 'PHP', NULL, NULL, NULL, 'Pune', 'Pune', 'Techinical Project Manager', 'Net Quall Technologies', 'Not Conducted', NULL, 'Looking job for Maharashtra Only', NULL, '1752555640_Shrinivas_shinde_12yrs_Pune_16.00_LPA_Senior_php_developer___technical_lead.docx', '2025-07-27 13:10:50', '2025-07-27 20:10:50', '2025-07-27 20:10:50', 1),
(33, 'Jitendra Tiwari', 'jitendratwr94@gmail.com', '9368019239', '1986-02-16', 'Deputy State Head', 'Bajaj Life', '21 LPA', NULL, '3 Months', 'Full time', 'BA', 'Marketing,Sales', 'RPD Channel', NULL, NULL, 'BUDAUN', 'Varanasi', 'Regional Head(Sr Mgr)', 'Canara Life', 'In review', NULL, 'shared resume with hr Manoj', 'AJBPT14444', '1752557712_Jitender Kumar Varanasi.pdf', '2025-07-27 13:08:14', '2025-07-27 20:08:14', '2025-07-27 20:08:14', 1),
(34, 'Raushan Kumar', 'raushansinghkr96@gmail.com', '8340577334', '1996-02-15', 'ARM', 'Tata Life', '4.5 LPA', NULL, '15 days', 'Full time', 'PGDM', 'Marketing,Sales,HR', '3 Yrs', NULL, NULL, 'Gurugram', 'Gurugram', 'Axis Bank', 'Bharti Axa(15.07.25)', 'In review', NULL, 'Applied for Banca Channel', 'dxmpk2304h', '1752558979_Raushan Kumar.pdf', '2025-07-27 13:09:26', '2025-07-27 20:09:26', '2025-07-27 20:09:26', 1),
(35, 'Pankaj Singh Rathore', 'pankajsinghrathore@gmail.com', '9839037367', '1989-08-18', 'Branch Manager', 'Badhan Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucknow', 'Lucknow', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, '1752568603_Resume-Pankaj Rathore.pdf', '2025-07-27 13:08:56', '2025-07-27 20:08:56', '2025-07-27 20:08:56', 1),
(36, 'Rohit Patil', 'rohitpatil3004@gmail.com', '9970933826', '1984-04-30', 'Technical Lead', 'Codaemon Softwares', '14.5', '20.5', 'immediate Joiner', NULL, NULL, NULL, NULL, NULL, NULL, 'Pune', 'Pune', 'Techical Project Manager', 'Netquall Technologies', 'Shared', NULL, 'Shared with hr', NULL, '1752728064_Rohit_Patil_Resume_PHP_Tech_Lead.pdf', '2025-07-27 13:10:15', '2025-07-27 20:10:15', '2025-07-27 20:10:15', 1),
(37, 'Narendra Siniwal', 'imnarennn26@gmail.com', '8107775619', '1997-06-02', NULL, 'Airtel Broadband', '2.4', 'Nil', 'immediate joiner', NULL, 'Bsc', NULL, NULL, NULL, NULL, 'SuratGarh', 'Jodhpur', 'Ass Business RM', 'Manipal Cigna (17.07.25)', 'In review', NULL, 'For Banca Channel shared with Gaurav Malik on 17.07.25, Already shared with Agency Channel also.', NULL, '1752733140_Narendra Siniwal.pdf', '2025-07-27 13:08:29', '2025-07-27 20:08:29', '2025-07-27 20:08:29', 1),
(38, 'Upendra Prasad Chaurasia', 'upchaurasia@gmail.com', '9023463562', '1986-02-17', 'Technical Lead', 'Espire Infolab', '17 lpa', NULL, '1 Month', NULL, 'MCA', NULL, NULL, NULL, NULL, 'Hyderabad', 'Mohali', 'Technical Project Manager', 'Net Quall Technologies', 'In review', NULL, NULL, NULL, '1752745863_Upendra_Chaurasia_Updated_Resume.pdf', '2025-07-27 13:11:14', '2025-07-27 20:11:14', '2025-07-27 20:11:14', 1),
(39, 'Amit Kumar', 'kumaramit130525@gmail.com', '9462664272', '1987-05-30', 'Sr Full Stack Developer', 'Acadecraft pvt ltd', '16.50', NULL, 'Immediate Joiner', NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Mohali', 'Technical Project Manager', 'Net Quall Technologies', 'In review', NULL, NULL, NULL, '1752747131_Amit_Kumar_Senior_FullStack_MERN_Developer_14yrs_Updated.docx', '2025-07-27 13:06:13', '2025-07-27 20:06:13', '2025-07-27 20:06:13', 1),
(40, 'Homesh Pal', 'homeshr1@gmail.com', '9878488542', '1984-11-18', 'Technical Lead', 'Solveda Soutions pvt ltd', '20 LPA', '25 LPA', 'Immediate Joiner', NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Mohali', 'Technical Project Manager', 'Net Quall Technologies(17.07.25)', 'Rejected', NULL, 'Communications Skills is not Good', NULL, '1752747530_Homesh Pal.pdf', '2025-07-27 13:08:08', '2025-07-27 20:08:08', '2025-07-27 20:08:08', 1),
(41, 'Abhishek Kumar Singh', 'abhikiriburu@gmail.com', '8750137427', '1990-03-15', 'Assistant Vice President', 'Axis Bank', NULL, NULL, NULL, NULL, 'BA', NULL, NULL, NULL, NULL, 'Delhi/NCR', NULL, NULL, NULL, 'Not Conducted', NULL, '35 Years', NULL, '1752769441_Abhishek Kumar bank.pdf', '2025-07-27 13:05:48', '2025-07-27 20:05:48', '2025-07-27 20:05:48', 1),
(42, 'Dilip', 'dkgroup737@gmail.com', '9452222170', '1992-01-22', 'Relationship Manager', 'Badho Technologies', '380000', NULL, 'Immediate Joiner', NULL, 'BA', NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', 'Direct Channel', 'Max Life insurance', 'Conducted', NULL, NULL, NULL, '1752770367_Dilip.docx', '2025-07-27 13:07:16', '2025-07-27 20:07:16', '2025-07-27 20:07:16', 1),
(43, 'Lavi Sharma', 'sharmalavi96@gmail.com', '8923437932', '1997-05-21', 'Relationship Manager', 'PNB Met life', '380000', NULL, NULL, NULL, 'BCA', NULL, NULL, NULL, NULL, 'Meerut', 'Gurugram', 'Relationship Manager', 'Bharti Axa (05.06.25)', 'Pending', NULL, 'Joined hdfc life directly.', NULL, '1752774793_Lavi Sharma.pdf', '2025-07-27 13:11:37', '2025-07-27 20:11:37', '2025-07-27 20:11:37', 1),
(44, 'Lokesh', 'lokeshsiwach7@gmail.com', '9871062512', '1999-09-08', 'Relationship Manager', 'Bajaj Life', '320000', NULL, '1 Month', NULL, 'BCOM', NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', 'Relationship Manager', 'Bharti Axa', 'In review', NULL, 'Job Code 7470', NULL, '1752775193_Lokesh Kumar (1).pdf', '2025-07-27 13:11:33', '2025-07-27 20:11:33', '2025-07-27 20:11:33', 1),
(45, 'Sajjan Singh', 'sajjansingh266@gmail.com', '8930677920', '1983-03-15', 'DSM', 'Indusind General Insurance', '360000', '400000', '0', 'Full time', 'BA', NULL, 'Banca Channel', NULL, NULL, 'Bhiwani', 'Bhiwani', NULL, 'Canara Life', 'Shared', NULL, 'Shared with Parveen Sir interview scheduled for Tomorrow 21.7.2025', NULL, '1753093405_SAJJAN_SINGH.pdf', '2025-07-27 13:10:27', '2025-07-27 20:10:27', '2025-07-27 20:10:27', 1),
(46, 'Rekha Saini', 'simisaini0962@gmail.com', '9817914309', '1997-04-09', 'Sales Executive', 'ICICI Bank', '1.8', '2.5', '1 Month', NULL, 'MBA', 'Marketing,Sales', 'Bank', NULL, NULL, 'Hisar', 'Hisar', NULL, 'Canara Life', 'Pending', NULL, 'Shared resume with depender sir for hisar Location', NULL, '1753093822_Rekha PDF.pdf', '2025-07-27 13:09:57', '2025-07-27 20:09:57', '2025-07-27 20:09:57', 1),
(47, 'Sampath Avinash Krishna', 'avi0007@gmail.com', '9677067030', '1985-05-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chennai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753161817_Sampath_avinash_krishna_17yrs_7m_Chennai_18.50_LPA_Technical_project_lead.docx', '2025-07-27 13:10:32', '2025-07-27 20:10:32', '2025-07-27 20:10:32', 1),
(52, 'Heena', 'bajwanheena@gmail.com', '8168120972', '1999-08-07', 'Agent', NULL, NULL, NULL, 'Immediate Joiner', 'Part Time', NULL, NULL, NULL, NULL, NULL, 'Rohtak', 'Rohtak', 'Associate', 'Canara Life', NULL, NULL, NULL, 'BDNPH6554D', '1753200757_HeenaResume (1).pdf', '2025-07-27 13:08:02', '2025-07-27 20:08:02', '2025-07-27 20:08:02', 1),
(48, 'Mayank Srivastva', 'mayank.24may82@gmail.com', '9811128684', '1980-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ghaziabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753162214_Mayank Srivastva.pdf', '2025-07-27 13:11:25', '2025-07-27 20:11:25', '2025-07-27 20:11:25', 1),
(49, 'Pankaj Kumar', 'pnkj.btyl@gmail.com', '8901081658', '1980-08-15', NULL, NULL, '15 LPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kalka', 'Kalka', 'Technical Project Manager', 'Net Quall Technologies(22.07.25)', 'Shared', NULL, 'Rejected due to 3 days working only', NULL, '1753163786_Resume - Pankaj Batyal-Finalized.pdf', '2025-07-27 13:08:51', '2025-07-27 20:08:51', '2025-07-27 20:08:51', 1),
(50, 'Mohammad Ali', 'nowmailtoali@gmail.com', '9654814649', '1980-08-16', 'Sr Software Engineer', 'TeskisHub Consulting Services Pvt Ltd.', '15 LPA', NULL, 'Immediate Joiner', NULL, NULL, NULL, NULL, NULL, NULL, 'Banglore', NULL, 'Technical Project Manager', 'Net Quall Technologies(22.07.2025)', 'Shared', NULL, NULL, NULL, '1753164443_Mohammad Ali.docx', '2025-07-27 13:11:20', '2025-07-27 20:11:20', '2025-07-27 20:11:20', 1),
(51, 'Sadhna', 'sadhnamalhotra29@gmail.com', '9953959994', '1989-10-27', 'Idfc First Bank', 'Future Generali', '4 LPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753165200_Sadhna.pdf', '2025-07-27 13:10:20', '2025-07-27 20:10:20', '2025-07-27 20:10:20', 1),
(53, 'Ritu Indora', 'rituindora074@gmail.com', '9518045350', '1993-03-19', 'Agent', 'Kotak Life', NULL, NULL, 'Immediate Joiner', 'Part Time', NULL, NULL, NULL, NULL, NULL, 'Rohtak', 'Rohtak', 'Associate', 'Canara Life (22.07.2025)', 'Shared', NULL, NULL, 'BZTPR2087R', '1753200895_Ritu Indora.docx', '2025-07-27 13:10:10', '2025-07-27 20:10:10', '2025-07-27 20:10:10', 1),
(56, 'Rahul', 'RAHULCHHABRA296@GMAIL.COM', '9888375859', '1995-07-14', 'CA-BO', 'CSB Bank', '4.5', '5.5', '1 Month', 'Full time', 'BCOM', NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', 'CA-BO', 'IDFC First(24.07.2025)', 'Conducted', NULL, 'Uploaded and shared to Neha hr. interview held tomorrow virtual. shared all the details with candidate.', NULL, '1753359056_Rahul Kumar.pdf', '2025-07-27 13:09:20', '2025-07-27 20:09:20', '2025-07-27 20:09:20', 1),
(54, 'Ravina', 'ravinasanga83@gmail.com', '7419108161', '1998-01-01', 'Sales Officer', 'Axis Bank', '2.5', '1.8', '3 Months', 'Full time', NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'Associate', 'Canara Life', 'Pending', NULL, NULL, 'EVXPR5312E', '1753201399_Ravina.pdf', '2025-07-27 13:09:36', '2025-07-27 20:09:36', '2025-07-27 20:09:36', 1),
(55, 'Kuldeep', 'coolkuldeep37@gmail.com', '7404393054', '1986-05-10', 'DSM', 'Abhiyan Capital', '3.10', '3.90', 'Immediate Joiner', 'Full time', 'BA', NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'Associate', 'Canara Life', 'Pending', NULL, NULL, NULL, '1753202259_Kuldeep.pdf', '2025-07-27 13:11:41', '2025-07-27 20:11:41', '2025-07-27 20:11:41', 1),
(57, 'Anil Kumar', 'anilshar667@gmail.com', '8219216323', '1992-01-06', 'TM', 'Sud Life', '6', NULL, '1 Month', NULL, 'BA', NULL, NULL, NULL, NULL, 'Bilaspur', 'Bilaspur', 'Cluster Head', 'Aditya Birla Life', 'Not Conducted', NULL, 'He has already applied by other person.', NULL, '1753412773_Anil Kumar.pdf', '2025-07-27 13:06:29', '2025-07-27 20:06:29', '2025-07-27 20:06:29', 1),
(58, 'Raushan Kumar', 'raushansinghkr96@gmail.com', '8340577334', '1996-02-15', 'Sr BDE', 'SBI Life', '4.5', NULL, '1 Month', NULL, 'MBA', NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', NULL, NULL, NULL, NULL, NULL, NULL, '1753413430_Raushan Kumar.pdf', '2025-07-27 13:09:31', '2025-07-27 20:09:31', '2025-07-27 20:09:31', 1),
(59, 'Lokesh Kumar', 'lokeshsiwach7@gmail.com', '9871062512', '1999-09-08', 'Branch Sales officer', 'Hdfc bank', NULL, NULL, 'Immediate Joiner', NULL, NULL, NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', 'Business Relationship Officer', 'Manipal Cigna (25.07.2025)', NULL, NULL, NULL, NULL, '1753413891_Lokesh Kumar (1).pdf', '2025-07-27 13:11:29', '2025-07-27 20:11:29', '2025-07-27 20:11:29', 1),
(60, 'Ankit malik', 'malikankit904@gmail.com', '9990357424', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', NULL, NULL, NULL, NULL, NULL, NULL, '1753417580_Ankit.pdf', '2025-07-27 13:06:34', '2025-07-27 20:06:34', '2025-07-27 20:06:34', 1),
(61, 'Amit Kumar', 'kumaramit30525@gmail.com', '8285397371', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753418016_Amit_Kumar_Senior_FullStack_MERN_Developer_14yrs_Updated.docx', '2025-07-27 13:06:18', '2025-07-27 20:06:18', '2025-07-27 20:06:18', 1),
(62, 'Kamal Wadha', 'kamal.wadhwa84@gmail.com', '8010043633', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Faridabad', 'Faridabad', 'Technical Project Manager', 'Net Quall Technologies', NULL, NULL, NULL, NULL, '1753420288_Kamal wadhwa - Data center lead technical project manager - 17 Yrs 0 Month (1).pdf', '2025-07-27 13:11:50', '2025-07-27 20:11:50', '2025-07-27 20:11:50', 1),
(63, 'Ashok Mehra', 'a2004_mehra@rediffmail.com', '9650611359', '1973-09-23', 'Technical Project Manager', 'Freelance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'Technical Project Manager', 'Net Quall Technologies', 'Rejected', NULL, NULL, NULL, '1753424824_Ashok mehra - Freelancer project manager - 18 Yrs 0 Month (1).pdf', '2025-07-27 13:06:49', '2025-07-27 20:06:49', '2025-07-27 20:06:49', 1),
(64, 'Nisha Verma', 'nv56221@gmail.com', '7719441029', '2002-05-03', 'Associate', 'Tata AIG General', NULL, NULL, 'Immediate Joiner', 'Full time', NULL, NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', 'CA-BO', 'IDFC First (25.07.2025)', 'Conducted', NULL, 'Interview Today (25.07.2025) HR Neha Bhardwaj', NULL, '1753431954_Nisha.pdf', '2025-07-27 13:08:44', '2025-07-27 20:08:44', '2025-07-27 20:08:44', 1),
(65, 'Johal Harminder', 'armman.johal1@gmail.com', '9711793143', '1985-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ghaziabad', 'Mohali', 'Technical Project Manager', 'Net Quall Technologies', 'Not Conducted', NULL, 'Donot Have php exp', NULL, '1753433046_Johal_harminder_14yrs_Delhi_16.00_LPA_Technical_account_manager_birchstreet_pay.pdf', '2025-07-27 13:08:22', '2025-07-27 20:08:22', '2025-07-27 20:08:22', 1),
(66, 'Sourav Singh', 'saurav.s9011@gmail.com', '9999150316', '1998-06-16', 'SRM', 'Bajaj Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', NULL, NULL, NULL, NULL, NULL, NULL, '1753458506_Sourav singh.pdf', '2025-07-27 13:10:55', '2025-07-27 20:10:55', '2025-07-27 20:10:55', 1),
(67, 'Govind Kaushik', '88govind.kaushik@gmail.com', '0930613506', '1988-02-04', 'Assistant Area Manager( Banca Channel)', 'SBI Life', '7.45', '9', NULL, NULL, 'BA', NULL, NULL, NULL, NULL, 'Narnaul', 'Narnaul', 'Cluster Head', 'Aditya Birla Life', 'Not Conducted', NULL, 'He is 37 Years old', NULL, '1753459189_Govind CV.pdf', '2025-07-27 13:07:33', '2025-07-27 20:07:33', '2025-07-27 20:07:33', 1),
(68, 'Tanuj Sharma', 'Tanujsharma645@gmail.com', '7006374808', '1998-05-06', 'Branch Sales Manager', 'Au small Finance Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jammu', 'Jammu', NULL, NULL, NULL, NULL, NULL, NULL, '1753460328_Tanuj Sharma.pdf', '2025-07-27 13:11:00', '2025-07-27 20:11:00', '2025-07-27 20:11:00', 1),
(69, 'Aman Punit', 'amanpunitsingh@yahoo.co.in', '9988908289', '1982-09-17', 'Branch Head', 'Axis Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rajpura', 'Rajpura', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, NULL, '2025-07-27 13:05:54', '2025-07-27 20:05:54', '2025-07-27 20:05:54', 1),
(70, 'Harish Khalique', 'hariskhaliq@gmail.com', '9873432550', '1982-02-27', 'Sr Regional Manager (Banca)', 'Max Life Insurance', NULL, NULL, NULL, NULL, 'BSC', NULL, NULL, NULL, NULL, 'Noida', 'Noida', NULL, NULL, NULL, NULL, NULL, NULL, '1753461907_Hari Krishna.pdf', '2025-07-27 13:07:56', '2025-07-27 20:07:56', '2025-07-27 20:07:56', 1),
(71, 'Rachna Sharma', 'sharma.rachna071985@gmail.com', '9205308599', '1984-01-15', 'Talent Acquisition Manager', 'A leading Placement co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-27 13:09:03', '2025-07-27 20:09:03', '2025-07-27 20:09:03', 1),
(72, 'Amit Kumar', 'kumaramit130525@gmail.com', '8285397371', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Noida', NULL, NULL, NULL, NULL, NULL, NULL, '1753522732_Amit_Kumar_Senior_FullStack_MERN_Developer_14yrs_Updated.docx', '2025-07-27 13:06:23', '2025-07-27 20:06:23', '2025-07-27 20:06:23', 1),
(73, 'Kamal Wadha', 'kamal.wadhwa84@gmail.com', '8010043633', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Faridabad', 'Faridabad', NULL, NULL, NULL, NULL, NULL, NULL, '1753523219_Kamal wadhwa - Data center lead technical project manager - 17 Yrs 0 Month (1).pdf', '2025-07-27 13:11:45', '2025-07-27 20:11:45', '2025-07-27 20:11:45', 1),
(74, 'Niharika Arora', 'aroraniharika976@gmail.com', '9815181668', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Chandigarh', NULL, NULL, NULL, NULL, NULL, NULL, '1753810971_NiharikaCred-1.docx', '2025-07-29 17:42:51', '2025-07-29 17:42:51', NULL, 1),
(75, 'Kunal Arya', 'roshinivats7@gmail.com', '7067114096', '2000-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, 'Wrong Birth date/Wrong Email id', NULL, '1753811146_Kunal.pdf', '2025-07-29 17:45:46', '2025-07-29 17:45:46', NULL, 1),
(76, 'Abhijeet Jha', 'abhijeetj321@gmail.com', '9341645046', '2000-02-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1753811259_Abhijeet Jha.pdf', '2025-07-29 17:47:39', '2025-07-29 17:47:39', NULL, 1),
(77, 'Ajay Singh', 'ajaysinghajay13@gmail.com', '9501828411', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohali', 'Mohali', NULL, NULL, NULL, NULL, NULL, NULL, '1753811491_Ajay Singh Mohali.pdf', '2025-07-29 17:51:31', '2025-07-29 17:51:31', NULL, 1),
(78, 'Anurag Choubey', 'anuragchaubey194@gmail.com', '8787243474', '2000-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mirzapur', 'Mirzapur', NULL, NULL, NULL, NULL, NULL, NULL, '1753811633_Anurag Choubey.pdf', '2025-07-29 17:53:53', '2025-07-29 17:53:53', NULL, 1),
(79, 'Arbind Yadav', 'arvind1989s@gmail.com', '9811773468', '1989-06-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deroia', 'Deroia', NULL, NULL, NULL, NULL, NULL, NULL, '1753811761_Arbind Yadav.pdf', '2025-07-29 17:56:01', '2025-07-29 17:56:01', NULL, 1),
(80, 'Bhanwar Lal Verma', 'Bhanwarverma4@gmail.com', '8107076962', '1990-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, '1753811877_Bhanwar Lal Verma.pdf', '2025-07-29 17:57:57', '2025-07-29 17:57:57', NULL, 1),
(81, 'Deepak Goutam', 'deepak1986.goutam@gmail.com', '8875024737', '1986-12-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, '1753812016_Deepak Goutam.pdf', '2025-07-29 18:00:16', '2025-07-29 18:00:16', NULL, 1),
(82, 'Jeeshan Saifi', 'zsaifi172@gmail.com', '9675896498', '1997-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1753812158_Jeeshan_Saifi.pdf', '2025-07-29 18:02:38', '2025-07-29 18:02:38', NULL, 1),
(83, 'Mohd Farahtulla', 'farhat.mdf@gmail.com', '9553241979', '1982-05-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vijayawada', 'Vijayawada', NULL, NULL, NULL, NULL, NULL, NULL, '1753812337_Mohammad Farhatullah.pdf', '2025-07-29 18:05:37', '2025-07-29 18:05:37', NULL, 1),
(84, 'Rahul', 'rkindora834@gmail.com', '7988755983', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Panipat', 'Panipat', NULL, NULL, NULL, NULL, 'Wrong birth date', NULL, '1753812759_Rahul bank.pdf', '2025-07-29 18:12:39', '2025-07-29 18:12:39', NULL, 1),
(85, 'Rajeev Ranjan', 'rashkush.ranjan@gmail.com', '9810430984', '1967-11-15', 'Regional Manager', 'Edelweiss Tokio Life', '24 LPA', NULL, 'Immediate Joiner', 'Full Time', 'BSC', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'Sr Manager', 'Canara Life', 'Pending', NULL, 'Left the co', 'AEDPR7797A', '1753812925_Rajeev Ranjan.pdf', '2025-08-15 09:27:46', '2025-08-15 16:27:46', NULL, 1),
(86, 'Ravi Kumar', 'ravikumar1926c@gmail.com', '8506894834', '1994-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', NULL, NULL, NULL, NULL, NULL, NULL, '1753814824_Ravi kumar.pdf', '2025-07-29 18:47:04', '2025-07-29 18:47:04', NULL, 1),
(87, 'Ravneet Singh', 'ravnitamajni@gmail.com', '9877772868', '1996-10-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', NULL, NULL, NULL, NULL, NULL, NULL, '1753815001_Ravneet Singh.pdf', '2025-07-29 18:50:01', '2025-07-29 18:50:01', NULL, 1),
(88, 'Akshay Sharma', 'akshayrajansharma@gmail.com', '9910301791', '1994-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1753815175_Akshay Sharma,Aristo.docx', '2025-07-29 18:52:55', '2025-07-29 18:52:55', NULL, 1),
(89, 'Richa Sharma', 'richasaraswat26@gmail.com', '8448073843', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aligarh', 'Aligarh', NULL, NULL, NULL, NULL, NULL, NULL, '1753815903_Richa Sharma.pdf', '2025-07-29 19:05:03', '2025-07-29 19:05:03', NULL, 1),
(90, 'Sachin Kumar', 'Schindilhor@gmail.com', '7700022484', '1981-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wrong DOB', NULL, '1753816020_Sachin Kumar.pdf', '2025-07-29 19:07:00', '2025-07-29 19:07:00', NULL, 1),
(91, 'Syed Mohd Rizvi', 'neelurizvi@rediffmail.com', '9953579985', '1974-05-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'Sr Manager', 'Canara Hsbc Life', 'Pending', NULL, NULL, NULL, '1753816155_SYED MOHD. MEHDI RIZVI..pdf', '2025-08-15 12:17:35', '2025-08-15 19:17:35', NULL, 1),
(92, 'Anish Bhardwaj', 'aanishbbhardwaj@gmail.com', '9873235354', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, 'wrong birth date', NULL, '1753816480_Anish Bhardwaj.pdf', '2025-07-29 19:14:40', '2025-07-29 19:14:40', NULL, 1),
(93, 'Anshul', 'anshultaneja959@gmail.com', '8059361616', '1991-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, NULL, NULL, NULL, NULL, '1753816685_ANSHUL Hisar.pdf', '2025-07-29 19:18:05', '2025-07-29 19:18:05', NULL, 1),
(94, 'Anil Kumar', 'anilshar667@gmail.com', '8219216323', '1992-01-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bilaspur', 'Bilaspur', NULL, NULL, NULL, NULL, NULL, NULL, '1753840913_Anil Kumar (2).docx', '2025-07-29 23:02:12', '2025-07-30 06:02:12', NULL, 1),
(95, 'Anurag Singh', 'bhadauriyaanurag41@gmail.com', '8009861164', '1980-01-01', 'TM', 'PNB Met Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', 'TM', 'Aditya Birla', 'Shared', NULL, NULL, NULL, '1753854202_Anurag Singh.pdf', '2025-08-05 19:48:21', '2025-08-06 02:48:21', NULL, 1),
(96, 'Anoop Singh', 'anoop28singh@gmail.com', '7990418472', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ahemdabad', 'Ahemdabad', NULL, NULL, NULL, NULL, NULL, NULL, '1753855482_Anoopsingh_NewResume.pdf', '2025-07-30 06:04:42', '2025-07-30 06:04:42', NULL, 1),
(97, 'Ashish Soda', 'ashishsoda25@gmail.com', '7217353402', '1991-10-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meerut', 'Meerut', NULL, NULL, NULL, NULL, NULL, NULL, '1753855618_Ashish soda.pdf', '2025-07-30 06:06:58', '2025-07-30 06:06:58', NULL, 1),
(98, 'Ashok Mehra', 'a2004_mehra@rediffmail.com', '9650611359', '1974-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1753855790_Ashok mehra - Freelancer project manager - 18 Yrs 0 Month (1).pdf', '2025-07-30 06:09:50', '2025-07-30 06:09:50', NULL, 1),
(99, 'Deepak Goutam', 'deepak1986.goutam@gmail.com', '8875024737', '1986-12-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, '1753855953_Deepak Goutam.pdf', '2025-07-30 11:25:52', '2025-07-30 18:25:52', '2025-07-30 18:25:52', 1),
(100, 'Gagandeep Sharma', 'gagankaushal1982@gmail.com', '9041902424', '1982-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muktsar', 'Muktsar', NULL, NULL, NULL, NULL, NULL, NULL, '1753856301_Gagandeep.pdf', '2025-07-30 06:18:21', '2025-07-30 06:18:21', NULL, 1),
(101, 'Rahul Kumar', 'RAHULCHHABRA296@GMAIL.COM', '9888375859', '1995-07-14', 'CASA', 'AU Small finance bank', '5.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', 'CASA', 'AU SMALL Finance Bank', 'Selected', NULL, 'But co did not give credit to me showing duplicate.', 'DRFPK4552Q', '1753870213_Rahul Kumar.pdf', '2025-09-29 02:40:42', '2025-09-29 09:40:42', NULL, 1),
(102, 'Hitesh Kumar', 'hksharma040@gmail.com', '7018017718', '1999-01-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', NULL, NULL, NULL, NULL, NULL, NULL, '1753898458_HITESH KUMAR RESUME.pdf', '2025-07-30 11:27:42', '2025-07-30 18:27:42', NULL, 1),
(103, 'Sajjan Singh', 'sajjansingh266@gmail.com', '9992799273', '1983-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhiwani', 'Bhiwani', NULL, NULL, NULL, NULL, NULL, NULL, '1753898755_SAJJAN_SINGH.docx', '2025-07-30 11:27:11', '2025-07-30 18:27:11', NULL, 1),
(104, 'Johal', 'armaan.johal1@gnail.com', '9711793143', '1984-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ghaziabad', 'Ghaziabad', NULL, NULL, NULL, NULL, NULL, NULL, '1753898933_Johal_harminder_14yrs_Delhi_16.00_LPA_Technical_account_manager_birchstreet_pay.pdf', '2025-07-30 11:28:52', '2025-07-30 18:28:52', NULL, 1),
(105, 'Lokesh Kumar', 'lokeshsiwach7@gmail.com', '9871062512', '1999-09-08', 'Sales Officer', 'HDFC Bank', '2.1', '3', 'Immediate Joiner', 'Full time', 'Bcom', NULL, '1 Year', 'BL_CAND30356', NULL, 'Faridabad', 'Delhi', 'Relationship Manager', 'Bandhan Life(30.07.2025)', 'Selected', 'Joined/Appointed', 'Interview has done on 31st July 2025 and he is shortlisted for 2nd round.\r\n\r\nJoined today 21st August 2025.  21st Nov 90 days completed.\r\nSalary 2.88', NULL, '1753899055_LOKESH (1).pdf', '2025-08-21 07:51:42', '2025-08-21 14:51:42', NULL, 1),
(106, 'Prashant Tripathi', 'contact.prashant1@gmail.com', '8287901521', '1985-06-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753899436_Prashant Tripathi Technical.pdf', '2025-07-30 18:17:16', '2025-07-30 18:17:16', NULL, 1),
(107, 'Nirbhay', 'nirbhay4884@gmail.com', '9354585192', '2004-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1753899685_Nirbhay.pdf', '2025-07-30 18:21:25', '2025-07-30 18:21:25', NULL, 1),
(108, 'Tamanna Saini', 'tamannasaini720@gmail.com', '9812058967', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shahbad', 'Shahbad', NULL, NULL, NULL, NULL, NULL, NULL, '1753899886_Tamanna Saini.pdf', '2025-07-30 11:26:21', '2025-07-30 18:26:21', NULL, 1),
(109, 'Mohd Aftab', 'aftabjameel900@gmail.com', '8188950232', '1995-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753900367_Mohd Aftab.pdf', '2025-07-30 18:32:47', '2025-07-30 18:32:47', NULL, 1),
(110, 'Nishith Doshi', 'nkd8477@gmail.com', '9820064370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753900534_Nishith Doshi_Resume.pdf', '2025-07-30 18:35:34', '2025-07-30 18:35:34', NULL, 1),
(111, 'Poonam Nehra', 'poonammehra19@gmail.com', '7073432366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, '1753900820_Poonam Nehra.pdf', '2025-07-30 18:40:20', '2025-07-30 18:40:20', NULL, 1),
(112, 'Mamta', 'kumarimamta1599@gmail.com', '9818377837', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1753900951_Resume Mamta.pdf', '2025-07-30 18:42:31', '2025-07-30 18:42:31', NULL, 1),
(113, 'Pradeep', 'pardeepsihag100@gmail.com', '8168961720', NULL, NULL, NULL, '425000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, NULL, NULL, NULL, NULL, '1753901069_PRADEEP HISAR.pdf', '2025-07-30 18:44:29', '2025-07-30 18:44:29', NULL, 1),
(114, 'Rahul Malik', 'memalik.malik26@gmail.com', '8168410562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rohtak', 'Rohtak', NULL, NULL, NULL, NULL, NULL, NULL, '1753901196_Rahul Malik.pdf', '2025-07-30 18:46:36', '2025-07-30 18:46:36', NULL, 1),
(115, 'Abhilekh Nishen', 'abhilekhsingh31@gmail.com', '9560183245', '1970-01-01', 'Centre Manager', 'Max Life Insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1754073433_ABHILEKH NISHEN.pdf', '2025-08-04 11:51:27', '2025-08-04 18:51:27', NULL, 1),
(116, 'Heena', 'bajwanheena@gmail.com', '8168120972', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754073517_HeenaResume (1).pdf', '2025-08-01 18:38:37', '2025-08-01 18:38:37', NULL, 1),
(117, 'Ritu', 'sangalritu2@gmail.com', '9812301958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754073592_RITU RESUME.docx', '2025-08-01 18:39:52', '2025-08-01 18:39:52', NULL, 1),
(118, 'Anurag Singh', 'bhadauriyaanurag41@gmail.com', '8009861164', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', 'Cluster Head', 'Canara Life', 'Rejected', NULL, NULL, NULL, '1754075057_Anurag Singh.pdf', '2025-08-05 19:49:08', '2025-08-06 02:49:08', NULL, 1),
(119, 'Ravina', 'ravinasanga83@gmail.com', '7419108161', '1970-01-01', 'Sales Officer', 'Axis Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'Associate', 'Canara Life', 'Shared', NULL, 'Has already given interview to Deepender', NULL, '1754075147_Ravina.pdf', '2025-08-05 21:07:05', '2025-08-06 04:07:05', NULL, 1),
(120, 'Sukriti Mahajan', 'sukritimahajan1698@gmail.com', '9797625735', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jammu', 'Jammu', NULL, NULL, NULL, NULL, NULL, NULL, '1754075277_Sukriti Mahajan.pdf', '2025-08-01 19:07:57', '2025-08-01 19:07:57', NULL, 1),
(121, 'Vivek Bansal', 'bansvivek@gmail.com', '8376068330', NULL, NULL, 'IT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1754075460_Vivek Bansal.pdf', '2025-08-01 19:11:00', '2025-08-01 19:11:00', NULL, 1),
(122, 'Rajat Gupta', 'rajatgupta8273@gmail.com', '7983851670', NULL, 'RM', 'Policy Bazar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Noida', NULL, NULL, NULL, NULL, NULL, NULL, '1754075577_Rajat Gupta C.V.pdf', '2025-08-01 19:12:57', '2025-08-01 19:12:57', NULL, 1),
(123, 'Ravi Kashyap', 'ravikashyap493@gmail.com', '9306359007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Panipat', 'Panipat', NULL, NULL, NULL, NULL, 'Linkdein', NULL, '1754075700_Ravi Kashyap CV .pdf', '2025-08-01 19:15:00', '2025-08-01 19:15:00', NULL, 1),
(124, 'Rama Shankar Pandey', 'pandey9458@yahoo.com', '8745975170', NULL, 'SRM', 'PNB Met Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Noida', 'Lucknow', 'Aditya Birla Life', NULL, NULL, NULL, NULL, '1754075885_Rama Shankar Pandey.pdf', '2025-08-01 19:18:05', '2025-08-01 19:18:05', NULL, 1),
(125, 'Om Praskash Mishra', 'ommmishra90@gmail.com', '9658012246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhuvenshar', 'Bhuveshvar', NULL, NULL, NULL, NULL, NULL, NULL, '1754077443_Omm Updated Cv (1).pdf', '2025-08-01 19:44:03', '2025-08-01 19:44:03', NULL, 1),
(126, 'Ved Prakash', 'vivanji93@gmail.com', '9651080845', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucknow', 'Lucknow', NULL, NULL, NULL, NULL, NULL, NULL, '1754077582_CV VedprakashSrivastava-1 (1).pdf', '2025-08-01 19:46:22', '2025-08-01 19:46:22', NULL, 1),
(127, 'Sadhna', 'Sadhnamalhotra129@gmail.com', '9650513867', '1970-01-01', NULL, 'Future Generali General', '4', NULL, '1 Month', NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1754077711_Sadhna.pdf', '2025-08-01 12:56:29', '2025-08-01 19:56:29', NULL, 1),
(128, 'Poonam Nehra', 'poonamnehra198@gmail.com', '7073432366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, '1754078087_Poonam Nehra.pdf', '2025-08-01 19:54:47', '2025-08-01 19:54:47', NULL, 1),
(129, 'Rahul Malik', 'Memalik.malik26@gmail.com', '8168410562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754078375_Rahul Malik.pdf', '2025-08-01 19:59:35', '2025-08-01 19:59:35', NULL, 1),
(130, 'Dharmender', 'Dharmendra80kcs@gmail.com', '9826200755', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhopal', 'Bhopal', NULL, NULL, NULL, NULL, NULL, NULL, '1754144419_ayush goyal resume.pdf', '2025-08-02 14:20:19', '2025-08-02 14:20:19', NULL, 1),
(131, 'Nitesh Kumar', 'nm20091997@GMAIL.COM', '9315202074', '1970-01-01', 'RM', 'PNB Met Life', '3.85', '3.85', 'Immediate joiner', NULL, 'PGDM', NULL, '5 Years', NULL, NULL, 'Delhi', 'Delhi', 'Bandhan Bank', 'Bandhan Life(04.08.25)', 'Rejected', NULL, 'Interview scheduled tomorrow for Relationship Manager profile. HR-Vibhu', NULL, '1754149318_Nitesh_Kumar resume.3 pdf (1).pdf', '2025-08-15 09:22:00', '2025-08-15 16:22:00', NULL, 1),
(132, 'Dharmender', 'Dharmendra80kcs@gmail.com', '9826200755', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhopal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754155675_dharmender.pdf', '2025-08-02 17:27:55', '2025-08-02 17:27:55', NULL, 1),
(133, 'Pardeep', 'pardeepsihag100@gmail.com', '8168961720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, NULL, NULL, NULL, NULL, '1754156661_PRADEEP HISAR.pdf', '2025-08-02 17:44:21', '2025-08-02 17:44:21', NULL, 1),
(134, 'Deepak Goutam', 'deepak1986.goutam@gmail.com', '8875024737', '1970-01-01', 'BDM', 'SBI Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', 'TM', 'Aditya Birla', 'Not Conducted', NULL, 'Already applied by other source', NULL, '1754156839_Deepak Goutam.pdf', '2025-08-05 19:50:50', '2025-08-06 02:50:50', NULL, 1),
(135, 'Neeraj Tiwari', 'neeraj.u2012@gmail.com', '7717793877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patna', 'Jamshedpur', NULL, NULL, NULL, NULL, NULL, NULL, '1754156969_Neeraj Tiwari.....pdf', '2025-08-02 17:49:29', '2025-08-02 17:49:29', NULL, 1),
(136, 'Prashant Tripathi', 'contact.prashant1@gmail.com', '8287901521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754157144_Prashant Tripathi Technical.pdf', '2025-08-02 17:52:24', '2025-08-02 17:52:24', NULL, 1),
(137, 'Prashant Tripathi', 'contact.prashant1@gmail.com', '8287901521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754157147_Prashant Tripathi Technical.pdf', '2025-08-02 17:52:27', '2025-08-02 17:52:27', NULL, 1),
(138, 'Reena Devi', 'ravina01031998@gmail.com', '9306183285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754157273_Reena Devi.docx', '2025-08-02 17:54:33', '2025-08-02 17:54:33', NULL, 1),
(139, 'Reena Devi', 'ravina01031998@gmail.com', '9306183285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754157459_Reena Devi.docx', '2025-08-02 17:57:39', '2025-08-02 17:57:39', NULL, 1),
(140, 'SampathAvinash Krishna', 'avi0007@gmail.com', '9677067030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chennai', 'Chennai', NULL, NULL, NULL, NULL, NULL, NULL, '1754157691_Sampath_avinash_krishna_17yrs_7m_Chennai_18.50_LPA_Technical_project_lead.docx', '2025-08-02 18:01:31', '2025-08-02 18:01:31', NULL, 1),
(141, 'Yugesh', 'yugattri95@gmail.com', '8295951320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754157874_RESUME YUG (3).pdf', '2025-08-02 18:04:34', '2025-08-02 18:04:34', NULL, 1),
(142, 'Sandeep Kaushik', 'sandeep.kaushik123@gmail.com', '7015801902', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754158012_Resume_Sandeep Kaushik (1).pdf', '2025-08-02 18:06:52', '2025-08-02 18:06:52', NULL, 1),
(143, 'Rekha Saini', 'simisaini0962@GMAIL.COM', '9817914309', '1970-01-01', 'Sales Officer', 'ICICI Bank', '1.8', '2.5', 'One Month', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'BDM', 'Indiafirst(19.09.2025)', 'Shared', NULL, 'Shared with Tanya', NULL, '1754160259_Rekha PDF.pdf', '2025-09-19 10:05:04', '2025-09-19 17:05:04', NULL, 1),
(144, 'Renu Sharma', 'renu.rs.sharma82@gmail.com', '8094487444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754160365_RENU SHARMA RESUME 19 NOV.docx', '2025-08-02 18:46:05', '2025-08-02 18:46:05', NULL, 1),
(145, 'Sat Prakash', 'lalit.kumar8300@gmail.com', '7876777896', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754160721_Sat parkash.pdf', '2025-08-02 18:52:01', '2025-08-02 18:52:01', NULL, 1),
(146, 'Sanjay Sidana', 'sanjaysidana101@gmail.com', '9462664274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754160805_Sanjay-Sidana-Resume.pdf', '2025-08-02 18:53:25', '2025-08-02 18:53:25', NULL, 1),
(147, 'Sunil Kumar Bhatt', 'sunilbhatt84.sb@gmail.com', '8076129257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754160993_sunil bhattl CV (1).pdf', '2025-08-02 18:56:33', '2025-08-02 18:56:33', NULL, 1),
(148, 'Sadhna', 'Sadhnamalhotra129@gmail.com', '9650513867', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754161133_Sadhna.pdf', '2025-08-02 18:58:53', '2025-08-02 18:58:53', NULL, 1),
(149, 'Saurabh Singh', 'saurabh_singh317@yahoo.com', '7409090555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754161551_Saurabh Singh.pdf', '2025-08-02 19:05:51', '2025-08-02 19:05:51', NULL, 1),
(150, 'Saurabh Singh', 'saurabh_singh317@yahoo.com', '7409090555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754161735_Saurabh Singh.pdf', '2025-08-02 19:08:55', '2025-08-02 19:08:55', NULL, 1),
(151, 'Tarmesh Kumar', 'tarmeshdhiman@gmail.com', '7045029090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754161891_Tarmesh Kumar.pdf', '2025-08-02 19:11:31', '2025-08-02 19:11:31', NULL, 1),
(152, 'Upendra', 'upchaurasia@gmail.com', '9023463562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754162077_Upendra_Chaurasia_Updated_Resume.pdf', '2025-08-02 19:14:37', '2025-08-02 19:14:37', NULL, 1),
(153, 'Shrinivas Shindey', 'shrinivasshinde86@gmail.com', '9028695410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754162228_Shrinivas_shinde_12yrs_Pune_16.00_LPA_Senior_php_developer___technical_lead.docx', '2025-08-02 19:17:08', '2025-08-02 19:17:08', NULL, 1),
(154, 'Sonu', 'sonukalwan999@gmail.com', '7027761888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhiwani', 'Bhiwani', NULL, NULL, NULL, NULL, NULL, NULL, '1754162335_Sonu.pdf', '2025-08-02 19:18:55', '2025-08-02 19:18:55', NULL, 1),
(155, 'Taruni Bikkina', 'tarunbikkina441@gmail.com', '7329045458', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754162561_Tarunia Bikkia.pdf', '2025-08-02 19:22:41', '2025-08-02 19:22:41', NULL, 1),
(156, 'Shreya', 'shreybanerjee1234@gmail.com', '9836776444', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754162715_Shreya_20CV_202_compressed.pdf', '2025-08-12 23:24:37', '2025-08-13 06:24:37', NULL, 1);
INSERT INTO `user_data` (`id`, `name`, `email`, `mobile_number`, `dob`, `designation`, `current_company`, `current_ctc`, `expected_ctc`, `notice_period`, `employment_type`, `edu_qualification`, `skills`, `work_exp`, `cover_letter`, `pincode`, `current_location`, `preferred_location`, `post_applied_for`, `company_applied_for`, `interview_status`, `offer_status`, `remarks`, `pan`, `resume_attachment`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(157, 'Shaeed Ahmed', 'Shaheed.sincere@rediffmail.com', '9675586490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1754162805_Shaed Ahemed.pdf', '2025-08-02 19:26:45', '2025-08-02 19:26:45', NULL, 1),
(158, 'Susheel Kumar', 'susheel.kumar7@gmail.com', '9760060500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dehradun', 'Dehradun', NULL, NULL, NULL, NULL, NULL, NULL, '1754162935_Susheel Kumar.pdf', '2025-08-02 19:28:55', '2025-08-02 19:28:55', NULL, 1),
(159, 'Nisha Sagar', 'nishasagar06081998@gmail.com', '9910535967', '1996-06-08', 'Sales Officer', 'HDFC Bank', '2.5', '3.25', 'one Month', 'Full Time', 'B.com', NULL, '5 Years of Exp', NULL, NULL, 'Ghaziabad', 'Vaundhra', NULL, 'Bandhan Life (04.08.2025)', 'Rejected', NULL, 'Interview held tomorrow at Bandhan Life office\r\nCand Id: (BL_CAND30367)', NULL, '1754302853_Nisha Sagar.pdf', '2025-08-15 09:22:25', '2025-08-15 16:22:25', NULL, 1),
(160, 'Nisha Sagar', 'nishasagar06081998@gmail.com', '9910535967', '1998-08-06', 'Sales Officer', 'HDFC Bank', '2.5', '3.25', 'One Month', 'Full Time', 'B.com', 'Marketing Skills', '5 years in Sales', NULL, NULL, 'Ghaziabad', 'Laxmi Nagar', 'Associate Relationship Officer', 'Manipal Cigna Health(24.07.25)', 'Selected', 'Offer Released', 'Candidate has given her first round of interview on 26.07.2025.\r\nShortlisted for 2nd round.\r\nSelected\r\noffered 3.5 lpa', NULL, '1754303311_Nisha Sagar.pdf', '2025-08-21 07:50:50', '2025-08-21 14:50:50', NULL, 1),
(161, 'Sneha Sagar', 'sagarsneha389@gmail.com', '8287214069', '2000-09-12', 'Receptionst', 'School', '8500', NULL, 'One Month', 'Full Type', 'MCOM', NULL, '1 Year', NULL, NULL, 'Ghaziabad', 'Ghaziabad', 'Sales Officer', 'Max Life Ins (09.06.25)', 'Rejected', NULL, 'HR Divanshi and Deepak Branch Manager', NULL, '1754331491_Sneha Sagar.pdf', '2025-08-04 18:18:11', '2025-08-04 18:18:11', NULL, 1),
(162, 'Sneha Sagar', 'sagarsneha389@gmail.com', '8287214069', '2000-09-12', 'Receptionst', 'School', '8500', NULL, 'One Month', 'Full type', 'MCOM', NULL, '1 Year', NULL, NULL, 'Ghaziabad', 'Ghaziabad', 'Branch Relationship Manager', 'Manipal Cigna(24.07.25)', 'Rejected', NULL, 'She has given interview on 26th July 2025 but rejected', NULL, '1754331769_Sneha Sagar.pdf', '2025-08-04 18:22:49', '2025-08-04 18:22:49', NULL, 1),
(163, 'Sneha Sagar', 'snehasagar389@gmail.com', '8287214069', '2000-09-12', 'Receptionst', 'School', '8500', NULL, 'One Month', 'Full Type', 'MCOM', NULL, '1 Year', NULL, NULL, 'Ghaziabad', 'Ghaziabad', 'Relationship Manager', 'Bandhan Life(30.07.25)', 'Rejected', NULL, 'BL_CAND30358 HR Vibhu interview has given on 31st July 2025.', NULL, '1754332033_Sneha Sagar.pdf', '2025-08-04 18:27:14', '2025-08-04 18:27:14', NULL, 1),
(164, 'Nisha Sagar', 'nishasagar06081998@gmail.com', '9910535967', '1998-06-08', 'Sales Officer', 'Hdfc Bank', '2.5', '3.25', 'One Month', 'Full Time', 'Bcom', NULL, '4 Years', NULL, NULL, 'Ghaziabad', 'Indrapuram', NULL, 'Max Life(19.06.25)', 'Shared', NULL, 'Did not receive any call from HR Akshita', NULL, '1754332417_Nisha Sagar.pdf', '2025-08-04 11:47:56', '2025-08-04 18:47:56', NULL, 1),
(165, 'Jeeshan Saifi', 'zsaifi172@gmail.com', '9675896498', '1997-09-15', 'Sales Executive', 'Pharma', NULL, NULL, '15 Days', 'Full Time', 'BSC', NULL, NULL, NULL, NULL, 'Ghaziabad', 'Ghaziabad', 'Sales Officer', 'Max Life(02.07.25)', 'Shared', NULL, NULL, NULL, '1754332815_Jeeshan_Saifi.pdf', '2025-08-04 18:40:15', '2025-08-04 18:40:15', NULL, 1),
(166, 'Nisha Sagar', 'nishasagar06081998@gmail.com', '9910535967', '1998-06-08', 'Sales Officer', 'Hdfc bank', '2.5', '3.25', 'One Month', 'Full time', 'BCOM', 'Marketing,Sales, Health Insurance', '4 Years', NULL, NULL, 'Ghaziabad', 'Noida', 'Relationship Manager', 'Pnb Met Life', 'Shared', NULL, 'She is not interested for Pnb met life', NULL, '1754418256_Nisha Sagar.pdf', '2025-08-05 18:24:16', '2025-08-05 18:24:16', NULL, 1),
(167, 'Aman', 'amanbrar2353@gmail.com', '8572052570', '2001-01-20', 'Sales Officer', 'Kotak Mahindra Bank', NULL, NULL, 'One Month', 'Full Time', 'BSC', NULL, NULL, NULL, NULL, 'Hansi', 'Hansi', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, '1754418558_Aman.pdf', '2025-08-05 18:29:18', '2025-08-05 18:29:18', NULL, 1),
(168, 'Rekha Saini', 'simisaini0962@gmail.com', '9817914309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, 'Canara Life', 'Conducted', NULL, 'Not went for the interview.', NULL, '1754418807_Rekha.docx', '2025-08-05 18:33:27', '2025-08-05 18:33:27', NULL, 1),
(169, 'Bhanwar Lal Verma', 'bhanwarverma4@gmail.com', '8107076962', '1970-01-01', 'Associate Territory Manager', 'Tata Life', '800000', NULL, '1 Month', 'Full time', 'BCOM', NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', 'Cluster Manager', 'Canara Life', 'Rejected', NULL, '1st round conducted by hr showing screening\r\nRejected in Assessment Link', 'AVFPV6125K', '1754419107_Bhanwar Lal Verma.pdf', '2025-08-15 09:29:33', '2025-08-15 16:29:33', NULL, 1),
(170, 'Deepak Goutam', 'deepak1986.goutam@gmail.com', '8875024737', NULL, 'BDM', 'SBI Life', NULL, NULL, '1 Month', NULL, 'MBA', NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', 'Cluster Head', 'Canara Life', 'Rejected', NULL, NULL, NULL, '1754419305_Deepak Goutam.pdf', '2025-08-05 18:41:45', '2025-08-05 18:41:45', NULL, 1),
(171, 'Mahima Ojha', 'mahimaojha1912@gmail.com', '9336555842', '1970-01-01', 'Branch Relationship Executive', 'SBI Card', '1.5', '2.5', 'Immediate Joiner', NULL, NULL, NULL, NULL, NULL, NULL, 'Gorakhpur', 'Gorakhpur', 'Associate', 'Canara Life(05.07.25)', 'Uploaded', NULL, NULL, NULL, '1754421408_Mahima Ojha.pdf', '2025-08-05 19:47:08', '2025-08-06 02:47:08', NULL, 1),
(172, 'Arpit Dahiya', 'arpitsinghdahiya3@gmail.com', '9729900480', NULL, 'Branch Sales Manager', 'Kotak Mahindra Bank', NULL, NULL, NULL, NULL, 'B Tech', NULL, NULL, NULL, NULL, 'Shamli', 'Shamli', NULL, NULL, NULL, NULL, NULL, NULL, '1754447840_Arpit Dahiya.pdf', '2025-08-06 02:37:20', '2025-08-06 02:37:20', NULL, 1),
(173, 'Rishabh Kapoor', 'Kapoor.Rishabh30@gmail.com', '6393795868', NULL, 'Area Sales Manager', 'HDFC Sales', NULL, NULL, NULL, NULL, 'MBA', NULL, NULL, NULL, NULL, 'Kanpur', 'Kanpur', NULL, NULL, NULL, NULL, NULL, NULL, '1754448021_Rishabh.pdf', '2025-08-06 02:40:21', '2025-08-06 02:40:21', NULL, 1),
(174, 'Sunil Kumar', 'sunilmeena7775@gmail.com', '9001001942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, '1754448168_Sunil.docx', '2025-08-06 02:42:48', '2025-08-06 02:42:48', NULL, 1),
(175, 'Shilpi Kumari', 'shilpi123kashyap@gmail.com', '9006980989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Lucknow', NULL, NULL, NULL, NULL, NULL, NULL, '1754448277_Shilpi_Kumari_Resume.pdf', '2025-08-06 02:44:37', '2025-08-06 02:44:37', NULL, 1),
(176, 'Pawan Pandey', 'pawanpandey77@yahoo.com', '8448718922', NULL, 'Sr PWM Area Manager', 'Bajaj Allianz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Najafgarh', 'Najafgarh', NULL, NULL, NULL, NULL, NULL, NULL, '1754450538_Pavan Pandey Resume (2).docx', '2025-08-06 03:22:18', '2025-08-06 03:22:18', NULL, 1),
(177, 'Aarti Kaushik', 'aartikaushik268@gmail.com', '8769499056', '1999-03-20', 'CBI Bank', 'Future Generali', NULL, NULL, '1 Month', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Panipat', 'Panipat', 'Relationship officer', 'Canara/hdfc/tata/pnb', 'Shared', NULL, 'Already interview by Concern Person (Direct)(12.06.25) but uploaded by me on canara portal\r\nHdfc Life cleared Test not getting call for interview 05 June 2025. uploaded by me on portal\r\nTata Life applied by other consultant in Placewell Careers (09.07.25) I mailed\r\n\r\nShe has joined Future Generali\r\nAlready given interview in PNB Met Life by other consultant(Rejected)', NULL, '1754452993_AARTI KAUSHIK.pdf', '2025-09-06 04:21:34', '2025-09-06 11:21:34', NULL, 1),
(178, 'Sajjan Singh', 'sajjansingh266@gmail.com', '8930677920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhiwani', 'Bhiwani', 'Sr Associate', 'Canara Life', 'Rejected', NULL, NULL, NULL, '1754453123_SAJJAN_SINGH.pdf', '2025-08-06 04:05:23', '2025-08-06 04:05:23', NULL, 1),
(179, 'Nisha Sagar', 'nishasagar06081998@gmail.com', '9910535967', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ghaziabad', 'Ghazaiabd', 'RO', 'Canara Life(06.08.25)', 'Conducted', NULL, NULL, NULL, NULL, '2025-08-07 02:27:07', '2025-08-07 02:27:07', NULL, 1),
(180, 'Deepak Singh', 'Deepaksingh88605@gmail.com', '9643711280', NULL, 'IDFC First Bank', 'Aditya Birla Sun Life', NULL, NULL, 'One Month', 'Full Time', 'MSC', NULL, NULL, NULL, NULL, 'Ghaziabad', 'Ghaziabad', 'RO', 'Canara life(06.08.25)', 'Conducted', NULL, NULL, 'EYZPD9740P', NULL, '2025-08-07 02:31:55', '2025-08-07 02:31:55', NULL, 1),
(181, 'Vivek', 'kuv79441@gmail.com', '8585993053', NULL, NULL, 'Equitas Small Finance Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Janakpuri', 'Janakpuri', NULL, NULL, NULL, NULL, NULL, NULL, '1754537870_Vivek cv BDM-8 years experience .pdf', '2025-08-07 03:37:50', '2025-08-07 03:37:50', NULL, 1),
(182, 'Rahul Bhanushali', 'rahulbansmbj@gmail.com', '9358470807', '1999-07-06', 'RM', 'ICICI Pru', '440000', NULL, 'Immediate joiner', 'Full time', 'BA', NULL, NULL, NULL, NULL, 'Agra', 'Agra', 'Sro', 'Canara life', 'Pending', NULL, NULL, 'DELPB1837J', '1755064782_RahulBanshiwal CV.pdf', '2025-08-12 23:08:20', '2025-08-13 06:08:20', NULL, 1),
(183, 'Shubham Pandey', 'dubeyshubham67186@gmail.com', '8287869290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1755067789_shubham dubey.pdf', '2025-08-13 06:49:49', '2025-08-13 06:49:49', NULL, 1),
(184, 'Jatin Bahel', 'jatinbahel789@gmail.com', '8859511110', '1993-06-30', 'SRM', 'PNB Met Life', NULL, NULL, 'One Month', 'Full Type', 'MBA', NULL, NULL, NULL, NULL, 'Agra', 'Agra', NULL, NULL, NULL, NULL, NULL, NULL, '1755243016_Jatin Bahel.pdf', '2025-08-15 07:30:16', '2025-08-15 07:30:16', NULL, 1),
(185, 'Vikas Tiwari', 'vikastiwari001@gmail.com', '9717745309', NULL, 'TSM', 'PNB Met Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Noida', NULL, NULL, NULL, NULL, NULL, NULL, '1755243217_Vikas_Tiwari.pdf', '2025-08-15 07:33:37', '2025-08-15 07:33:37', NULL, 1),
(186, 'Vyom', 'Sharmaviyom777@gmail.com', '9634740548', '1995-09-13', 'Area Business Head', 'Shri Ram Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aligarh', 'Aligarh', NULL, NULL, NULL, NULL, NULL, NULL, '1755243694_Vyom cv vyom cv .pdf', '2025-08-15 07:41:34', '2025-08-15 07:41:34', NULL, 1),
(187, 'Neha Sinha', 'nehasinha1198@gmail.com', '8799770730', '1999-09-05', 'Axis Bank', 'Max Life', '4 Lpa', '6 LPA', 'Immediate Joiner', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'West Delhi', 'West Delhi', 'Team Leader', 'Canara HSBC (14.08.25)', 'Conducted', NULL, 'Interview scheduled on 18th for West Delhi Registration Successful on 15.08.25', 'NWPPS5194R', '1755244155_NEHA SINHA.pdf', '2025-08-15 09:20:50', '2025-08-15 16:20:50', NULL, 1),
(188, 'Sudhanshu Jouhari', 'sjouhari86@gmail.com', '7065510101', NULL, 'ATM', 'Care Health Insurance', NULL, NULL, NULL, NULL, 'BA', NULL, NULL, NULL, NULL, 'Moradabad', 'Moradabad', NULL, NULL, NULL, NULL, NULL, NULL, '1755244402_Sushanshu Jouhari.pdf', '2025-08-15 07:53:22', '2025-08-15 07:53:22', NULL, 1),
(189, 'Gaurav K Prashar', 'gauri_phg@yahoo.co.in', '9814216597', NULL, 'Associate Regional Manager', 'Max Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phagwara', 'Phagwara', NULL, NULL, NULL, NULL, NULL, NULL, '1755249246_Gaurav K Prashar.pdf', '2025-08-15 09:14:06', '2025-08-15 09:14:06', NULL, 1),
(190, 'Vijay Anand', 'vijayanandpatwa@gmail.com', '9142888088', '1981-10-17', 'TM', 'PNB Met Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patna', 'Patna', NULL, NULL, NULL, NULL, NULL, NULL, '1755250064_Resume Vijay Anand.pdf', '2025-08-15 09:27:44', '2025-08-15 09:27:44', NULL, 1),
(191, 'Abhishek Singh', 'as758805@gmail.com', '8076950368', NULL, 'FPM', 'HDFC Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1755265964_Abhishek Singh.pdf', '2025-08-15 13:52:44', '2025-08-15 13:52:44', NULL, 1),
(192, 'Anil Verma', 'anilvermabigb@gmail.com', '9018280003', NULL, 'Territory Manager', 'PNB Met Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meerut', 'Meerut', NULL, NULL, NULL, NULL, NULL, NULL, '1755266243_Amit Kumar.pdf', '2025-08-15 13:57:23', '2025-08-15 13:57:23', NULL, 1),
(193, 'Amit Kumar', 'roniamitnimesh@gmail.com', '8802500816', NULL, 'SRM', 'Bajaj Life', NULL, NULL, NULL, 'Full time', NULL, NULL, NULL, NULL, NULL, 'Ghaziabad', 'Ghaziabad', NULL, NULL, NULL, NULL, NULL, NULL, '1755266646_Amit.docx', '2025-08-15 14:04:06', '2025-08-15 14:04:06', NULL, 1),
(194, 'Saurabh Tandon', 'saurabhtandon8899@gmail.com', '9634804819', NULL, 'CAM', 'Tata AIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vriandavan', 'Vriandavan', NULL, NULL, NULL, NULL, NULL, NULL, '1755266991_CV SAURABH TONDON Compressed Low-1 (1).pdf', '2025-08-15 14:09:51', '2025-08-15 14:09:51', NULL, 1),
(195, 'Arpit Dahiya', 'arpitsinghdahiya3@gmail.com', '9729900480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shamli', 'Shamli', NULL, NULL, NULL, NULL, NULL, NULL, '1755269770_Arpit.pdf', '2025-08-15 14:56:10', '2025-08-15 14:56:10', NULL, 1),
(196, 'Jabinder Kumar', 'jasbinder.jaswal@yahoo.com', '1234567891', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', NULL, NULL, NULL, NULL, NULL, NULL, '1755270251_Jasbinder Kumar Resume.pdf', '2025-08-15 15:04:11', '2025-08-15 15:04:11', NULL, 1),
(197, 'Kuldeep Singh', 'coolkuldeep37@gmail.com', '7404393054', '1970-01-01', 'SSO', 'Abhiyan Capital', '310000', NULL, '15 Days', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'RO', 'Canara HSBC', 'Rejected', NULL, NULL, NULL, '1755270560_Kuldeep Singh.docx', '2025-09-19 10:03:07', '2025-09-19 17:03:07', NULL, 1),
(198, 'Mahima Ojha', 'mahimaojha1912@gmail.com', '9336555842', '2003-12-19', 'Branch Relationship Execuive', 'SBI Card', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gorakhpur', 'Gorakhpur', NULL, NULL, NULL, NULL, NULL, NULL, '1755270972_Mahima Ojha.pdf', '2025-08-15 15:16:12', '2025-08-15 15:16:12', NULL, 1),
(199, 'Mandeep Kaur', 'mandeepsrari08@gmail.com', '9336555842', '2003-05-08', NULL, 'MBA Fresher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ludhiana', 'Delhi', 'Bandhan Bank', 'Bandhan Life(13.08.25)', 'Shared', NULL, NULL, NULL, '1755271325_Mandeep Kaur.docx', '2025-08-15 15:22:05', '2025-08-15 15:22:05', NULL, 1),
(200, 'Mohan Singh', 'mohanofficial1@gmail.com', '9667554445', '1992-11-18', 'TSM', 'MOM', '560000', '600000', 'One Month', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Nangloi', 'West Delhi', 'Team Leader', 'Canara HSBC (15.08.25)', 'Rejected', NULL, 'Registration successful on 15.08.25. Interview scheduled on 18th August 2025.', 'EPRPS2635E', '1755273302_Mohan.docx', '2025-09-12 13:15:22', '2025-09-12 20:15:22', NULL, 1),
(201, 'Neha Gautam', 'kumaravi32809@gmail.com', '7009373264', '1999-11-19', 'Bdm', 'Indusind Bank', '340000', NULL, 'One month', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', 'CASA', 'AU Small Finance Bank', 'Conducted', NULL, 'Shared with hr Baljit Kaur concern Person Mangesh Kochar Cluster Head', NULL, '1755276704_Neha.pdf', '2025-08-15 09:58:06', '2025-08-15 16:58:06', NULL, 1),
(202, 'Prakhar Kumar', 'prakhark174@gmail.com', '9149367947', NULL, 'DO', 'LIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bareilly', 'Bareilly', 'APC', 'Max Life', 'Not Conducted', NULL, 'Because already submitted by other consultancy', NULL, '1755278834_Prakhar Kumar-3 (1).pdf', '2025-08-15 17:27:14', '2025-08-15 17:27:14', NULL, 1),
(203, 'Gaurav Saxsena', 'gaurav980832@gmail.com', '9945601281', NULL, 'Sr BDM', 'Rewnewbuy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bareilly', 'Bareilly', NULL, NULL, NULL, NULL, NULL, NULL, '1755284841_GAURAV SAXENA RESUME.pdf', '2025-08-15 19:07:21', '2025-08-15 19:07:21', NULL, 1),
(204, 'Anuradha Khandewal', 'khandelwalanu12@gmail.com', '7500610137', '1990-01-12', 'Location Head', 'Relaince Life insurance', '10.5', NULL, 'Immediate joiner', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Dehradun', 'Dehradun', 'Cluster Head', 'Aditya Birla Sun Life', 'Pending', NULL, NULL, NULL, '1755285057_anu newcv.docx', '2025-08-17 09:08:36', '2025-08-17 16:08:36', NULL, 1),
(205, 'Shubham Dubey', 'dubeyshubham6718@gmail.com', '8287869290', NULL, 'SRM', 'Reliance Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1755285193_shubham dubey.pdf', '2025-08-15 19:13:13', '2025-08-15 19:13:13', NULL, 1),
(206, 'Prakhar', 'prakhark174@gmail.com', '9149367947', '1970-01-01', 'DO', 'LIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bareilly', 'Bareilly/Delhi NCR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-15 12:16:28', '2025-08-15 19:16:28', NULL, 1),
(207, 'Rahul saini', 'rsaini772@gmail.com', '9812523527', NULL, 'Cluster Manager', 'HDFC Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurgaon', 'Gurgaon', NULL, NULL, NULL, NULL, NULL, NULL, '1755285981_RAHUl.pdf', '2025-08-15 19:26:21', '2025-08-15 19:26:21', NULL, 1),
(208, 'Jogendra Morya', 'Jogendramorya@gmail.com', '9719010131', '1986-02-21', 'Branch Manager Agency', 'icici Lombard GIC', NULL, NULL, NULL, NULL, 'BCA', NULL, NULL, NULL, NULL, 'Dehradun', 'Dehradun', 'Cluster Head', 'Aditya Birla Sun Life', 'Rejected', NULL, 'Already Ex Employee not hired by co', NULL, '1755447410_RahulBanshiwal CV.pdf', '2025-08-17 16:16:50', '2025-08-17 16:16:50', NULL, 1),
(209, 'Sandeep Kaushik', 'saneepktrivedi@gmail.com', '6388677326', '1984-02-14', 'Divisional Manager', 'Star Health Insurance', NULL, NULL, NULL, 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Kanpur', 'Kanpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-17 16:30:34', '2025-08-17 16:30:34', NULL, 1),
(210, 'Vivek', 'kuv79441@gmail.com', '8585993053', '1994-09-28', 'BDM', 'Equitas Small Finance Bank', NULL, NULL, NULL, NULL, 'BCOM', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1755448406_Vivek.pdf', '2025-08-17 16:33:26', '2025-08-17 16:33:26', NULL, 1),
(211, 'SUDHANSHU JOUHARI', 'sjouhari86@gmail.com', '7065510101', '1986-12-20', 'Associate Territory Manager', 'Care Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moradabad', 'Moradabd', NULL, NULL, NULL, NULL, NULL, NULL, '1755448583_Sushanshu Jouhari.pdf', '2025-08-17 16:36:23', '2025-08-17 16:36:23', NULL, 1),
(212, 'Uttam Gaur', 'uttamgaursp3@gmail.com', '8419820038', NULL, 'SRM', 'Icici Lombard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucknow', 'Lucknow', NULL, NULL, NULL, NULL, '9569266799', NULL, '1755493379_Uttam CV.pdf', '2025-08-18 05:02:59', '2025-08-18 05:02:59', NULL, 1),
(213, 'Shashi Kant', 'shashi.kantbsli@gmail.com', '9838665594', '1988-07-15', 'Cluster Head', 'Aditya Birla Health', NULL, NULL, NULL, NULL, 'BA', NULL, NULL, NULL, NULL, 'Allahabad', 'Allahabad', NULL, NULL, NULL, NULL, NULL, NULL, '1755493591_Shashi Kant_Sales_15yrs.docx', '2025-08-18 05:06:31', '2025-08-18 05:06:31', NULL, 1),
(214, 'Rajesh Kumar', 'mnjt.shrm@gmail.com', '7888722360', NULL, 'Relationship Manager', 'IIFL Home Finance', NULL, NULL, NULL, 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Zirakpur', 'Zirakpur', NULL, NULL, NULL, NULL, NULL, NULL, '1755500357_Rajesh Resume-1.pdf', '2025-08-18 06:59:17', '2025-08-18 06:59:17', NULL, 1),
(215, 'Ravi Mishra', 'ravimishra429@gmail.com', '9630263550', '1989-09-30', 'STM', 'Reliance Nippon Life Insurance', NULL, NULL, NULL, 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Bhopal', 'Bhopal', NULL, NULL, NULL, NULL, NULL, NULL, '1755503192_RAVI MISHRA 2024.pdf', '2025-08-18 07:46:32', '2025-08-18 07:46:32', NULL, 1),
(216, 'Narinder Siniwal', 'imnarennn26@gmail.com', '8107775619', '1970-01-01', 'Branch Relationship Executive', 'SBI Cards', NULL, NULL, 'immediate joiner', 'Full time', 'BSC', NULL, NULL, NULL, NULL, 'Suratgarh', 'Jodhpur', 'Branch Banking officer', 'AU Small Finance Bank(18.08.25)', 'Conducted', NULL, 'Interview scheduled for tomorrow (19.08.25)\r\nBombay Motors Branch Jodhpur', NULL, '1755514484_Narindra siniwal.pdf', '2025-08-18 03:58:13', '2025-08-18 10:58:13', NULL, 1),
(217, 'Rahul', 'rahul.kumar199494@gmail.com', '9812896053', '1994-07-17', 'Sonipat', 'SBI Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sonipat', 'Sonipat', NULL, NULL, NULL, NULL, NULL, NULL, '1755544039_Rahul.pdf', '2025-08-18 19:07:19', '2025-08-18 19:07:19', NULL, 1),
(218, 'Rahul', 'rahul.kumar199494@gmail.com', '9812896053', '1994-07-17', 'Sonipat', 'SBI Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sonipat', 'Sonipat', NULL, NULL, NULL, NULL, NULL, NULL, '1755544670_Rahul.pdf', '2025-08-18 19:17:50', '2025-08-18 19:17:50', NULL, 1),
(219, 'Krishna Sharma', 'Krishnasharma45890@gmail.com', '9997510809', '2000-07-19', 'Associate Partner', 'Niva Bupa Health', NULL, NULL, NULL, NULL, 'BCOM', NULL, NULL, NULL, NULL, 'Mathura', 'Mathura', 'Cluster Manager', 'Aditya Birla Life', 'Not Conducted', NULL, 'Duplicate', NULL, '1755545490_Krishna CV_06-2-1 (3).pdf', '2025-08-18 19:31:30', '2025-08-18 19:31:30', NULL, 1),
(220, 'Saher', 'saher.kkhan4287@gmail.com', '8009330693', '1984-07-04', NULL, 'Star Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kolkata', 'Kolkata', NULL, NULL, NULL, NULL, NULL, NULL, '1755545640_Saher.pdf', '2025-08-18 19:34:00', '2025-08-18 19:34:00', NULL, 1),
(221, 'Satender Gujjar', 'satendergujjar13@gmail.com', '9759258899', NULL, NULL, 'Niva Bupa Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shamli', 'Shamli', NULL, NULL, NULL, NULL, NULL, NULL, '1755546023_satender gujjar resume.pdf', '2025-08-18 19:40:23', '2025-08-18 19:40:23', NULL, 1),
(222, 'Saurabh Srivastva', 'SAURABHSRI0311@gmail.com', '8303220992', '1994-10-11', 'TM', 'SUD Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deoria', 'Deoria', NULL, NULL, NULL, NULL, NULL, NULL, '1755546178_SAURABH_RESUME_2025.pdf', '2025-08-18 19:42:58', '2025-08-18 19:42:58', NULL, 1),
(223, 'Deepak', 'deepakjangra0887@gmail.com', '8684871981', '1995-11-11', 'Associate Cluster Manager', 'Care Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rohtak', 'Rohtak', NULL, NULL, NULL, NULL, NULL, NULL, '1755547272_Deepak_Rohtak.docx', '2025-08-18 20:01:12', '2025-08-18 20:01:12', NULL, 1),
(224, 'Shiv Shankar', 'shivshankar015@gmail.com', '8630824792', NULL, 'Central Manager', 'Star Union Dai Chi', NULL, NULL, NULL, NULL, 'BCOM', NULL, NULL, NULL, NULL, 'Aligarh', 'Aligarh', NULL, NULL, NULL, NULL, NULL, NULL, '1755594204_Shiv Shankar.docx', '2025-08-19 09:03:24', '2025-08-19 09:03:24', NULL, 1),
(225, 'Sonali Jain', 'sonalijain1016@gmail.com', '9313639284', '1981-08-03', 'Regional Manager', 'icici Pru', NULL, NULL, NULL, NULL, 'Master of Science', NULL, NULL, NULL, NULL, 'New Delhi', 'New Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1755629743_SONALI JAIN resume.docx (2).pdf', '2025-08-19 18:55:43', '2025-08-19 18:55:43', NULL, 1),
(226, 'Saurabh', 'SAURABHSRI0311@gmail.com', '8303220992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deoria', 'Deoria', NULL, NULL, NULL, NULL, NULL, NULL, '1755629844_SAURABH_RESUME_2025.pdf', '2025-08-19 18:57:24', '2025-08-19 18:57:24', NULL, 1),
(227, 'Ajit', 'ajitshrm124@gmail.com', '8287565210', '1989-06-05', 'Area Sales Manager', 'Tata Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Noida', NULL, NULL, NULL, NULL, NULL, NULL, '1755629987_Ajit.pdf', '2025-08-19 18:59:47', '2025-08-19 18:59:47', NULL, 1),
(228, 'Shiv Shankar', 'shivshankar015@gmail.com', '8630824792', '1983-10-15', 'CPC Manager', 'Star Union Dai Chi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dehradun', 'Dehradun', NULL, NULL, NULL, NULL, NULL, NULL, '1755630107_Shiv Shankar.docx', '2025-08-19 19:01:47', '2025-08-19 19:01:47', NULL, 1),
(229, 'Naveen', 'naveenbibyan353@gmail.com', '9896954995', NULL, 'Banca-Sr Executive', 'HDFC Ergo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1755630338_naveen update resume.pdf', '2025-08-19 19:05:38', '2025-08-19 19:05:38', NULL, 1),
(230, 'Siddarth Jain', 'shanu.jain1996@gmail.com', '9521033074', NULL, 'Territory Manager', 'Star Union Dai chi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1755630455_Siddharth_resume (1).pdf', '2025-08-19 19:07:35', '2025-08-19 19:07:35', NULL, 1),
(231, 'Ramandeep kaur', 'rdhillon02@hotmail.com', '9356555588', '1986-10-12', 'Area Head', 'Bharti Axa', NULL, '11 lpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Zirakpur', 'Zirakpur', 'Area Unit Head', 'Aditya Birla', 'Not Conducted', NULL, 'Duplicate', NULL, '1755632007_Ramandeep Kaur SAH (1).docx', '2025-08-19 19:33:27', '2025-08-19 19:33:27', NULL, 1),
(232, 'Sunil', 'suneel.kumar90341@gmail.com', '9468350039', NULL, NULL, 'Insurance Dekho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sirsa', 'Sirsa', 'Area Head DST', 'Aditya Birla', 'Not Conducted', NULL, NULL, NULL, '1755632294_Sunil.pdf', '2025-08-19 19:38:14', '2025-08-19 19:38:14', NULL, 1),
(233, 'sanoop Krishann', 'sanuchonkarathil@gmail.c', '8646883333', NULL, 'Branch Manager', 'HDFC Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, '1755632410_SKCV.pdf', '2025-08-19 19:40:10', '2025-08-19 19:40:10', NULL, 1),
(234, 'Swadha Priya Chaiudhary', 'swadhachoudhary@gmail.com', '8658994684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Odisha', 'Odisha', NULL, NULL, NULL, NULL, NULL, NULL, '1755632575_SWADHAPRIYA _CHOUDHURY_compressed (1).pdf', '2025-08-19 19:42:55', '2025-08-19 19:42:55', NULL, 1),
(235, 'Rahul Dhall', 'rahuldhall07@gmail.com', '9389657881', NULL, 'Sales officer', 'Pine Labs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moradabad', 'Moradabad', NULL, NULL, NULL, NULL, NULL, NULL, '1755676260_Rahul dhall2025.docx', '2025-08-20 07:51:00', '2025-08-20 07:51:00', NULL, 1),
(236, 'Asif', 'asifchoudhary9@gmail.com', '9927639669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BCOM', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1755676823_resume-Asif.pdf', '2025-08-20 08:00:23', '2025-08-20 08:00:23', NULL, 1),
(237, 'Irshad Ahmed Shah', 'syedirshadcspl@gmail.com', '9622566642', '1994-02-02', 'Sr RM', 'HDFC Security', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jammu & Kashmir', 'Jammu & Kashmir', NULL, NULL, NULL, NULL, NULL, NULL, '1755677160_Irshad Ahmed.pdf', '2025-08-20 08:06:00', '2025-08-20 08:06:00', NULL, 1),
(238, 'Anamika Chauhan', 'anamikachauhan20@yahoo.com', '8627032429', NULL, 'Agent', 'SBI Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rohru', 'Rohru', NULL, NULL, NULL, NULL, NULL, NULL, '1755788882_Anamika Chauhan.pdf', '2025-08-21 15:08:02', '2025-08-21 15:08:02', NULL, 1),
(239, 'Amit Sharma', 'sharma.amit1213@gmail.com', '9899379436', NULL, 'ERM', 'Bajaj Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', NULL, NULL, NULL, NULL, NULL, NULL, '1755789381_Amit.pdf', '2025-08-21 15:16:21', '2025-08-21 15:16:21', NULL, 1),
(240, 'Bhanu Chandel', 'rajputbhanu9495@gmail.com', '7018152232', '1995-10-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', NULL, NULL, NULL, NULL, NULL, NULL, '1755789624_Bhanu Chandel.pdf', '2025-08-21 15:20:24', '2025-08-21 15:20:24', NULL, 1),
(241, 'suresh', 'suresh.kumar171201@gmail.com', '9816089901', '1983-03-06', 'Development Manager', 'Edelweiss tokio Life', '2.25', NULL, '0', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', 'RO', 'Canara hsbc life(21.08.25)', 'Conducted', NULL, 'Shared with Sandeep Sir HR Sushma', 'BFCPK2317G', '1755790032_suresh kumar.pdf', '2025-08-21 15:27:12', '2025-08-21 15:27:12', NULL, 1),
(242, 'Harolon ibni Wali', 'haroonwali9808@gmail.com', '8494030182', '1993-03-01', 'Service Delivery Manager (Operations)', 'Indusind Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jammu & Kashmir', 'Jammu & Kashmir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-21 15:39:54', '2025-08-21 15:39:54', NULL, 1),
(243, 'Piyush', 'piyushrohila4@gmail.com', '9711587761', NULL, 'ARM', 'Niva Bupa Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1755791192_Piyush.pdf', '2025-08-21 15:46:32', '2025-08-21 15:46:32', NULL, 1),
(244, 'Deepak Thakur', 'rajpuutdeep123@gmail.com', '7807053380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BBA', NULL, NULL, NULL, '173206', 'Solan', 'Solan', NULL, NULL, NULL, NULL, NULL, NULL, '1755793259_Deepak.pdf', '2025-08-21 16:20:59', '2025-08-21 16:20:59', NULL, 1),
(245, 'Irshad Ahmed', 'syedirshadcspl@gmail.com', '9107366666', '1994-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jammu & Kashmir', 'Jammu & Kashmir', NULL, NULL, NULL, NULL, NULL, NULL, '1755793383_Irshad Ahmed.pdf', '2025-08-21 16:23:03', '2025-08-21 16:23:03', NULL, 1),
(246, 'Irshad Ahmed', 'syedirshadcspl@gmail.com', '9107366666', '1994-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jammu & Kashmir', 'Jammu & Kashmir', NULL, NULL, NULL, NULL, NULL, NULL, '1755793385_Irshad Ahmed.pdf', '2025-08-21 16:23:05', '2025-08-21 16:23:05', NULL, 1),
(247, 'Bhanu Chandel', 'rajputbhanu9495@gmail.com', '7018152232', '1995-10-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', NULL, NULL, NULL, NULL, NULL, NULL, '1755793554_Bhanu Chandel.pdf', '2025-08-21 16:25:54', '2025-08-21 16:25:54', NULL, 1),
(248, 'Manoj Kumar', 'maddyking00007@gmail.com', '8595400268', NULL, 'Takeover Manager', 'Shri Ram Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Faridabad', 'Faridabad', NULL, NULL, NULL, NULL, NULL, NULL, '1755793889_Manoj.pdf', '2025-08-21 16:31:29', '2025-08-21 16:31:29', NULL, 1),
(249, 'Mohammad Asif', 'asifchoudhary9@gmail.com', '9927639669', '1994-03-21', 'Area Sales Manager', 'HDFC Secruities Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1755794381_resume-Asif.pdf', '2025-08-21 16:39:41', '2025-08-21 16:39:41', NULL, 1),
(250, 'Manish Kumar Bhardwaj', 'mb780070@gmail.com', '8273341856', '1988-08-10', 'Area Head', 'Cholamandlam General Insurance', '7.6', NULL, NULL, 'Full time', 'Graduation', NULL, NULL, NULL, NULL, 'Aligarh', 'Aligarh', 'Cluster Head(Banca)', 'Aditya Birla(22.08.25)', 'Shared', NULL, 'Uploaded on 22.08.2025\r\nShared on 22.08.25', NULL, '1755801410_MANISH KUMAR BHARDWAJ RESUME 1-1.docx', '2025-08-22 00:44:20', '2025-08-22 07:44:20', NULL, 1),
(251, 'Ashish Bose', 'ashishbose1992@gmail.com', '9044327522', NULL, 'Branch Head', 'Protium Finance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kanpur', 'Kanpur', 'Branch Manager Direct', 'Aditya Birla(22.08.25)', 'Uploaded', NULL, 'uploaded on 22.08.25', NULL, '1755801601_ASHISH MODIFY CV.pdf', '2025-08-21 18:40:01', '2025-08-21 18:40:01', NULL, 1),
(252, 'Rajneesh Kumar', 'rajneeshallipur@gmail.com', '8853531060', '2000-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitapur', 'Sitapur', NULL, NULL, NULL, NULL, NULL, NULL, '1755801776_RK RESUME UPDATED (1).pdf', '2025-08-21 18:42:56', '2025-08-21 18:42:56', NULL, 1),
(253, 'Kushangra', 'sahukushagra15@gmail.com', '7366981140', NULL, 'Relationship Manager', 'Indifi Capital pvt ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', NULL, NULL, NULL, NULL, NULL, NULL, '1755802255_Kushangra Sahu.pdf', '2025-08-21 18:50:55', '2025-08-21 18:50:55', NULL, 1),
(254, 'Savita', 'savitasharma6412@gmail.com', '8628982039', '2001-01-12', 'AFSM', 'icici Pru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mandi', 'Mandi', NULL, NULL, NULL, NULL, NULL, NULL, '1755802400_Savita.pdf', '2025-08-21 18:53:20', '2025-08-21 18:53:20', NULL, 1),
(255, 'Piyush', 'piyushrohila4@gmail.com', '9711587761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1755802904_Piyush.pdf', '2025-08-21 19:01:44', '2025-08-21 19:01:44', NULL, 1),
(256, 'Sahil Chauhan', '18SAHILCHAUHAN1966@GMAIL.COM', '7591010220', '1998-11-03', 'Jr Executive', 'Axis Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', NULL, NULL, NULL, NULL, NULL, NULL, '1755803037_Sahil Chauhan.pdf', '2025-08-21 19:03:57', '2025-08-21 19:03:57', NULL, 1),
(257, 'Anuj Kumar Singh', 'anujkumars104@gmail.com', '8290339895', NULL, 'RM', 'Indusind Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaipur', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, '1755868693_Anuj Kumar.docx', '2025-08-22 13:18:13', '2025-08-22 13:18:13', NULL, 1),
(258, 'Bappa Mondal', 'bappamail10@gmail.com', '9733266661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bardhaman', 'Bardhaman', NULL, NULL, NULL, NULL, NULL, NULL, '1755868861_Bappa Model.pdf', '2025-08-22 13:21:01', '2025-08-22 13:21:01', NULL, 1),
(259, 'SHOBBY', 'shobby.saqlaini7@gmail.com', '8410010043', '1987-06-04', NULL, 'Star Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1755889957_Cv1 shobby.pdf', '2025-08-22 19:12:37', '2025-08-22 19:12:37', NULL, 1),
(260, 'Arvind Singh', 'arvindsngh1991@gmail.com', '8982568173', '1970-01-01', 'Associate Branch manager', 'India First Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Mayur Vihar', 'Sales Manager', 'Aditya Birla', 'Not Conducted', NULL, 'Duplicate', NULL, '1756121138_ARVIND.pdf', '2025-08-25 04:26:50', '2025-08-25 11:26:50', NULL, 1),
(261, 'Monika Thakur', 'monicathakur2123@gmail.com', '8580637141', '1998-09-17', 'RA', 'Max life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', NULL, NULL, NULL, NULL, NULL, NULL, '1756122853_Monika Thakur.pdf', '2025-08-25 11:54:13', '2025-08-25 11:54:13', NULL, 1),
(262, 'Sachin Kumar', 'ysachin456890@gmail.com', '9773773426', '1996-07-26', 'Relationship Manager', 'Bajaj Life', '3.5 LPA', NULL, 'immediate', 'Full time', 'MBA', NULL, NULL, NULL, NULL, 'Janakpuri', 'Janakpuri', 'Relationship Manager', 'Bandhan Life(24.08.25)', NULL, NULL, NULL, NULL, '1756124136_sachin kumar 456890.pdf', '2025-08-25 12:15:36', '2025-08-25 12:15:36', NULL, 1),
(263, 'Manish Verma', 'mymani@gmail.com', '6207378766', NULL, 'Agency Manager', 'Manipal Health', '3.99 Lpa', NULL, 'Immediate Joiner', 'Full Type', 'MBA', NULL, '13 Years', NULL, NULL, 'Jamshedpur', 'Jamshedpur', 'Direct Channel', 'Max Life (26.08.2025)', 'Conducted', NULL, 'shared on 26th August 2025 Divyanshi', NULL, '1756197414_ManishResume (1).pdf', '2025-08-26 02:55:58', '2025-08-26 09:55:58', NULL, 1),
(264, 'Vijay Anand', 'vijayanandpatwa@gmail.com', '9142888088', NULL, 'Territory Manager', 'PNB Met life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patna', 'Lucknow', 'Cluster Manager', 'Aditya Birla Sun life', NULL, NULL, NULL, NULL, '1756287403_Resume Vijay Anand.pdf', '2025-08-27 09:36:43', '2025-08-27 09:36:43', NULL, 1),
(265, 'Akansha Lohani', 'artipathi073@gmail.com', '9818475513', NULL, 'RM', 'HDFC Bank', '10.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1756710011_Akanksha Lohani.pdf', '2025-09-01 07:00:11', '2025-09-01 07:00:11', NULL, 1),
(266, 'Amit Tiwari', 'tiwariamit729@gmail.com', '8506888004', '1994-06-26', 'Assistant Manager', 'Utkarsh Small Finance Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ayodhya', 'Ayodhya', NULL, NULL, NULL, NULL, NULL, NULL, '1756711098_Amit Tiwari.doc', '2025-09-01 07:18:18', '2025-09-01 07:18:18', NULL, 1),
(267, 'Akashni Lohani', 'atripathi073@gmail.com', '9818475513', NULL, 'Relationship Manager', 'HDFC Bank', '10.5 LPA', NULL, 'One Month', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Ghaziabad', 'Ghaziabad', NULL, NULL, NULL, NULL, NULL, NULL, '1757233379_Akanksha Lohani.pdf', '2025-09-07 08:22:59', '2025-09-07 08:22:59', NULL, 1),
(268, 'Amit Tiwari', 'tiwariamit729@gmail.com', '8506888004', NULL, 'Assistant Manager', 'Utkrash Small Finance Bank', NULL, NULL, NULL, 'Full Time', 'PGDB', NULL, NULL, NULL, NULL, 'Ayodhya', 'Ayodhya', NULL, NULL, NULL, NULL, NULL, NULL, '1757233834_Amit Tiwari.doc', '2025-09-07 08:30:34', '2025-09-07 08:30:34', NULL, 1),
(269, 'Anurag Aggarwal', 'anuragaggarwal1710@gmail.com', '8791672252', '1991-10-19', 'Branch Manager', 'Godrej Capital Ltd', NULL, NULL, NULL, 'Full Time', 'MBA', NULL, NULL, NULL, NULL, 'Agra', 'Agra', 'Cluster Head', 'Aditya Birla', 'Not Conducted', NULL, 'Duplicate', NULL, '1757404004_Anurag Agrawal - Resume.pdf', '2025-09-09 01:03:48', '2025-09-09 08:03:48', NULL, 1),
(270, 'Bappa Model', 'bappamail10@gmail.com', '9733266661', '1983-01-24', 'Sr Area Sales Manager', 'Icici Lombard GIC', NULL, NULL, NULL, 'Full Time', 'BA', NULL, NULL, NULL, '713424', 'Bardhaman', 'Bardhaman', NULL, NULL, NULL, NULL, NULL, NULL, '1757406380_Bappa Model.pdf', '2025-09-09 08:26:20', '2025-09-09 08:26:20', NULL, 1),
(271, 'Ravi Upmanyu', 'ravi.61441@gmail.com', '9857682741', NULL, NULL, 'Niva Bupa Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1757407858_CV Ravi.pdf', '2025-09-09 08:50:58', '2025-09-09 08:50:58', NULL, 1),
(272, 'Narender Kumar', 'kumarnarendra610@gmail.com', '9675957841', '1997-06-30', 'RM', 'Aditya Birla Capital', '4', '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Noida', 'Noida', NULL, NULL, 'Not Conducted', NULL, 'Not Interested for Job Change', NULL, '1757408037_Narender Kumar.pdf', '2025-09-09 08:53:57', '2025-09-09 08:53:57', NULL, 1),
(273, 'Pankaj', 'pankajmishraup86@gmail.com', '8097964290', '1990-05-03', 'Territory Manager', 'Care Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaunpur', 'Jaunpur', NULL, NULL, 'Not Conducted', NULL, 'Duplicate', NULL, '1757414985_Pankaj New CV (1).pdf', '2025-09-09 10:49:45', '2025-09-09 10:49:45', NULL, 1),
(274, 'Chander Shekhar', 'chander162@gmail.com', '8920637863', '1970-01-01', NULL, NULL, '550000', NULL, NULL, 'Full Time', NULL, NULL, NULL, NULL, NULL, 'South West Delhi', 'South West Delhi', 'Banker', 'IDFC First Bank', 'Uploaded', NULL, '8826440680', NULL, '1757416984_Chander Shekhar Resume.pdf', '2025-09-09 04:37:03', '2025-09-09 11:37:03', NULL, 1),
(275, 'Anita', 'anitabalaattri940@gmail.com', '8459102243', NULL, 'RM', 'ICICI Bank', NULL, NULL, NULL, 'Full time', NULL, NULL, NULL, NULL, NULL, 'Amravati', 'Amravati', NULL, 'Looking for Job', NULL, NULL, NULL, NULL, '1757418654_Anita.pdf', '2025-09-09 11:50:54', '2025-09-09 11:50:54', NULL, 1),
(276, 'Chiranjib Paul', 'chiranjibpaul25@gmail.com', '7679479978', '1986-12-02', 'Branch Manager', 'Icici pru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Darjeeling', 'Darjeeling', NULL, NULL, NULL, NULL, NULL, NULL, '1757446526_CHIRANJIB PAUL - MAIN.pdf', '2025-09-09 19:35:26', '2025-09-09 19:35:26', NULL, 1),
(277, 'Ved Prakash', 'vivanji93@gmail.com', '9651080845', NULL, 'Territory Manager', 'SUD Life', NULL, NULL, NULL, 'Full Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1757446927_CV VedprakashSrivastava.pdf', '2025-09-09 19:42:07', '2025-09-09 19:42:07', NULL, 1),
(278, 'Danish Iqbal', 'danishiqbal.iitl@gmail.com', '9837111946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Etwah', 'Etwah', NULL, NULL, NULL, NULL, NULL, NULL, '1757447067_danish new resume (1) (1).pdf', '2025-09-09 19:44:27', '2025-09-09 19:44:27', NULL, 1),
(279, 'Pradeep', 'pardeepsihag100@gmail.com', '8168961720', NULL, 'BDM', 'SBI Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hansi', 'Hansi', 'FLS', 'Aditya Birla', NULL, NULL, NULL, NULL, '1757447195_PRADEEP HISAR.pdf', '2025-09-09 19:46:35', '2025-09-09 19:46:35', NULL, 1),
(280, 'Santosh Kumar Sen', 'santoshsen7@gmail.com', '8917352110', NULL, 'Territory Manager', 'PNB Met Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Orissa', 'Orissa', 'Cluster Head', 'Aditya Birla', 'Shared', NULL, NULL, NULL, '1757447356_Santosh Kumar Sen.pdf', '2025-09-09 19:49:16', '2025-09-09 19:49:16', NULL, 1),
(281, 'Jashandeep Kaur', 'kaurjashandeep665@gmail.com', '8295563421', '1970-01-01', 'Assistant Manager', 'MOM Life Insurance', NULL, NULL, NULL, 'Full Time', 'BBA', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'FLS', 'Bandhan Life', 'Pending', NULL, NULL, NULL, '1757447609_Jashandeep Kaur.pdf', '2025-09-17 19:35:23', '2025-09-18 02:35:23', NULL, 1),
(282, 'Lavesh Singh', 'singhlovelesh3@gmail.com', '9794434366', NULL, NULL, 'Sugmya Finance Pvt Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1757447722_CV-Lavlesh Singh.pdf', '2025-09-09 19:55:22', '2025-09-09 19:55:22', NULL, 1),
(283, 'Durgesh Soni', 'sonidevesh1992@gmail.com', '9352488401', NULL, 'SDM', 'HDFC Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rajasthan', 'Rajasthan', NULL, NULL, NULL, NULL, NULL, NULL, '1757447889_Durgesh.pdf', '2025-09-09 19:58:09', '2025-09-09 19:58:09', NULL, 1),
(284, 'Asha', 'ashasharma18891e@gmail.com', '9555103035', NULL, 'RM', 'RR Finance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'Banca FLS', 'Bandhan/Aditya/Ages federal', NULL, NULL, NULL, NULL, '1757509048_Asha.pdf', '2025-09-10 12:57:28', '2025-09-10 12:57:28', NULL, 1),
(285, 'Chander Shekhar', 'chander162@gmail.com', '8920637863', NULL, 'Personal Banker', 'HDFC Bank', NULL, NULL, NULL, 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'Banker', 'IDFC First', NULL, NULL, NULL, NULL, '1757509239_Chander Shekhar Resume.pdf', '2025-09-10 13:00:39', '2025-09-10 13:00:39', NULL, 1),
(286, 'Anita  Ujawal', 'anitabalaattri940@gmail.com', '8459102243', NULL, 'RM', 'icici Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amravati', 'Amravati', NULL, NULL, NULL, NULL, NULL, NULL, '1757509691_Anita.pdf', '2025-09-10 13:08:11', '2025-09-10 13:08:11', NULL, 1),
(287, 'Vipin Bajpai', 'vipinbajpa6@gmail.com', '7007420895', NULL, 'RM', 'Star Union Dai Chi', '3LPA', NULL, 'One month', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Hardoi', 'Hardoi', NULL, NULL, 'Not Conducted', NULL, 'Joiningg PNB After one month notice Next Month', NULL, '1757511073_Vipin Bajpai.pdf', '2025-09-10 13:31:13', '2025-09-10 13:31:13', NULL, 1),
(288, 'Akash Kumar', 'ka752375@gmail.com', '7055793525', NULL, 'RM', 'HDFC Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haridwar', 'Haridwar', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, '1757519117_Akash Kumar.pdf', '2025-09-10 15:45:17', '2025-09-10 15:45:17', NULL, 1),
(289, 'Amandeep', 'amansangipur2000@gmail.com', '9813938672', '2000-07-12', 'Unit Sales Manager', 'icici Lombard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hyderabad', 'Hyderabad', NULL, NULL, NULL, NULL, NULL, NULL, '1757519322_AMAN RESUME. (1).pdf', '2025-09-10 15:48:42', '2025-09-10 15:48:42', NULL, 1),
(290, 'Gaurav Rajkumar', 'rajgaurav.665@gmail.com', '9839297900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucknow', 'Lucknow', NULL, NULL, NULL, NULL, NULL, NULL, '1757525424_Gaurav Resume-new_GAURAV RAJKUMAR.docx', '2025-09-10 17:30:24', '2025-09-10 17:30:24', NULL, 1),
(291, 'Himashu Dubey', 'himanshudubey77@gmail.com', '9918004419', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kanpur', 'Kanpur', NULL, NULL, NULL, NULL, NULL, NULL, '1757555183_Himanshu updated resume.pdf', '2025-09-11 01:46:23', '2025-09-11 01:46:23', NULL, 1),
(292, 'Jatin Bhel', 'jatinbhel1789@gmail.com', '8859511110', NULL, 'SRM', 'PNB Met Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bharatpur', 'Bharatpur', NULL, NULL, NULL, NULL, NULL, NULL, '1757555345_Jatin Bhel.pdf', '2025-09-11 01:49:05', '2025-09-11 01:49:05', NULL, 1),
(293, 'Neha Yadav', 'nitinnehayadav44@gmail.com', '7838296907', NULL, 'CSM', 'HDFC Life', '10 Lpa', NULL, 'Immediate Joiner', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Ghaziabad', 'Ghaziabad', 'TM', 'Aviva Life', 'Shared', NULL, NULL, NULL, '1757555502_Neha Yadav.pdf', '2025-09-11 01:51:42', '2025-09-11 01:51:42', NULL, 1),
(294, 'Kashish', 'kashishgautam027@gmail.com', '8558956548', NULL, NULL, 'Fresher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', 'BRO', 'Manipal Health(08.09.2025)', NULL, NULL, NULL, NULL, '1757556057_Kashish.pdf', '2025-09-11 02:00:57', '2025-09-11 02:00:57', NULL, 1),
(295, 'Kuldeep', 'coolkuldeep37@gmail.com', '7404393054', NULL, 'SSO', 'Abhiyan Capital', '3 LPA', NULL, 'One Month', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'Digital Agency', 'Manipal Health(08.09.25)', 'Shared', NULL, NULL, NULL, '1757556328_Kuldeep.pdf', '2025-09-11 02:05:28', '2025-09-11 02:05:28', NULL, 1),
(296, 'Amit Sharma', 'amitsharmarkc@gmail.com', '8168640682', '1994-06-05', 'CSM', 'HDFC Life', '9.6 LPA', NULL, 'One Month', 'Full Time', 'Bcom', NULL, NULL, NULL, NULL, 'Karnal', 'Karnal', NULL, NULL, 'Pending', NULL, 'I discussed with him about canara Vacancy', NULL, '1757704437_Amit.pdf', '2025-09-12 19:13:57', '2025-09-12 19:13:57', NULL, 1),
(297, 'Jatin Kapoor', 'Jtn.kapur@rediffmail.com', '9996554649', '1985-08-19', 'Cluster Head', 'Canara HSBC Life', NULL, NULL, 'One Month', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Panipat', 'Panipat', 'CH', 'Aditya Birla', 'Uploaded', NULL, NULL, NULL, '1757704842_Jatin Kapoor.pdf', '2025-09-12 19:20:42', '2025-09-12 19:20:42', NULL, 1),
(298, 'Arvind', 'arvindsngh1991@gmail.com', '8982568173', '1991-07-11', 'Relationship Manager', 'Religare Health Insurance', NULL, NULL, NULL, 'Full Time', 'B.E', NULL, NULL, NULL, NULL, 'Mayur Vihar', 'Mayur Vihar', NULL, NULL, NULL, NULL, NULL, NULL, '1757705121_ARVIND UPDATED RESUME ASON 16052025_compressed (1).pdf', '2025-09-12 19:25:21', '2025-09-12 19:25:21', NULL, 1),
(299, 'Asha Sharma', 'ashasharma18891e@gmail.com', '9555103035', '1991-08-18', 'RM', 'RR Finance', NULL, NULL, '15 days', 'Full time', NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'IRM', 'Aages Federal Bank', 'Pending', NULL, 'Conducted on 12th Sept', NULL, '1757705702_ASHA SHARMA-RM RESUME.pdf', '2025-09-12 19:35:02', '2025-09-12 19:35:02', NULL, 1),
(300, 'Amit', 'amitbhatti0001@gmail.com', '9729634032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, NULL, NULL, NULL, NULL, '1757705838_Amit 2.pdf', '2025-09-12 19:37:18', '2025-09-12 19:37:18', NULL, 1),
(301, 'Chander Shekhar', 'chander162@gmail.com', '8920637863', '1994-08-15', 'Personal Banker', 'HDFC Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'South West Delhi', 'South West Delhi', 'RM', 'IDFC First Bank', NULL, NULL, NULL, NULL, '1757706070_Chander Shekhar Resume.pdf', '2025-09-12 19:41:10', '2025-09-12 19:41:10', NULL, 1),
(302, 'Jashandeep kaur', 'kaurjashandeep665@gmail.com', '8920637863', '2003-01-18', 'AM', 'MOM Life', '320000', NULL, 'Immediate Joiner', 'Full Time', 'BBA', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'Banca Channel', 'Edelweiss Life (13.09.2025)', 'Uploaded', NULL, NULL, NULL, '1757706877_Jashandeep Kaur.pdf', '2025-09-12 19:54:37', '2025-09-12 19:54:37', NULL, 1),
(303, 'Mohan Singh', 'mohanofficial1@gmail.com', '9667554445', '1992-11-18', 'TSM', 'MOM', '560000', NULL, 'Immediate Joiner', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Nangloi', 'West Delhi', 'Area Sales Head', 'Edelweiss Life', 'Uploaded', NULL, NULL, NULL, '1757707939_Mohan.docx', '2025-09-12 13:20:59', '2025-09-12 20:20:59', NULL, 1),
(304, 'Mohan Singh', 'mohanofficial1@gmail.com', '9667554445', '1992-11-18', 'TSM', 'MOM Life Insurance', '560000', NULL, 'Immediate Joiner', 'Full Time', 'MA', NULL, NULL, NULL, NULL, 'Nangloi', 'West Delhi', 'Banca Channel IRM', 'Aages Federal (10.09.25)', 'In review', NULL, 'On 12th September 2025 candidate has given interview to Mr Parful Tanwar', NULL, '1757708365_Mohan.docx', '2025-09-12 20:19:25', '2025-09-12 20:19:25', NULL, 1),
(305, 'Jashandeep Kaur', 'kaurjashandeep665@gmail.com', '8295563421', '2003-01-18', 'AM', 'MOM Life', '320000', NULL, 'Immediate Joiner', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'AU small Finance Bank', 'HDFC Life(13.09.2025)', 'Shared', NULL, 'Assessment Cleared', 'EZEPP2093H', '1757709411_Jashandeep Kaur.pdf', '2025-09-17 19:37:34', '2025-09-18 02:37:34', NULL, 1),
(306, 'Pooja Kashyap', 'Poojakashyap0310@gmail.com', '8585968047', '2000-10-03', 'KAM', 'Tata Aia', '4 LAC', NULL, 'One Month', 'Full Time', 'Post Graduate', NULL, NULL, NULL, NULL, 'Central Delhi/North Delhi', 'Central Delhi/North Delhi', 'RO', 'Canara HSBC Life(17.09.25)', 'Conducted', NULL, NULL, 'EZEPP2093H', '1758162598_Pooja Kashyap CV.pdf', '2025-09-18 02:29:58', '2025-09-18 02:29:58', NULL, 1);
INSERT INTO `user_data` (`id`, `name`, `email`, `mobile_number`, `dob`, `designation`, `current_company`, `current_ctc`, `expected_ctc`, `notice_period`, `employment_type`, `edu_qualification`, `skills`, `work_exp`, `cover_letter`, `pincode`, `current_location`, `preferred_location`, `post_applied_for`, `company_applied_for`, `interview_status`, `offer_status`, `remarks`, `pan`, `resume_attachment`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(307, 'Pooja Kashyap', 'poojakashyap0310@gmail.com', '8585968047', '2000-10-03', 'KAM', 'Tata AIA', '4 Lpa', '5 LPA', 'One Month', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Sirsapur', 'Central Delhi/North Delhi', 'CAM', 'HDFC Life(18.09.2025)', 'Conducted', NULL, NULL, NULL, '1758162808_Pooja Kashyap CV.pdf', '2025-09-17 19:34:22', '2025-09-18 02:34:22', NULL, 1),
(308, 'Deepak', 'deepakkumar84832@gmail.com', '7290925028', '1999-04-01', 'ASM', 'Max Life', '4 Lpa', NULL, 'One Month', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', 'Banca IRM', 'Aages Insurance(11.09.25)', 'Conducted', NULL, 'Candidate has not given interview on 11.09.25', NULL, '1758163645_DEEPAK RESUME NEW.pdf', '2025-09-18 02:47:25', '2025-09-18 02:47:25', NULL, 1),
(309, 'Jyoti Thakur', 'threkta2000@gmail.com', '9310683037', NULL, 'Tele Relationship Manager', 'Renew Buy', NULL, NULL, NULL, NULL, 'BBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1758164055_Jyoti Thakur.pdf', '2025-09-18 02:54:15', '2025-09-18 02:54:15', NULL, 1),
(310, 'Monika Thakur', 'monicathakur2123@gmail.com', '8580637141', '1998-09-17', 'ASM', 'Max Life', NULL, NULL, NULL, 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Shimla', 'Shimla', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, NULL, '2025-09-18 02:58:32', '2025-09-18 02:58:32', NULL, 1),
(311, 'Kapil Dev', 'kapil03031988@gmail.com', '9953183905', '1988-03-03', 'Cluster Head', 'Bajaj Life', NULL, NULL, NULL, 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Vikaspuri', 'Delhi', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, '1758164649_Kapil Dev.pdf', '2025-09-18 03:04:09', '2025-09-18 03:04:09', NULL, 1),
(312, 'Lovedeep Singh', 'Lovedeepsingh1035@gmail.com', '7087098129', '1995-02-15', NULL, 'Fresher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ludhiana', 'Ludhiana', 'BRO', 'Manipal Health(08.09.2025)', 'Conducted', NULL, 'Did not Receive call for the interview', NULL, '1758164941_lovedeep singh.docx', '2025-09-18 03:09:01', '2025-09-18 03:09:01', NULL, 1),
(313, 'Sat Prakash', 'lalit.kumar8300@gmail.com', '7876777896', '1990-06-10', 'BDM', 'SBI General', '4 Lpa', NULL, '0', 'Full time', 'BA', NULL, NULL, NULL, NULL, 'Sonipat', 'Sonipat', 'Premier Relationship Manager', 'Kotak Life(19.09.2025)', NULL, NULL, NULL, 'CPUPP1189L', '1758299934_Sat parkash.pdf', '2025-09-19 16:38:54', '2025-09-19 16:38:54', NULL, 1),
(314, 'Kuldeep', 'coolkuldeep37@gmail.com', '9729116553', '1986-10-10', 'bdm', 'Abhiyan Capital', '3.10', NULL, '15 Days', 'Full Time', NULL, NULL, NULL, NULL, NULL, 'Hansi', 'Hisar', 'BDM', 'Indiafirst', 'Shared', NULL, NULL, 'BMGPK5959R', '1758300426_Kuldeep.pdf', '2025-09-19 16:47:06', '2025-09-19 16:47:06', NULL, 1),
(315, 'Ravina', 'ravinasanga83@gmail.com', '7419108161', '1998-03-01', 'Sales Officer', 'Axis Bank', '240000', NULL, '90 Days', 'Full Time', 'BA', NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'BDM', 'indiafirst(19.09.2025)', 'Shared', NULL, NULL, 'EVXPR5312E', '1758300818_Ravina.pdf', '2025-09-19 16:53:38', '2025-09-19 16:53:38', NULL, 1),
(316, 'Kuldeep', 'coolkuldeep37@gmial.com', '7404393054', NULL, NULL, 'Abhiyan Capital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-22 15:47:29', '2025-09-22 15:47:29', NULL, 1),
(317, 'Chander Shekhar', 'Chander162@gmail.com', '8920637863', NULL, 'Personal Banker', 'HDFC Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, '1758556184_Chander Shekhar Resume.pdf', '2025-09-22 15:49:44', '2025-09-22 15:49:44', NULL, 1),
(318, 'Lavlesh Singh', 'singhlovelesh3@gmail.com', '9794434366', '1992-08-10', 'Regional Head Ops', 'Sugmya Finance Pvt Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mathura', 'UP', NULL, NULL, NULL, NULL, NULL, NULL, '1758556363_CV-Lavlesh Singh.pdf', '2025-09-22 15:52:43', '2025-09-22 15:52:43', NULL, 1),
(319, 'Danish Iqbal', 'danishiqbal.iitl@gmail.com', '9837111946', '1984-05-05', 'Sales Manager', 'Chola Ms GIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ETWAH', 'ETWAH', NULL, NULL, NULL, NULL, NULL, NULL, '1758557322_danish new resume.pdf', '2025-09-22 16:08:42', '2025-09-22 16:08:42', NULL, 1),
(320, 'Sarla Devi', 'SANDHYAKADIAN11@gmail.com', '7988728896', '1990-10-10', NULL, 'Canara HSBC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rohtak', 'Rohtak', NULL, NULL, NULL, NULL, NULL, NULL, '1758557647_Sarla Devi.pdf', '2025-09-22 16:14:07', '2025-09-22 16:14:07', NULL, 1),
(321, 'Govind Kaushik', '88.govindkaushik@gmail.com', '9306135067', '1988-02-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1758557796_Govind.pdf', '2025-09-22 16:16:36', '2025-09-22 16:16:36', NULL, 1),
(322, 'Gaurav Jain', 'gauravjainjrd@gmail.com', '7455059665', '1982-05-10', NULL, 'Universal Multi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kanpur', 'Kanpur', NULL, NULL, NULL, NULL, NULL, NULL, '1758558983_Gaurav Jain.pdf', '2025-09-22 16:36:23', '2025-09-22 16:36:23', NULL, 1),
(323, 'Ajay Singh', 'aj814191@gmail.com', '8168271621', '1970-01-01', 'RM', 'IDFC First Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'RO', 'Canara HSBC', 'Shortlisted', NULL, 'Interview done on 24th September 2025 shortlisted by Deepender Cluster Head.', NULL, '1758559128_Ajay resume.pdf', '2025-09-29 02:37:15', '2025-09-29 09:37:15', NULL, 1),
(324, 'Govind', '88govind.kaushik@gmail.com', '9306135067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rewari', 'Rewari', NULL, NULL, NULL, NULL, NULL, NULL, '1758569946_Govind.pdf', '2025-09-22 19:39:06', '2025-09-22 19:39:06', NULL, 1),
(325, 'Ajay Singh', 'aj814191@gmail.com', '8168271621', '1992-12-15', 'RM', 'IDFC First Bank', NULL, NULL, '15 Days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KYRPS7597K', '1758570150_Ajay resume.pdf', '2025-09-22 19:42:30', '2025-09-22 19:42:30', NULL, 1),
(326, 'Vishal Kumar', 'vishalk141197@gmail.com', '9050141197', NULL, 'Virtual Relationship Manager', 'Teleperformance', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', 'RO', 'Canara HSBC lIFE', 'Not Conducted', NULL, 'Call him Later', NULL, '1758619371_Vishal Kumar.pdf', '2025-09-23 09:22:51', '2025-09-23 09:22:51', NULL, 1),
(327, 'Navjot Kaur', 'jyot050@gmail.com', '8295835333', '1991-10-13', 'RM', 'PNB', '3 LPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patiala', 'Patiala', NULL, NULL, 'Not Conducted', NULL, 'No Not Reachable', NULL, '1758620049_Navjot Kaur.pdf', '2025-09-23 09:34:09', '2025-09-23 09:34:09', NULL, 1),
(328, 'Meenakshi', 'meenakshichawla201@gmail.com', '9138243338', '1993-01-20', 'DM (Agency Channel)', 'SBI Life', '2.5 Lpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Barwala', 'Barwala', NULL, 'Adirya Birla', 'Not Conducted', NULL, '23.09.2025 Called', NULL, '1758620979_Meenakshi.pdf', '2025-09-23 09:49:39', '2025-09-23 09:49:39', NULL, 1),
(329, 'Shally', 'shallyaneja1997@gmail.com', '8168946553', '1997-06-22', 'SRM', 'PNB Met Life', '450000', NULL, NULL, NULL, 'MBA', NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, 'Not Conducted', NULL, 'HIGH CTC', NULL, NULL, '2025-09-23 03:16:27', '2025-09-23 10:16:27', NULL, 1),
(330, 'Manpreet Singh', 'preetmoney@gmail.com', '9888905535', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patiala', 'Patiala', NULL, 'wrong no', NULL, NULL, NULL, NULL, NULL, '2025-09-23 03:20:10', '2025-09-23 10:20:10', NULL, 1),
(331, 'Bansi', 'Veergirdhar7227@gmail.com', '8708711641', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, 'Not Conducted', NULL, 'Call him Later', NULL, '1758623163_Bansi.pdf', '2025-09-29 02:34:49', '2025-09-29 09:34:49', NULL, 1),
(332, 'Hitesh', 'hiteshsharmanrw@gmail.com', '7357491958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jind', 'Jind', NULL, 'Wrong No', NULL, NULL, 'Wrong No', NULL, '1758629531_Hitesh.pdf', '2025-09-23 12:12:11', '2025-09-23 12:12:11', NULL, 1),
(333, 'Hitesh Sharma', 'hiteshsharmanrw@rediffmail.com', '9416541719', '1984-02-14', NULL, 'Devyani International Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurugram', 'Jind', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, '1758739258_Hitesh.pdf', '2025-09-24 18:40:58', '2025-09-24 18:40:58', NULL, 1),
(334, 'Manish', 'mvmani@gmail.com', '6207378766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jamshedpur', 'Jamshedpur', NULL, 'Aditya Birla', 'Shared', NULL, NULL, NULL, '1758739417_ManishResume.pdf', '2025-09-24 18:43:37', '2025-09-24 18:43:37', NULL, 1),
(335, 'Pankaj Jindal', 'jindalakhil25@gmail.com', '8570910062', '1998-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kurukshetra', 'Kurukshetra', NULL, 'Manipal cigna(06.09.25)', 'Shared', NULL, NULL, 'FHBPP9539L', '1758788619_PANKAJ JINDAL RESUME.pdf', '2025-09-25 08:23:39', '2025-09-25 08:23:39', NULL, 1),
(336, 'Rajeev Gumber', 'lionrajeevgumber@gmail.com', '9882498724', NULL, 'Sr Associate', 'Godigit Life Insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bathinda', 'Bathinda', NULL, NULL, NULL, NULL, NULL, NULL, '1758790128_Rajeev gumber.pdf', '2025-09-25 08:48:48', '2025-09-25 08:48:48', NULL, 1),
(337, 'Manju Nath', 'manju.kale1@gmail.com', '9844381412', NULL, 'Cluster Head', 'Bajaj Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kalaburagi', 'Kalaburagi', NULL, NULL, NULL, NULL, NULL, NULL, '1758792431_manjunath.pdf', '2025-09-25 09:27:11', '2025-09-25 09:27:11', NULL, 1),
(338, 'Mohan', 'mohanofficial1@gmail.com', '9667554445', '1996-11-18', 'TSM', 'MOM', '550000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1758796124_Mohan.docx', '2025-09-25 10:28:44', '2025-09-25 10:28:44', NULL, 1),
(339, 'Mohit Sharma', '121mohit@gmail.com', '9219146328', '1983-10-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kanpur', 'Kanpur', NULL, NULL, NULL, NULL, NULL, NULL, '1758796959_Mohit CV.pdf', '2025-09-25 10:42:39', '2025-09-25 10:42:39', NULL, 1),
(340, 'Lakhwinder Kaur', 'kang.lakhwinderkaur@gmail.com', '9050259955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhiwani', 'Bhiwani', 'Shine.com', 'Wrong no', NULL, NULL, NULL, NULL, NULL, '2025-09-25 12:24:46', '2025-09-25 12:24:46', NULL, 1),
(341, 'Rajesh Kumar', 'rajeshkumar0747@gmail.com', '9466002719', NULL, NULL, 'Not picking up the call', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-25 12:27:42', '2025-09-25 12:27:42', NULL, 1),
(342, 'Anil Kumar', 'anilboora.1987@gmail.com', '9899872887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar', 'Hisar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-25 12:29:40', '2025-09-25 12:29:40', NULL, 1),
(343, 'Surender Kumar', 'suren.kumar151@gmail.com', '9983067000', NULL, NULL, 'Own Business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sikar', 'Sikar', NULL, NULL, NULL, NULL, 'Looking job for Sikar In Bank only', NULL, NULL, '2025-09-25 12:36:59', '2025-09-25 12:36:59', NULL, 1),
(344, 'Sharad Trivedi', 'sharad.trivedi79@gmail.com', '9305551008', NULL, NULL, 'Wrong No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucknow', 'Lucknow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-25 13:09:58', '2025-09-25 13:09:58', NULL, 1),
(345, 'Parmod Jain', 'pramodbiwan@gmail.com', '9996710002', NULL, NULL, 'Wrong No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-25 13:14:39', '2025-09-25 13:14:39', NULL, 1),
(346, 'Poonam Lakhera', 'poonam17.lakhera@gmail.com', '9034725073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hisar/Mumbai', 'Hisar/Mumbai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-25 13:17:09', '2025-09-25 13:17:09', NULL, 1),
(347, 'Sainul Abidh', 'sainulabidheenbinhakkem@gmail.com', '6282607818', '2000-11-15', 'RM', 'Edelweiss tokio life insurance', '3 LPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palakkad', 'Palakkad', 'Banca Channel', 'Canara HSBC Life', NULL, NULL, 'HR Name is Krishna Canara HSBC Kerala', NULL, '1758871615_sainual abidh.pdf', '2025-09-26 07:26:55', '2025-09-26 07:26:55', NULL, 1),
(348, 'Sukeshna S', 'suke.sukeshna@gmail.com', '9037312867', '1970-01-01', NULL, 'HDFC Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palakkad', 'Palakkad', 'Banca', 'Canara HSBC Life', 'Not Conducted', NULL, 'Not Interested', NULL, NULL, '2025-09-29 06:02:58', '2025-09-29 13:02:58', NULL, 1),
(349, 'Neetu', 'roshinivats7@gmail.com', '9289906712', NULL, 'RM', 'Shine.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-26 09:10:42', '2025-09-26 09:10:42', NULL, 1),
(350, 'Saranya G', 'saranyaachu231188@gmail.com', '9809250028', '1985-02-25', 'RM', 'Care Health Insurance', '3 lpa', NULL, NULL, NULL, 'BA', NULL, NULL, NULL, NULL, 'Palakkad', 'Palakkad', NULL, NULL, 'Not Conducted', NULL, 'Not Interested for Job Changed', NULL, NULL, '2025-09-27 08:03:10', '2025-09-27 08:03:10', NULL, 1),
(351, 'Suraj Dev Kumar', 'surajdevkumar3191@gmail.com', '8002368876', '1993-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bokaro', 'Bokaro', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, NULL, '2025-09-29 13:07:36', '2025-09-29 13:07:36', NULL, 1),
(352, 'Sarveshwar Nishad', 'bholanishad15@gmail.com', '9794496190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mumbai', 'Mumbai', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, NULL, '2025-09-29 13:09:25', '2025-09-29 13:09:25', NULL, 1),
(353, 'Akil Raj', 'akilrajsam0@gmail.comChe', '7708802442', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chennai', 'Chennai', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, NULL, '2025-09-29 13:10:36', '2025-09-29 13:10:36', NULL, 1),
(354, 'Sainubidheen', 'sainulabidheenbinhakkeem@gmail.com', '6282607818', '2000-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palakkad', 'Palakkad', 'RO', 'Canara HSBC', 'Not Conducted', NULL, 'Duplicate', NULL, NULL, '2025-09-29 13:12:35', '2025-09-29 13:12:35', NULL, 1),
(355, 'Payal Rani', 'payalpehaniya1122@gmail.com', '7206618979', '1996-10-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnal', 'Karnal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-29 13:28:12', '2025-09-29 13:28:12', NULL, 1),
(356, 'Shagun Rana', 'shagunrana259@gmail.com', '8894975519', NULL, 'SRM', 'Bajaj Life', '3 LPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gurugram', 'Gurugram', NULL, NULL, 'Not Conducted', NULL, 'Disconnect the call', NULL, NULL, '2025-09-29 13:30:59', '2025-09-29 13:30:59', NULL, 1),
(357, 'Harvinder Kumar', 'harvindersaini90@gmail.com', '9466867286', NULL, 'RM', 'Niva Bupa', '3.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kurukshetra', 'Kurukshetra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-29 13:41:46', '2025-09-29 13:41:46', NULL, 1),
(358, 'Suraj Prakash', 'urajyadav110792@gmail.com', '9660935058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rewari', 'Rewari', NULL, NULL, NULL, NULL, 'Call him tommorrow', NULL, NULL, '2025-09-29 13:48:20', '2025-09-29 13:48:20', NULL, 1),
(359, 'Prabhant Jadon', 'jadonprabhant@gmail.com', '7668309730', NULL, 'ARM', 'PNB Met Life', '3.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, 'call him later', NULL, NULL, '2025-10-03 13:09:41', '2025-10-03 13:09:41', NULL, 1),
(360, 'Ahmed Faraz', 'farazchoudhary120@gmail.com', '8383001072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1759497521_Avantika Yadav.pdf', '2025-10-03 13:18:41', '2025-10-03 13:18:41', NULL, 1),
(361, 'Santosh Kumar Yadav', 'santosh17hero@gmail.com', '9958844152', NULL, 'Health Insurance Advisor', 'RNFI Group', '2.5', NULL, NULL, NULL, 'BA', NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, 'Not Conducted', NULL, NULL, NULL, NULL, '2025-10-03 16:17:58', '2025-10-03 16:17:58', NULL, 1),
(362, 'Akash', 'aakashmehmi100@gmail.com', '9910519552', NULL, 'Health Insurance Claim', 'insureclick Solution Pvt Ltd', '2.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-03 16:28:15', '2025-10-03 16:28:15', NULL, 1),
(363, 'Amit Sharma', 'amitips12345678@gmail.com', '8076793124', NULL, NULL, 'HDFC Ergo Insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-03 16:32:25', '2025-10-03 16:32:25', NULL, 1),
(364, 'Hasan Mohammad', 'Hasanmuhammad1996@gmail.com', '8800836842', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-03 16:38:58', '2025-10-03 16:38:58', NULL, 1),
(365, 'Natali Conti', 'nataliconti2030@gmail.com', '7744149196', NULL, NULL, 'Bernard Wiles', NULL, NULL, NULL, NULL, NULL, NULL, 'Dear laptopbazar.co.in admin, \r\nI visited your site at laptopbazar.co.in and would\r\nlike to offer you something:\r\n\r\nLaunch your own Local Marketing Essential Tool Hub, a free value-packed tool site that local businesses will love using. \r\n\r\nBoost authority instantly by \r\n\r\ngiving clients helpful tools they can rely on, while also earning from built-in premium upgrades.\r\n\r\n\r\n\r\nFor more click Here : https://warriorplus.com/o2/a/zv196zr/0', 'Hi, \r\nI was on your site at laptopbazar.co.in and would\r\nlike to offer you something:\r\n\r\nLaunch your own Local Marketing Essential Tool Hub, a free value-packed tool site that local businesses will love using. \r\n\r\nBoost authority instantly by \r\n\r\ngiving clients helpful tools they can rely on, while also earning from built-in premium upgrades.\r\n\r\n\r\n\r\nFor more click Here : https://warriorplus.com/o2/a/zv196zr/0', NULL, NULL, NULL, NULL, 'Bernard Wiles', 'Conducted', NULL, 'Dear laptopbazar.co.in admin, \r\nI was on your webpage at laptopbazar.co.in and would\r\nlike to offer you something:\r\n\r\nLaunch your own Local Marketing Essential Tool Hub, a free value-packed tool site that local businesses will love using. \r\n\r\nBoost authority instantly by \r\n\r\ngiving clients helpful tools they can rely on, while also earning from built-in premium upgrades.\r\n\r\n\r\n\r\nFor more click Here : https://warriorplus.com/o2/a/zv196zr/0', NULL, NULL, '2026-01-07 12:11:28', '2026-01-07 12:11:28', NULL, 1),
(366, 'Matt Bacak', 'mattbacak2025@gmail.com', '7783353865', NULL, NULL, 'Kennith Heckman', NULL, NULL, NULL, NULL, NULL, NULL, 'Hi,\r\n\r\n\r\nI was on your website at laptopbazar.co.in and would \r\nlike\r\nto offer you something :\r\n\r\n\r\n\r\nImagine waking up to find your agency website already built, 100 pre-qualified leads discovered in your area, and outreach campaigns ready to send…\r\nAll done while you were sleeping.\r\nNo coding. No client-chasing. No proposals to write.\r\nThat’s exactly what LocalBizAI did for me.\r\nJust one click… and BOOM!\r\nA fully branded, profit-ready digital marketing agency with services, pricing, leads, and outreach campaigns set up in minutes.\r\n\r\n\r\n\r\nFor more click Here : https://jvz6.com/c/688203/424347/', 'Dear laptopbazar.co.in admin,\r\n\r\n\r\nI visited your site at laptopbazar.co.in and would \r\nlike\r\nto offer you something :\r\n\r\n\r\n\r\nImagine waking up to find your agency website already built, 100 pre-qualified leads discovered in your area, and outreach campaigns ready to send…\r\nAll done while you were sleeping.\r\nNo coding. No client-chasing. No proposals to write.\r\nThat’s exactly what LocalBizAI did for me.\r\nJust one click… and BOOM!\r\nA fully branded, profit-ready digital marketing agency with services, pricing, leads, and outreach campaigns set up in minutes.\r\n\r\n\r\n\r\nFor more click Here : https://jvz6.com/c/688203/424347/', NULL, NULL, NULL, NULL, 'Kennith Heckman', 'Shared', 'Offer Released', 'Hello,\r\n\r\n\r\nI visited your site at laptopbazar.co.in and would \r\nlike\r\nto offer you something :\r\n\r\n\r\n\r\nImagine waking up to find your agency website already built, 100 pre-qualified leads discovered in your area, and outreach campaigns ready to send…\r\nAll done while you were sleeping.\r\nNo coding. No client-chasing. No proposals to write.\r\nThat’s exactly what LocalBizAI did for me.\r\nJust one click… and BOOM!\r\nA fully branded, profit-ready digital marketing agency with services, pricing, leads, and outreach campaigns set up in minutes.\r\n\r\n\r\n\r\nFor more click Here : https://jvz6.com/c/688203/424347/', NULL, NULL, '2026-01-16 10:09:54', '2026-01-16 10:09:54', NULL, 1),
(367, 'Matt Bacak', 'mattbacak2025@gmail.com', '9187574707', NULL, NULL, 'Augustus Hiller', NULL, NULL, NULL, NULL, NULL, NULL, 'Imagine waking up to find your agency website already built, 100 pre-qualified leads discovered in your area, and outreach campaigns ready to send…\r\nAll done while you were sleeping.\r\nNo coding. No client-chasing. No proposals to write.\r\nThat’s exactly what LocalBizAI did for me.\r\nJust one click… and BOOM!\r\nA fully branded, profit-ready digital marketing agency with services, pricing, leads, and outreach campaigns set up in minutes.\r\n\r\n\r\nFor more click Here : https://jvz6.com/c/688203/424347/', 'Imagine waking up to find your agency website already built, 100 pre-qualified leads discovered in your area, and outreach campaigns ready to send…\r\nAll done while you were sleeping.\r\nNo coding. No client-chasing. No proposals to write.\r\nThat’s exactly what LocalBizAI did for me.\r\nJust one click… and BOOM!\r\nA fully branded, profit-ready digital marketing agency with services, pricing, leads, and outreach campaigns set up in minutes.\r\n\r\n\r\nFor more click Here : https://jvz6.com/c/688203/424347/', NULL, NULL, NULL, NULL, 'Augustus Hiller', 'In review', NULL, 'Imagine waking up to find your agency website already built, 100 pre-qualified leads discovered in your area, and outreach campaigns ready to send…\r\nAll done while you were sleeping.\r\nNo coding. No client-chasing. No proposals to write.\r\nThat’s exactly what LocalBizAI did for me.\r\nJust one click… and BOOM!\r\nA fully branded, profit-ready digital marketing agency with services, pricing, leads, and outreach campaigns set up in minutes.\r\n\r\n\r\nFor more click Here : https://jvz6.com/c/688203/424347/', NULL, NULL, '2026-01-28 14:52:07', '2026-01-28 14:52:07', NULL, 1),
(368, 'Oj James', 'ojjames2023@gmail.com', '3461664980', NULL, NULL, 'Lachlan Ouellette', NULL, NULL, NULL, NULL, NULL, NULL, 'Hello,\r\n\r\nI found your website while browsing in your niche.\r\n\r\nMany website owners are using this SEO tool to find keywords and analyze competitors.\r\n\r\nYou can try it here:\r\n\r\nhttps://bit.ly/4bpajr8\r\n\r\nIt may help improve your search traffic.\r\n\r\nBest regards', 'Hello,\r\n\r\nI found your website while browsing in your niche.\r\n\r\nMany website owners are using this SEO tool to find keywords and analyze competitors.\r\n\r\nYou can try it here:\r\n\r\nhttps://bit.ly/4bpajr8\r\n\r\nIt may help improve your search traffic.\r\n\r\nBest regards', NULL, NULL, NULL, NULL, 'Lachlan Ouellette', 'Not Conducted', NULL, 'Hello,\r\n\r\nI found your website while browsing in your niche.\r\n\r\nMany website owners are using this SEO tool to find keywords and analyze competitors.\r\n\r\nYou can try it here:\r\n\r\nhttps://bit.ly/4bpajr8\r\n\r\nIt may help improve your search traffic.\r\n\r\nBest regards', NULL, NULL, '2026-03-18 05:42:47', '2026-03-18 05:42:47', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
