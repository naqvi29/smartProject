-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 09:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add user', 1, 'add_user'),
(2, 'Can change user', 1, 'change_user'),
(3, 'Can delete user', 1, 'delete_user'),
(4, 'Can view user', 1, 'view_user'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add scrapper output_with numbers', 8, 'add_scrapperoutput_withnumbers'),
(30, 'Can change scrapper output_with numbers', 8, 'change_scrapperoutput_withnumbers'),
(31, 'Can delete scrapper output_with numbers', 8, 'delete_scrapperoutput_withnumbers'),
(32, 'Can view scrapper output_with numbers', 8, 'view_scrapperoutput_withnumbers'),
(33, 'Can add scrapper output_without numbers', 9, 'add_scrapperoutput_withoutnumbers'),
(34, 'Can change scrapper output_without numbers', 9, 'change_scrapperoutput_withoutnumbers'),
(35, 'Can delete scrapper output_without numbers', 9, 'delete_scrapperoutput_withoutnumbers'),
(36, 'Can view scrapper output_without numbers', 9, 'view_scrapperoutput_withoutnumbers'),
(37, 'Can add telegram_ accounts', 10, 'add_telegram_accounts'),
(38, 'Can change telegram_ accounts', 10, 'change_telegram_accounts'),
(39, 'Can delete telegram_ accounts', 10, 'delete_telegram_accounts'),
(40, 'Can view telegram_ accounts', 10, 'view_telegram_accounts'),
(41, 'Can add telegram_ groups', 11, 'add_telegram_groups'),
(42, 'Can change telegram_ groups', 11, 'change_telegram_groups'),
(43, 'Can delete telegram_ groups', 11, 'delete_telegram_groups'),
(44, 'Can view telegram_ groups', 11, 'view_telegram_groups'),
(45, 'Can add telegram_ questions', 12, 'add_telegram_questions'),
(46, 'Can change telegram_ questions', 12, 'change_telegram_questions'),
(47, 'Can delete telegram_ questions', 12, 'delete_telegram_questions'),
(48, 'Can view telegram_ questions', 12, 'view_telegram_questions'),
(49, 'Can add telegram_ answers', 13, 'add_telegram_answers'),
(50, 'Can change telegram_ answers', 13, 'change_telegram_answers'),
(51, 'Can delete telegram_ answers', 13, 'delete_telegram_answers'),
(52, 'Can view telegram_ answers', 13, 'view_telegram_answers');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(1, 'home', 'user'),
(8, 'scrapper', 'scrapperoutput_withnumbers'),
(9, 'scrapper', 'scrapperoutput_withoutnumbers'),
(7, 'sessions', 'session'),
(10, 'telegramBot', 'telegram_accounts'),
(13, 'telegramBot', 'telegram_answers'),
(11, 'telegramBot', 'telegram_groups'),
(12, 'telegramBot', 'telegram_questions');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-07 20:36:27.034228'),
(2, 'auth', '0001_initial', '2022-03-07 20:36:27.494752'),
(3, 'admin', '0001_initial', '2022-03-07 20:36:27.588503'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-07 20:36:27.597500'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-07 20:36:27.607243'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-07 20:36:27.694541'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-07 20:36:27.757871'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-07 20:36:27.778878'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-07 20:36:27.789863'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-07 20:36:27.838884'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-07 20:36:27.842882'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-07 20:36:27.857887'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-07 20:36:27.877862'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-07 20:36:27.925835'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-07 20:36:27.943823'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-07 20:36:27.958814'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-07 20:36:27.993793'),
(18, 'home', '0001_initial', '2022-03-07 20:36:28.018793'),
(19, 'sessions', '0001_initial', '2022-03-07 20:36:28.058760'),
(20, 'scrapper', '0001_initial', '2022-03-07 21:13:33.283837'),
(21, 'telegramBot', '0001_initial', '2022-03-07 22:23:11.222413'),
(22, 'telegramBot', '0002_telegram_answers', '2022-03-08 08:05:12.840094'),
(23, 'telegramBot', '0003_telegram_accounts_sleep_time_and_more', '2022-03-08 09:01:28.847666');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9g8c23eu81oudytabcithptl0da595d3', '.eJyrViqpLEhVslIqLU4tUtJRyiyOz8lPz8xTsiopKk3VAQvnJeaCVKQX5eeXKEGEMlOUrIxrAYrSFNw:1nRKrG:kw9UWkJwcZlBVApLf5NY_iLLoSvdfamESWZ0vZnNJF4', '2022-03-21 21:25:34.562829'),
('r2ej2ko022rt9361pcq68muan310vai1', '.eJyrViqpLEhVslIqLU4tUtJRyiyOz8lPz8xTsiopKk3VAQvnJeaCVKQX5eeXKEGEMlOUrIxrAYrSFNw:1nRVr9:MknQYF_EmEIxpIqc5I8JauE8dIsPzyMNNWctYRDHeKk', '2022-03-22 09:10:11.177555'),
('rgafoc4f5mdhi4lp8la76fy4dvd4r3e6', '.eJyrViqpLEhVslIqLU4tUtJRyiyOz8lPz8xTsiopKk3VAQvnJeaCVKQX5eeXKEGEMlOUrIxrAYrSFNw:1nRLbu:4FwcYBJ7ihy7sfXvnZb6u7Q3nrMgHXAi3WX04-ZY-ig', '2022-03-21 22:13:46.984635');

-- --------------------------------------------------------

--
-- Table structure for table `home_user`
--

CREATE TABLE `home_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_user`
--

INSERT INTO `home_user` (`id`, `username`, `email`, `password`, `profile_pic`, `type`) VALUES
(1, 'admin', 'admin@developer.com', 'admin', 'developer.png', 'admin'),
(3, 'groot', 'groot@test.com', '1234', 'groot.png', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `scrapper_scrapperoutput_withnumbers`
--

CREATE TABLE `scrapper_scrapperoutput_withnumbers` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `links` longtext NOT NULL,
  `Name` longtext NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Kilometers` varchar(100) NOT NULL,
  `Date` longtext NOT NULL,
  `Power` longtext NOT NULL,
  `Image` longtext NOT NULL,
  `Number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scrapper_scrapperoutput_withnumbers`
--

INSERT INTO `scrapper_scrapperoutput_withnumbers` (`id`, `userid`, `links`, `Name`, `Price`, `Kilometers`, `Date`, `Power`, `Image`, `Number`) VALUES
(11, '3', 'https://www.autoscout24.it/annunci/audi-200-turbo-automaat-benzina-blu-azzurro-7b7be344-0d97-4f7b-a2fa-b437a89435a9?source=list_searchresults', ' Audi 200 turbo automaat ', '6.45', '221.0', '02/1986', '147 kW 200 CV Benzina', 'https://prod.pictures.autoscout24.net/listing-images/7b7be344-0d97-4f7b-a2fa-b437a89435a9_6051c899-b602-4a48-9eb9-ab40f03d84b9.jpg/640x480.jpg', '+31 (0)6 - 82009757'),
(12, '3', 'https://www.autoscout24.it/annunci/audi-200-turbo-benzina-rosso-4d948943-fc65-4512-ad7c-5a4976ea7805?source=list_searchresults', ' Audi 200 turbo ', '10.0', '215.0', '09/1981', '125 kW 170 CV Benzina', 'https://prod.pictures.autoscout24.net/listing-images/4d948943-fc65-4512-ad7c-5a4976ea7805_b4879f08-e13e-4c43-b577-63785dc913d3.jpg/640x480.jpg', '+49 (0)89 - 264716830'),
(13, '3', 'https://www.autoscout24.it/annunci/audi-200-audi-5000-1986-2-2-turbo-quattro-165-ps-benzina-blu-azzurro-daac92db-559c-4440-8c2d-7e8deba407cf?source=list_searchresults', ' Audi 200 Audi 5000 1986 2.2 turbo quattro 165 PS. ', '16.0', '170.0', '07/1986', '121 kW 165 CV Manuale, Benzina', 'https://prod.pictures.autoscout24.net/listing-images/daac92db-559c-4440-8c2d-7e8deba407cf_94a03719-b055-412e-99f7-c3b49b48fb40.jpg/640x480.jpg', '+49 (0)3571 - 223666085'),
(14, '3', 'https://www.autoscout24.it/annunci/audi-200-tronic-s-line-diesel-535cd742-9546-49ba-bf21-deb42aae2068?source=list_searchresults', ' Audi 200 TRONIC S LINE ', '29.9', '105.875', '12/2016', '- kW - CV Automatico, Diesel', 'https://prod.pictures.autoscout24.net/listing-images/535cd742-9546-49ba-bf21-deb42aae2068_eb096f8a-12a4-41e4-90a6-7ae2e775b53a.jpg/640x480.jpg', '+33 (0)2 - 98586097'),
(15, '3', 'https://www.autoscout24.it/annunci/audi-200-40-tdi-200ch-s-line-quattro-s-tronic-7-diesel-22d29177-75be-483a-b8b6-25cff67a72de?source=list_searchresults', ' Audi 200 40 TDI 200ch S line quattro S tronic 7 ', '62.99', '51.0', '06/2021', '- kW - CV Automatico, Diesel', 'https://prod.pictures.autoscout24.net/listing-images/22d29177-75be-483a-b8b6-25cff67a72de_f0c7e90d-e385-448d-a611-012450728863.jpg/640x480.jpg', '+33 (0)3 - 66758319');

-- --------------------------------------------------------

--
-- Table structure for table `scrapper_scrapperoutput_withoutnumbers`
--

CREATE TABLE `scrapper_scrapperoutput_withoutnumbers` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `links` longtext NOT NULL,
  `Name` longtext NOT NULL,
  `Price` longtext NOT NULL,
  `Kilometers` longtext NOT NULL,
  `Date` longtext NOT NULL,
  `Power` longtext NOT NULL,
  `Image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scrapper_scrapperoutput_withoutnumbers`
--

INSERT INTO `scrapper_scrapperoutput_withoutnumbers` (`id`, `userid`, `links`, `Name`, `Price`, `Kilometers`, `Date`, `Power`, `Image`) VALUES
(7, '3', 'https://www.autoscout24.it/annunci/audi-200-2-2-10v-turbo-automaat-benzina-nero-5cdda416-eb7c-4fc1-861b-dbf386d957e5?source=list_searchresults', ' Audi 200 2.2 10V Turbo automaat ', '7.55', '249.295', '05/1985', '134 kW 182 CV Automatico, Benzina', 'https://prod.pictures.autoscout24.net/listing-images/5cdda416-eb7c-4fc1-861b-dbf386d957e5_a8719c99-c847-4190-8918-a00c672c6aed.jpg/640x480.jpg'),
(8, '3', 'https://www.autoscout24.it/annunci/audi-200-2-2-turbo-benzina-blu-azzurro-6e4570a4-b18b-4490-a0c6-bbd4a7219adf?source=list_searchresults', ' Audi 200 2,2 Turbo ', '10.0', '187.0', '01/1986', '121 kW 165 CV Manuale, Benzina', 'https://prod.pictures.autoscout24.net/listing-images/6e4570a4-b18b-4490-a0c6-bbd4a7219adf_4eceabc3-e7df-4540-bc08-90e6d118b082.jpg/640x480.jpg'),
(9, '3', 'https://www.autoscout24.it/annunci/audi-200-quattro-turbo-rar-schalter-urquattro-200-100-bbs-benzina-argento-1e320b25-9630-4589-94a0-f4ab36ac0098?source=list_searchresults', ' Audi 200 Quattro Turbo rar schalter urquattro 200 100 bbs ', '40.0', '333.333', '11/1985', '134 kW 182 CV Manuale, Benzina', 'https://prod.pictures.autoscout24.net/listing-images/1e320b25-9630-4589-94a0-f4ab36ac0098_964e666a-76bd-432d-b48a-ded047b6e9a8.jpg/640x480.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `telegrambot_telegram_accounts`
--

CREATE TABLE `telegrambot_telegram_accounts` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `hash_id` longtext NOT NULL,
  `hash_key` longtext NOT NULL,
  `number` varchar(120) NOT NULL,
  `session_file` longtext NOT NULL,
  `sleep_time` varchar(120) NOT NULL,
  `sleep_time_first` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telegrambot_telegram_accounts`
--

INSERT INTO `telegrambot_telegram_accounts` (`id`, `userid`, `hash_id`, `hash_key`, `number`, `session_file`, `sleep_time`, `sleep_time_first`) VALUES
(3, '3', '13764963', '38909b2bdf51266a6f582999a3934ee5', '923232629249', '923232629249.session', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `telegrambot_telegram_answers`
--

CREATE TABLE `telegrambot_telegram_answers` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `account_id` varchar(100) NOT NULL,
  `answers` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telegrambot_telegram_answers`
--

INSERT INTO `telegrambot_telegram_answers` (`id`, `userid`, `account_id`, `answers`) VALUES
(5, '3', '3', 'asdasdasd'),
(6, '3', '3', 'answer');

-- --------------------------------------------------------

--
-- Table structure for table `telegrambot_telegram_groups`
--

CREATE TABLE `telegrambot_telegram_groups` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `account_id` varchar(100) NOT NULL,
  `group_name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telegrambot_telegram_groups`
--

INSERT INTO `telegrambot_telegram_groups` (`id`, `userid`, `account_id`, `group_name`) VALUES
(7, '3', '', 'asdasd'),
(21, '3', '3', 'bottestcomm');

-- --------------------------------------------------------

--
-- Table structure for table `telegrambot_telegram_questions`
--

CREATE TABLE `telegrambot_telegram_questions` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `account_id` varchar(100) NOT NULL,
  `questions` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telegrambot_telegram_questions`
--

INSERT INTO `telegrambot_telegram_questions` (`id`, `userid`, `account_id`, `questions`) VALUES
(3, '3', '', 'asdsad'),
(4, '3', '', 'asdasd'),
(7, '3', '3', 'asdasdsad'),
(9, '3', '3', 'question');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_user`
--
ALTER TABLE `home_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrapper_scrapperoutput_withnumbers`
--
ALTER TABLE `scrapper_scrapperoutput_withnumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrapper_scrapperoutput_withoutnumbers`
--
ALTER TABLE `scrapper_scrapperoutput_withoutnumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telegrambot_telegram_accounts`
--
ALTER TABLE `telegrambot_telegram_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telegrambot_telegram_answers`
--
ALTER TABLE `telegrambot_telegram_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telegrambot_telegram_groups`
--
ALTER TABLE `telegrambot_telegram_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telegrambot_telegram_questions`
--
ALTER TABLE `telegrambot_telegram_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `home_user`
--
ALTER TABLE `home_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scrapper_scrapperoutput_withnumbers`
--
ALTER TABLE `scrapper_scrapperoutput_withnumbers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `scrapper_scrapperoutput_withoutnumbers`
--
ALTER TABLE `scrapper_scrapperoutput_withoutnumbers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `telegrambot_telegram_accounts`
--
ALTER TABLE `telegrambot_telegram_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `telegrambot_telegram_answers`
--
ALTER TABLE `telegrambot_telegram_answers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `telegrambot_telegram_groups`
--
ALTER TABLE `telegrambot_telegram_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `telegrambot_telegram_questions`
--
ALTER TABLE `telegrambot_telegram_questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
