-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 25, 2022 at 08:59 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitalwaiter`
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
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add table', 7, 'add_table'),
(26, 'Can change table', 7, 'change_table'),
(27, 'Can delete table', 7, 'delete_table'),
(28, 'Can view table', 7, 'view_table'),
(29, 'Can add item', 8, 'add_item'),
(30, 'Can change item', 8, 'change_item'),
(31, 'Can delete item', 8, 'delete_item'),
(32, 'Can view item', 8, 'view_item'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$IewDwCBS2KfAsa0cpFIMHx$HTQMoA1CYxHs5oyD8r3hBkNZeHw1TznoBeJmwrctTjE=', '2022-02-24 22:06:52.482527', 1, 'mrnis', '', '', '', 1, 1, '2022-02-24 22:05:43.269192');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-24 22:07:01.350209', '1', 'Momo', 1, '[{\"added\": {}}]', 9, 1),
(2, '2022-02-24 22:07:11.391094', '2', 'Pizza', 1, '[{\"added\": {}}]', 9, 1),
(3, '2022-02-24 22:07:30.256540', '1', 'Steamed Veg Momo', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-02-24 22:07:49.066177', '2', 'Steamed Buff Momo', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-02-25 01:40:40.766369', '3', 'Drinks', 1, '[{\"added\": {}}]', 9, 1),
(6, '2022-02-25 01:43:38.083983', '3', 'Margarita', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-02-25 01:44:18.477966', '4', 'Old Fashioned', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-02-25 01:45:03.138922', '5', 'Cosmopolitan', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-02-25 01:45:46.580226', '6', 'Negroni', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-02-25 01:46:28.684290', '7', 'Martini', 1, '[{\"added\": {}}]', 8, 1),
(11, '2022-02-25 01:49:51.960550', '4', 'chow mein', 1, '[{\"added\": {}}]', 9, 1),
(12, '2022-02-25 01:50:18.939410', '8', 'Buff Chow mein', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-02-25 01:50:38.545890', '9', 'Vege Chow mein', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-02-25 01:51:09.530964', '10', 'Chiken Chow mein', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-02-25 01:52:10.855549', '5', 'Cold-Drinks', 1, '[{\"added\": {}}]', 9, 1),
(16, '2022-02-25 01:52:25.865851', '11', 'Coca Cola', 1, '[{\"added\": {}}]', 8, 1),
(17, '2022-02-25 01:52:41.695115', '12', 'Sprite', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-02-25 01:52:56.763989', '13', 'Pepsi', 1, '[{\"added\": {}}]', 8, 1),
(19, '2022-02-25 01:53:35.693953', '14', 'Egg Chow mein', 1, '[{\"added\": {}}]', 8, 1),
(20, '2022-02-25 01:55:04.824927', '6', 'Thukpa', 1, '[{\"added\": {}}]', 9, 1),
(21, '2022-02-25 01:55:20.785746', '15', 'Vegetable', 1, '[{\"added\": {}}]', 8, 1),
(22, '2022-02-25 01:55:56.323493', '16', 'Chiken Thukpa', 1, '[{\"added\": {}}]', 8, 1),
(23, '2022-02-25 01:56:10.653381', '17', 'Pork thukpa', 1, '[{\"added\": {}}]', 8, 1),
(24, '2022-02-25 01:56:39.286313', '7', 'Noodles', 1, '[{\"added\": {}}]', 9, 1),
(25, '2022-02-25 01:56:54.077511', '18', 'Kima Noodles', 1, '[{\"added\": {}}]', 8, 1),
(26, '2022-02-25 01:57:10.387255', '19', 'Chiken Noodles', 1, '[{\"added\": {}}]', 8, 1),
(27, '2022-02-25 02:00:52.140577', '8', 'Burger', 1, '[{\"added\": {}}]', 9, 1),
(28, '2022-02-25 02:03:40.858677', '9', 'Spring Roll', 1, '[{\"added\": {}}]', 9, 1),
(29, '2022-02-25 02:04:06.500101', '20', 'Vegetable', 1, '[{\"added\": {}}]', 8, 1),
(30, '2022-02-25 02:04:20.677031', '21', 'chiken', 1, '[{\"added\": {}}]', 8, 1),
(31, '2022-02-25 02:04:33.284097', '22', 'Mix', 1, '[{\"added\": {}}]', 8, 1),
(32, '2022-02-25 02:04:53.922230', '10', 'Desert', 1, '[{\"added\": {}}]', 9, 1),
(33, '2022-02-25 02:05:34.746309', '23', 'chocolate pudding', 1, '[{\"added\": {}}]', 8, 1),
(34, '2022-02-25 02:06:39.280660', '24', 'yougurt', 1, '[{\"added\": {}}]', 8, 1),
(35, '2022-02-25 02:08:01.930291', '25', 'Banana milkshake', 1, '[{\"added\": {}}]', 8, 1);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'waiter', 'category'),
(8, 'waiter', 'item'),
(10, 'waiter', 'order'),
(7, 'waiter', 'table');

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
(1, 'contenttypes', '0001_initial', '2022-02-24 21:36:55.773551'),
(2, 'auth', '0001_initial', '2022-02-24 21:36:56.425336'),
(3, 'admin', '0001_initial', '2022-02-24 21:36:56.554634'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-24 21:36:56.561617'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-24 21:36:56.568640'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-24 21:36:56.621457'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-24 21:36:56.666968'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-24 21:36:56.682926'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-24 21:36:56.690905'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-24 21:36:56.727844'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-24 21:36:56.729839'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-24 21:36:56.738776'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-24 21:36:56.754779'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-24 21:36:56.770692'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-24 21:36:56.785740'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-24 21:36:56.795737'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-24 21:36:56.811693'),
(18, 'sessions', '0001_initial', '2022-02-24 21:36:56.872771'),
(19, 'waiter', '0001_initial', '2022-02-24 22:06:34.674328'),
(20, 'waiter', '0002_order_total_price', '2022-02-25 06:48:01.470611'),
(21, 'waiter', '0003_alter_order_added_date', '2022-02-25 06:51:33.053010'),
(22, 'waiter', '0004_auto_20220225_1236', '2022-02-25 06:52:41.484831'),
(23, 'waiter', '0005_order_is_delivered', '2022-02-25 06:57:08.450159'),
(24, 'waiter', '0006_alter_order_is_delivered', '2022-02-25 06:57:12.550270'),
(25, 'waiter', '0007_order_table', '2022-02-25 07:27:16.995308');

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
('3oa586t5yjyzy1hwvt2z2wpocnisetwx', '.eJxVjE0OwiAYBe_C2hBooYBL956BfH9I1bRJaVfGu2uTLnT7Zua9VIZtrXlrsuSR1VlZdfrdEOgh0w74DtNt1jRP6zKi3hV90KavM8vzcrh_BxVa_dYlRXQDQIBQHFMgj7YIe9unZA1FGaQLaC0H1xlvOLEXU0AwUo_OkHp_AP1_OI0:1nNMGC:pBQkcuelHVX_xrGCDSsYXPjwUN3nO6WqBHsGzRBcaRE', '2022-03-10 22:06:52.486174');

-- --------------------------------------------------------

--
-- Table structure for table `waiter_category`
--

CREATE TABLE `waiter_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `added_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waiter_category`
--

INSERT INTO `waiter_category` (`id`, `name`, `description`, `added_date`) VALUES
(1, 'Momo', 'lorem', '2022-02-24 22:07:01.348214'),
(2, 'Pizza', 'lorem', '2022-02-24 22:07:11.390096'),
(3, 'Drinks', 'clasic drinks', '2022-02-25 01:40:40.762376'),
(4, 'chow mein', 'Made with noodles very delicious and healthy.', '2022-02-25 01:49:51.958599'),
(5, 'Cold-Drinks', '', '2022-02-25 01:52:10.852550'),
(6, 'Thukpa', '', '2022-02-25 01:55:04.822093'),
(7, 'Noodles', '', '2022-02-25 01:56:39.283330'),
(8, 'Burger', '', '2022-02-25 02:00:52.138620'),
(9, 'Spring Roll', '', '2022-02-25 02:03:40.856704'),
(10, 'Desert', '', '2022-02-25 02:04:53.922230');

-- --------------------------------------------------------

--
-- Table structure for table `waiter_item`
--

CREATE TABLE `waiter_item` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `added_date` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waiter_item`
--

INSERT INTO `waiter_item` (`id`, `name`, `description`, `price`, `file`, `added_date`, `category_id`) VALUES
(1, 'Steamed Veg Momo', 'lorem ipsum', 120, '', '2022-02-24 22:07:30.255274', 1),
(2, 'Steamed Buff Momo', 'lorem ipsum', 150, '', '2022-02-24 22:07:49.065146', 1),
(3, 'Margarita', 'Cloyingly sweet margarita mixes have given this drink a bad name. A well-made version is a fresh mix of lime juice and tequila, with a hint of sweetener.', 120, 'static/uploads/margarita-1592951298.jpg', '2022-02-25 01:43:38.082486', 3),
(4, 'Old Fashioned', 'There may be no better test of a bartender\'s mettle than ordering an Old Fashioned. The recipe is simple', 120, 'static/uploads/old-fashioned-1592951230.jpg', '2022-02-25 01:44:18.475013', 3),
(5, 'Cosmopolitan', 'The cosmo became almost ubiquitous in the \'90s thanks to the TV show Sex and the City, but this spin on the martini remains just as tasty today as when Carrie Bradshaw made it famous.', 120, 'static/uploads/cosmopolitan-1592951320.jpg', '2022-02-25 01:45:03.135928', 3),
(6, 'Negroni', 'A favorite of bartenders all over the world, the Negroni is a simple three-ingredient cocktail:', 150, 'static/uploads/negroni-1592951342.jpg', '2022-02-25 01:45:46.577201', 3),
(7, 'Martini', 'James Bond was wrong—whether you drink it with gin or vodka, stirred is the way to go when ordering a martini.', 150, 'static/uploads/martini-1592951711.jpg', '2022-02-25 01:46:28.673913', 3),
(8, 'Buff Chow mein', '', NULL, '', '2022-02-25 01:50:18.936457', 4),
(9, 'Vege Chow mein', '', NULL, '', '2022-02-25 01:50:38.544565', 4),
(10, 'Chiken Chow mein', '', NULL, '', '2022-02-25 01:51:09.527971', 4),
(11, 'Coca Cola', '', NULL, '', '2022-02-25 01:52:25.861914', 5),
(12, 'Sprite', '', NULL, '', '2022-02-25 01:52:41.693072', 5),
(13, 'Pepsi', '', NULL, '', '2022-02-25 01:52:56.759771', 5),
(14, 'Egg Chow mein', '', NULL, '', '2022-02-25 01:53:35.690118', 4),
(15, 'Vegetable', '', NULL, '', '2022-02-25 01:55:20.783705', 6),
(16, 'Chiken Thukpa', '', NULL, '', '2022-02-25 01:55:56.320501', 6),
(17, 'Pork thukpa', '', NULL, '', '2022-02-25 01:56:10.650396', 6),
(18, 'Kima Noodles', '', NULL, '', '2022-02-25 01:56:54.076549', 7),
(19, 'Chiken Noodles', '', NULL, '', '2022-02-25 01:57:10.384741', 7),
(20, 'Vegetable', '', NULL, '', '2022-02-25 02:04:06.498041', 9),
(21, 'chiken', '', NULL, '', '2022-02-25 02:04:20.674092', 9),
(22, 'Mix', '', NULL, '', '2022-02-25 02:04:33.282102', 9),
(23, 'chocolate pudding', '', 180, '', '2022-02-25 02:05:34.744307', 10),
(24, 'yougurt', '', 50, '', '2022-02-25 02:06:39.279424', 10),
(25, 'Banana milkshake', '', 200, '', '2022-02-25 02:08:01.927708', 10);

-- --------------------------------------------------------

--
-- Table structure for table `waiter_order`
--

CREATE TABLE `waiter_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `added_date` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `total_price` bigint(20) DEFAULT NULL,
  `is_delivered` tinyint(1) NOT NULL,
  `table_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waiter_order`
--

INSERT INTO `waiter_order` (`id`, `quantity`, `added_date`, `category_id`, `item_id`, `total_price`, `is_delivered`, `table_id`) VALUES
(1, 12, '2022-02-25 06:53:51.446573', 3, 3, 1440, 1, NULL),
(2, 1, '2022-02-25 07:14:40.256658', 3, 3, 120, 1, NULL),
(3, 1, '2022-02-25 07:14:50.668792', 3, 3, 120, 1, NULL),
(4, 12, '2022-02-25 07:15:01.681382', 3, 4, 1440, 1, NULL),
(5, 12, '2022-02-25 07:15:28.400632', 3, 4, 1440, 1, NULL),
(6, 1, '2022-02-25 07:17:47.925535', 1, 1, 120, 1, NULL),
(7, 1, '2022-02-25 07:44:41.648339', 1, 1, 120, 1, NULL),
(8, 1, '2022-02-25 07:44:54.363134', 1, 1, 120, 1, NULL),
(9, 1, '2022-02-25 07:44:56.552051', 1, 1, 120, 1, NULL),
(10, 1, '2022-02-25 07:45:03.498820', 1, 1, 120, 1, NULL),
(11, 1, '2022-02-25 07:45:42.802465', 1, 1, 120, 0, NULL),
(12, 1, '2022-02-25 07:46:58.620695', 1, 1, 120, 0, NULL),
(13, 1, '2022-02-25 07:47:03.186552', 1, 1, 120, 0, NULL),
(14, 1, '2022-02-25 07:47:08.571134', 1, 1, 120, 0, NULL),
(15, 1, '2022-02-25 07:47:16.128583', 1, 1, 120, 0, NULL),
(16, 1, '2022-02-25 07:47:18.351636', 1, 1, 120, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `waiter_table`
--

CREATE TABLE `waiter_table` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `waiter_category`
--
ALTER TABLE `waiter_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waiter_item`
--
ALTER TABLE `waiter_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waiter_item_category_id_62cf1f48_fk_waiter_category_id` (`category_id`);

--
-- Indexes for table `waiter_order`
--
ALTER TABLE `waiter_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waiter_order_category_id_c85a648a_fk_waiter_category_id` (`category_id`),
  ADD KEY `waiter_order_item_id_4da88817_fk_waiter_item_id` (`item_id`),
  ADD KEY `waiter_order_table_id_9b2b094b_fk_waiter_table_id` (`table_id`);

--
-- Indexes for table `waiter_table`
--
ALTER TABLE `waiter_table`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `waiter_category`
--
ALTER TABLE `waiter_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `waiter_item`
--
ALTER TABLE `waiter_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `waiter_order`
--
ALTER TABLE `waiter_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `waiter_table`
--
ALTER TABLE `waiter_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `waiter_item`
--
ALTER TABLE `waiter_item`
  ADD CONSTRAINT `waiter_item_category_id_62cf1f48_fk_waiter_category_id` FOREIGN KEY (`category_id`) REFERENCES `waiter_category` (`id`);

--
-- Constraints for table `waiter_order`
--
ALTER TABLE `waiter_order`
  ADD CONSTRAINT `waiter_order_category_id_c85a648a_fk_waiter_category_id` FOREIGN KEY (`category_id`) REFERENCES `waiter_category` (`id`),
  ADD CONSTRAINT `waiter_order_item_id_4da88817_fk_waiter_item_id` FOREIGN KEY (`item_id`) REFERENCES `waiter_item` (`id`),
  ADD CONSTRAINT `waiter_order_table_id_9b2b094b_fk_waiter_table_id` FOREIGN KEY (`table_id`) REFERENCES `waiter_table` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
