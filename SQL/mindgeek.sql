-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 01 Février 2019 à 17:26
-- Version du serveur :  5.7.25-0ubuntu0.16.04.2
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mindgeek`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-22 14:20:16', '2019-01-22 13:20:16', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/integration/wordpress', 'yes'),
(2, 'home', 'http://localhost/integration/wordpress', 'yes'),
(3, 'blogname', 'Mindgeek', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@mindgeek.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=108&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:"wp-google-maps/wpGoogleMaps.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:77:"/home/wabap21/sites/integration/wordpress/wp-content/themes/content/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'mindgeek/mindgeek-base', 'yes'),
(41, 'stylesheet', 'mindgeek/mindgeek-base', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '93', 'yes'),
(84, 'page_on_front', '108', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:18:"que cherchez-vous?";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:10:"nav_menu-2";}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1548264016;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1548292816;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1548336071;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1548337399;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548165592;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(124, '_site_transient_timeout_browser_007875cd98f94237faa88c9dc5d00425', '1548768071', 'no'),
(125, '_site_transient_browser_007875cd98f94237faa88c9dc5d00425', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"70.0.3538.102";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(138, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1548279731', 'no'),
(139, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:"location";a:1:{s:2:"ip";b:0;}s:6:"events";a:4:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:58:"Votre site est-il prêt pour la version 5.1 de WordPress ?";s:3:"url";s:64:"https://www.meetup.com/wordpress-ile-de-france/events/258071430/";s:6:"meetup";s:15:"WordPress Paris";s:10:"meetup_url";s:47:"https://www.meetup.com/wordpress-ile-de-france/";s:4:"date";s:19:"2019-01-22 18:30:00";s:8:"location";a:4:{s:8:"location";s:27:"Le Kremlin-Bicêtre, France";s:7:"country";s:2:"fr";s:8:"latitude";d:48.815193000000001;s:9:"longitude";d:2.3623069999999999;}}i:1;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:15:"WordCamp London";s:3:"url";s:32:"https://2019.london.wordcamp.org";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2019-04-06 00:00:00";s:8:"location";a:4:{s:8:"location";s:6:"London";s:7:"country";s:2:"GB";s:8:"latitude";d:51.551617399999998;s:9:"longitude";d:-0.1107146;}}i:2;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:14:"WordCamp Paris";s:3:"url";s:32:"https://2019.paris.wordcamp.org/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2019-04-24 00:00:00";s:8:"location";a:4:{s:8:"location";s:5:"Paris";s:7:"country";s:2:"FR";s:8:"latitude";d:48.883581800000002;s:9:"longitude";d:2.3095743999999998;}}i:3;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:16:"WordCamp Bristol";s:3:"url";s:34:"https://2019.bristol.wordcamp.org/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2019-05-17 00:00:00";s:8:"location";a:4:{s:8:"location";s:7:"Bristol";s:7:"country";s:2:"GB";s:8:"latitude";d:51.4584172;s:9:"longitude";d:-2.6029792;}}}}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(141, '_transient_timeout_plugin_slugs', '1548338849', 'no'),
(142, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:31:"wp-google-maps/wpGoogleMaps.php";}', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'current_theme', 'Mindgeek', 'yes'),
(152, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548165708;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(157, 'theme_mods_nisarg', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548165886;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(162, 'theme_mods_content', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548170099;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:10:"nav_menu-2";}s:34:"multiple-business-footer-sidebar-1";a:0:{}s:34:"multiple-business-footer-sidebar-2";a:0:{}s:34:"multiple-business-footer-sidebar-3";a:0:{}s:34:"multiple-business-footer-sidebar-4";a:0:{}}}}', 'yes'),
(167, 'WPGMZA_OTHER_SETTINGS', 'a:5:{s:30:"wpgmza_settings_map_streetview";s:3:"yes";s:24:"wpgmza_settings_map_zoom";s:3:"yes";s:23:"wpgmza_settings_map_pan";s:3:"yes";s:24:"wpgmza_settings_map_type";s:3:"yes";s:27:"wpgmza_settings_marker_pull";s:1:"0";}', 'yes'),
(168, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(169, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(170, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(171, 'wpgmza_db_version', '7.10.58', 'yes'),
(172, 'wpgmaps_current_version', '7.10.58', 'yes'),
(173, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(174, 'widget_wpgmza_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(175, 'WPGMZA_FIRST_TIME', '7.10.58', 'yes'),
(176, 'wpgmza_stats', 'a:2:{s:15:"list_maps_basic";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2019-01-22 14:09:24";s:14:"first_accessed";s:19:"2019-01-22 14:07:58";}s:14:"settings_basic";a:3:{s:5:"views";i:1;s:13:"last_accessed";s:19:"2019-01-22 14:13:47";s:14:"first_accessed";s:19:"2019-01-22 14:13:47";}}', 'yes'),
(183, 'theme_mods_quality', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548170025;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:10:"nav_menu-2";}s:18:"footer-widget-area";a:0:{}s:11:"woocommerce";a:0:{}}}}', 'yes'),
(189, 'quality_pro_options', 'a:2:{s:17:"upload_image_logo";s:74:"http://localhost/integration/wordpress/wp-content/uploads/2019/01/logo.png";s:5:"width";s:3:"100";}', 'yes'),
(190, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(195, 'theme_mods_multiple-business', 'a:8:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:2;s:6:"footer";i:3;s:6:"social";i:0;}s:12:"header_image";s:90:"http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background-1.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:110;s:3:"url";s:90:"http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background-1.jpg";s:13:"thumbnail_url";s:90:"http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background-1.jpg";s:6:"height";i:850;s:5:"width";i:1920;}s:16:"background_image";s:0:"";s:21:"background_position_x";s:6:"center";s:21:"background_position_y";s:6:"center";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548237317;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:10:"nav_menu-2";}s:34:"multiple-business-footer-sidebar-1";a:0:{}s:34:"multiple-business-footer-sidebar-2";a:0:{}s:34:"multiple-business-footer-sidebar-3";a:0:{}s:34:"multiple-business-footer-sidebar-4";a:0:{}}}}', 'yes'),
(200, 'theme_switched_via_customizer', '', 'yes'),
(201, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(204, 'generate_dynamic_css_output', 'body{background-color:#efefef;color:#3a3a3a;}a, a:visited{color:#1e73be;}a:hover, a:focus, a:active{color:#000000;}body .grid-container{max-width:1100px;}body, button, input, select, textarea{font-family:-apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";}.entry-content > [class*="wp-block-"]:not(:last-child){margin-bottom:1.5em;}.main-navigation .main-nav ul ul li a{font-size:14px;}@media (max-width:768px){.main-title{font-size:30px;}h1{font-size:30px;}h2{font-size:25px;}}.top-bar{background-color:#636363;color:#ffffff;}.top-bar a,.top-bar a:visited{color:#ffffff;}.top-bar a:hover{color:#303030;}.site-header{background-color:#ffffff;color:#3a3a3a;}.site-header a,.site-header a:visited{color:#3a3a3a;}.main-title a,.main-title a:hover,.main-title a:visited{color:#222222;}.site-description{color:#757575;}.main-navigation,.main-navigation ul ul{background-color:#222222;}.main-navigation .main-nav ul li a,.menu-toggle{color:#ffffff;}.main-navigation .main-nav ul li:hover > a,.main-navigation .main-nav ul li:focus > a, .main-navigation .main-nav ul li.sfHover > a{color:#ffffff;background-color:#3f3f3f;}button.menu-toggle:hover,button.menu-toggle:focus,.main-navigation .mobile-bar-items a,.main-navigation .mobile-bar-items a:hover,.main-navigation .mobile-bar-items a:focus{color:#ffffff;}.main-navigation .main-nav ul li[class*="current-menu-"] > a{color:#ffffff;background-color:#3f3f3f;}.main-navigation .main-nav ul li[class*="current-menu-"] > a:hover,.main-navigation .main-nav ul li[class*="current-menu-"].sfHover > a{color:#ffffff;background-color:#3f3f3f;}.navigation-search input[type="search"],.navigation-search input[type="search"]:active{color:#3f3f3f;background-color:#3f3f3f;}.navigation-search input[type="search"]:focus{color:#ffffff;background-color:#3f3f3f;}.main-navigation ul ul{background-color:#3f3f3f;}.main-navigation .main-nav ul ul li a{color:#ffffff;}.main-navigation .main-nav ul ul li:hover > a,.main-navigation .main-nav ul ul li:focus > a,.main-navigation .main-nav ul ul li.sfHover > a{color:#ffffff;background-color:#4f4f4f;}.main-navigation .main-nav ul ul li[class*="current-menu-"] > a{color:#ffffff;background-color:#4f4f4f;}.main-navigation .main-nav ul ul li[class*="current-menu-"] > a:hover,.main-navigation .main-nav ul ul li[class*="current-menu-"].sfHover > a{color:#ffffff;background-color:#4f4f4f;}.separate-containers .inside-article, .separate-containers .comments-area, .separate-containers .page-header, .one-container .container, .separate-containers .paging-navigation, .inside-page-header{background-color:#ffffff;}.entry-meta{color:#595959;}.entry-meta a,.entry-meta a:visited{color:#595959;}.entry-meta a:hover{color:#1e73be;}.sidebar .widget{background-color:#ffffff;}.sidebar .widget .widget-title{color:#000000;}.footer-widgets{background-color:#ffffff;}.footer-widgets .widget-title{color:#000000;}.site-info{color:#ffffff;background-color:#222222;}.site-info a,.site-info a:visited{color:#ffffff;}.site-info a:hover{color:#606060;}.footer-bar .widget_nav_menu .current-menu-item a{color:#606060;}input[type="text"],input[type="email"],input[type="url"],input[type="password"],input[type="search"],input[type="tel"],input[type="number"],textarea,select{color:#666666;background-color:#fafafa;border-color:#cccccc;}input[type="text"]:focus,input[type="email"]:focus,input[type="url"]:focus,input[type="password"]:focus,input[type="search"]:focus,input[type="tel"]:focus,input[type="number"]:focus,textarea:focus,select:focus{color:#666666;background-color:#ffffff;border-color:#bfbfbf;}button,html input[type="button"],input[type="reset"],input[type="submit"],a.button,a.button:visited,a.wp-block-button__link:not(.has-background){color:#ffffff;background-color:#666666;}button:hover,html input[type="button"]:hover,input[type="reset"]:hover,input[type="submit"]:hover,a.button:hover,button:focus,html input[type="button"]:focus,input[type="reset"]:focus,input[type="submit"]:focus,a.button:focus,a.wp-block-button__link:not(.has-background):active,a.wp-block-button__link:not(.has-background):focus,a.wp-block-button__link:not(.has-background):hover{color:#ffffff;background-color:#3f3f3f;}.generate-back-to-top,.generate-back-to-top:visited{background-color:rgba( 0,0,0,0.4 );color:#ffffff;}.generate-back-to-top:hover,.generate-back-to-top:focus{background-color:rgba( 0,0,0,0.6 );color:#ffffff;}.entry-content .alignwide, body:not(.no-sidebar) .entry-content .alignfull{margin-left:-40px;width:calc(100% + 80px);max-width:calc(100% + 80px);}@media (max-width:768px){.separate-containers .inside-article, .separate-containers .comments-area, .separate-containers .page-header, .separate-containers .paging-navigation, .one-container .site-content, .inside-page-header{padding:30px;}.entry-content .alignwide, body:not(.no-sidebar) .entry-content .alignfull{margin-left:-30px;width:calc(100% + 60px);max-width:calc(100% + 60px);}}.rtl .menu-item-has-children .dropdown-menu-toggle{padding-left:20px;}.rtl .main-navigation .main-nav ul li.menu-item-has-children > a{padding-right:20px;}.one-container .sidebar .widget{padding:0px;}', 'yes'),
(205, 'generate_dynamic_css_cached_version', '2.2.1', 'yes'),
(206, 'generate_settings', 'a:74:{s:10:"hide_title";s:0:"";s:12:"hide_tagline";s:0:"";s:4:"logo";s:0:"";s:11:"retina_logo";s:0:"";s:10:"logo_width";s:0:"";s:13:"top_bar_width";s:4:"full";s:19:"top_bar_inner_width";s:9:"contained";s:17:"top_bar_alignment";s:5:"right";s:15:"container_width";s:4:"1100";s:21:"header_layout_setting";s:12:"fluid-header";s:18:"header_inner_width";s:9:"contained";s:21:"nav_alignment_setting";s:4:"left";s:24:"header_alignment_setting";s:4:"left";s:18:"nav_layout_setting";s:9:"fluid-nav";s:15:"nav_inner_width";s:9:"contained";s:20:"nav_position_setting";s:16:"nav-below-header";s:14:"nav_drop_point";s:0:"";s:17:"nav_dropdown_type";s:5:"hover";s:22:"nav_dropdown_direction";s:5:"right";s:10:"nav_search";s:7:"disable";s:22:"content_layout_setting";s:19:"separate-containers";s:14:"layout_setting";s:13:"right-sidebar";s:19:"blog_layout_setting";s:13:"right-sidebar";s:21:"single_layout_setting";s:13:"right-sidebar";s:12:"post_content";s:7:"excerpt";s:21:"footer_layout_setting";s:12:"fluid-footer";s:18:"footer_inner_width";s:9:"contained";s:21:"footer_widget_setting";s:1:"3";s:20:"footer_bar_alignment";s:5:"right";s:11:"back_to_top";s:0:"";s:16:"background_color";s:7:"#efefef";s:10:"text_color";s:7:"#3a3a3a";s:10:"link_color";s:7:"#1e73be";s:16:"link_color_hover";s:7:"#000000";s:18:"link_color_visited";s:0:"";s:23:"font_awesome_essentials";b:0;s:17:"dynamic_css_cache";b:0;s:21:"blog_post_title_color";s:0:"";s:27:"blog_post_title_hover_color";s:0:"";s:27:"navigation_background_color";s:7:"#222222";s:21:"navigation_text_color";s:7:"#ffffff";s:33:"navigation_background_hover_color";s:7:"#3f3f3f";s:27:"navigation_text_hover_color";s:7:"#ffffff";s:35:"navigation_background_current_color";s:7:"#3f3f3f";s:29:"navigation_text_current_color";s:7:"#ffffff";s:30:"subnavigation_background_color";s:7:"#3f3f3f";s:24:"subnavigation_text_color";s:7:"#ffffff";s:36:"subnavigation_background_hover_color";s:7:"#4f4f4f";s:30:"subnavigation_text_hover_color";s:7:"#ffffff";s:38:"subnavigation_background_current_color";s:7:"#4f4f4f";s:32:"subnavigation_text_current_color";s:7:"#ffffff";s:9:"font_body";s:12:"System Stack";s:16:"body_font_weight";s:6:"normal";s:19:"body_font_transform";s:4:"none";s:14:"body_font_size";s:2:"17";s:16:"body_line_height";s:3:"1.5";s:16:"paragraph_margin";s:3:"1.5";s:14:"font_heading_1";s:7:"inherit";s:16:"heading_1_weight";s:3:"300";s:19:"heading_1_transform";s:4:"none";s:19:"heading_1_font_size";s:2:"40";s:26:"mobile_heading_1_font_size";s:2:"30";s:21:"heading_1_line_height";s:3:"1.2";s:14:"font_heading_2";s:7:"inherit";s:16:"heading_2_weight";s:3:"300";s:19:"heading_2_transform";s:4:"none";s:19:"heading_2_font_size";s:2:"30";s:26:"mobile_heading_2_font_size";s:2:"25";s:21:"heading_2_line_height";s:3:"1.2";s:14:"font_heading_3";s:7:"inherit";s:16:"heading_3_weight";s:6:"normal";s:19:"heading_3_transform";s:4:"none";s:19:"heading_3_font_size";s:2:"20";s:21:"heading_3_line_height";s:3:"1.2";}', 'yes'),
(207, 'generate_migration_settings', 'a:4:{s:31:"font_awesome_essentials_updated";s:4:"true";s:22:"skip_dynamic_css_cache";s:4:"true";s:20:"default_font_updated";s:4:"true";s:25:"blog_post_content_preview";s:4:"true";}', 'yes'),
(208, 'generate_db_version', '2.2.1', 'no'),
(209, 'generate_update_core_typography', 'true', 'yes'),
(210, 'theme_mods_generatepress', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(212, 'theme_mods_stacy', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(225, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1548279730', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(226, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 23 Jan 2019 10:12:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"Think WP, le documentaire vidéo sur WordPress enfin disponible !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BFWuQgyALjg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/thinkwp-documentaire-video-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2018 13:03:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2220300";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1538:"Découvrez WordPress en 30 minutes au travers de ce documentaire inédit d&#8217;interviews de la communauté française. Sur une idée originale de Déborah Donnier, entrepreneurs, chefs d&#8217;entreprises, freelances, agences web, développeurs, intégrateurs&#8230; de toute la France se succèdent pour nous parler de notre CMS favori WordPress. Financé uniquement par des dons et sponsors, le projet Think<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BFWuQgyALjg:KhIgVVs-X9Q:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BFWuQgyALjg:KhIgVVs-X9Q:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BFWuQgyALjg:KhIgVVs-X9Q:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BFWuQgyALjg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Benjamin Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/thinkwp-documentaire-video-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/thinkwp-documentaire-video-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WP BootCamp 2018 : retours sur la deuxième édition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/73jXJKLX5xI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 Oct 2018 06:05:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2215483";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1487:"Soutenu par l&#8217;association WordPress Francophone, retours sur la seconde édition du WP BootCamp. Qu&#8217;est ce que le WP BootCamp ? Le WP BootCamp est un événement réunissant des passionnés de WordPress et du web en général sur un week-end de 3 jours. L&#8217;édition 2018, portée par Rémi Corson, Aurélien Denis et Benjamin Denis, se déroula<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=73jXJKLX5xI:kXAjLDU4P-c:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=73jXJKLX5xI:kXAjLDU4P-c:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=73jXJKLX5xI:kXAjLDU4P-c:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/73jXJKLX5xI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Benjamin Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/wp-bootcamp-2018-retours-sur-la-deuxieme-edition/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wpfr.net/wordpress-gutenberg/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2018 09:00:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"éditeur visuel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2117903";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1474:"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wordpress-gutenberg/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:37:"https://wpfr.net/wordpress-gutenberg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Résultats des élections du bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/resultats-elections-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Mar 2018 08:00:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2107099";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1521:"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/resultats-elections-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wpfr.net/resultats-elections-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Liste des candidats au bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/liste-candidats-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Feb 2018 11:45:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2092699";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/liste-candidats-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/liste-candidats-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WPFR sponsor du WP Tech Lyon !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Feb 2018 07:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2082223";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1507:"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wpfr-sponsor-wptech-lyon/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Loi anti-fraude et l’e-commerce : les informations officielles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Jan 2018 14:51:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:10:"Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Loi anti-fraude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2072415";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1503:"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"39";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"L’élection du bureau WPFR 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/election-bureau-wpfr-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Jan 2018 11:30:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2041252";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1530:"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/election-bureau-wpfr-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wpfr.net/election-bureau-wpfr-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"PHP Tour Montpellier 2018 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Jan 2018 10:12:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2035309";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1489:"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Le point sur les certifications WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/point-certifications-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 11 Dec 2017 17:15:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2001761";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1552:"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wpfr.net/point-certifications-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/point-certifications-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"bCXdzwTPtchCFF8rEKvTcmmfx0g";s:13:"last-modified";s:29:"Wed, 23 Jan 2019 09:21:40 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Wed, 23 Jan 2019 09:42:10 GMT";s:7:"expires";s:29:"Wed, 23 Jan 2019 09:42:10 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:40:"quic=":443"; ma=2592000; v="44,43,39,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(227, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1548279730', 'no'),
(228, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1548236530', 'no'),
(229, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1548279731', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(230, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"CoSchedule : le plugin pour centraliser votre stratégie de contenu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/TsolTQn4Zq8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:99:"https://wpmarmite.com/coschedule/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=coschedule";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Jan 2019 07:00:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:365:"\n		        \nDiffuser du contenu pour faire connaître votre entreprise, votre site auprès des internautes, c’est bien. Proposer des articles qualitatifs, engageants, c’est mieux. Produire du contenu de qualité, qui passionne vos...\nL’article CoSchedule : le plugin pour centraliser votre stratégie de contenu est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:728:"<p><img width="1500" height="750" src="https://wpmarmite.com/wp-content/uploads/2019/01/coschedule.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>Diffuser du contenu pour faire connaître votre entreprise, votre site auprès des internautes, c’est bien. Proposer des articles qualitatifs, engageants, c’est mieux. Produire du contenu de qualité, qui passionne vos...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/coschedule/">CoSchedule : le plugin pour centraliser votre stratégie de contenu</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/TsolTQn4Zq8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:99:"https://wpmarmite.com/coschedule/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=coschedule";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Ajouter un e-mail dans une liste MailChimp via API";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/_bOxk6iL4tg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:64:"https://mosaika.fr/api-mailchimp-inscrire-utilisateur-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 20 Jan 2019 19:24:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:501:"\n		        Dans ce tutoriel, nous allons analyser comment ajouter un e-mail dans une liste d&#8217;abonnés en profitant des fonctions HTTP de WordPress et en communiquant avec MailChimp via son API. De nombreuses extensions existent afin de relier un site WordPress à l&#8217;outil de gestion de newsletter MailChimp. Il est relativement facile de relier des événements WordPress [&#8230;]\nCet article Ajouter un e-mail dans une liste MailChimp via API est apparu en premier sur Mosaika.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:727:"<p>Dans ce tutoriel, nous allons analyser comment ajouter un e-mail dans une liste d&#8217;abonnés en profitant des fonctions HTTP de WordPress et en communiquant avec MailChimp via son API. De nombreuses extensions existent afin de relier un site WordPress à l&#8217;outil de gestion de newsletter MailChimp. Il est relativement facile de relier des événements WordPress [&#8230;]</p>\n<p>Cet article <a rel="nofollow" href="https://mosaika.fr/api-mailchimp-inscrire-utilisateur-wordpress/">Ajouter un e-mail dans une liste MailChimp via API</a> est apparu en premier sur <a rel="nofollow" href="https://mosaika.fr">Mosaika</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/_bOxk6iL4tg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:64:"https://mosaika.fr/api-mailchimp-inscrire-utilisateur-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"La barre d’outils du bloc Paragraphe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/HVM1uzqSBEw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:43:"https://dfarnier.fr/outils-bloc-paragraphe/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 19 Jan 2019 14:50:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:385:"\n		        La barre d\'outils associée au type de bloc Paragraphe offre les options d\'édition suivantes : modifier le type de bloc, mettre en gras, souligner ou rayer tout ou partie du texte, aligner le texte à l\'intérieur du bloc Paragraphe ou attacher un lien internet.\nCet article La barre d&rsquo;outils du bloc Paragraphe est apparu en premier sur Débuter WordPress.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Daniel Farnier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:591:"<p>La barre d\'outils associée au type de bloc Paragraphe offre les options d\'édition suivantes : modifier le type de bloc, mettre en gras, souligner ou rayer tout ou partie du texte, aligner le texte à l\'intérieur du bloc Paragraphe ou attacher un lien internet.</p>\n<p>Cet article <a rel="nofollow" href="https://dfarnier.fr/outils-bloc-paragraphe/">La barre d&rsquo;outils du bloc Paragraphe</a> est apparu en premier sur <a rel="nofollow" href="https://dfarnier.fr">Débuter WordPress</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/HVM1uzqSBEw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"https://dfarnier.fr/outils-bloc-paragraphe/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Venir au WordCamp Bordeaux";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/OwoMw40mjGI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:73:"https://2019.bordeaux.wordcamp.org/2019/01/19/venir-au-wordcamp-bordeaux/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 19 Jan 2019 14:41:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:408:"\n		        Pour commencer l’année 2019, le prochain WordCamp a lieu au Centre des Congrès Cité Mondiale de la très belle ville de Bordeaux. Ce lieu moderne et original est l’endroit idéal pour s’inspirer et s&#8217;immerger dans la communauté WordPress. Situé en plein cœur de la ville et aisément accessible, le Centre des Congrès Cité Mondiale offre plusieurs espaces [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"WordCamp Bordeaux";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4044:"<p>Pour commencer l’année 2019, le prochain <strong>WordCamp</strong> a lieu au <strong>Centre des Congrès Cité Mondiale</strong> de la très belle ville de <strong>Bordeaux</strong>. Ce lieu moderne et original est l’endroit idéal pour s’inspirer et s&rsquo;immerger dans la communauté WordPress.</p>\n<p><img class="wp-image-1396 size-full aligncenter" src="http://2017.bordeaux.wordcamp.org/files/2017/01/30029152321_bab89a34ef_z.jpg" width="640" height="426" /><img class="aligncenter wp-image-1397 size-full" src="http://2017.bordeaux.wordcamp.org/files/2017/01/30112901625_ac4b35508b_z.jpg" width="640" height="424" /><img class="wp-image-1395 size-medium aligncenter" src="http://2017.bordeaux.wordcamp.org/files/2017/01/29998705402_6a45ebd0f6_z.jpg" width="640" height="auto" /></p>\n<p>Situé en plein cœur de la ville et aisément accessible, le Centre des Congrès Cité Mondiale offre plusieurs espaces afin de profiter pleinement d’une journée riche en conférences, ateliers et échanges.</p>\n<h2>ADRESSE</h2>\n<p><strong>18 Parvis des Chartrons / 20 quais des Chartrons à Bordeaux</strong></p>\n<div class="googlemaps"></div>\n<h2>POUR VOUS Y RENDRE…</h2>\n<p>La Gare Saint-Jean se situe à une distance de marche d&rsquo;environ 40 minutes du centre-ville, pour les bons marcheurs. Pour les amateurs de vélo, <a href="https://www.infotbm.com/le-reseau-tbc/tbc-decouverte/vcub" target="_blank" rel="noopener">sachez que deux stations V<sup>3</sup> sont situées en face de la Gare Saint Jean</a>, et que de nombreuses stations maillent la ville. Et sinon…</p>\n<h3>TRAIN &amp; TRAM</h3>\n<p>Le réseau de Transports Bordeaux Métropole dessert très bien la Gare Saint-Jean : <strong>prenez le tram C, l&rsquo;arrêt est situé juste devant la gare</strong>, le tram y passe environ toutes les cinq minutes. Vous y trouverez également de nombreux arrêts de bus.</p>\n<p>&gt;&gt; <a href="https://www.infotbm.com" target="_blank" rel="noopener">Plus d’infos sur le site TBM</a></p>\n<h3>PARKINGS</h3>\n<p>Relativement chers et souvent pleins le week-end, nous vous déconseillons les parkings du centre-ville. Par contre, des <a href="https://www.infotbm.com/les-parc-relais-tout-public"><strong>parcs-relais</strong></a> situés non loin du centre vous permettront de vous garer sereinement et de prendre immédiatement le tram qui vous amènera au centre de Bordeaux. C&rsquo;est très facile et peu coûteux…</p>\n<p>&gt;&gt; <a href="https://www.infotbm.com/les-parc-relais-tout-public" target="_blank" rel="noopener">Plus d&rsquo;infos sur le site TBM</a></p>\n<h3>AVION</h3>\n<p>Bordeaux est une mégapole qui accueille un bel aéroport à Mérignac, lui aussi desservi par le réseau de transports en commun.</p>\n<p>&gt;&gt; Retrouvez <a href="http://www.bordeaux.aeroport.fr/fr/info/bus-laeroport-bordeaux" target="_blank" rel="noopener"> les informations pratiques</a> pour vous rendre au centre-ville depuis l&rsquo;aéroport.</p>\n<h2>VOUS LOGER À BORDEAUX</h2>\n<p>Plusieurs possibilités pour séjourner à Bordeaux : hôtels, <a href="https://www.airbnb.fr/" target="_blank" rel="noopener">Airbnb</a>, locations… <strong>L’Office du Tourisme de Bordeaux propose <a href="http://www.bordeaux-tourisme.com/offre/recherche/hotels-et-residences-hotelieres/1/~~/(page)/1" target="_blank" rel="noopener">une sélection assez large d’hôtels sur son site web</a></strong>, nous vous recommandons simplement d&rsquo;éviter le quartier de la Gare, assez bruyant.</p>\n<p><strong>Vous n’avez toujours pas réservé votre place pour WordCamp Bordeaux 2019 ? Qu&rsquo;attendez-vous ?</strong></p>\n<p><a class="cta" href="https://2019.bordeaux.wordcamp.org/billets"><span class="dashicons-before dashicons-tickets">BILLETTERIE </span>C&rsquo;est parti ! »</a></p>\n<hr />\n<p><em>Crédits Photos : © Julien Fernandez / CEB &#8211; Bordeaux &#8211; Juin 2013 &#8211; Le Centre de Congrès Cité Mondiale</em></p><img src="http://feeds.feedburner.com/~r/wpfr/~4/OwoMw40mjGI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:73:"https://2019.bordeaux.wordcamp.org/2019/01/19/venir-au-wordcamp-bordeaux/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WordPress 5.1 : des outils pour surveiller la santé de votre site";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/IZE-_msrZAA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:68:"https://www.whodunit.fr/surveiller-la-sante-de-votre-site-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Jan 2019 09:51:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:495:"\n		        WordPress va commencer à introduire des mécanismes visant à surveiller la santé de votre site. Ces outils vont être intégrés progressivement dans le cœur du CMS. Premièrement, la version 5.1 de WordPress (prévue pour le 21 février 2019) va intégrer un ensemble de systèmes permettant de vous aider à mettre à jour la version de [&#8230;]\nThe post WordPress 5.1 : des outils pour surveiller la santé de votre site appeared first on Agence WordPress Whodunit.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:730:"<p>WordPress va commencer à introduire des mécanismes visant à surveiller la santé de votre site. Ces outils vont être intégrés progressivement dans le cœur du CMS. Premièrement, la version 5.1 de WordPress (prévue pour le 21 février 2019) va intégrer un ensemble de systèmes permettant de vous aider à mettre à jour la version de [&#8230;]</p>\n<p>The post <a rel="nofollow" href="https://www.whodunit.fr/surveiller-la-sante-de-votre-site-wordpress/">WordPress 5.1 : des outils pour surveiller la santé de votre site</a> appeared first on <a rel="nofollow" href="https://www.whodunit.fr">Agence WordPress Whodunit</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/IZE-_msrZAA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:68:"https://www.whodunit.fr/surveiller-la-sante-de-votre-site-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Comment créer une popup WordPress efficace ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/1Fcj40cKrQM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wpmarmite.com/popup-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=popup-wordpress";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Jan 2019 06:10:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:321:"\n		        \nProjetez-vous donc dans cette situation. Vous êtes sur un blog génial, où vous vous régalez de la lecture d’un délicieux article plein de bonnes informations. Quand soudain… Une popup sauvage...\nL’article Comment créer une popup WordPress efficace ? est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:694:"<p><img width="1500" height="750" src="https://wpmarmite.com/wp-content/uploads/2019/01/popup-wordpress.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>Projetez-vous donc dans cette situation. Vous êtes sur un blog génial, où vous vous régalez de la lecture d’un délicieux article plein de bonnes informations. Quand soudain… Une popup sauvage...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/popup-wordpress/">Comment créer une popup WordPress efficace ?</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/1Fcj40cKrQM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wpmarmite.com/popup-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=popup-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Cache cache partie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/vqoRI6usrtw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:63:"https://www.echodesplugins.li-an.fr/plugins/cache-cache-partie/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 13 Jan 2019 16:05:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:100:"\n		        Un comparatif rapide de plusieurs extensions de cache efficaces et prometteuses		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:170:"Un comparatif rapide de plusieurs extensions de cache efficaces et prometteuses<img src="http://feeds.feedburner.com/~r/wpfr/~4/vqoRI6usrtw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:63:"https://www.echodesplugins.li-an.fr/plugins/cache-cache-partie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Retours sur le WordCamp US Nashville 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/7tD5pDW7oQI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:66:"https://www.whodunit.fr/retours-sur-le-wordcamp-us-nashville-2018/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 08 Jan 2019 10:13:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:481:"\n		        Le WordCamp US est avec le WordCamp Europe l&#8217;un des deux évènements WordPress annuels qui rassemblent des participants venant du monde entier. Cette année, notre CEO Émilie Lebrun et moi-même (Jean-Baptiste, CTO) avons eu le plaisir de nous rendre les 7, 8, 9 et 10 décembre à Nashville pour participer à ce grand évènement international. [&#8230;]\nThe post Retours sur le WordCamp US Nashville 2018 appeared first on Agence WordPress Whodunit.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:714:"<p>Le WordCamp US est avec le WordCamp Europe l&#8217;un des deux évènements WordPress annuels qui rassemblent des participants venant du monde entier. Cette année, notre CEO Émilie Lebrun et moi-même (Jean-Baptiste, CTO) avons eu le plaisir de nous rendre les 7, 8, 9 et 10 décembre à Nashville pour participer à ce grand évènement international. [&#8230;]</p>\n<p>The post <a rel="nofollow" href="https://www.whodunit.fr/retours-sur-le-wordcamp-us-nashville-2018/">Retours sur le WordCamp US Nashville 2018</a> appeared first on <a rel="nofollow" href="https://www.whodunit.fr">Agence WordPress Whodunit</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/7tD5pDW7oQI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://www.whodunit.fr/retours-sur-le-wordcamp-us-nashville-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"ob00g0awnPHxhDjSE4Mwq4Nhlgc";s:13:"last-modified";s:29:"Wed, 23 Jan 2019 09:39:16 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Wed, 23 Jan 2019 09:42:11 GMT";s:7:"expires";s:29:"Wed, 23 Jan 2019 09:42:11 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:40:"quic=":443"; ma=2592000; v="44,43,39,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(231, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1548279731', 'no'),
(232, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1548236531', 'no'),
(233, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1548279731', 'no'),
(234, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/BFWuQgyALjg/\'>Think WP, le documentaire vidéo sur WordPress enfin disponible !</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/TsolTQn4Zq8/\'>CoSchedule : le plugin pour centraliser votre stratégie de contenu</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/_bOxk6iL4tg/\'>Ajouter un e-mail dans une liste MailChimp via API</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/HVM1uzqSBEw/\'>La barre d’outils du bloc Paragraphe</a></li></ul></div>', 'no'),
(235, 'theme_mods_green-office', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548252389;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:10:"nav_menu-2";}}}}', 'yes'),
(243, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.3.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.3";s:7:"version";s:5:"5.0.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1548252379;s:15:"version_checked";s:5:"5.0.3";s:12:"translations";a:0:{}}', 'no'),
(244, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1548257829;s:7:"checked";a:12:{s:7:"content";s:5:"1.7.1";s:13:"generatepress";s:5:"2.2.1";s:12:"green-office";s:0:"";s:22:"mindgeek/mindgeek-base";s:3:"1.1";s:17:"multiple-business";s:5:"1.0.1";s:6:"nisarg";s:7:"1.2.8.2";s:7:"quality";s:5:"2.2.7";s:10:"spicepress";s:5:"1.5.5";s:5:"stacy";s:7:"1.2.5.2";s:14:"twentynineteen";s:3:"1.2";s:15:"twentyseventeen";s:3:"2.0";s:13:"twentysixteen";s:3:"1.8";}s:8:"response";a:0:{}s:12:"translations";a:7:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:7:"content";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"1.3";s:7:"updated";s:19:"2018-05-02 17:26:33";s:7:"package";s:71:"https://downloads.wordpress.org/translation/theme/content/1.3/fr_FR.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"generatepress";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"2.1.4";s:7:"updated";s:19:"2018-09-14 13:05:10";s:7:"package";s:79:"https://downloads.wordpress.org/translation/theme/generatepress/2.1.4/fr_FR.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:6:"nisarg";s:8:"language";s:5:"fr_FR";s:7:"version";s:7:"1.2.8.2";s:7:"updated";s:19:"2018-12-26 15:16:33";s:7:"package";s:74:"https://downloads.wordpress.org/translation/theme/nisarg/1.2.8.2/fr_FR.zip";s:10:"autoupdate";b:1;}i:3;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:7:"quality";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"1.9.7";s:7:"updated";s:19:"2018-02-26 14:33:58";s:7:"package";s:73:"https://downloads.wordpress.org/translation/theme/quality/1.9.7/fr_FR.zip";s:10:"autoupdate";b:1;}i:4;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:10:"spicepress";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"1.5.1";s:7:"updated";s:19:"2018-07-09 09:05:28";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/spicepress/1.5.1/fr_FR.zip";s:10:"autoupdate";b:1;}i:5;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:5:"stacy";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"1.2";s:7:"updated";s:19:"2018-06-07 10:21:25";s:7:"package";s:69:"https://downloads.wordpress.org/translation/theme/stacy/1.2/fr_FR.zip";s:10:"autoupdate";b:1;}i:6;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentynineteen";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"1.2";s:7:"updated";s:19:"2019-01-10 12:30:55";s:7:"package";s:78:"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/fr_FR.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(245, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1548252380;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:3:"4.1";s:9:"hello.php";s:5:"1.7.1";s:31:"wp-google-maps/wpGoogleMaps.php";s:7:"7.10.58";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"hello-dolly";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"1.6";s:7:"updated";s:19:"2018-04-27 10:03:32";s:7:"package";s:76:"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"4.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.4.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:31:"wp-google-maps/wpGoogleMaps.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-google-maps";s:4:"slug";s:14:"wp-google-maps";s:6:"plugin";s:31:"wp-google-maps/wpGoogleMaps.php";s:11:"new_version";s:7:"7.10.58";s:3:"url";s:45:"https://wordpress.org/plugins/wp-google-maps/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-google-maps.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";s:2:"1x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(247, 'theme_mods_mindgeek/mindgeek-base', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:11:"footer-menu";i:3;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:124;}', 'yes'),
(250, '_site_transient_timeout_theme_roots', '1548259628', 'no'),
(251, '_site_transient_theme_roots', 'a:12:{s:7:"content";s:7:"/themes";s:13:"generatepress";s:7:"/themes";s:12:"green-office";s:7:"/themes";s:22:"mindgeek/mindgeek-base";s:7:"/themes";s:17:"multiple-business";s:7:"/themes";s:6:"nisarg";s:7:"/themes";s:7:"quality";s:7:"/themes";s:10:"spicepress";s:7:"/themes";s:5:"stacy";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1548168426:1'),
(6, 8, '_wp_attached_file', '2019/01/logo.png'),
(7, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:132;s:6:"height";i:120;s:4:"file";s:16:"2019/01/logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 5, '_thumbnail_id', '10'),
(11, 10, '_wp_attached_file', '2019/01/background.jpg'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:933;s:4:"file";s:22:"2019/01/background.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"background-300x146.jpg";s:5:"width";i:300;s:6:"height";i:146;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"background-768x373.jpg";s:5:"width";i:768;s:6:"height";i:373;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"background-1024x498.jpg";s:5:"width";i:1024;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"background-1568x762.jpg";s:5:"width";i:1568;s:6:"height";i:762;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.2";s:6:"credit";s:15:"Dario Lo Presti";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:56:"Network servers in a data center. Swallow depth of Field";s:17:"created_timestamp";s:10:"1298995681";s:9:"copyright";s:11:"DLP Network";s:12:"focal_length";s:2:"50";s:3:"iso";s:4:"1250";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:56:"Network servers in a data center. Swallow depth of Field";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(15, 10, '_edit_lock', '1548165332:1'),
(16, 2, '_edit_lock', '1548168944:1'),
(17, 11, '_menu_item_type', 'custom'),
(18, 11, '_menu_item_menu_item_parent', '0'),
(19, 11, '_menu_item_object_id', '11'),
(20, 11, '_menu_item_object', 'custom'),
(21, 11, '_menu_item_target', ''),
(22, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 11, '_menu_item_xfn', ''),
(24, 11, '_menu_item_url', 'http://localhost/integration/wordpress/'),
(25, 11, '_menu_item_orphaned', '1548165823'),
(26, 12, '_menu_item_type', 'post_type'),
(27, 12, '_menu_item_menu_item_parent', '0'),
(28, 12, '_menu_item_object_id', '2'),
(29, 12, '_menu_item_object', 'page'),
(30, 12, '_menu_item_target', ''),
(31, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 12, '_menu_item_xfn', ''),
(33, 12, '_menu_item_url', ''),
(34, 12, '_menu_item_orphaned', '1548165823'),
(35, 13, '_menu_item_type', 'custom'),
(36, 13, '_menu_item_menu_item_parent', '0'),
(37, 13, '_menu_item_object_id', '13'),
(38, 13, '_menu_item_object', 'custom'),
(39, 13, '_menu_item_target', ''),
(40, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 13, '_menu_item_xfn', ''),
(42, 13, '_menu_item_url', 'http://localhost/integration/wordpress/'),
(43, 13, '_menu_item_orphaned', '1548165893'),
(44, 14, '_menu_item_type', 'post_type'),
(45, 14, '_menu_item_menu_item_parent', '0'),
(46, 14, '_menu_item_object_id', '2'),
(47, 14, '_menu_item_object', 'page'),
(48, 14, '_menu_item_target', ''),
(49, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 14, '_menu_item_xfn', ''),
(51, 14, '_menu_item_url', ''),
(52, 14, '_menu_item_orphaned', '1548165894'),
(53, 84, '_menu_item_type', 'custom'),
(54, 84, '_menu_item_menu_item_parent', '0'),
(55, 84, '_menu_item_object_id', '84'),
(56, 84, '_menu_item_object', 'custom'),
(57, 84, '_menu_item_target', ''),
(58, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 84, '_menu_item_xfn', ''),
(60, 84, '_menu_item_url', 'http://localhost/integration/wordpress/'),
(61, 84, '_menu_item_orphaned', '1548168708'),
(62, 85, '_menu_item_type', 'post_type'),
(63, 85, '_menu_item_menu_item_parent', '0'),
(64, 85, '_menu_item_object_id', '2'),
(65, 85, '_menu_item_object', 'page'),
(66, 85, '_menu_item_target', ''),
(67, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 85, '_menu_item_xfn', ''),
(69, 85, '_menu_item_url', ''),
(70, 85, '_menu_item_orphaned', '1548168708'),
(71, 86, '_menu_item_type', 'custom'),
(72, 86, '_menu_item_menu_item_parent', '0'),
(73, 86, '_menu_item_object_id', '86'),
(74, 86, '_menu_item_object', 'custom'),
(75, 86, '_menu_item_target', ''),
(76, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 86, '_menu_item_xfn', ''),
(78, 86, '_menu_item_url', 'http://localhost/integration/wordpress/'),
(79, 86, '_menu_item_orphaned', '1548168765'),
(80, 87, '_menu_item_type', 'post_type'),
(81, 87, '_menu_item_menu_item_parent', '0'),
(82, 87, '_menu_item_object_id', '2'),
(83, 87, '_menu_item_object', 'page'),
(84, 87, '_menu_item_target', ''),
(85, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 87, '_menu_item_xfn', ''),
(87, 87, '_menu_item_url', ''),
(88, 87, '_menu_item_orphaned', '1548168765'),
(89, 88, '_wp_trash_meta_status', 'publish'),
(90, 88, '_wp_trash_meta_time', '1548168855'),
(92, 90, '_customize_changeset_uuid', '4bfed42b-9ad5-4a03-beba-f30145a2a21b'),
(93, 91, '_edit_lock', '1548169383:1'),
(95, 92, '_customize_changeset_uuid', '4bfed42b-9ad5-4a03-beba-f30145a2a21b'),
(97, 93, '_customize_changeset_uuid', '4bfed42b-9ad5-4a03-beba-f30145a2a21b'),
(99, 94, '_customize_changeset_uuid', '4bfed42b-9ad5-4a03-beba-f30145a2a21b'),
(100, 99, '_menu_item_type', 'post_type'),
(101, 99, '_menu_item_menu_item_parent', '0'),
(102, 99, '_menu_item_object_id', '90'),
(103, 99, '_menu_item_object', 'page'),
(104, 99, '_menu_item_target', ''),
(105, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 99, '_menu_item_xfn', ''),
(107, 99, '_menu_item_url', ''),
(108, 100, '_menu_item_type', 'post_type'),
(109, 100, '_menu_item_menu_item_parent', '0'),
(110, 100, '_menu_item_object_id', '92'),
(111, 100, '_menu_item_object', 'page'),
(112, 100, '_menu_item_target', ''),
(113, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 100, '_menu_item_xfn', ''),
(115, 100, '_menu_item_url', ''),
(116, 101, '_menu_item_type', 'post_type'),
(117, 101, '_menu_item_menu_item_parent', '0'),
(118, 101, '_menu_item_object_id', '93'),
(119, 101, '_menu_item_object', 'page'),
(120, 101, '_menu_item_target', ''),
(121, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 101, '_menu_item_xfn', ''),
(123, 101, '_menu_item_url', ''),
(124, 102, '_menu_item_type', 'post_type'),
(125, 102, '_menu_item_menu_item_parent', '0'),
(126, 102, '_menu_item_object_id', '94'),
(127, 102, '_menu_item_object', 'page'),
(128, 102, '_menu_item_target', ''),
(129, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 102, '_menu_item_xfn', ''),
(131, 102, '_menu_item_url', ''),
(132, 91, '_wp_trash_meta_status', 'publish'),
(133, 91, '_wp_trash_meta_time', '1548169395'),
(134, 103, '_edit_lock', '1548169702:1'),
(135, 104, '_wp_attached_file', '2019/01/cropped-background.jpg'),
(136, 104, '_wp_attachment_context', 'site-icon'),
(137, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:30:"2019/01/cropped-background.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-background-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:30:"cropped-background-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:30:"cropped-background-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:30:"cropped-background-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:28:"cropped-background-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(138, 103, '_customize_restore_dismissed', '1'),
(139, 105, '_edit_lock', '1548174472:1'),
(140, 105, '_customize_restore_dismissed', '1'),
(141, 106, '_wp_trash_meta_status', 'publish'),
(142, 106, '_wp_trash_meta_time', '1548170063'),
(143, 107, '_wp_trash_meta_status', 'publish'),
(144, 107, '_wp_trash_meta_time', '1548170099'),
(145, 94, '_edit_lock', '1548171455:1'),
(146, 2, '_wp_trash_meta_status', 'draft'),
(147, 2, '_wp_trash_meta_time', '1548170906'),
(148, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(149, 108, '_edit_lock', '1548172317:1'),
(150, 90, '_edit_lock', '1548171200:1'),
(151, 10, '_wp_attachment_is_custom_background', 'multiple-business'),
(152, 110, '_wp_attached_file', '2019/01/cropped-background-1.jpg'),
(153, 110, '_wp_attachment_context', 'custom-header'),
(154, 110, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:850;s:4:"file";s:32:"2019/01/cropped-background-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"cropped-background-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"cropped-background-1-300x133.jpg";s:5:"width";i:300;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"cropped-background-1-768x340.jpg";s:5:"width";i:768;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"cropped-background-1-1024x453.jpg";s:5:"width";i:1024;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";}s:27:"multiple-business-1920-1200";a:4:{s:4:"file";s:33:"cropped-background-1-1920x850.jpg";s:5:"width";i:1920;s:6:"height";i:850;s:9:"mime-type";s:10:"image/jpeg";}s:26:"multiple-business-1200-850";a:4:{s:4:"file";s:33:"cropped-background-1-1200x850.jpg";s:5:"width";i:1200;s:6:"height";i:850;s:9:"mime-type";s:10:"image/jpeg";}s:25:"multiple-business-600-675";a:4:{s:4:"file";s:32:"cropped-background-1-600x675.jpg";s:5:"width";i:600;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";}s:26:"multiple-business-1170-710";a:4:{s:4:"file";s:33:"cropped-background-1-1170x710.jpg";s:5:"width";i:1170;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:10;}'),
(155, 110, '_wp_attachment_custom_header_last_used_multiple-business', '1548171590'),
(156, 110, '_wp_attachment_is_custom_header', 'multiple-business'),
(157, 111, '_edit_lock', '1548171576:1'),
(158, 111, '_wp_trash_meta_status', 'publish'),
(159, 111, '_wp_trash_meta_time', '1548171590'),
(160, 115, '_menu_item_type', 'post_type'),
(161, 115, '_menu_item_menu_item_parent', '0'),
(162, 115, '_menu_item_object_id', '108'),
(163, 115, '_menu_item_object', 'page'),
(164, 115, '_menu_item_target', ''),
(165, 115, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(166, 115, '_menu_item_xfn', ''),
(167, 115, '_menu_item_url', ''),
(169, 116, '_menu_item_type', 'post_type'),
(170, 116, '_menu_item_menu_item_parent', '0'),
(171, 116, '_menu_item_object_id', '94'),
(172, 116, '_menu_item_object', 'page'),
(173, 116, '_menu_item_target', ''),
(174, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(175, 116, '_menu_item_xfn', ''),
(176, 116, '_menu_item_url', ''),
(178, 117, '_menu_item_type', 'post_type'),
(179, 117, '_menu_item_menu_item_parent', '0'),
(180, 117, '_menu_item_object_id', '93'),
(181, 117, '_menu_item_object', 'page'),
(182, 117, '_menu_item_target', ''),
(183, 117, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(184, 117, '_menu_item_xfn', ''),
(185, 117, '_menu_item_url', ''),
(187, 118, '_menu_item_type', 'post_type'),
(188, 118, '_menu_item_menu_item_parent', '0'),
(189, 118, '_menu_item_object_id', '92'),
(190, 118, '_menu_item_object', 'page'),
(191, 118, '_menu_item_target', ''),
(192, 118, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(193, 118, '_menu_item_xfn', ''),
(194, 118, '_menu_item_url', ''),
(196, 119, '_menu_item_type', 'post_type'),
(197, 119, '_menu_item_menu_item_parent', '0'),
(198, 119, '_menu_item_object_id', '90'),
(199, 119, '_menu_item_object', 'page'),
(200, 119, '_menu_item_target', ''),
(201, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(202, 119, '_menu_item_xfn', ''),
(203, 119, '_menu_item_url', ''),
(205, 120, '_menu_item_type', 'post_type'),
(206, 120, '_menu_item_menu_item_parent', '0'),
(207, 120, '_menu_item_object_id', '108'),
(208, 120, '_menu_item_object', 'page'),
(209, 120, '_menu_item_target', ''),
(210, 120, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(211, 120, '_menu_item_xfn', ''),
(212, 120, '_menu_item_url', ''),
(214, 92, '_edit_lock', '1548174469:1'),
(215, 124, '_wp_attached_file', '2019/01/cropped-logo.png'),
(216, 124, '_wp_attachment_context', 'custom-logo'),
(217, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:120;s:4:"file";s:24:"2019/01/cropped-logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(218, 125, '_wp_trash_meta_status', 'publish'),
(219, 125, '_wp_trash_meta_time', '1548254911');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-22 14:20:16', '2019-01-22 13:20:16', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-01-22 14:20:16', '2019-01-22 13:20:16', '', 0, 'http://localhost/integration/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-22 14:20:16', '2019-01-22 13:20:16', '<!-- wp:gallery -->\n<ul class="wp-block-gallery columns-0 is-cropped"></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/integration/wordpress/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2019-01-22 16:28:26', '2019-01-22 15:28:26', '', 0, 'http://localhost/integration/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-22 14:20:16', '2019-01-22 13:20:16', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/integration/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-01-22 14:20:16', '2019-01-22 13:20:16', '', 0, 'http://localhost/integration/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-22 14:21:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-22 14:21:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-01-22 14:52:26', '2019-01-22 13:52:26', '<!-- wp:list -->\n<ul><li>bloc</li><li>liste</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><p>JOOMLA cool douce</p><cite>3wa<br></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {"id":8,"align":"center","width":164,"height":148} -->\n<div class="wp-block-image"><figure class="aligncenter is-resized"><img src="http://localhost/integration/wordpress/wp-content/uploads/2019/01/logo.png" alt="" class="wp-image-8" width="164" height="148"/><figcaption>mindgeek</figcaption></figure></div>\n<!-- /wp:image -->', 'Test nouvel article', '', 'publish', 'open', 'open', '', 'test-nouvel-article', '', '', '2019-01-22 14:56:25', '2019-01-22 13:56:25', '', 0, 'http://localhost/integration/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2019-01-22 14:52:26', '2019-01-22 13:52:26', '<!-- wp:list -->\n<ul><li>bloc</li><li>liste</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><p>JOOMLA cool douce</p><cite>3wa<br></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Test nouvel article', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-22 14:52:26', '2019-01-22 13:52:26', '', 5, 'http://localhost/integration/wordpress/2019/01/22/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-01-22 14:55:14', '2019-01-22 13:55:14', '<!-- wp:list -->\n<ul><li>bloc</li><li>liste</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><p>JOOMLA cool douce</p><cite>3wa<br></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {"id":8,"align":"center","width":164,"height":148} -->\n<div class="wp-block-image"><figure class="aligncenter is-resized"><img src="http://localhost/integration/wordpress/wp-content/uploads/2019/01/logo.png" alt="" class="wp-image-8" width="164" height="148"/><figcaption>mindgeek</figcaption></figure></div>\n<!-- /wp:image -->', 'Test nouvel article', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2019-01-22 14:55:14', '2019-01-22 13:55:14', '', 5, 'http://localhost/integration/wordpress/2019/01/22/5-autosave-v1/', 0, 'revision', '', 0),
(8, 1, '2019-01-22 14:54:09', '2019-01-22 13:54:09', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-01-22 14:54:09', '2019-01-22 13:54:09', '', 5, 'http://localhost/integration/wordpress/wp-content/uploads/2019/01/logo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2019-01-22 14:55:25', '2019-01-22 13:55:25', '<!-- wp:list -->\n<ul><li>bloc</li><li>liste</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><p>JOOMLA cool douce</p><cite>3wa<br></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {"id":8,"align":"center","width":164,"height":148} -->\n<div class="wp-block-image"><figure class="aligncenter is-resized"><img src="http://localhost/integration/wordpress/wp-content/uploads/2019/01/logo.png" alt="" class="wp-image-8" width="164" height="148"/><figcaption>mindgeek</figcaption></figure></div>\n<!-- /wp:image -->', 'Test nouvel article', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-22 14:55:25', '2019-01-22 13:55:25', '', 5, 'http://localhost/integration/wordpress/2019/01/22/5-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-01-22 14:56:17', '2019-01-22 13:56:17', '', 'Network servers in a data center. Swallow depth of Field', 'Network servers in a data center. Swallow depth of Field', 'inherit', 'open', 'closed', '', 'network-servers-in-a-data-center-swallow-depth-of-field', '', '', '2019-01-22 14:56:17', '2019-01-22 13:56:17', '', 5, 'http://localhost/integration/wordpress/wp-content/uploads/2019/01/background.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2019-01-22 15:03:43', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:03:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-01-22 15:03:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:03:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-01-22 15:04:53', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:04:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2019-01-22 15:04:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:04:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=14', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-01-22 15:11:12', '2019-01-22 14:11:12', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/integration/wordpress/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gutenberg-wpgmza/block /-->\n\n<!-- wp:shortcode -->\n[wpgmza id="1"]\n<!-- /wp:shortcode -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-22 15:11:12', '2019-01-22 14:11:12', '', 2, 'http://localhost/integration/wordpress/2019/01/22/2-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-01-22 15:58:08', '2019-01-22 14:58:08', '<!-- wp:gallery -->\n<ul class="wp-block-gallery columns-0 is-cropped"></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/integration/wordpress/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-01-22 15:58:08', '2019-01-22 14:58:08', '', 2, 'http://localhost/integration/wordpress/2019/01/22/2-autosave-v1/', 0, 'revision', '', 0),
(84, 1, '2019-01-22 15:51:48', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:51:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2019-01-22 15:51:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:51:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2019-01-22 15:52:45', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:52:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=86', 1, 'nav_menu_item', '', 0),
(87, 1, '2019-01-22 15:52:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-22 15:52:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2019-01-22 15:54:15', '2019-01-22 14:54:15', '{\n    "quality_pro_options[upload_image_logo]": {\n        "value": "http://localhost/integration/wordpress/wp-content/uploads/2019/01/logo.png",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 14:54:15"\n    },\n    "quality_pro_options[width]": {\n        "value": "100",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 14:54:15"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '09385be7-b8e4-45e7-bcee-cb4c48b31e0b', '', '', '2019-01-22 15:54:15', '2019-01-22 14:54:15', '', 0, 'http://localhost/integration/wordpress/2019/01/22/09385be7-b8e4-45e7-bcee-cb4c48b31e0b/', 0, 'customize_changeset', '', 0),
(89, 1, '2019-01-22 15:58:14', '2019-01-22 14:58:14', '<!-- wp:gallery -->\n<ul class="wp-block-gallery columns-0 is-cropped"></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/integration/wordpress/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-22 15:58:14', '2019-01-22 14:58:14', '', 2, 'http://localhost/integration/wordpress/2019/01/22/2-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 'Serveur Mutualisé', '', 'publish', 'closed', 'closed', '', 'serveur-mutualise', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 0, 'http://localhost/integration/wordpress/?page_id=90', 0, 'page', '', 0),
(91, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '{\n    "nav_menus_created_posts": {\n        "value": [\n            90,\n            92,\n            93,\n            94\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:03:15"\n    },\n    "nav_menu[-5544678573740392000]": {\n        "value": {\n            "name": "Mindgeek",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:00:35"\n    },\n    "nav_menu_item[-4684987907887481000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:00:35"\n    },\n    "nav_menu_item[-7350054634198403000]": {\n        "value": {\n            "object_id": 90,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Serveur Mutualis\\u00e9",\n            "url": "http://localhost/integration/wordpress/?page_id=90",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Serveur Mutualis\\u00e9",\n            "nav_menu_term_id": -5544678573740392000,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:00:35"\n    },\n    "nav_menu_item[-726735356375420900]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:02:37"\n    },\n    "nav_menu_item[-1453263677785473000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:02:37"\n    },\n    "nav_menu_item[-3658537043872581600]": {\n        "value": {\n            "object_id": 92,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Serveur d\\u00e9di\\u00e9",\n            "url": "http://localhost/integration/wordpress/?page_id=92",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Serveur d\\u00e9di\\u00e9",\n            "nav_menu_term_id": -5544678573740392000,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:03:15"\n    },\n    "nav_menu_item[-905509518993395700]": {\n        "value": {\n            "object_id": 93,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "Solution CLoud",\n            "url": "http://localhost/integration/wordpress/?page_id=93",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Solution CLoud",\n            "nav_menu_term_id": -5544678573740392000,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:03:15"\n    },\n    "nav_menu_item[-3492159234420263000]": {\n        "value": {\n            "object_id": 94,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "post_type",\n            "title": "Contact",\n            "url": "http://localhost/integration/wordpress/?page_id=94",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Contact",\n            "nav_menu_term_id": -5544678573740392000,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:03:15"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4bfed42b-9ad5-4a03-beba-f30145a2a21b', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 0, 'http://localhost/integration/wordpress/?p=91', 0, 'customize_changeset', '', 0),
(92, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Serveur dédié</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>avvvrbbeb fbgn rb nb n n,n,,b fgff s rer uil  nrsxsaxrfenj ;sxdszcrgnk kloklhrvnkf eflzfkez efkj ezfrgjd ehe kgj ekjùrlezjgrg rgkjrgkrjg rgkjgo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié Game</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>drezgre</li><li>ezzbgr</li><li>ezdfbgr</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié stockage</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>zegrz</li><li>rgrg</li><li>sdghthryj</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color" href="commander">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">serveur haut de gamme</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>rzegerh</li><li>zrhe</li><li>zrh</li><li>zrh</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '', '', 'publish', 'closed', 'closed', '', 'serveur-dedie', '', '', '2019-01-22 17:14:24', '2019-01-22 16:14:24', '', 0, 'http://localhost/integration/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 'Solution CLoud', '', 'publish', 'closed', 'closed', '', 'solution-cloud', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 0, 'http://localhost/integration/wordpress/?page_id=93', 0, 'page', '', 0),
(94, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 0, 'http://localhost/integration/wordpress/?page_id=94', 0, 'page', '', 0),
(95, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 'Serveur Mutualisé', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 90, 'http://localhost/integration/wordpress/2019/01/22/90-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 'Serveur dédié', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 92, 'http://localhost/integration/wordpress/2019/01/22/92-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 'Solution CLoud', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 93, 'http://localhost/integration/wordpress/2019/01/22/93-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', 94, 'http://localhost/integration/wordpress/2019/01/22/94-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2019-01-23 16:00:08', '2019-01-23 15:00:08', '', 0, 'http://localhost/integration/wordpress/2019/01/22/99/', 1, 'nav_menu_item', '', 0),
(100, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', '', '#92 (pas de titre)', '', 'publish', 'closed', 'closed', '', '100', '', '', '2019-01-23 16:00:08', '2019-01-23 15:00:08', '', 0, 'http://localhost/integration/wordpress/2019/01/22/100/', 2, 'nav_menu_item', '', 0),
(101, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2019-01-23 16:00:08', '2019-01-23 15:00:08', '', 0, 'http://localhost/integration/wordpress/2019/01/22/101/', 3, 'nav_menu_item', '', 0),
(102, 1, '2019-01-22 16:03:15', '2019-01-22 15:03:15', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2019-01-23 16:00:08', '2019-01-23 15:00:08', '', 0, 'http://localhost/integration/wordpress/2019/01/22/102/', 4, 'nav_menu_item', '', 0),
(103, 1, '2019-01-22 16:08:15', '0000-00-00 00:00:00', '{\n    "sidebars_widgets[sidebar-primary]": {\n        "value": [\n            "search-2",\n            "recent-comments-2",\n            "archives-2",\n            "categories-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:06:48"\n    },\n    "quality_pro_options[home_blog_enabled]": {\n        "value": true,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:07:48"\n    },\n    "quality::nav_menu_locations[primary]": {\n        "value": 2,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:08:15"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '244371fb-e3ea-4001-b00b-07fa3ccde2a1', '', '', '2019-01-22 16:08:15', '2019-01-22 15:08:15', '', 0, 'http://localhost/integration/wordpress/?p=103', 0, 'customize_changeset', '', 0),
(104, 1, '2019-01-22 16:10:02', '2019-01-22 15:10:02', 'http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background.jpg', 'cropped-background.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-background-jpg', '', '', '2019-01-22 16:10:02', '2019-01-22 15:10:02', '', 0, 'http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2019-01-22 16:10:20', '0000-00-00 00:00:00', '{\n    "site_icon": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:10:20"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '28f3b92c-8e0d-4f6c-8f4d-735be84dfeed', '', '', '2019-01-22 16:10:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/integration/wordpress/?p=105', 0, 'customize_changeset', '', 0),
(106, 1, '2019-01-22 16:14:23', '2019-01-22 15:14:23', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "right-sidebar": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2",\n                "nav_menu-2"\n            ],\n            "multiple-business-footer-sidebar-1": [],\n            "multiple-business-footer-sidebar-2": [],\n            "multiple-business-footer-sidebar-3": [],\n            "multiple-business-footer-sidebar-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:14:23"\n    },\n    "content::nav_menu_locations[primary]": {\n        "value": 2,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:14:23"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18c748f1-db2a-4377-ad40-288f525ee1b4', '', '', '2019-01-22 16:14:23', '2019-01-22 15:14:23', '', 0, 'http://localhost/integration/wordpress/2019/01/22/18c748f1-db2a-4377-ad40-288f525ee1b4/', 0, 'customize_changeset', '', 0),
(107, 1, '2019-01-22 16:14:59', '2019-01-22 15:14:59', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "right-sidebar": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2",\n                "nav_menu-2"\n            ],\n            "multiple-business-footer-sidebar-1": [],\n            "multiple-business-footer-sidebar-2": [],\n            "multiple-business-footer-sidebar-3": [],\n            "multiple-business-footer-sidebar-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:14:59"\n    },\n    "multiple-business::nav_menu_locations[primary]": {\n        "value": 2,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:14:59"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c933495-1443-4bb4-8501-82c1365fe831', '', '', '2019-01-22 16:14:59', '2019-01-22 15:14:59', '', 0, 'http://localhost/integration/wordpress/2019/01/22/1c933495-1443-4bb4-8501-82c1365fe831/', 0, 'customize_changeset', '', 0),
(108, 1, '2019-01-22 16:33:21', '2019-01-22 15:33:21', '<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Nos solution en 3 ponts</h3>\n<!-- /wp:heading -->\n\n<!-- wp:columns {"columns":3,"align":"wide"} -->\n<div class="wp-block-columns alignwide has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center","className":""} -->\n<h5 style="text-align:center">Configuration</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>devgb dfbbebe bennt hgb beb fv f bbnetn henn tebfee bbbhfe netb e</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Monitoring</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>dezre ez rebgb bhne teh befbhn ebfeb tehn beb</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Sauvegarde</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>eze zrg zgrz v dvbg r vb v dfvvr brb vdf vb fbb v db v </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Choisissez votre style d\'hébergement</h3>\n<!-- /wp:heading -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5} -->\n<h5>Serveur mutualisé</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">19€ /mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ebrtbb rbvghthrtv  trtbththt r(ghr g(rh thtt thfjtybgbyn</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">39€ / mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> ghrtghtht ththtbt tht yjtrddg y ,unggj y</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Service Cloud</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">49€ / mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ttjyjtb htb hujbdfzdefe  ht yy k gf t yju i!</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'L\'hébergement à prix libre', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-22 16:53:35', '2019-01-22 15:53:35', '', 0, 'http://localhost/integration/wordpress/?page_id=108', 0, 'page', '', 0),
(109, 1, '2019-01-22 16:33:21', '2019-01-22 15:33:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-01-22 16:33:21', '2019-01-22 15:33:21', '', 108, 'http://localhost/integration/wordpress/2019/01/22/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-01-22 16:38:30', '2019-01-22 15:38:30', '', 'cropped-background-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-background-1-jpg', '', '', '2019-01-22 16:38:30', '2019-01-22 15:38:30', '', 0, 'http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-01-22 16:39:50', '2019-01-22 15:39:50', '{\n    "multiple-business::header_image": {\n        "value": "http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background-1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:38:51"\n    },\n    "multiple-business::header_image_data": {\n        "value": {\n            "url": "http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background-1.jpg",\n            "thumbnail_url": "http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-background-1.jpg",\n            "timestamp": 1548171512652,\n            "attachment_id": 110,\n            "width": 1920,\n            "height": 850\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:38:51"\n    },\n    "multiple-business::background_image": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:39:50"\n    },\n    "multiple-business::background_position_x": {\n        "value": "center",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:38:51"\n    },\n    "multiple-business::background_position_y": {\n        "value": "center",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-22 15:38:51"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4da7cbe3-2fd3-4a7c-a2d4-dc2aaa6af037', '', '', '2019-01-22 16:39:50', '2019-01-22 15:39:50', '', 0, 'http://localhost/integration/wordpress/?p=111', 0, 'customize_changeset', '', 0),
(112, 1, '2019-01-22 16:40:45', '2019-01-22 15:40:45', '', 'L\'hébergement à prix libre', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-01-22 16:40:45', '2019-01-22 15:40:45', '', 108, 'http://localhost/integration/wordpress/2019/01/22/108-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-01-22 16:53:25', '2019-01-22 15:53:25', '<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Nos solution en 3 ponts</h3>\n<!-- /wp:heading -->\n\n<!-- wp:columns {"columns":3,"align":"wide"} -->\n<div class="wp-block-columns alignwide has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center","className":""} -->\n<h5 style="text-align:center">Configuration</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>devgb dfbbebe bennt hgb beb fv f bbnetn henn tebfee bbbhfe netb e</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Monitoring</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>dezre ez rebgb bhne teh befbhn ebfeb tehn beb</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Sauvegarde</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>eze zrg zgrz v dvbg r vb v dfvvr brb vdf vb fbb v db v </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Choisissez votre style d\'hébergement</h3>\n<!-- /wp:heading -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5} -->\n<h5>Serveur mutualisé</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">19€ /mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ebrtbb rbvghthrtv  trtbththt r(ghr g(rh thtt thfjtybgbyn</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">39€ / mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> ghrtghtht ththtbt tht yjtrddg y ,unggj y</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Service Cloud</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">49€ / mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ttjyjtb htb hujbdfzdefe  ht yy k gf t yju i!</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'L\'hébergement à prix libre', '', 'inherit', 'closed', 'closed', '', '108-autosave-v1', '', '', '2019-01-22 16:53:25', '2019-01-22 15:53:25', '', 108, 'http://localhost/integration/wordpress/2019/01/22/108-autosave-v1/', 0, 'revision', '', 0),
(114, 1, '2019-01-22 16:53:35', '2019-01-22 15:53:35', '<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Nos solution en 3 ponts</h3>\n<!-- /wp:heading -->\n\n<!-- wp:columns {"columns":3,"align":"wide"} -->\n<div class="wp-block-columns alignwide has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center","className":""} -->\n<h5 style="text-align:center">Configuration</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>devgb dfbbebe bennt hgb beb fv f bbnetn henn tebfee bbbhfe netb e</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Monitoring</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>dezre ez rebgb bhne teh befbhn ebfeb tehn beb</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Sauvegarde</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>eze zrg zgrz v dvbg r vb v dfvvr brb vdf vb fbb v db v </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Choisissez votre style d\'hébergement</h3>\n<!-- /wp:heading -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5} -->\n<h5>Serveur mutualisé</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">19€ /mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ebrtbb rbvghthrtv  trtbththt r(ghr g(rh thtt thfjtybgbyn</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">39€ / mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> ghrtghtht ththtbt tht yjtrddg y ,unggj y</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Service Cloud</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":6,"align":"center"} -->\n<h6 style="text-align:center">49€ / mois</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ttjyjtb htb hujbdfzdefe  ht yy k gf t yju i!</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'L\'hébergement à prix libre', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-01-22 16:53:35', '2019-01-22 15:53:35', '', 108, 'http://localhost/integration/wordpress/2019/01/22/108-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-01-22 16:56:51', '2019-01-22 15:56:51', '', 'home', '', 'publish', 'closed', 'closed', '', 'lhebergement-a-prix-libre', '', '', '2019-01-23 15:59:49', '2019-01-23 14:59:49', '', 0, 'http://localhost/integration/wordpress/?p=115', 1, 'nav_menu_item', '', 0),
(116, 1, '2019-01-22 16:56:51', '2019-01-22 15:56:51', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2019-01-23 15:59:49', '2019-01-23 14:59:49', '', 0, 'http://localhost/integration/wordpress/?p=116', 2, 'nav_menu_item', '', 0),
(117, 1, '2019-01-22 16:56:51', '2019-01-22 15:56:51', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2019-01-23 15:59:49', '2019-01-23 14:59:49', '', 0, 'http://localhost/integration/wordpress/?p=117', 3, 'nav_menu_item', '', 0),
(118, 1, '2019-01-22 16:56:51', '2019-01-22 15:56:51', '', '#92 (pas de titre)', '', 'publish', 'closed', 'closed', '', '118', '', '', '2019-01-23 15:59:49', '2019-01-23 14:59:49', '', 0, 'http://localhost/integration/wordpress/?p=118', 4, 'nav_menu_item', '', 0),
(119, 1, '2019-01-22 16:56:51', '2019-01-22 15:56:51', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-01-23 15:59:49', '2019-01-23 14:59:49', '', 0, 'http://localhost/integration/wordpress/?p=119', 5, 'nav_menu_item', '', 0),
(120, 1, '2019-01-22 16:59:29', '2019-01-22 15:59:29', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-23 16:00:08', '2019-01-23 15:00:08', '', 0, 'http://localhost/integration/wordpress/?p=120', 5, 'nav_menu_item', '', 0),
(121, 1, '2019-01-22 17:27:42', '2019-01-22 16:27:42', '<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Serveur dédié</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>avvvrbbeb fbgn rb nb n n,n,,b fgff s rer uil  nrsxsaxrfenj ;sxdszcrgnk kloklhrvnkf eflzfkez efkj ezfrgjd ehe kgj ekjùrlezjgrg rgkjrgkrjg rgkjgo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié Game</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>drezgre</li><li>ezzbgr</li><li>ezdfbgr</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color">commander</a></div>\n<!-- /wp:button -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié stockage</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>zegrz</li><li>rgrg</li><li>sdghthryj</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color" href="commander">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">serveur haut de gamme</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>rzegerh</li><li>zrhe</li><li>zrh</li><li>zrh</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '', '', 'inherit', 'closed', 'closed', '', '92-autosave-v1', '', '', '2019-01-22 17:27:42', '2019-01-22 16:27:42', '', 92, 'http://localhost/integration/wordpress/2019/01/22/92-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(122, 1, '2019-01-22 17:11:22', '2019-01-22 16:11:22', '<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Serveur dédié</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>avvvrbbeb fbgn rb nb n n,n,,b fgff s rer uil  nrsxsaxrfenj ;sxdszcrgnk kloklhrvnkf eflzfkez efkj ezfrgjd ehe kgj ekjùrlezjgrg rgkjrgkrjg rgkjgo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié Game</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>drezgre</li><li>ezzbgr</li><li>ezdfbgr</li><li></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié stockage</h5>\n<!-- /wp:heading -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color" href="commander">commander</a></div>\n<!-- /wp:button -->\n\n<!-- wp:list -->\n<ul><li>zegrz</li><li>rgrg</li><li>sdghthryj</li><li></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">serveur haut de gamme</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>rzegerh</li><li>zrhe</li><li>zrh</li><li>zrh</li><li></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-01-22 17:11:22', '2019-01-22 16:11:22', '', 92, 'http://localhost/integration/wordpress/2019/01/22/92-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2019-01-22 17:14:24', '2019-01-22 16:14:24', '<!-- wp:heading {"level":3,"align":"center"} -->\n<h3 style="text-align:center">Serveur dédié</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>avvvrbbeb fbgn rb nb n n,n,,b fgff s rer uil  nrsxsaxrfenj ;sxdszcrgnk kloklhrvnkf eflzfkez efkj ezfrgjd ehe kgj ekjùrlezjgrg rgkjrgkrjg rgkjgo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié Game</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>drezgre</li><li>ezzbgr</li><li>ezdfbgr</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">Serveur dédié stockage</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>zegrz</li><li>rgrg</li><li>sdghthryj</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color" href="commander">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:heading {"level":5,"align":"center"} -->\n<h5 style="text-align:center">serveur haut de gamme</h5>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>rzegerh</li><li>zrhe</li><li>zrh</li><li>zrh</li><li></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:button {"backgroundColor":"pink"} -->\n<div class="wp-block-button"><a class="wp-block-button__link has-background has-pink-background-color">commander</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-01-22 17:14:24', '2019-01-22 16:14:24', '', 92, 'http://localhost/integration/wordpress/2019/01/22/92-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-01-23 15:48:26', '2019-01-23 14:48:26', 'http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2019-01-23 15:48:26', '2019-01-23 14:48:26', '', 0, 'http://localhost/integration/wordpress/wp-content/uploads/2019/01/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2019-01-23 15:48:31', '2019-01-23 14:48:31', '{\n    "mindgeek/mindgeek-base::custom_logo": {\n        "value": 124,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-23 14:48:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a9a79774-dd45-4447-8541-b49de4626f0a', '', '', '2019-01-23 15:48:31', '2019-01-23 14:48:31', '', 0, 'http://localhost/integration/wordpress/2019/01/23/a9a79774-dd45-4447-8541-b49de4626f0a/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'haut de page', 'haut-de-page', 0),
(3, 'pied de page', 'pied-de-page', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(99, 2, 0),
(100, 2, 0),
(101, 2, 0),
(102, 2, 0),
(115, 3, 0),
(116, 3, 0),
(117, 3, 0),
(118, 3, 0),
(119, 3, 0),
(120, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"2a6774ebbd06be729f30ef46705e297c723255d08a0a2cd83c678139a4b45689";a:4:{s:10:"expiration";i:1548336070;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36";s:5:"login";i:1548163270;}s:64:"438b02574089d426676de41e06faeb5b4a690c734e2196d14e22e234519735d6";a:4:{s:10:"expiration";i:1548409327;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36";s:5:"login";i:1548236527;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 2, 'nickname', 'client'),
(19, 2, 'first_name', 'client'),
(20, 2, 'last_name', 'client'),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(30, 2, 'wp_user_level', '7'),
(31, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(32, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(33, 1, 'wp_user-settings-time', '1548166004'),
(34, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(35, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(36, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BmdSe5FxfVKj0iNit6R1wZGfy7o0CW0', 'admin', 'admin@mindgeek.com', '', '2019-01-22 13:20:16', '', 0, 'admin'),
(2, 'client', '$P$B6HeKi71bZc6C/sFjD0cYBu1mhMBhz0', 'client', 'client@mindgeek.com', 'http://mindgeek', '2019-01-22 13:41:33', '1548164493:$P$BxwkKaHixjs/1Aa./cmGwGmGn6IWXu/', 0, 'client client');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0J`s�cB@�`�g��]�');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.950464398418106', '-109.81550500000003', '45.950464398418106,-109.81550500000003', 2, '0', 1, 0, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '%', 'px', 1, 0, 1, 2, 0, '', 'a:2:{s:19:"store_locator_style";s:6:"modern";s:33:"wpgmza_store_locator_radius_style";s:6:"modern";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
