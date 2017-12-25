-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 25 2017 г., 21:51
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ebrf`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-15 10:32:35', '2017-12-15 07:32:35', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-15 10:32:38', '2017-12-15 07:32:38', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(3, 18, 'admin', 'test@test.ru', '', '127.0.0.1', '2017-12-20 15:52:42', '2017-12-20 12:52:42', 'test comment1', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, 1),
(4, 18, 'admin', 'test@test.ru', '', '127.0.0.1', '2017-12-20 15:53:39', '2017-12-20 12:53:39', 'test comment answer 1', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 3, 1),
(5, 18, 'Тест', '', '', '127.0.0.1', '2017-12-20 16:54:31', '2017-12-20 13:54:31', 'Тест комментарий', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, 0),
(6, 18, 'admin', 'test@test.ru', '', '127.0.0.1', '2017-12-21 09:00:32', '2017-12-21 06:00:32', 'sddffd', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, 1),
(7, 18, 'Test 2', '', '', '127.0.0.1', '2017-12-21 09:20:12', '2017-12-21 06:20:12', 'Test TEst test', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, 0),
(8, 18, 'TEst 3', '', '', '127.0.0.1', '2017-12-21 09:43:59', '2017-12-21 06:43:59', 'Test te3st tesdtastd', 0, '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, 0),
(9, 15, 'admin', 'test@test.ru', '', '127.0.0.1', '2017-12-21 09:48:32', '2017-12-21 06:48:32', 'TEst', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 0, 1),
(10, 18, 'admin', 'test@test.ru', '', '127.0.0.1', '2017-12-21 10:22:46', '2017-12-21 07:22:46', 'weeeeeeeeeee answer', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 8, 1),
(11, 18, 'Тестовик', '', '', '127.0.0.1', '2017-12-21 11:02:42', '2017-12-21 08:02:42', 'Нормальный ответ', 0, '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 5, 0),
(12, 18, 'Next', '', '', '127.0.0.1', '2017-12-21 11:58:16', '2017-12-21 08:58:16', 'Answer 2', 0, '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 8, 0),
(13, 18, 'Next 2', '', '', '127.0.0.1', '2017-12-21 11:58:54', '2017-12-21 08:58:54', 'Answer Answer', 0, '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '', 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ebrf.ru', 'yes'),
(2, 'home', 'http://ebrf.ru', 'yes'),
(3, 'blogname', 'ebrf', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@test.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
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
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:185:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"company/?$\";s:27:\"index.php?post_type=company\";s:40:\"company/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=company&feed=$matches[1]\";s:35:\"company/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=company&feed=$matches[1]\";s:27:\"company/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=company&paged=$matches[1]\";s:9:\"review/?$\";s:26:\"index.php?post_type=review\";s:39:\"review/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=review&feed=$matches[1]\";s:34:\"review/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=review&feed=$matches[1]\";s:26:\"review/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=review&paged=$matches[1]\";s:42:\"wp-types-group/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"wp-types-group/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"wp-types-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"wp-types-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"wp-types-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"wp-types-group/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"wp-types-group/([^/]+)/embed/?$\";s:47:\"index.php?wp-types-group=$matches[1]&embed=true\";s:35:\"wp-types-group/([^/]+)/trackback/?$\";s:41:\"index.php?wp-types-group=$matches[1]&tb=1\";s:43:\"wp-types-group/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?wp-types-group=$matches[1]&paged=$matches[2]\";s:50:\"wp-types-group/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?wp-types-group=$matches[1]&cpage=$matches[2]\";s:39:\"wp-types-group/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?wp-types-group=$matches[1]&page=$matches[2]\";s:31:\"wp-types-group/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"wp-types-group/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"wp-types-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"wp-types-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"wp-types-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"wp-types-group/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"wp-types-user-group/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"wp-types-user-group/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"wp-types-user-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"wp-types-user-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"wp-types-user-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"wp-types-user-group/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"wp-types-user-group/([^/]+)/embed/?$\";s:52:\"index.php?wp-types-user-group=$matches[1]&embed=true\";s:40:\"wp-types-user-group/([^/]+)/trackback/?$\";s:46:\"index.php?wp-types-user-group=$matches[1]&tb=1\";s:48:\"wp-types-user-group/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?wp-types-user-group=$matches[1]&paged=$matches[2]\";s:55:\"wp-types-user-group/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?wp-types-user-group=$matches[1]&cpage=$matches[2]\";s:44:\"wp-types-user-group/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?wp-types-user-group=$matches[1]&page=$matches[2]\";s:36:\"wp-types-user-group/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"wp-types-user-group/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"wp-types-user-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wp-types-user-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wp-types-user-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"wp-types-user-group/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"wp-types-term-group/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"wp-types-term-group/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"wp-types-term-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"wp-types-term-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"wp-types-term-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"wp-types-term-group/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"wp-types-term-group/([^/]+)/embed/?$\";s:52:\"index.php?wp-types-term-group=$matches[1]&embed=true\";s:40:\"wp-types-term-group/([^/]+)/trackback/?$\";s:46:\"index.php?wp-types-term-group=$matches[1]&tb=1\";s:48:\"wp-types-term-group/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?wp-types-term-group=$matches[1]&paged=$matches[2]\";s:55:\"wp-types-term-group/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?wp-types-term-group=$matches[1]&cpage=$matches[2]\";s:44:\"wp-types-term-group/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?wp-types-term-group=$matches[1]&page=$matches[2]\";s:36:\"wp-types-term-group/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"wp-types-term-group/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"wp-types-term-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wp-types-term-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wp-types-term-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"wp-types-term-group/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"company/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"company/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"company/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"company/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"company/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"company/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"company/([^/]+)/embed/?$\";s:40:\"index.php?company=$matches[1]&embed=true\";s:28:\"company/([^/]+)/trackback/?$\";s:34:\"index.php?company=$matches[1]&tb=1\";s:48:\"company/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?company=$matches[1]&feed=$matches[2]\";s:43:\"company/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?company=$matches[1]&feed=$matches[2]\";s:36:\"company/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?company=$matches[1]&paged=$matches[2]\";s:43:\"company/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?company=$matches[1]&cpage=$matches[2]\";s:32:\"company/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?company=$matches[1]&page=$matches[2]\";s:24:\"company/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"company/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"company/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"company/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"company/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"company/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"review/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"review/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"review/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"review/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"review/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"review/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"review/([^/]+)/embed/?$\";s:39:\"index.php?review=$matches[1]&embed=true\";s:27:\"review/([^/]+)/trackback/?$\";s:33:\"index.php?review=$matches[1]&tb=1\";s:47:\"review/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?review=$matches[1]&feed=$matches[2]\";s:42:\"review/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?review=$matches[1]&feed=$matches[2]\";s:35:\"review/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?review=$matches[1]&paged=$matches[2]\";s:42:\"review/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?review=$matches[1]&cpage=$matches[2]\";s:31:\"review/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?review=$matches[1]&page=$matches[2]\";s:23:\"review/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"review/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"review/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"review/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"review/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"review/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:22:\"cyr3lat/cyr-to-lat.php\";i:4;s:33:\"duplicate-post/duplicate-post.php\";i:5;s:58:\"recaptcha-in-wp-comments-form/recaptcha-in-wp-comments.php\";i:6;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:7;s:14:\"types/wpcf.php\";i:8;s:33:\"wp-postratings/wp-postratings.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ebrf', 'yes'),
(41, 'stylesheet', 'ebrf', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(183, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:75:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:14:\"manage_ratings\";b:1;s:26:\"wpcf_custom_post_type_view\";b:1;s:26:\"wpcf_custom_post_type_edit\";b:1;s:33:\"wpcf_custom_post_type_edit_others\";b:1;s:25:\"wpcf_custom_taxonomy_view\";b:1;s:25:\"wpcf_custom_taxonomy_edit\";b:1;s:32:\"wpcf_custom_taxonomy_edit_others\";b:1;s:22:\"wpcf_custom_field_view\";b:1;s:22:\"wpcf_custom_field_edit\";b:1;s:29:\"wpcf_custom_field_edit_others\";b:1;s:25:\"wpcf_user_meta_field_view\";b:1;s:25:\"wpcf_user_meta_field_edit\";b:1;s:32:\"wpcf_user_meta_field_edit_others\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(185, 'fresh_site', '0', 'yes'),
(186, 'WPLANG', 'ru_RU', 'yes'),
(187, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(188, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";}s:18:\"postin-widget-area\";a:0:{}s:16:\"blog-widget-area\";a:0:{}s:17:\"order-widget-area\";a:0:{}s:16:\"calc-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(193, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'cron', 'a:4:{i:1514230356;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1514273576;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1514311215;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(203, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1513524591;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(215, 'can_compress_scripts', '1', 'no'),
(248, 'current_theme', '', 'yes'),
(249, 'theme_mods_ebrf', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(250, 'theme_switched', '', 'yes'),
(253, 'recently_activated', 'a:0:{}', 'yes'),
(256, 'acf_version', '4.4.12', 'yes'),
(262, 'tadv_settings', 'a:6:{s:7:\"options\";s:15:\"menubar,advlist\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";}', 'yes'),
(263, 'tadv_admin_settings', 'a:1:{s:7:\"options\";a:0:{}}', 'yes'),
(264, 'tadv_version', '4000', 'yes'),
(273, '_site_transient_timeout_browser_0adebb9cffd681f27bdbb5bee09697fe', '1514366038', 'no'),
(274, '_site_transient_browser_0adebb9cffd681f27bdbb5bee09697fe', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"59.0.3071.115\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(310, 'duplicate_post_copytitle', '1', 'yes'),
(311, 'duplicate_post_copydate', '0', 'yes'),
(312, 'duplicate_post_copystatus', '0', 'yes'),
(313, 'duplicate_post_copyslug', '1', 'yes'),
(314, 'duplicate_post_copyexcerpt', '1', 'yes'),
(315, 'duplicate_post_copycontent', '1', 'yes'),
(316, 'duplicate_post_copythumbnail', '1', 'yes'),
(317, 'duplicate_post_copytemplate', '1', 'yes'),
(318, 'duplicate_post_copyformat', '1', 'yes'),
(319, 'duplicate_post_copyauthor', '0', 'yes'),
(320, 'duplicate_post_copypassword', '0', 'yes'),
(321, 'duplicate_post_copyattachments', '0', 'yes'),
(322, 'duplicate_post_copychildren', '0', 'yes'),
(323, 'duplicate_post_copycomments', '0', 'yes'),
(324, 'duplicate_post_copymenuorder', '1', 'yes'),
(325, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(326, 'duplicate_post_blacklist', '', 'yes'),
(327, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(328, 'duplicate_post_show_row', '1', 'yes'),
(329, 'duplicate_post_show_adminbar', '1', 'yes'),
(330, 'duplicate_post_show_submitbox', '1', 'yes'),
(331, 'duplicate_post_show_bulkactions', '1', 'yes'),
(332, 'duplicate_post_version', '3.2.1', 'yes'),
(333, 'duplicate_post_show_notice', '0', 'no'),
(336, 'postratings_image', 'stars', 'yes'),
(337, 'postratings_max', '5', 'yes'),
(338, 'postratings_template_vote', '%RATINGS_IMAGES_VOTE% <span class=\"rev-link\">%RATINGS_USERS% отзывов</span><span class=\"rating-number\"> (%RATINGS_AVERAGE% из %RATINGS_MAX%)</span>', 'yes'),
(339, 'postratings_template_text', '%RATINGS_IMAGES% <span class=\"rev-link\">%RATINGS_USERS% отзывов</span><span class=\"rating-number\"> (%RATINGS_AVERAGE% из %RATINGS_MAX%)</span>', 'yes'),
(340, 'postratings_template_none', '%RATINGS_IMAGES_VOTE% (Проголосуйте первым)<br />%RATINGS_TEXT%', 'yes'),
(341, 'postratings_logging_method', '3', 'yes'),
(342, 'postratings_allowtorate', '2', 'yes'),
(343, 'postratings_ratingstext', 'a:5:{i:0;s:6:\"1 Star\";i:1;s:7:\"2 Stars\";i:2;s:7:\"3 Stars\";i:3;s:7:\"4 Stars\";i:4;s:7:\"5 Stars\";}', 'yes'),
(344, 'postratings_template_highestrated', '<li><a href=\"%POST_URL%\" title=\"%POST_TITLE%\">%POST_TITLE%</a> %RATINGS_IMAGES% (%RATINGS_AVERAGE% out of %RATINGS_MAX%)</li>', 'yes'),
(345, 'postratings_ajax_style', 'a:2:{s:7:\"loading\";i:1;s:6:\"fading\";i:1;}', 'yes'),
(346, 'postratings_ratingsvalue', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}', 'yes'),
(347, 'postratings_customrating', '0', 'yes'),
(348, 'postratings_template_permission', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%</em>)<br /><em>You need to be a registered member to rate this.</em>', 'yes'),
(349, 'postratings_template_mostrated', '<li><a href=\"%POST_URL%\" title=\"%POST_TITLE%\">%POST_TITLE%</a> - %RATINGS_USERS% votes</li>', 'yes'),
(350, 'widget_ratings-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(386, 'new_admin_email', 'test@test.ru', 'yes'),
(405, 'cool-griwpc-ver', '9.0.3', 'yes'),
(406, 'griwpc-params', 'a:15:{s:6:\"active\";s:1:\"0\";s:8:\"site_key\";s:40:\"6Lc4OysUAAAAAHfCfYAcNwjH5iLvObqffg5TKsOE\";s:10:\"secret_key\";s:40:\"6Lc4OysUAAAAAHBpMBV1V98hXsZOaUWJIiLcXlGN\";s:15:\"recaptcha_theme\";s:5:\"light\";s:14:\"recaptcha_size\";s:6:\"normal\";s:14:\"recaptcha_type\";s:5:\"image\";s:14:\"recaptcha_lang\";s:2:\"-1\";s:14:\"recaptcha_mode\";s:4:\"spam\";s:15:\"recaptcha_align\";s:4:\"left\";s:6:\"formID\";s:11:\"commentform\";s:8:\"buttonID\";s:6:\"submit\";s:13:\"recaptcha_tag\";s:1:\"p\";s:13:\"recaptcha_css\";s:54:\".google-recaptcha-container{display:block;clear:both;}\";s:24:\"old_themes_compatibility\";s:1:\"0\";s:15:\"allowCreditMode\";s:1:\"0\";}', 'yes'),
(415, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1513864996;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(416, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1514199023;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(418, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1514199031;s:7:\"checked\";a:4:{s:4:\"ebrf\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(430, 'WPCF_VERSION', '2.2.21', 'no'),
(431, 'wpcf-version', '2.2.21', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(432, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(433, 'toolset_is_m2m_enabled', 'no', 'yes'),
(434, 'toolset_database_version', '258001', 'yes'),
(435, 'toolset_executed_upgrade_commands', 'a:1:{i:0;s:57:\"Toolset_Upgrade_Command_M2M_V1_Database_Structure_Upgrade\";}', 'no'),
(436, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(437, 'wpcf_users_options', '1', 'yes'),
(438, 'wpcf-custom-taxonomies', 'a:2:{s:8:\"category\";a:25:{s:4:\"name\";s:8:\"category\";s:5:\"label\";s:14:\"Рубрики\";s:6:\"labels\";a:23:{s:4:\"name\";s:14:\"Рубрики\";s:13:\"singular_name\";s:14:\"Рубрика\";s:12:\"search_items\";s:23:\"Поиск рубрик\";s:13:\"popular_items\";N;s:9:\"all_items\";s:21:\"Все рубрики\";s:11:\"parent_item\";s:39:\"Родительская рубрика\";s:17:\"parent_item_colon\";s:40:\"Родительская рубрика:\";s:9:\"edit_item\";s:31:\"Изменить рубрику\";s:9:\"view_item\";s:37:\"Просмотреть рубрику\";s:11:\"update_item\";s:31:\"Обновить рубрику\";s:12:\"add_new_item\";s:42:\"Добавить новую рубрику\";s:13:\"new_item_name\";s:42:\"Название новой рубрики\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:33:\"Рубрик не найдено.\";s:8:\"no_terms\";s:19:\"Рубрик нет\";s:21:\"items_list_navigation\";s:49:\"Навигация по списку рубрик\";s:10:\"items_list\";s:25:\"Список рубрик\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:37:\"&larr; Назад к рубрикам\";s:9:\"menu_name\";s:14:\"Рубрики\";s:14:\"name_admin_bar\";s:8:\"category\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:15:\"edit_categories\";s:12:\"delete_terms\";s:17:\"delete_categories\";s:12:\"assign_terms\";s:17:\"assign_categories\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:512;s:4:\"slug\";s:8:\"category\";}s:9:\"query_var\";s:13:\"category_name\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:10:\"categories\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;s:4:\"slug\";s:8:\"category\";s:8:\"supports\";a:1:{s:4:\"post\";i:1;}}s:8:\"post_tag\";a:25:{s:4:\"name\";s:8:\"post_tag\";s:5:\"label\";s:10:\"Метки\";s:6:\"labels\";a:23:{s:4:\"name\";s:10:\"Метки\";s:13:\"singular_name\";s:10:\"Метка\";s:12:\"search_items\";s:21:\"Поиск меток\";s:13:\"popular_items\";s:31:\"Популярные метки\";s:9:\"all_items\";s:17:\"Все метки\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:27:\"Изменить метку\";s:9:\"view_item\";s:33:\"Просмотреть метку\";s:11:\"update_item\";s:27:\"Обновить метку\";s:12:\"add_new_item\";s:38:\"Добавить новую метку\";s:13:\"new_item_name\";s:38:\"Название новой метки\";s:26:\"separate_items_with_commas\";s:50:\"Метки разделяются запятыми\";s:19:\"add_or_remove_items\";s:49:\"Добавить или удалить метки\";s:21:\"choose_from_most_used\";s:66:\"Выбрать из часто используемых меток\";s:9:\"not_found\";s:31:\"Меток не найдено.\";s:8:\"no_terms\";s:17:\"Меток нет\";s:21:\"items_list_navigation\";s:47:\"Навигация по списку меток\";s:10:\"items_list\";s:23:\"Список меток\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:33:\"&larr; Назад к меткам\";s:9:\"menu_name\";s:10:\"Метки\";s:14:\"name_admin_bar\";s:8:\"post_tag\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";a:4:{s:12:\"manage_terms\";s:16:\"manage_post_tags\";s:10:\"edit_terms\";s:14:\"edit_post_tags\";s:12:\"delete_terms\";s:16:\"delete_post_tags\";s:12:\"assign_terms\";s:16:\"assign_post_tags\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:1024;s:4:\"slug\";s:3:\"tag\";}s:9:\"query_var\";s:3:\"tag\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:4:\"tags\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;s:4:\"slug\";s:8:\"post_tag\";s:8:\"supports\";a:2:{s:4:\"post\";i:1;s:7:\"company\";i:1;}}}', 'yes'),
(462, 'category_children', 'a:0:{}', 'yes'),
(466, 'wpcf-custom-types', 'a:2:{s:7:\"company\";a:26:{s:8:\"_builtin\";b:0;s:18:\"_toolset_edit_last\";i:1514200582;s:15:\"_wpcf_author_id\";i:1;s:14:\"wpcf-post-type\";s:7:\"company\";s:4:\"icon\";s:5:\"money\";s:6:\"labels\";a:13:{s:4:\"name\";s:16:\"Компании\";s:13:\"singular_name\";s:16:\"Компания\";s:7:\"add_new\";s:27:\"Добавить новый\";s:12:\"add_new_item\";s:30:\"Добавить новый %s\";s:9:\"edit_item\";s:29:\"Редактировать %s\";s:8:\"new_item\";s:13:\"Новый %s\";s:9:\"view_item\";s:7:\"View %s\";s:12:\"search_items\";s:15:\"Искать %s\";s:9:\"not_found\";s:39:\"Не найдено никакого %s\";s:18:\"not_found_in_trash\";s:40:\"%s в Корзине не найдено\";s:17:\"parent_item_colon\";s:54:\"Текст родительского элемента\";s:9:\"all_items\";s:21:\"Все позиции\";s:16:\"enter_title_here\";s:44:\"Введите заголовок здесь\";}s:4:\"slug\";s:7:\"company\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:6:\"public\";s:13:\"menu_position\";s:0:\"\";s:10:\"taxonomies\";a:1:{s:8:\"post_tag\";s:1:\"1\";}s:8:\"supports\";a:4:{s:5:\"title\";s:1:\"1\";s:6:\"editor\";s:1:\"1\";s:7:\"excerpt\";s:1:\"1\";s:9:\"thumbnail\";s:1:\"1\";}s:7:\"rewrite\";a:6:{s:7:\"enabled\";s:1:\"1\";s:6:\"custom\";s:6:\"normal\";s:4:\"slug\";s:0:\"\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"1\";s:5:\"pages\";s:1:\"1\";}s:11:\"has_archive\";s:1:\"1\";s:16:\"has_archive_slug\";s:0:\"\";s:12:\"show_in_menu\";s:1:\"1\";s:17:\"show_in_menu_page\";s:0:\"\";s:7:\"show_ui\";s:1:\"1\";s:18:\"publicly_queryable\";s:1:\"1\";s:10:\"can_export\";s:1:\"1\";s:17:\"show_in_nav_menus\";s:1:\"1\";s:17:\"query_var_enabled\";s:1:\"1\";s:9:\"query_var\";s:0:\"\";s:16:\"permalink_epmask\";s:12:\"EP_PERMALINK\";s:9:\"rest_base\";s:0:\"\";s:17:\"post_relationship\";a:1:{s:3:\"has\";a:1:{s:6:\"review\";s:1:\"1\";}}}s:6:\"review\";a:24:{s:8:\"_builtin\";b:0;s:18:\"_toolset_edit_last\";i:1514204491;s:15:\"_wpcf_author_id\";i:1;s:14:\"wpcf-post-type\";s:6:\"review\";s:4:\"icon\";s:11:\"testimonial\";s:6:\"labels\";a:13:{s:4:\"name\";s:12:\"Отзывы\";s:13:\"singular_name\";s:10:\"Отзыв\";s:7:\"add_new\";s:27:\"Добавить новый\";s:12:\"add_new_item\";s:30:\"Добавить новый %s\";s:9:\"edit_item\";s:29:\"Редактировать %s\";s:8:\"new_item\";s:13:\"Новый %s\";s:9:\"view_item\";s:7:\"View %s\";s:12:\"search_items\";s:15:\"Искать %s\";s:9:\"not_found\";s:39:\"Не найдено никакого %s\";s:18:\"not_found_in_trash\";s:40:\"%s в Корзине не найдено\";s:17:\"parent_item_colon\";s:54:\"Текст родительского элемента\";s:9:\"all_items\";s:21:\"Все позиции\";s:16:\"enter_title_here\";s:44:\"Введите заголовок здесь\";}s:4:\"slug\";s:6:\"review\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:6:\"public\";s:13:\"menu_position\";s:0:\"\";s:8:\"supports\";a:2:{s:5:\"title\";s:1:\"1\";s:6:\"editor\";s:1:\"1\";}s:7:\"rewrite\";a:6:{s:7:\"enabled\";s:1:\"1\";s:6:\"custom\";s:6:\"normal\";s:4:\"slug\";s:0:\"\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"1\";s:5:\"pages\";s:1:\"1\";}s:11:\"has_archive\";s:1:\"1\";s:16:\"has_archive_slug\";s:0:\"\";s:12:\"show_in_menu\";s:1:\"1\";s:17:\"show_in_menu_page\";s:0:\"\";s:7:\"show_ui\";s:1:\"1\";s:18:\"publicly_queryable\";s:1:\"1\";s:10:\"can_export\";s:1:\"1\";s:17:\"show_in_nav_menus\";s:1:\"1\";s:17:\"query_var_enabled\";s:1:\"1\";s:9:\"query_var\";s:0:\"\";s:16:\"permalink_epmask\";s:12:\"EP_PERMALINK\";s:9:\"rest_base\";s:0:\"\";}}', 'yes'),
(467, 'wpcf_post_relationship', 'a:1:{s:7:\"company\";a:0:{}}', 'yes'),
(472, 'installer_repositories_with_theme', 'a:1:{i:0;s:7:\"toolset\";}', 'yes'),
(480, '_site_transient_timeout_browser_6dbd77df9623eed70aa1d4472b962c47', '1514741497', 'no'),
(481, '_site_transient_browser_6dbd77df9623eed70aa1d4472b962c47', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"63.0.3239.84\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(494, '_transient_timeout_plugin_slugs', '1514223119', 'no'),
(495, '_transient_plugin_slugs', 'a:11:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:29:\"acf-repeater/acf-repeater.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:22:\"cyr3lat/cyr-to-lat.php\";i:5;s:33:\"duplicate-post/duplicate-post.php\";i:6;s:9:\"hello.php\";i:7;s:58:\"recaptcha-in-wp-comments-form/recaptcha-in-wp-comments.php\";i:8;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:9;s:14:\"types/wpcf.php\";i:10;s:33:\"wp-postratings/wp-postratings.php\";}', 'no'),
(504, '_site_transient_timeout_theme_roots', '1514200824', 'no'),
(505, '_site_transient_theme_roots', 'a:4:{s:4:\"ebrf\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(506, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1514199028;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr3lat\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:7:\"default\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";s:7:\"default\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:58:\"recaptcha-in-wp-comments-form/recaptcha-in-wp-comments.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/recaptcha-in-wp-comments-form\";s:4:\"slug\";s:29:\"recaptcha-in-wp-comments-form\";s:6:\"plugin\";s:58:\"recaptcha-in-wp-comments-form/recaptcha-in-wp-comments.php\";s:11:\"new_version\";s:5:\"9.0.3\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/recaptcha-in-wp-comments-form/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/recaptcha-in-wp-comments-form.9.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:82:\"https://ps.w.org/recaptcha-in-wp-comments-form/assets/icon-128x128.png?rev=1445586\";s:2:\"2x\";s:82:\"https://ps.w.org/recaptcha-in-wp-comments-form/assets/icon-256x256.png?rev=1445586\";s:7:\"default\";s:82:\"https://ps.w.org/recaptcha-in-wp-comments-form/assets/icon-256x256.png?rev=1445586\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:85:\"https://ps.w.org/recaptcha-in-wp-comments-form/assets/banner-1544x500.png?rev=1445586\";s:2:\"1x\";s:84:\"https://ps.w.org/recaptcha-in-wp-comments-form/assets/banner-772x250.png?rev=1445586\";s:7:\"default\";s:85:\"https://ps.w.org/recaptcha-in-wp-comments-form/assets/banner-1544x500.png?rev=1445586\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.6.7\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:7:\"default\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";s:7:\"default\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";}s:11:\"banners_rtl\";a:0:{}}s:14:\"types/wpcf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:19:\"w.org/plugins/types\";s:4:\"slug\";s:5:\"types\";s:6:\"plugin\";s:14:\"types/wpcf.php\";s:11:\"new_version\";s:6:\"2.2.21\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/types/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/types.2.2.21.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:58:\"https://ps.w.org/types/assets/icon-128x128.png?rev=1625832\";s:2:\"2x\";s:58:\"https://ps.w.org/types/assets/icon-256x256.png?rev=1625832\";s:3:\"svg\";s:50:\"https://ps.w.org/types/assets/icon.svg?rev=1009056\";s:7:\"default\";s:50:\"https://ps.w.org/types/assets/icon.svg?rev=1009056\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/types/assets/banner-1544x500.png?rev=1681816\";s:2:\"1x\";s:60:\"https://ps.w.org/types/assets/banner-772x250.png?rev=1681816\";s:7:\"default\";s:61:\"https://ps.w.org/types/assets/banner-1544x500.png?rev=1681816\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-postratings/wp-postratings.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-postratings\";s:4:\"slug\";s:14:\"wp-postratings\";s:6:\"plugin\";s:33:\"wp-postratings/wp-postratings.php\";s:11:\"new_version\";s:4:\"1.85\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-postratings/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-postratings.1.85.zip\";s:5:\"icons\";a:2:{s:3:\"svg\";s:58:\"https://ps.w.org/wp-postratings/assets/icon.svg?rev=978014\";s:7:\"default\";s:58:\"https://ps.w.org/wp-postratings/assets/icon.svg?rev=978014\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-postratings/assets/banner-1544x500.jpg?rev=1206761\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-postratings/assets/banner-772x250.jpg?rev=1206761\";s:7:\"default\";s:70:\"https://ps.w.org/wp-postratings/assets/banner-1544x500.jpg?rev=1206761\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_page_template', 'default'),
(3, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(4, 3, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1513538186:1'),
(7, 8, '_edit_last', '1'),
(8, 8, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(9, 8, 'position', 'normal'),
(10, 8, 'layout', 'no_box'),
(11, 8, 'hide_on_screen', ''),
(12, 8, '_edit_lock', '1513936096:1'),
(13, 11, '_edit_last', '1'),
(14, 11, '_edit_lock', '1513761738:1'),
(27, 15, '_edit_last', '1'),
(28, 15, '_edit_lock', '1513922877:1'),
(30, 17, '_wp_attached_file', '2017/12/1-1.jpg'),
(31, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:15:\"2017/12/1-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(32, 15, '_thumbnail_id', '17'),
(34, 17, '_wp_attachment_image_alt', 'postattr'),
(36, 15, 'ratings_users', '1'),
(37, 15, 'ratings_score', '5'),
(38, 15, 'ratings_average', '5'),
(39, 18, '_thumbnail_id', '17'),
(40, 18, 'ratings_users', '2'),
(41, 18, 'ratings_score', '9'),
(42, 18, 'ratings_average', '4.5'),
(43, 18, '_dp_original', '15'),
(44, 18, '_edit_lock', '1514208502:1'),
(45, 18, '_edit_last', '1'),
(47, 18, '_wp_old_slug', 'zajmy-onlajn-i-drugie-sposoby-resheniya-problem-s-dengami-za-rubezhom'),
(48, 3, '_edit_lock', '1513773639:1'),
(49, 1, 'ratings_users', '1'),
(50, 1, 'ratings_score', '5'),
(51, 1, 'ratings_average', '5'),
(52, 21, '_edit_last', '1'),
(54, 21, 'ratings_users', '1'),
(55, 21, 'ratings_score', '2'),
(56, 21, 'ratings_average', '2'),
(57, 21, '_edit_lock', '1513773931:1'),
(58, 21, '_wp_trash_meta_status', 'publish'),
(59, 21, '_wp_trash_meta_time', '1513774086'),
(60, 21, '_wp_desired_post_slug', 'fdsafd'),
(61, 1, '_edit_lock', '1513922972:1'),
(73, 27, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(74, 27, '_mail', 'a:8:{s:7:\"subject\";s:21:\"ebrf \"[your-subject]\"\";s:6:\"sender\";s:31:\"[your-name] <wordpress@ebrf.ru>\";s:4:\"body\";s:157:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ebrf (http://ebrf.ru)\";s:9:\"recipient\";s:12:\"test@test.ru\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(75, 27, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"ebrf \"[your-subject]\"\";s:6:\"sender\";s:24:\"ebrf <wordpress@ebrf.ru>\";s:4:\"body\";s:99:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ebrf (http://ebrf.ru)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:22:\"Reply-To: test@test.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(76, 27, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(77, 27, '_additional_settings', NULL),
(78, 27, '_locale', 'ru_RU'),
(79, 28, '_form', '<div class=\"double-form\"><div class=\"double-form__item\">[text text-35 placeholder \"Имя\"][tel tel-153 placeholder \"Телефон\"][email* email-42 placeholder=\"Email\"]</div><div class=\"double-form__item\">[text text-36 placeholder \"Сумма\"][tel tel-154 placeholder \"Срок кредитования\"]<button class=\"btn_block\">Получить займ</button></div></div>'),
(80, 28, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:21:\"ebrf \"[your-subject]\"\";s:6:\"sender\";s:31:\"[your-name] <wordpress@ebrf.ru>\";s:9:\"recipient\";s:12:\"test@test.ru\";s:4:\"body\";s:181:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта ebrf (http://ebrf.ru)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(81, 28, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"ebrf \"[your-subject]\"\";s:6:\"sender\";s:24:\"ebrf <wordpress@ebrf.ru>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта ebrf (http://ebrf.ru)\";s:18:\"additional_headers\";s:22:\"Reply-To: test@test.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(82, 28, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:17:\"captcha_not_match\";s:35:\"Код введен неверно.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(83, 28, '_additional_settings', ''),
(84, 28, '_locale', 'ru_RU'),
(86, 28, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:125:\"Был использован некорректный синтаксис почтового адреса в поле %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(89, 18, 'views', '22'),
(92, 15, 'views', '1'),
(93, 3, 'views', '6'),
(94, 30, '_edit_last', '1'),
(95, 30, '_edit_lock', '1513932074:1'),
(96, 30, '_wp_page_template', 'category.php'),
(97, 30, 'ratings_users', '0'),
(98, 30, 'ratings_score', '0'),
(99, 30, 'ratings_average', '0'),
(100, 30, 'views', '44'),
(101, 6, 'views', '2'),
(103, 1, '_edit_last', '1'),
(105, 1, '_wp_old_slug', 'privet-mir'),
(107, 33, '_edit_last', '1'),
(108, 33, '_edit_lock', '1513932017:1'),
(109, 33, '_wp_page_template', 'templates/tpl_order-page.php'),
(110, 33, 'ratings_users', '0'),
(111, 33, 'ratings_score', '0'),
(112, 33, 'ratings_average', '0'),
(113, 33, 'views', '10'),
(117, 35, '_edit_last', '1'),
(118, 35, '_edit_lock', '1513934320:1'),
(119, 35, '_wp_page_template', 'templates/tpl_calc-page.php'),
(120, 35, 'ratings_users', '0'),
(121, 35, 'ratings_score', '0'),
(122, 35, 'ratings_average', '0'),
(123, 37, '_edit_last', '1'),
(124, 37, 'field_5a3ccc70a0029', 'a:11:{s:3:\"key\";s:19:\"field_5a3ccc70a0029\";s:5:\"label\";s:10:\"Анонс\";s:4:\"name\";s:11:\"calc_review\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";s:2:\"no\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(126, 37, 'position', 'normal'),
(127, 37, 'layout', 'no_box'),
(128, 37, 'hide_on_screen', ''),
(129, 37, '_edit_lock', '1513940488:1'),
(130, 37, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"templates/tpl_calc-page.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(131, 38, 'calc_review', 'EBRF — это деньги в долг в размере до 100 тысяч рублей в микрофинансовой организации (МФО) или компании (МФК), оформленные через интернет. Микрокредитование в России регулирует закон «О микрофинансовой деятельности». Компании, занимающиеся кратковременным кредитованием, имеют лицензию, зарегистрированную в реестре Центробанка. Чаще микрозаймы берут до следующей зарплаты, поэтому высокие проценты не пугают.'),
(132, 38, '_calc_review', 'field_5a3ccc70a0029'),
(133, 35, 'calc_review', 'EBRF — это деньги в долг в размере до 100 тысяч рублей в микрофинансовой организации (МФО) или компании (МФК), оформленные через интернет. Микрокредитование в России регулирует закон «О микрофинансовой деятельности». Компании, занимающиеся кратковременным кредитованием, имеют лицензию, зарегистрированную в реестре Центробанка. Чаще микрозаймы берут до следующей зарплаты, поэтому высокие проценты не пугают.'),
(134, 35, '_calc_review', 'field_5a3ccc70a0029'),
(135, 35, 'views', '3'),
(136, 39, '_edit_last', '1'),
(137, 39, '_edit_lock', '1514199879:1'),
(138, 40, '_wp_attached_file', '2017/12/3-big.png'),
(139, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2017/12/3-big.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"3-big-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 39, '_thumbnail_id', '40'),
(141, 39, 'views', '196'),
(144, 44, '_edit_last', '1'),
(145, 44, 'field_5a3ceb128ac16', 'a:15:{s:3:\"key\";s:19:\"field_5a3ceb128ac16\";s:5:\"label\";s:15:\"Сумма от\";s:4:\"name\";s:15:\"company_summ_ot\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:3:\"100\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(147, 44, 'position', 'normal'),
(148, 44, 'layout', 'no_box'),
(149, 44, 'hide_on_screen', ''),
(150, 44, '_edit_lock', '1514141638:1'),
(151, 44, 'field_5a3cec0b55315', 'a:15:{s:3:\"key\";s:19:\"field_5a3cec0b55315\";s:5:\"label\";s:15:\"Сумма до\";s:4:\"name\";s:15:\"company_summ_do\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:5:\"30000\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(154, 44, 'field_5a3cedf982f77', 'a:15:{s:3:\"key\";s:19:\"field_5a3cedf982f77\";s:5:\"label\";s:13:\"Срок от\";s:4:\"name\";s:15:\"company_term_ot\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(155, 44, 'field_5a3cee3b82f78', 'a:15:{s:3:\"key\";s:19:\"field_5a3cee3b82f78\";s:5:\"label\";s:13:\"Срок до\";s:4:\"name\";s:15:\"company_term_do\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(159, 39, 'company_summ_ot', '100'),
(160, 39, '_company_summ_ot', 'field_5a3ceb128ac16'),
(161, 39, 'company_summ_do', '30000'),
(162, 39, '_company_summ_do', 'field_5a3cec0b55315'),
(163, 39, 'company_term_ot', '7'),
(164, 39, '_company_term_ot', 'field_5a3cedf982f77'),
(165, 39, 'company_term_do', '21'),
(166, 39, '_company_term_do', 'field_5a3cee3b82f78'),
(167, 44, 'field_5a3cefe0cd601', 'a:14:{s:3:\"key\";s:19:\"field_5a3cefe0cd601\";s:5:\"label\";s:33:\"Процентная ставка\";s:4:\"name\";s:25:\"company_interest_rate_num\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(168, 44, 'field_5a3cf04dcd602', 'a:12:{s:3:\"key\";s:19:\"field_5a3cf04dcd602\";s:5:\"label\";s:42:\"Процентная ставка срок\";s:4:\"name\";s:26:\"company_interest_rate_term\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"choices\";a:5:{s:4:\"hour\";s:9:\"в час\";s:3:\"day\";s:11:\"в день\";s:4:\"week\";s:15:\"в неделю\";s:5:\"month\";s:13:\"в месяц\";s:4:\"year\";s:9:\"в год\";}s:13:\"default_value\";s:3:\"day\";s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(172, 39, 'company_interest_rate_num', '2.1'),
(173, 39, '_company_interest_rate_num', 'field_5a3cefe0cd601'),
(174, 39, 'company_interest_rate_term', 'day'),
(175, 39, '_company_interest_rate_term', 'field_5a3cf04dcd602'),
(176, 44, 'field_5a3cf1ceb4934', 'a:15:{s:3:\"key\";s:19:\"field_5a3cf1ceb4934\";s:5:\"label\";s:14:\"Возраст\";s:4:\"name\";s:11:\"company_age\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:2:\"18\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(178, 44, 'field_5a3cf2230fe2d', 'a:13:{s:3:\"key\";s:19:\"field_5a3cf2230fe2d\";s:5:\"label\";s:27:\"Способ выплаты\";s:4:\"name\";s:15:\"company_cashout\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:15:{s:3:\"key\";s:19:\"field_5a3cf2ba0fe2e\";s:5:\"label\";s:16:\"Название\";s:4:\"name\";s:5:\"title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:29:\"Добавить способ\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(180, 44, 'field_5a3cf2f7ec119', 'a:13:{s:3:\"key\";s:19:\"field_5a3cf2f7ec119\";s:5:\"label\";s:25:\"Способ оплаты\";s:4:\"name\";s:14:\"company_cashin\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:15:{s:3:\"key\";s:19:\"field_5a3cf2f7ec11a\";s:5:\"label\";s:16:\"Название\";s:4:\"name\";s:5:\"title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:29:\"Добавить способ\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(182, 44, 'field_5a3cf3253273a', 'a:14:{s:3:\"key\";s:19:\"field_5a3cf3253273a\";s:5:\"label\";s:6:\"Год\";s:4:\"name\";s:12:\"company_year\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(184, 44, 'field_5a3cf34db48b9', 'a:14:{s:3:\"key\";s:19:\"field_5a3cf34db48b9\";s:5:\"label\";s:18:\"Документы\";s:4:\"name\";s:12:\"company_docs\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:14:\"Паспорт\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(186, 44, 'field_5a3cf37e61ec3', 'a:14:{s:3:\"key\";s:19:\"field_5a3cf37e61ec3\";s:5:\"label\";s:54:\"Скорость рассмотрения заявки\";s:4:\"name\";s:19:\"company_order_speed\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:29:\"Несколько минут\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(188, 44, 'field_5a3cf3bbfc68f', 'a:14:{s:3:\"key\";s:19:\"field_5a3cf3bbfc68f\";s:5:\"label\";s:31:\"Скорость выплаты\";s:4:\"name\";s:21:\"company_cashout_speed\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:22:\"Моментально\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(190, 44, 'field_5a3cf42ef1ba2', 'a:14:{s:3:\"key\";s:19:\"field_5a3cf42ef1ba2\";s:5:\"label\";s:27:\"График работы c\";s:4:\"name\";s:21:\"company_workmode_from\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}'),
(191, 44, 'field_5a3cf478f1ba3', 'a:14:{s:3:\"key\";s:19:\"field_5a3cf478f1ba3\";s:5:\"label\";s:30:\"График работы до\";s:4:\"name\";s:19:\"company_workmode_to\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}'),
(193, 44, 'field_5a3cf52d15fa4', 'a:13:{s:3:\"key\";s:19:\"field_5a3cf52d15fa4\";s:5:\"label\";s:46:\"Плохая кредитная история\";s:4:\"name\";s:22:\"company_credit_history\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"choices\";a:2:{i:1;s:4:\"Да\";i:2;s:6:\"Нет\";}s:12:\"other_choice\";s:1:\"0\";s:17:\"save_other_choice\";s:1:\"0\";s:13:\"default_value\";s:1:\"1\";s:6:\"layout\";s:10:\"horizontal\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:15;}'),
(195, 44, 'field_5a3cf59536435', 'a:13:{s:3:\"key\";s:19:\"field_5a3cf59536435\";s:5:\"label\";s:18:\"Продление\";s:4:\"name\";s:15:\"company_renewal\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"choices\";a:2:{i:1;s:8:\"Есть\";i:2;s:6:\"Нет\";}s:12:\"other_choice\";s:1:\"0\";s:17:\"save_other_choice\";s:1:\"0\";s:13:\"default_value\";s:1:\"1\";s:6:\"layout\";s:10:\"horizontal\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:16;}'),
(197, 44, 'field_5a3cf6800cbf9', 'a:13:{s:3:\"key\";s:19:\"field_5a3cf6800cbf9\";s:5:\"label\";s:24:\"Преимущества\";s:4:\"name\";s:16:\"company_benefits\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:15:{s:3:\"key\";s:19:\"field_5a3cf6b20cbfa\";s:5:\"label\";s:24:\"Преимущество\";s:4:\"name\";s:4:\"name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:41:\"Добавить преимущество\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a3cf04dcd602\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hour\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:17;}'),
(198, 44, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"company\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(199, 39, 'company_age', '18'),
(200, 39, '_company_age', 'field_5a3cf1ceb4934'),
(201, 39, 'company_cashout', '6'),
(202, 39, '_company_cashout', 'field_5a3cf2230fe2d'),
(203, 39, 'company_cashin', '6'),
(204, 39, '_company_cashin', 'field_5a3cf2f7ec119'),
(205, 39, 'company_year', '2012'),
(206, 39, '_company_year', 'field_5a3cf3253273a'),
(207, 39, 'company_docs', 'Паспорт'),
(208, 39, '_company_docs', 'field_5a3cf34db48b9'),
(209, 39, 'company_order_speed', 'Несколько минут'),
(210, 39, '_company_order_speed', 'field_5a3cf37e61ec3'),
(211, 39, 'company_cashout_speed', 'Моментально'),
(212, 39, '_company_cashout_speed', 'field_5a3cf3bbfc68f'),
(213, 39, 'company_workmode_from', '7:00'),
(214, 39, '_company_workmode_from', 'field_5a3cf42ef1ba2'),
(215, 39, 'company_workmode_to', '20:00'),
(216, 39, '_company_workmode_to', 'field_5a3cf478f1ba3'),
(217, 39, 'company_credit_history', '1'),
(218, 39, '_company_credit_history', 'field_5a3cf52d15fa4'),
(219, 39, 'company_renewal', '1'),
(220, 39, '_company_renewal', 'field_5a3cf59536435'),
(221, 39, 'company_benefits_0_name', 'Удобные тарифы для разных категорий клиентов'),
(222, 39, '_company_benefits_0_name', 'field_5a3cf6b20cbfa'),
(223, 39, 'company_benefits_1_name', 'Быстрое оформление в любое время суток'),
(224, 39, '_company_benefits_1_name', 'field_5a3cf6b20cbfa'),
(225, 39, 'company_benefits_2_name', 'Досрочное погашение без дополнительных комиссий'),
(226, 39, '_company_benefits_2_name', 'field_5a3cf6b20cbfa'),
(227, 39, 'company_benefits_3_name', 'Инвестиции с гибкими условиями'),
(228, 39, '_company_benefits_3_name', 'field_5a3cf6b20cbfa'),
(229, 39, 'company_benefits_4_name', 'Продлить заем можно неограниченное число раз'),
(230, 39, '_company_benefits_4_name', 'field_5a3cf6b20cbfa'),
(231, 39, 'company_benefits', '5'),
(232, 39, '_company_benefits', 'field_5a3cf6800cbf9'),
(233, 39, 'company_cashout_0_title', 'Счет'),
(234, 39, '_company_cashout_0_title', 'field_5a3cf2ba0fe2e'),
(235, 39, 'company_cashout_1_title', 'карта'),
(236, 39, '_company_cashout_1_title', 'field_5a3cf2ba0fe2e'),
(237, 39, 'company_cashout_2_title', 'Золотая Корона'),
(238, 39, '_company_cashout_2_title', 'field_5a3cf2ba0fe2e'),
(239, 39, 'company_cashout_3_title', 'QIWI'),
(240, 39, '_company_cashout_3_title', 'field_5a3cf2ba0fe2e'),
(241, 39, 'company_cashout_4_title', 'Яндекс.Деньги'),
(242, 39, '_company_cashout_4_title', 'field_5a3cf2ba0fe2e'),
(243, 39, 'company_cashout_5_title', 'Contact'),
(244, 39, '_company_cashout_5_title', 'field_5a3cf2ba0fe2e'),
(245, 39, 'company_cashin_0_title', 'Счет'),
(246, 39, '_company_cashin_0_title', 'field_5a3cf2f7ec11a'),
(247, 39, 'company_cashin_1_title', 'карта'),
(248, 39, '_company_cashin_1_title', 'field_5a3cf2f7ec11a'),
(249, 39, 'company_cashin_2_title', 'Золотая Корона'),
(250, 39, '_company_cashin_2_title', 'field_5a3cf2f7ec11a'),
(251, 39, 'company_cashin_3_title', 'QIWI'),
(252, 39, '_company_cashin_3_title', 'field_5a3cf2f7ec11a'),
(253, 39, 'company_cashin_4_title', 'Яндекс.Деньги'),
(254, 39, '_company_cashin_4_title', 'field_5a3cf2f7ec11a'),
(255, 39, 'company_cashin_5_title', 'Contact'),
(256, 39, '_company_cashin_5_title', 'field_5a3cf2f7ec11a'),
(257, 46, '_edit_last', '1'),
(258, 46, 'field_5a40ded0cd7ff', 'a:13:{s:3:\"key\";s:19:\"field_5a40ded0cd7ff\";s:5:\"label\";s:10:\"Плюсы\";s:4:\"name\";s:11:\"review_plus\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"2\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(259, 46, 'field_5a40df06cd800', 'a:13:{s:3:\"key\";s:19:\"field_5a40df06cd800\";s:5:\"label\";s:12:\"Минусы\";s:4:\"name\";s:12:\"review_minus\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"2\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(261, 46, 'position', 'normal'),
(262, 46, 'layout', 'no_box'),
(263, 46, 'hide_on_screen', ''),
(264, 46, '_edit_lock', '1514219373:1'),
(265, 46, 'field_5a40eb9812eb6', 'a:14:{s:3:\"key\";s:19:\"field_5a40eb9812eb6\";s:5:\"label\";s:6:\"Имя\";s:4:\"name\";s:18:\"review_author_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(269, 48, '_edit_lock', '1514217806:1'),
(270, 49, 'review_author_name', 'test'),
(271, 49, '_review_author_name', 'field_5a40eb9812eb6'),
(272, 50, 'review_author_name', 'test2'),
(273, 50, '_review_author_name', 'field_5a40eb9812eb6'),
(274, 50, '_edit_lock', '1514217998:1'),
(276, 51, 'review_author_name', 'test3'),
(277, 51, '_review_author_name', 'field_review_author_name'),
(278, 51, 'review_plus', ''),
(279, 51, '_review_plus', 'field_review_plus'),
(280, 51, 'review_minus', ''),
(281, 51, '_review_minus', 'field_review_minus'),
(282, 51, '_edit_lock', '1514205982:1'),
(283, 52, 'review_author_name', 'test4'),
(284, 52, '_review_author_name', 'field_review_author_name'),
(285, 52, 'review_plus', 'plus'),
(286, 52, '_review_plus', 'field_review_plus'),
(287, 52, 'review_minus', 'minus'),
(288, 52, '_review_minus', 'field_review_minus'),
(289, 52, '_edit_lock', '1514207923:1'),
(290, 53, 'review_author_name', 'test5'),
(291, 53, '_review_author_name', 'field_review_author_name'),
(292, 53, 'review_plus', 'sdafasd '),
(293, 53, '_review_plus', 'field_review_plus'),
(294, 53, 'review_minus', ' asdf df ddd'),
(295, 53, '_review_minus', 'field_review_minus'),
(296, 53, 'ratings_average', '3'),
(297, 54, 'review_author_name', 'test6dd'),
(298, 54, '_review_author_name', 'field_5a40eb9812eb6'),
(299, 54, 'review_plus', 'asdf asdf'),
(300, 54, '_review_plus', 'field_5a40ded0cd7ff'),
(301, 54, 'review_minus', ' asdf '),
(302, 54, '_review_minus', 'field_5a40df06cd800'),
(303, 54, 'ratings_average', '3'),
(304, 54, 'ratings_score', '3'),
(305, 54, 'ratings_users', '1'),
(306, 55, 'review_author_name', 'test6'),
(307, 55, '_review_author_name', 'field_review_author_name'),
(308, 55, 'review_plus', 'asdf asdf'),
(309, 55, '_review_plus', 'field_review_plus'),
(310, 55, 'review_minus', ' asdf '),
(311, 55, '_review_minus', 'field_review_minus'),
(312, 55, 'ratings_average', '3'),
(313, 55, 'ratings_score', '3'),
(314, 55, 'ratings_users', '1'),
(315, 54, '_edit_lock', '1514208333:1'),
(316, 54, '_edit_last', '1'),
(317, 56, 'review_author_name', 'test8'),
(318, 56, '_review_author_name', 'field_review_author_name'),
(319, 56, 'review_plus', 'asdf  asdfasd'),
(320, 56, '_review_plus', 'field_review_plus'),
(321, 56, 'review_minus', 'a bhgredt bdfg'),
(322, 56, '_review_minus', 'field_review_minus'),
(323, 56, 'ratings_average', '4'),
(324, 56, 'ratings_score', '4'),
(325, 56, 'ratings_users', '1'),
(326, 57, 'review_author_name', 'test8'),
(327, 57, '_review_author_name', 'field_review_author_name'),
(328, 57, 'review_plus', 'asdf  asdfasd'),
(329, 57, '_review_plus', 'field_review_plus'),
(330, 57, 'review_minus', 'a bhgredt bdfg'),
(331, 57, '_review_minus', 'field_review_minus'),
(332, 57, 'ratings_average', '4'),
(333, 57, 'ratings_score', '4'),
(334, 57, 'ratings_users', '1'),
(335, 58, 'review_author_name', 'test9'),
(336, 58, '_review_author_name', 'field_review_author_name'),
(337, 58, 'review_plus', 'ewrt'),
(338, 58, '_review_plus', 'field_review_plus'),
(339, 58, 'review_minus', 'dfgnhj'),
(340, 58, '_review_minus', 'field_review_minus'),
(341, 58, 'ratings_average', '0'),
(342, 58, 'ratings_score', '0'),
(343, 58, 'ratings_users', '1'),
(344, 59, 'review_author_name', 'test10'),
(345, 59, '_review_author_name', 'field_review_author_name'),
(346, 59, 'review_plus', 'hbgnmb'),
(347, 59, '_review_plus', 'field_review_plus'),
(348, 59, 'review_minus', 'ghfjdhf'),
(349, 59, '_review_minus', 'field_review_minus'),
(350, 59, 'ratings_average', '2'),
(351, 59, 'ratings_score', '2'),
(352, 59, 'ratings_users', '1'),
(353, 60, 'review_author_name', 'test11'),
(354, 60, '_review_author_name', 'field_review_author_name'),
(355, 60, 'review_plus', 'tyurtyhjtrh'),
(356, 60, '_review_plus', 'field_review_plus'),
(357, 60, 'review_minus', ' nd fgb ghd f'),
(358, 60, '_review_minus', 'field_review_minus'),
(359, 60, 'ratings_average', '5'),
(360, 60, 'ratings_score', '5'),
(361, 60, 'ratings_users', '1'),
(362, 61, 'review_author_name', 'test11'),
(363, 61, '_review_author_name', 'field_review_author_name'),
(364, 61, 'review_plus', 'tyurtyhjtrh'),
(365, 61, '_review_plus', 'field_review_plus'),
(366, 61, 'review_minus', ' nd fgb ghd f'),
(367, 61, '_review_minus', 'field_review_minus'),
(368, 61, 'ratings_average', '5'),
(369, 61, 'ratings_score', '5'),
(370, 61, 'ratings_users', '1'),
(371, 62, 'review_author_name', 'test11'),
(372, 62, '_review_author_name', 'field_review_author_name'),
(373, 62, 'review_plus', 'tyurtyhjtrh'),
(374, 62, '_review_plus', 'field_review_plus'),
(375, 62, 'review_minus', ' nd fgb ghd f'),
(376, 62, '_review_minus', 'field_review_minus'),
(377, 62, 'ratings_average', '5'),
(378, 62, 'ratings_score', '5'),
(379, 62, 'ratings_users', '1'),
(380, 63, 'review_author_name', 'test11'),
(381, 63, '_review_author_name', 'field_review_author_name'),
(382, 63, 'review_plus', 'tyurtyhjtrh'),
(383, 63, '_review_plus', 'field_review_plus'),
(384, 63, 'review_minus', ' nd fgb ghd f'),
(385, 63, '_review_minus', 'field_review_minus'),
(386, 63, 'ratings_average', '5'),
(387, 63, 'ratings_score', '5'),
(388, 63, 'ratings_users', '1'),
(389, 64, 'review_author_name', 'test12'),
(390, 64, '_review_author_name', 'field_review_author_name'),
(391, 64, 'review_plus', ' asdfa sdf asd'),
(392, 64, '_review_plus', 'field_review_plus'),
(393, 64, 'review_minus', ' cvzfv rfgsbsg'),
(394, 64, '_review_minus', 'field_review_minus'),
(395, 64, 'ratings_average', '0'),
(396, 64, 'ratings_score', '0'),
(397, 64, 'ratings_users', '1'),
(398, 64, '_edit_lock', '1514214653:1'),
(399, 65, 'review_author_name', 'test13'),
(400, 65, '_review_author_name', 'field_review_author_name'),
(401, 65, 'review_plus', 'as dfasdf '),
(402, 65, '_review_plus', 'field_review_plus'),
(403, 65, 'review_minus', ' asdf asdfd'),
(404, 65, '_review_minus', 'field_review_minus'),
(405, 65, 'ratings_average', '0'),
(406, 65, 'ratings_score', '0'),
(407, 65, 'ratings_users', '1'),
(408, 66, 'review_author_name', 'test13'),
(409, 66, '_review_author_name', 'field_review_author_name'),
(410, 66, 'review_plus', 'as dfasdf '),
(411, 66, '_review_plus', 'field_review_plus'),
(412, 66, 'review_minus', ' asdf asdfd'),
(413, 66, '_review_minus', 'field_review_minus'),
(414, 66, 'ratings_average', '0'),
(415, 66, 'ratings_score', '0'),
(416, 66, 'ratings_users', '1'),
(417, 67, 'review_author_name', 'test13'),
(418, 67, '_review_author_name', 'field_review_author_name'),
(419, 67, 'review_plus', 'as dfasdf '),
(420, 67, '_review_plus', 'field_review_plus'),
(421, 67, 'review_minus', ' asdf asdfd'),
(422, 67, '_review_minus', 'field_review_minus'),
(423, 67, 'ratings_average', '0'),
(424, 67, 'ratings_score', '0'),
(425, 67, 'ratings_users', '1'),
(426, 68, 'review_author_name', 'test14'),
(427, 68, '_review_author_name', 'field_review_author_name'),
(428, 68, 'review_plus', 'hgjfgh fghjfg h'),
(429, 68, '_review_plus', 'field_review_plus'),
(430, 68, 'review_minus', ' sdf gdfgbgn s ef'),
(431, 68, '_review_minus', 'field_review_minus'),
(432, 68, 'ratings_average', '4'),
(433, 68, 'ratings_score', '4'),
(434, 68, 'ratings_users', '1'),
(435, 69, 'review_author_name', 'test14'),
(436, 69, '_review_author_name', 'field_review_author_name'),
(437, 69, 'review_plus', 'hgjfgh fghjfg h'),
(438, 69, '_review_plus', 'field_review_plus'),
(439, 69, 'review_minus', ' sdf gdfgbgn s ef'),
(440, 69, '_review_minus', 'field_review_minus'),
(441, 69, 'ratings_average', '4'),
(442, 69, 'ratings_score', '4'),
(443, 69, 'ratings_users', '1'),
(444, 39, 'review_author_name', NULL),
(445, 39, '_review_author_name', 'field_review_author_name'),
(446, 39, 'review_plus', NULL),
(447, 39, '_review_plus', 'field_review_plus'),
(448, 39, 'review_minus', NULL),
(449, 39, '_review_minus', 'field_review_minus'),
(450, 39, '_', ''),
(451, 70, 'review_author_name', 'test15'),
(452, 70, '_review_author_name', 'field_review_author_name'),
(453, 70, 'review_plus', 'a sdfafsfgbdsf'),
(454, 70, '_review_plus', 'field_review_plus'),
(455, 70, 'review_minus', ' gfbdfb sfdfd'),
(456, 70, '_review_minus', 'field_review_minus'),
(457, 70, 'ratings_average', '0'),
(458, 70, 'ratings_score', '0'),
(459, 70, 'ratings_users', '1'),
(460, 71, 'review_author_name', 'test15'),
(461, 71, '_review_author_name', 'field_review_author_name'),
(462, 71, 'review_plus', 'a sdfafsfgbdsf'),
(463, 71, '_review_plus', 'field_review_plus'),
(464, 71, 'review_minus', ' gfbdfb sfdfd'),
(465, 71, '_review_minus', 'field_review_minus'),
(466, 71, 'ratings_average', '0'),
(467, 71, 'ratings_score', '0'),
(468, 71, 'ratings_users', '1'),
(469, 72, 'review_author_name', 'test16'),
(470, 72, '_review_author_name', 'field_review_author_name'),
(471, 72, 'review_plus', 'fgdgh dfh df'),
(472, 72, '_review_plus', 'field_review_plus'),
(473, 72, 'review_minus', ' sfdghsfgasdf '),
(474, 72, '_review_minus', 'field_review_minus'),
(475, 72, 'ratings_average', '0'),
(476, 72, 'ratings_score', '0'),
(477, 72, 'ratings_users', '1'),
(478, 73, 'review_author_name', 'test16'),
(479, 73, '_review_author_name', 'field_review_author_name'),
(480, 73, 'review_plus', 'fgdgh dfh df'),
(481, 73, '_review_plus', 'field_review_plus'),
(482, 73, 'review_minus', ' sfdghsfgasdf '),
(483, 73, '_review_minus', 'field_review_minus'),
(484, 73, 'ratings_average', '0'),
(485, 73, 'ratings_score', '0'),
(486, 73, 'ratings_users', '1'),
(487, 74, 'review_author_name', 'test16'),
(488, 74, '_review_author_name', 'field_review_author_name'),
(489, 74, 'review_plus', 'fgdgh dfh df'),
(490, 74, '_review_plus', 'field_review_plus'),
(491, 74, 'review_minus', ' sfdghsfgasdf '),
(492, 74, '_review_minus', 'field_review_minus'),
(493, 74, 'ratings_average', '0'),
(494, 74, 'ratings_score', '0'),
(495, 74, 'ratings_users', '1'),
(496, 75, 'review_author_name', 'test17'),
(497, 75, '_review_author_name', 'field_review_author_name'),
(498, 75, 'review_plus', 'asdf asdfad'),
(499, 75, '_review_plus', 'field_review_plus'),
(500, 75, 'review_minus', 'f dfdsdfg'),
(501, 75, '_review_minus', 'field_review_minus'),
(502, 75, 'ratings_average', '0'),
(503, 75, 'ratings_score', '0'),
(504, 75, 'ratings_users', '1'),
(505, 76, 'review_author_name', 'test17'),
(506, 76, '_review_author_name', 'field_review_author_name'),
(507, 76, 'review_plus', 'asdf asdfad'),
(508, 76, '_review_plus', 'field_review_plus'),
(509, 76, 'review_minus', 'f dfdsdfg'),
(510, 76, '_review_minus', 'field_review_minus'),
(511, 76, 'ratings_average', '0'),
(512, 76, 'ratings_score', '0'),
(513, 76, 'ratings_users', '1'),
(514, 77, 'review_author_name', 'asdfasdf asd'),
(515, 77, '_review_author_name', 'field_5a40eb9812eb6'),
(516, 77, 'review_plus', 'hytr ht'),
(517, 77, '_review_plus', 'field_5a40ded0cd7ff'),
(518, 77, 'review_minus', 'ntf  nuyt ntyu '),
(519, 77, '_review_minus', 'field_5a40df06cd800'),
(520, 77, 'ratings_average', '5'),
(521, 77, 'ratings_score', '5'),
(522, 77, 'ratings_users', '1'),
(523, 78, 'review_author_name', 'test18'),
(524, 78, '_review_author_name', 'field_5a40eb9812eb6'),
(525, 78, 'review_plus', 'fdasdf asdf'),
(526, 78, '_review_plus', 'field_5a40ded0cd7ff'),
(527, 78, 'review_minus', 'asfg fdsd fg '),
(528, 78, '_review_minus', 'field_5a40df06cd800'),
(529, 78, 'ratings_average', '0'),
(530, 78, 'ratings_score', '0'),
(531, 78, 'ratings_users', '1'),
(532, 79, 'review_author_name', 'test18'),
(533, 79, '_review_author_name', 'field_5a40eb9812eb6'),
(534, 79, 'review_plus', 'fdasdf asdf'),
(535, 79, '_review_plus', 'field_5a40ded0cd7ff'),
(536, 79, 'review_minus', 'asfg fdsd fg '),
(537, 79, '_review_minus', 'field_5a40df06cd800'),
(538, 79, 'ratings_average', '0'),
(539, 79, 'ratings_score', '0'),
(540, 79, 'ratings_users', '1'),
(541, 80, 'review_author_name', 'test19'),
(542, 80, '_review_author_name', 'field_5a40eb9812eb6'),
(543, 80, 'review_plus', 'sd fgdsfg sdfg'),
(544, 80, '_review_plus', 'field_5a40ded0cd7ff'),
(545, 80, 'review_minus', 's dfgsdfg fsdg'),
(546, 80, '_review_minus', 'field_5a40df06cd800'),
(547, 80, 'ratings_average', '0'),
(548, 80, 'ratings_score', '0'),
(549, 80, 'ratings_users', '1'),
(550, 81, 'review_author_name', 'test19'),
(551, 81, '_review_author_name', 'field_5a40eb9812eb6'),
(552, 81, 'review_plus', 'sd fgdsfg sdfg'),
(553, 81, '_review_plus', 'field_5a40ded0cd7ff'),
(554, 81, 'review_minus', 's dfgsdfg fsdg'),
(555, 81, '_review_minus', 'field_5a40df06cd800'),
(556, 81, 'ratings_average', '0'),
(557, 81, 'ratings_score', '0'),
(558, 81, 'ratings_users', '1'),
(559, 46, 'field_5a4120d760529', 'a:15:{s:3:\"key\";s:19:\"field_5a4120d760529\";s:5:\"label\";s:19:\"ID компании\";s:4:\"name\";s:17:\"review_company_id\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:47:\"к которой относится отзыв\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(561, 46, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"review\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(562, 81, '_edit_lock', '1514217699:1'),
(563, 81, '_edit_last', '1'),
(564, 81, 'review_company_id', '39'),
(565, 81, '_review_company_id', 'field_5a4120d760529'),
(566, 80, '_edit_lock', '1514217733:1'),
(567, 80, '_edit_last', '1'),
(568, 80, 'review_company_id', '39'),
(569, 80, '_review_company_id', 'field_5a4120d760529'),
(570, 79, '_edit_lock', '1514217749:1'),
(571, 79, '_edit_last', '1'),
(572, 79, 'review_company_id', '39'),
(573, 79, '_review_company_id', 'field_5a4120d760529'),
(574, 78, '_edit_lock', '1514217771:1'),
(575, 78, '_edit_last', '1'),
(576, 78, 'review_company_id', '39'),
(577, 78, '_review_company_id', 'field_5a4120d760529'),
(578, 48, '_edit_last', '1'),
(579, 48, 'review_author_name', ''),
(580, 48, '_review_author_name', 'field_5a40eb9812eb6'),
(581, 48, 'review_plus', ''),
(582, 48, '_review_plus', 'field_5a40ded0cd7ff'),
(583, 48, 'review_minus', ''),
(584, 48, '_review_minus', 'field_5a40df06cd800'),
(585, 48, 'review_company_id', '39'),
(586, 48, '_review_company_id', 'field_5a4120d760529'),
(587, 49, '_edit_lock', '1514217821:1'),
(588, 49, '_edit_last', '1'),
(589, 49, 'review_plus', ''),
(590, 49, '_review_plus', 'field_5a40ded0cd7ff'),
(591, 49, 'review_minus', ''),
(592, 49, '_review_minus', 'field_5a40df06cd800'),
(593, 49, 'review_company_id', '39'),
(594, 49, '_review_company_id', 'field_5a4120d760529'),
(595, 50, '_edit_last', '1'),
(596, 50, 'review_plus', ''),
(597, 50, '_review_plus', 'field_5a40ded0cd7ff'),
(598, 50, 'review_minus', ''),
(599, 50, '_review_minus', 'field_5a40df06cd800'),
(600, 50, 'review_company_id', '39'),
(601, 50, '_review_company_id', 'field_5a4120d760529'),
(602, 82, 'review_author_name', 'test19'),
(603, 82, '_review_author_name', 'field_review_author_name'),
(604, 82, 'review_plus', 'sd fgdsfg sdfg'),
(605, 82, '_review_plus', 'field_review_plus'),
(606, 82, 'review_minus', 's dfgsdfg fsdg'),
(607, 82, '_review_minus', 'field_review_minus'),
(608, 82, 'ratings_average', '0'),
(609, 82, 'ratings_score', '0'),
(610, 82, 'ratings_users', '1'),
(611, 83, 'review_author_name', 'test19'),
(612, 83, '_review_author_name', 'field_review_author_name'),
(613, 83, 'review_plus', 'sd fgdsfg sdfg'),
(614, 83, '_review_plus', 'field_review_plus'),
(615, 83, 'review_minus', NULL),
(616, 83, '_review_minus', 'field_review_minus'),
(617, 83, 'ratings_average', '0'),
(618, 83, 'ratings_score', '0'),
(619, 83, 'review_company_id', '1'),
(620, 84, 'review_author_name', 'admin'),
(621, 84, '_review_author_name', 'field_5a40eb9812eb6'),
(622, 84, 'review_plus', 'asdf asdf asdfas'),
(623, 84, '_review_plus', 'field_5a40ded0cd7ff'),
(624, 84, 'review_minus', 'asdfas'),
(625, 84, '_review_minus', 'field_5a40df06cd800'),
(626, 84, 'ratings_average', '0'),
(627, 84, 'ratings_score', '0'),
(628, 84, 'review_company_id', '39'),
(629, 84, '_edit_lock', '1514218535:1'),
(630, 84, '_edit_last', '1'),
(631, 84, '_review_company_id', 'field_5a4120d760529'),
(632, 85, 'review_author_name', 'admin'),
(633, 85, '_review_author_name', 'field_5a40eb9812eb6'),
(634, 85, 'review_plus', 'gfdb dfh f '),
(635, 85, '_review_plus', 'field_5a40ded0cd7ff'),
(636, 85, 'review_minus', 'bgh sfdvsdfv'),
(637, 85, '_review_minus', 'field_5a40df06cd800'),
(638, 85, 'review-company-id', '39'),
(639, 85, '_review-company-id', 'field_review-company-id'),
(640, 85, 'ratings_average', '0'),
(641, 85, 'ratings_score', '0'),
(642, 85, 'review_company_id', '1'),
(643, 85, '_edit_lock', '1514219645:1'),
(644, 86, 'review_author_name', 'admin'),
(645, 86, '_review_author_name', 'field_review_author_name'),
(646, 86, 'review_plus', 'f agfdbs f'),
(647, 86, '_review_plus', 'field_review_plus'),
(648, 86, 'review_minus', ' fgd asadf'),
(649, 86, '_review_minus', 'field_review_minus'),
(650, 86, 'review-company-id', '39'),
(651, 86, '_review-company-id', 'field_review-company-id'),
(652, 86, 'ratings_average', '5'),
(653, 86, 'ratings_score', '5'),
(654, 86, 'review_company_id', '1'),
(655, 86, '_edit_lock', '1514218969:1'),
(656, 87, 'review_author_name', 'admin'),
(657, 87, '_review_author_name', 'field_review_author_name'),
(658, 87, 'review_plus', 'f agfdbs f'),
(659, 87, '_review_plus', 'field_review_plus'),
(660, 87, 'review_minus', ' fgd asadf'),
(661, 87, '_review_minus', 'field_review_minus'),
(662, 87, 'review_company_id', '39'),
(663, 87, '_review_company_id', 'field_review_company_id'),
(664, 87, 'ratings_average', '5'),
(665, 87, 'ratings_score', '5'),
(666, 87, 'ratings_users', '1'),
(667, 88, 'review_author_name', 'admin'),
(668, 88, '_review_author_name', 'field_review_author_name'),
(669, 88, 'review_plus', ' fgd sddfgb'),
(670, 88, '_review_plus', 'field_review_plus'),
(671, 88, 'review_minus', ' asdcasfvsdf'),
(672, 88, '_review_minus', 'field_review_minus'),
(673, 88, 'review_company_id', '39'),
(674, 88, '_review_company_id', 'field_review_company_id'),
(675, 88, 'ratings_average', '5'),
(676, 88, 'ratings_score', '5'),
(677, 88, 'ratings_users', '1'),
(678, 88, '_edit_lock', '1514218988:1'),
(679, 89, 'review_author_name', 'admin'),
(680, 89, '_review_author_name', 'field_review_author_name'),
(681, 89, 'review_plus', ' fgd sddfgb'),
(682, 89, '_review_plus', 'field_review_plus'),
(683, 89, 'review_minus', ' asdcasfvsdf'),
(684, 89, '_review_minus', 'field_review_minus'),
(685, 89, 'review_company_id', '39'),
(686, 89, '_review_company_id', 'field_review_company_id'),
(687, 89, 'ratings_average', '5'),
(688, 89, 'ratings_score', '5'),
(689, 89, 'ratings_users', '1'),
(690, 90, 'review_author_name', 'admin'),
(691, 90, '_review_author_name', 'field_review_author_name'),
(692, 90, 'review_plus', ' fgd sddfgb'),
(693, 90, '_review_plus', 'field_review_plus'),
(694, 90, 'review_minus', ' asdcasfvsdf'),
(695, 90, '_review_minus', 'field_review_minus'),
(696, 90, 'review_company_id', '39'),
(697, 90, '_review_company_id', 'field_review_company_id'),
(698, 90, 'ratings_average', '5'),
(699, 90, 'ratings_score', '5'),
(700, 90, 'ratings_users', '1'),
(701, 91, 'review_author_name', 'admin'),
(702, 91, '_review_author_name', 'field_review_author_name'),
(703, 91, 'review_plus', ' fgd sddfgb'),
(704, 91, '_review_plus', 'field_review_plus'),
(705, 91, 'review_minus', ' asdcasfvsdf'),
(706, 91, '_review_minus', 'field_review_minus'),
(707, 91, 'review_company_id', '39'),
(708, 91, '_review_company_id', 'field_review_company_id'),
(709, 91, 'ratings_average', '5'),
(710, 91, 'ratings_score', '5');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(711, 91, 'ratings_users', '1'),
(712, 85, '_edit_last', '1'),
(713, 85, '_review_company_id', 'field_5a4120d760529'),
(714, 92, 'review_author_name', 'admin'),
(715, 92, '_review_author_name', 'field_5a40eb9812eb6'),
(716, 92, 'review_plus', 'dff  ff fghdfgnd f'),
(717, 92, '_review_plus', 'field_5a40ded0cd7ff'),
(718, 92, 'review_minus', 'b dgfhnhgfyn fhjn fgv s'),
(719, 92, '_review_minus', 'field_5a40df06cd800'),
(720, 92, 'review_company_id', '39'),
(721, 92, '_review_company_id', 'field_5a4120d760529'),
(722, 92, 'ratings_average', '5'),
(723, 92, 'ratings_score', '10'),
(724, 92, 'ratings_users', '2'),
(725, 92, '_edit_lock', '1514220537:1'),
(726, 92, '_edit_last', '1'),
(727, 93, 'review_author_name', 'admin'),
(728, 93, '_review_author_name', 'field_review_author_name'),
(729, 93, 'review_plus', 'dff  ff fghdfgnd f'),
(730, 93, '_review_plus', 'field_review_plus'),
(731, 93, 'review_minus', 'b dgfhnhgfyn fhjn fgv s'),
(732, 93, '_review_minus', 'field_review_minus'),
(733, 93, 'review_company_id', '39'),
(734, 93, '_review_company_id', 'field_review_company_id'),
(735, 93, 'ratings_average', '5'),
(736, 93, 'ratings_score', '5'),
(737, 93, 'ratings_users', '1'),
(738, 77, '_edit_lock', '1514221845:1'),
(739, 77, '_edit_last', '1'),
(740, 77, 'review_company_id', '39'),
(741, 77, '_review_company_id', 'field_5a4120d760529'),
(742, 39, 'ratings_average', '1.43'),
(743, 39, 'ratings_score', '1.43'),
(744, 39, 'ratings_users', '7');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-15 10:32:35', '2017-12-15 07:32:35', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir-2', '', '', '2017-12-22 09:10:30', '2017-12-22 06:10:30', '', 0, 'http://ebrf.ru/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-15 10:32:35', '2017-12-15 07:32:35', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://ebrf.ru/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-12-15 10:32:35', '2017-12-15 07:32:35', '', 0, 'http://ebrf.ru/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-12-15 10:32:38', '2017-12-15 07:32:38', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2017-12-15 10:32:38', '2017-12-15 07:32:38', '', 0, 'http://ebrf.ru/?p=1', 0, 'post', '', 1),
(4, 1, '2017-12-15 10:32:38', '2017-12-15 07:32:38', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://ebrf.ru/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-12-15 10:32:38', '2017-12-15 07:32:38', '', 0, 'http://ebrf.ru/?page_id=2', 0, 'page', '', 0),
(6, 1, '2017-12-17 21:00:26', '2017-12-17 18:00:26', 'Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга.<!--more-->\r\n\r\nПосле выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга. После выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2017-12-17 22:16:25', '2017-12-17 19:16:25', '', 0, 'http://ebrf.ru/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-12-17 21:00:26', '2017-12-17 18:00:26', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-12-17 21:00:26', '2017-12-17 18:00:26', '', 6, 'http://ebrf.ru/?p=7', 0, 'revision', '', 0),
(8, 1, '2017-12-17 21:20:49', '2017-12-17 18:20:49', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'acf_glavnaya', '', '', '2017-12-17 21:20:49', '2017-12-17 18:20:49', '', 0, 'http://ebrf.ru/?post_type=acf&#038;p=8', 0, 'acf', '', 0),
(9, 1, '2017-12-17 21:57:02', '2017-12-17 18:57:02', '<p>Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга. </p>\r\n				<p>После выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга. После выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.</p>', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-12-17 21:57:02', '2017-12-17 18:57:02', '', 6, 'http://ebrf.ru/?p=9', 0, 'revision', '', 0),
(10, 1, '2017-12-17 22:16:25', '2017-12-17 19:16:25', 'Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга.<!--more-->\r\n\r\nПосле выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга. После выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-12-17 22:16:25', '2017-12-17 19:16:25', '', 6, 'http://ebrf.ru/?p=10', 0, 'revision', '', 0),
(11, 1, '2017-12-20 12:16:42', '2017-12-20 09:16:42', '', 'Тестовая', '', 'publish', 'closed', 'closed', '', 'testovaya', '', '', '2017-12-20 12:16:42', '2017-12-20 09:16:42', '', 0, 'http://ebrf.ru/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-12-20 12:15:51', '2017-12-20 09:15:51', '', 'Тестовая', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-12-20 12:15:51', '2017-12-20 09:15:51', '', 11, 'http://ebrf.ru/?p=12', 0, 'revision', '', 0),
(15, 1, '2017-12-20 12:44:52', '2017-12-20 09:44:52', 'Готовясь к поездке за рубеж, необходимо захватить с собой достаточное количество наличных, банковскую карту. Путешественники также часто оформляют займы онлайн, чтобы запастись деньгами для отдыха. Но что предпринять человеку, если он столкнулся с финансовыми проблемами во время пребывания за рубежом? Где найти средства туристу, если он сильно потратится, потеряет кошелек или станет жертвой воров?\r\n<h5>Оформляем микрозаймы онлайн на карту</h5>\r\nВы по той или иной причине остались за границей с пустыми карманами? Тогда воспользуйтесь услугами одной из многочисленных российских микрофинансовых организаций и оформите ссуду через Интернет. МФО рассматривают заявки клиентов удаленно за считаные минуты, а деньги перечисляют им на банковский «пластик» и электронные кошельки.\r\n\r\nВ МФО взять займ онлайн очень легко. Для этого необходимо посетить сайт такой организации и оформить там заявку, указав в ней:\r\nсвои паспортные и контактные данные;\r\nжелаемую сумму микрозайма;планируемый срок погашения задолженности.\r\n<h5>Блокировка банковской карты</h5>\r\nОформляя микрозаймы на карту, люди используют не только заемные, но и собственные средства, хранящиеся на банковском счету. Случается, что финансовые учреждения расценивают расходы человека за рубежом как подозрительные, поэтому блокируют «пластик». Чтобы этого не произошло, заранее уведомьте банк о том, что отправляетесь в путешествие, и назовите страны, которые намерены посетить. Это можно сделать, не посещая финансовую организацию, посредством системы интернет-банкинга.\r\n\r\nЕсли ваша карта все же будет заблокирована, свяжитесь с представителями банка или же используемой вами платежной системы (MasterCard, Visa). Для решения проблемы финансисты разблокируют «пластик» или выдадут вам в офисе банка-партнера за рубежом дополнительную карту с ограниченным сроком действия.\r\n\r\nВы потеряли карту во время путешествия? Тогда обязательно свяжитесь с представителями банка и попросите ее заблокировать. До блокировки «пластика» по возможности переведите все находившиеся там средства на другую карту, воспользовавшись онлайн-банкингом.\r\n<h5>Помощь родственников и дипломатов</h5>\r\nУ вас украли кошелек с деньгами, банковским «пластиком» и документами? Тогда вы не сможете оформить микрокредит на карту. В данной ситуации человеку необходимо обратиться в консульство или посольство. Там его личность подтвердят с помощью копий документов, присланных с родины.\r\n\r\nЕсли у гражданина остался при себе паспорт или международные водительские права, он может связаться с близкими и попросить их переслать деньги через Western Union, MoneyGram и т.д. В свою очередь, если у родственников не окажется наличных, им можно посоветовать оформить микрокредит онлайн в проверенной МФО.', 'Займы онлайн и другие способы решения проблем с деньгами за рубежом', '', 'publish', 'open', 'open', '', 'zajmy-onlajn-i-drugie-sposoby-resheniya-problem-s-dengami-za-rubezhom', '', '', '2017-12-22 09:10:15', '2017-12-22 06:10:15', '', 0, 'http://ebrf.ru/?p=15', 0, 'post', '', 1),
(16, 1, '2017-12-20 12:44:52', '2017-12-20 09:44:52', 'Готовясь к поездке за рубеж, необходимо захватить с собой достаточное количество наличных, банковскую карту. Путешественники также часто оформляют займы онлайн, чтобы запастись деньгами для отдыха. Но что предпринять человеку, если он столкнулся с финансовыми проблемами во время пребывания за рубежом? Где найти средства туристу, если он сильно потратится, потеряет кошелек или станет жертвой воров?\r\n<h5>Оформляем микрозаймы онлайн на карту</h5>\r\nВы по той или иной причине остались за границей с пустыми карманами? Тогда воспользуйтесь услугами одной из многочисленных российских микрофинансовых организаций и оформите ссуду через Интернет. МФО рассматривают заявки клиентов удаленно за считаные минуты, а деньги перечисляют им на банковский «пластик» и электронные кошельки.\r\n\r\nВ МФО взять займ онлайн очень легко. Для этого необходимо посетить сайт такой организации и оформить там заявку, указав в ней:\r\nсвои паспортные и контактные данные;\r\nжелаемую сумму микрозайма;планируемый срок погашения задолженности.\r\n<h5>Блокировка банковской карты</h5>\r\nОформляя микрозаймы на карту, люди используют не только заемные, но и собственные средства, хранящиеся на банковском счету. Случается, что финансовые учреждения расценивают расходы человека за рубежом как подозрительные, поэтому блокируют «пластик». Чтобы этого не произошло, заранее уведомьте банк о том, что отправляетесь в путешествие, и назовите страны, которые намерены посетить. Это можно сделать, не посещая финансовую организацию, посредством системы интернет-банкинга.\r\n\r\nЕсли ваша карта все же будет заблокирована, свяжитесь с представителями банка или же используемой вами платежной системы (MasterCard, Visa). Для решения проблемы финансисты разблокируют «пластик» или выдадут вам в офисе банка-партнера за рубежом дополнительную карту с ограниченным сроком действия.\r\n\r\nВы потеряли карту во время путешествия? Тогда обязательно свяжитесь с представителями банка и попросите ее заблокировать. До блокировки «пластика» по возможности переведите все находившиеся там средства на другую карту, воспользовавшись онлайн-банкингом.\r\n<h5>Помощь родственников и дипломатов</h5>\r\nУ вас украли кошелек с деньгами, банковским «пластиком» и документами? Тогда вы не сможете оформить микрокредит на карту. В данной ситуации человеку необходимо обратиться в консульство или посольство. Там его личность подтвердят с помощью копий документов, присланных с родины.\r\n\r\nЕсли у гражданина остался при себе паспорт или международные водительские права, он может связаться с близкими и попросить их переслать деньги через Western Union, MoneyGram и т.д. В свою очередь, если у родственников не окажется наличных, им можно посоветовать оформить микрокредит онлайн в проверенной МФО.', 'Займы онлайн и другие способы решения проблем с деньгами за рубежом', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-12-20 12:44:52', '2017-12-20 09:44:52', '', 15, 'http://ebrf.ru/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-12-20 12:51:22', '2017-12-20 09:51:22', '', '1-1', '', 'inherit', 'open', 'closed', '', '1-1', '', '', '2017-12-20 12:58:31', '2017-12-20 09:58:31', '', 15, 'http://ebrf.ru/wp-content/uploads/2017/12/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2017-12-20 15:04:08', '2017-12-20 12:04:08', 'Готовясь к поездке за рубеж, необходимо захватить с собой достаточное количество наличных, банковскую карту. Путешественники также часто оформляют займы онлайн, чтобы запастись деньгами для отдыха.<!--more--> Но что предпринять человеку, если он столкнулся с финансовыми проблемами во время пребывания за рубежом? Где найти средства туристу, если он сильно потратится, потеряет кошелек или станет жертвой воров?\r\n<h5>Оформляем микрозаймы онлайн на карту</h5>\r\nВы по той или иной причине остались за границей с пустыми карманами? Тогда воспользуйтесь услугами одной из многочисленных российских микрофинансовых организаций и оформите ссуду через Интернет. МФО рассматривают заявки клиентов удаленно за считаные минуты, а деньги перечисляют им на банковский «пластик» и электронные кошельки.\r\n\r\nВ МФО взять займ онлайн очень легко. Для этого необходимо посетить сайт такой организации и оформить там заявку, указав в ней:\r\nсвои паспортные и контактные данные;\r\nжелаемую сумму микрозайма;планируемый срок погашения задолженности.\r\n<h5>Блокировка банковской карты</h5>\r\nОформляя микрозаймы на карту, люди используют не только заемные, но и собственные средства, хранящиеся на банковском счету. Случается, что финансовые учреждения расценивают расходы человека за рубежом как подозрительные, поэтому блокируют «пластик». Чтобы этого не произошло, заранее уведомьте банк о том, что отправляетесь в путешествие, и назовите страны, которые намерены посетить. Это можно сделать, не посещая финансовую организацию, посредством системы интернет-банкинга.\r\n\r\nЕсли ваша карта все же будет заблокирована, свяжитесь с представителями банка или же используемой вами платежной системы (MasterCard, Visa). Для решения проблемы финансисты разблокируют «пластик» или выдадут вам в офисе банка-партнера за рубежом дополнительную карту с ограниченным сроком действия.\r\n\r\nВы потеряли карту во время путешествия? Тогда обязательно свяжитесь с представителями банка и попросите ее заблокировать. До блокировки «пластика» по возможности переведите все находившиеся там средства на другую карту, воспользовавшись онлайн-банкингом.\r\n<h5>Помощь родственников и дипломатов</h5>\r\nУ вас украли кошелек с деньгами, банковским «пластиком» и документами? Тогда вы не сможете оформить микрокредит на карту. В данной ситуации человеку необходимо обратиться в консульство или посольство. Там его личность подтвердят с помощью копий документов, присланных с родины.\r\n\r\nЕсли у гражданина остался при себе паспорт или международные водительские права, он может связаться с близкими и попросить их переслать деньги через Western Union, MoneyGram и т.д. В свою очередь, если у родственников не окажется наличных, им можно посоветовать оформить микрокредит онлайн в проверенной МФО.', 'Займы онлайн и другие способы решения проблем с деньгами за рубежом 2', '', 'publish', 'open', 'open', '', 'zajmy-onlajn-i-drugie-sposoby-resheniya-problem-s-dengami-za-rubezhom-2', '', '', '2017-12-22 11:48:55', '2017-12-22 08:48:55', '', 0, 'http://ebrf.ru/?p=18', 0, 'post', '', 6),
(19, 1, '2017-12-20 15:04:08', '2017-12-20 12:04:08', 'Готовясь к поездке за рубеж, необходимо захватить с собой достаточное количество наличных, банковскую карту. Путешественники также часто оформляют займы онлайн, чтобы запастись деньгами для отдыха. Но что предпринять человеку, если он столкнулся с финансовыми проблемами во время пребывания за рубежом? Где найти средства туристу, если он сильно потратится, потеряет кошелек или станет жертвой воров?\r\n<h5>Оформляем микрозаймы онлайн на карту</h5>\r\nВы по той или иной причине остались за границей с пустыми карманами? Тогда воспользуйтесь услугами одной из многочисленных российских микрофинансовых организаций и оформите ссуду через Интернет. МФО рассматривают заявки клиентов удаленно за считаные минуты, а деньги перечисляют им на банковский «пластик» и электронные кошельки.\r\n\r\nВ МФО взять займ онлайн очень легко. Для этого необходимо посетить сайт такой организации и оформить там заявку, указав в ней:\r\nсвои паспортные и контактные данные;\r\nжелаемую сумму микрозайма;планируемый срок погашения задолженности.\r\n<h5>Блокировка банковской карты</h5>\r\nОформляя микрозаймы на карту, люди используют не только заемные, но и собственные средства, хранящиеся на банковском счету. Случается, что финансовые учреждения расценивают расходы человека за рубежом как подозрительные, поэтому блокируют «пластик». Чтобы этого не произошло, заранее уведомьте банк о том, что отправляетесь в путешествие, и назовите страны, которые намерены посетить. Это можно сделать, не посещая финансовую организацию, посредством системы интернет-банкинга.\r\n\r\nЕсли ваша карта все же будет заблокирована, свяжитесь с представителями банка или же используемой вами платежной системы (MasterCard, Visa). Для решения проблемы финансисты разблокируют «пластик» или выдадут вам в офисе банка-партнера за рубежом дополнительную карту с ограниченным сроком действия.\r\n\r\nВы потеряли карту во время путешествия? Тогда обязательно свяжитесь с представителями банка и попросите ее заблокировать. До блокировки «пластика» по возможности переведите все находившиеся там средства на другую карту, воспользовавшись онлайн-банкингом.\r\n<h5>Помощь родственников и дипломатов</h5>\r\nУ вас украли кошелек с деньгами, банковским «пластиком» и документами? Тогда вы не сможете оформить микрокредит на карту. В данной ситуации человеку необходимо обратиться в консульство или посольство. Там его личность подтвердят с помощью копий документов, присланных с родины.\r\n\r\nЕсли у гражданина остался при себе паспорт или международные водительские права, он может связаться с близкими и попросить их переслать деньги через Western Union, MoneyGram и т.д. В свою очередь, если у родственников не окажется наличных, им можно посоветовать оформить микрокредит онлайн в проверенной МФО.', 'Займы онлайн и другие способы решения проблем с деньгами за рубежом 2', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-12-20 15:04:08', '2017-12-20 12:04:08', '', 18, 'http://ebrf.ru/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-12-20 15:43:03', '2017-12-20 12:43:03', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '3-autosave-v1', '', '', '2017-12-20 15:43:03', '2017-12-20 12:43:03', '', 3, 'http://ebrf.ru/3-autosave-v1/', 0, 'revision', '', 0),
(21, 1, '2017-12-20 15:47:21', '2017-12-20 12:47:21', '', 'fdsafd', '', 'trash', 'open', 'open', '', 'fdsafd__trashed', '', '', '2017-12-20 15:48:06', '2017-12-20 12:48:06', '', 0, 'http://ebrf.ru/?p=21', 0, 'post', '', 0),
(22, 1, '2017-12-20 15:47:21', '2017-12-20 12:47:21', '', 'fdsafd', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-20 15:47:21', '2017-12-20 12:47:21', '', 21, 'http://ebrf.ru/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-12-20 15:47:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-20 15:47:55', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?p=23', 0, 'post', '', 0),
(24, 1, '2017-12-20 15:47:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-20 15:47:56', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?p=24', 0, 'post', '', 0),
(27, 1, '2017-12-21 14:03:16', '2017-12-21 11:03:16', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nebrf \"[your-subject]\"\n[your-name] <wordpress@ebrf.ru>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ebrf (http://ebrf.ru)\ntest@test.ru\nReply-To: [your-email]\n\n0\n0\n\nebrf \"[your-subject]\"\nebrf <wordpress@ebrf.ru>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ebrf (http://ebrf.ru)\n[your-email]\nReply-To: test@test.ru\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-12-21 14:03:16', '2017-12-21 11:03:16', '', 0, 'http://ebrf.ru/?post_type=wpcf7_contact_form&p=27', 0, 'wpcf7_contact_form', '', 0),
(28, 1, '2017-12-21 14:04:32', '2017-12-21 11:04:32', '<div class=\"double-form\"><div class=\"double-form__item\">[text text-35 placeholder \"Имя\"][tel tel-153 placeholder \"Телефон\"][email* email-42 placeholder=\"Email\"]</div><div class=\"double-form__item\">[text text-36 placeholder \"Сумма\"][tel tel-154 placeholder \"Срок кредитования\"]<button class=\"btn_block\">Получить займ</button></div></div>\n1\nebrf \"[your-subject]\"\n[your-name] <wordpress@ebrf.ru>\ntest@test.ru\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта ebrf (http://ebrf.ru)\nReply-To: [your-email]\n\n\n\n\nebrf \"[your-subject]\"\nebrf <wordpress@ebrf.ru>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта ebrf (http://ebrf.ru)\nReply-To: test@test.ru\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nКод введен неверно.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Единая заявка во все банки', '', 'publish', 'closed', 'closed', '', 'edinaya-zayavka-vo-vse-banki', '', '', '2017-12-21 14:20:58', '2017-12-21 11:20:58', '', 0, 'http://ebrf.ru/?post_type=wpcf7_contact_form&#038;p=28', 0, 'wpcf7_contact_form', '', 0),
(29, 1, '2017-12-21 14:47:50', '2017-12-21 11:47:50', 'Готовясь к поездке за рубеж, необходимо захватить с собой достаточное количество наличных, банковскую карту. Путешественники также часто оформляют займы онлайн, чтобы запастись деньгами для отдыха.<!--more--> Но что предпринять человеку, если он столкнулся с финансовыми проблемами во время пребывания за рубежом? Где найти средства туристу, если он сильно потратится, потеряет кошелек или станет жертвой воров?\r\n<h5>Оформляем микрозаймы онлайн на карту</h5>\r\nВы по той или иной причине остались за границей с пустыми карманами? Тогда воспользуйтесь услугами одной из многочисленных российских микрофинансовых организаций и оформите ссуду через Интернет. МФО рассматривают заявки клиентов удаленно за считаные минуты, а деньги перечисляют им на банковский «пластик» и электронные кошельки.\r\n\r\nВ МФО взять займ онлайн очень легко. Для этого необходимо посетить сайт такой организации и оформить там заявку, указав в ней:\r\nсвои паспортные и контактные данные;\r\nжелаемую сумму микрозайма;планируемый срок погашения задолженности.\r\n<h5>Блокировка банковской карты</h5>\r\nОформляя микрозаймы на карту, люди используют не только заемные, но и собственные средства, хранящиеся на банковском счету. Случается, что финансовые учреждения расценивают расходы человека за рубежом как подозрительные, поэтому блокируют «пластик». Чтобы этого не произошло, заранее уведомьте банк о том, что отправляетесь в путешествие, и назовите страны, которые намерены посетить. Это можно сделать, не посещая финансовую организацию, посредством системы интернет-банкинга.\r\n\r\nЕсли ваша карта все же будет заблокирована, свяжитесь с представителями банка или же используемой вами платежной системы (MasterCard, Visa). Для решения проблемы финансисты разблокируют «пластик» или выдадут вам в офисе банка-партнера за рубежом дополнительную карту с ограниченным сроком действия.\r\n\r\nВы потеряли карту во время путешествия? Тогда обязательно свяжитесь с представителями банка и попросите ее заблокировать. До блокировки «пластика» по возможности переведите все находившиеся там средства на другую карту, воспользовавшись онлайн-банкингом.\r\n<h5>Помощь родственников и дипломатов</h5>\r\nУ вас украли кошелек с деньгами, банковским «пластиком» и документами? Тогда вы не сможете оформить микрокредит на карту. В данной ситуации человеку необходимо обратиться в консульство или посольство. Там его личность подтвердят с помощью копий документов, присланных с родины.\r\n\r\nЕсли у гражданина остался при себе паспорт или международные водительские права, он может связаться с близкими и попросить их переслать деньги через Western Union, MoneyGram и т.д. В свою очередь, если у родственников не окажется наличных, им можно посоветовать оформить микрокредит онлайн в проверенной МФО.', 'Займы онлайн и другие способы решения проблем с деньгами за рубежом 2', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-12-21 14:47:50', '2017-12-21 11:47:50', '', 18, 'http://ebrf.ru/18-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-12-21 16:31:46', '2017-12-21 13:31:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Блог', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-12-22 11:27:15', '2017-12-22 08:27:15', '', 0, 'http://ebrf.ru/?page_id=30', 0, 'page', '', 0),
(31, 1, '2017-12-21 16:31:46', '2017-12-21 13:31:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Блог', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-12-21 16:31:46', '2017-12-21 13:31:46', '', 30, 'http://ebrf.ru/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-12-22 09:10:30', '2017-12-22 06:10:30', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-22 09:10:30', '2017-12-22 06:10:30', '', 1, 'http://ebrf.ru/1-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-12-22 11:30:13', '2017-12-22 08:30:13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Единая заявка', '', 'publish', 'closed', 'closed', '', 'edinaya-zayavka', '', '', '2017-12-22 11:30:25', '2017-12-22 08:30:25', '', 0, 'http://ebrf.ru/?page_id=33', 0, 'page', '', 0),
(34, 1, '2017-12-22 11:30:13', '2017-12-22 08:30:13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Единая заявка', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-22 11:30:13', '2017-12-22 08:30:13', '', 33, 'http://ebrf.ru/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-12-22 12:11:45', '2017-12-22 09:11:45', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Калькулятор', '', 'publish', 'closed', 'closed', '', 'kalkulyator', '', '', '2017-12-22 12:15:22', '2017-12-22 09:15:22', '', 0, 'http://ebrf.ru/?page_id=35', 0, 'page', '', 0),
(36, 1, '2017-12-22 12:11:45', '2017-12-22 09:11:45', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Калькулятор', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-12-22 12:11:45', '2017-12-22 09:11:45', '', 35, 'http://ebrf.ru/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-12-22 12:13:53', '2017-12-22 09:13:53', '', 'Калькулятор страница', '', 'publish', 'closed', 'closed', '', 'acf_kalkulyator-stranitsa', '', '', '2017-12-22 12:14:45', '2017-12-22 09:14:45', '', 0, 'http://ebrf.ru/?post_type=acf&#038;p=37', 0, 'acf', '', 0),
(38, 1, '2017-12-22 12:15:22', '2017-12-22 09:15:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Калькулятор', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-12-22 12:15:22', '2017-12-22 09:15:22', '', 35, 'http://ebrf.ru/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-12-22 13:49:10', '2017-12-22 10:49:10', 'еКапуста – российская микрокредитная компания. Выдает займы с 2012 года. Агентством RAEX (Эксперт) компании присвоен рейтинг надежности на уровне A. МФО входит в СРО «Мир».\r\n\r\nЗайм можно оформить из любого города России через интернет. Сервис автоматически анализирует заявки и принимает решение о выдаче займа. МФО переводит деньги в любое время тем способом, который вы выбрали.\r\n\r\nеКапуста ведет деятельность на основании свидетельства о внесении в реестр микрофинансовых организаций №2120754001243, выданного Банком России 22 марта 2012 года. МФК зарегистрирована в Новосибирске. Центральный офис находится по адресу – улица Русская, дом 39.\r\n<h2 class=\"left\">Преимущества</h2>\r\n<ul>\r\n 	<li>Оформить займ можно в любое время суток – подать онлайн-заявку, получить автоматическое решение и перечислить деньги на свой счет</li>\r\n 	<li>Деньги зачисляются на карту Виза/Мастеркард, счет электронного кошелька Qiwi/Яндекс.Деньги, банковский счет или переводом через Contact/Золотая Корона</li>\r\n 	<li>Максимальная сумма займа – до 30 000 руб</li>\r\n 	<li>Погасить займ можно переводом с банковской карты, электронного кошелька или через пункты оплаты</li>\r\n 	<li>Можно продлить займ, погасив начисленные проценты</li>\r\n</ul>\r\n<h2 class=\"left\">Как оформить заявку:</h2>\r\n<ul>\r\n 	<li>Задайте бегунками сумму и срок займа. Ознакомьтесь с расчетом возврата и нажмите на кнопку «Получить займ»</li>\r\n 	<li>Заполните паспортные и контактные данные. Укажите сведения о прописке и месте проживания. Нажмите на кнопку «Продолжить»</li>\r\n 	<li>Выберите тип занятости и укажите ежемесячный доход. Заполните сведения о семейном положении. Загрузите свою фотографию и скан паспорта. Нажмите «Продолжить»</li>\r\n 	<li>Дополнительно заполните данные о социальных сетях и кредитной истории</li>\r\n</ul>', 'еКапуста', 'Взять займ в еКапусте. Как оформить заявку. Обзор личного кабинета. Условия сайта ekapusta.ru. Адрес, телефон и новости. Оставить свой отзыв.', 'publish', 'closed', 'closed', '', 'ekapusta', '', '', '2017-12-24 21:56:39', '2017-12-24 18:56:39', '', 0, 'http://ebrf.ru/?post_type=company&#038;p=39', 0, 'company', '', 0),
(40, 1, '2017-12-22 13:48:58', '2017-12-22 10:48:58', '', '3-big', '', 'inherit', 'open', 'closed', '', '3-big', '', '', '2017-12-22 13:48:58', '2017-12-22 10:48:58', '', 39, 'http://ebrf.ru/wp-content/uploads/2017/12/3-big.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2017-12-22 14:03:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-22 14:03:55', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=acf&p=42', 0, 'acf', '', 0),
(43, 1, '2017-12-22 14:07:49', '2017-12-22 11:07:49', '', 'еКапуста', 'Взять займ в еКапусте. Как оформить заявку. Обзор личного кабинета. Условия сайта ekapusta.ru. Адрес, телефон и новости. Оставить свой отзыв.', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2017-12-22 14:07:49', '2017-12-22 11:07:49', '', 39, 'http://ebrf.ru/39-autosave-v1/', 0, 'revision', '', 0),
(44, 1, '2017-12-22 14:27:00', '2017-12-22 11:27:00', '', 'Компания запись', '', 'publish', 'closed', 'closed', '', 'acf_kompaniya-zapis', '', '', '2017-12-22 15:14:25', '2017-12-22 12:14:25', '', 0, 'http://ebrf.ru/?post_type=acf&#038;p=44', 0, 'acf', '', 0),
(45, 1, '2017-12-24 20:31:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-24 20:31:38', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?p=45', 0, 'post', '', 0),
(46, 1, '2017-12-25 14:21:07', '2017-12-25 11:21:07', '', 'Отзывы запись', '', 'publish', 'closed', 'closed', '', 'acf_otzyvy-zapis', '', '', '2017-12-25 19:03:25', '2017-12-25 16:03:25', '', 0, 'http://ebrf.ru/?post_type=acf&#038;p=46', 0, 'acf', '', 0),
(47, 1, '2017-12-25 14:51:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-25 14:51:21', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=47', 0, 'review', '', 0),
(48, 1, '2017-12-25 19:05:33', '2017-12-25 16:05:33', 'asdf asdf asdf asdf', 'еКапуста test', '', 'publish', 'closed', 'closed', '', 'ekapusta-test', '', '', '2017-12-25 19:05:33', '2017-12-25 16:05:33', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=48', 0, 'review', '', 0),
(49, 1, '2017-12-25 19:06:00', '2017-12-25 16:06:00', 'asdf asdf asdf asdf', 'еКапуста test', '', 'publish', 'closed', 'closed', '', 'ekapusta-test-2', '', '', '2017-12-25 19:06:00', '2017-12-25 16:06:00', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=49', 0, 'review', '', 0),
(50, 1, '2017-12-25 19:06:17', '2017-12-25 16:06:17', 'fdas fsadf asdf asdf', 'еКапуста test2', '', 'publish', 'closed', 'closed', '', 'ekapusta-test2', '', '', '2017-12-25 19:06:17', '2017-12-25 16:06:17', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=50', 0, 'review', '', 0),
(51, 1, '2017-12-25 15:48:00', '0000-00-00 00:00:00', 'fdas asdfasdf asd', 'еКапуста test3', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 15:48:00', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=51', 0, 'review', '', 0),
(52, 1, '2017-12-25 15:48:41', '0000-00-00 00:00:00', 'asdf asdfasdfas df asdf asdf d f', 'еКапуста test4', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 15:48:41', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=52', 0, 'review', '', 0),
(53, 1, '2017-12-25 16:21:01', '0000-00-00 00:00:00', 'asdf asdf asdf asdf', 'еКапуста test5', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 16:21:01', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=53', 0, 'review', '', 0),
(54, 1, '2017-12-25 16:27:32', '2017-12-25 13:27:32', 'asdf asdf asdf asdf asdfas dfafs', 'еКапуста test6', '', 'publish', 'closed', 'closed', '', 'ekapusta-test6', '', '', '2017-12-25 16:27:32', '2017-12-25 13:27:32', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=54', 0, 'review', '', 0),
(55, 1, '2017-12-25 16:25:27', '0000-00-00 00:00:00', ' asdf asdf asdf asdf asdfas dfafs', 'еКапуста test6', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 16:25:27', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=55', 0, 'review', '', 0),
(56, 1, '2017-12-25 17:47:03', '0000-00-00 00:00:00', 'asdf asdf asdf asdf asdf asdfasdf asdf', 'еКапуста test8', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 17:47:03', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=56', 0, 'review', '', 0),
(57, 1, '2017-12-25 17:52:47', '0000-00-00 00:00:00', 'asdf asdf asdf asdf asdf asdfasdf asdf', 'еКапуста test8', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 17:52:47', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=57', 0, 'review', '', 0),
(58, 1, '2017-12-25 17:54:00', '0000-00-00 00:00:00', 'asdf asd', 'еКапуста test9', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 17:54:00', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=58', 0, 'review', '', 0),
(59, 1, '2017-12-25 17:55:00', '0000-00-00 00:00:00', 'sadf', 'еКапуста test10', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 17:55:00', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=59', 0, 'review', '', 0),
(60, 1, '2017-12-25 18:04:28', '0000-00-00 00:00:00', 'asdf asdfasd fdf', 'еКапуста test11', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:04:28', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=60', 0, 'review', '', 0),
(61, 1, '2017-12-25 18:10:21', '0000-00-00 00:00:00', 'asdf asdfasd fdf', 'еКапуста test11', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:10:21', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=61', 0, 'review', '', 0),
(62, 1, '2017-12-25 18:10:27', '0000-00-00 00:00:00', 'asdf asdfasd fdf', 'еКапуста test11', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:10:27', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=62', 0, 'review', '', 0),
(63, 1, '2017-12-25 18:10:34', '0000-00-00 00:00:00', 'asdf asdfasd fdf', 'еКапуста test11', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:10:34', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=63', 0, 'review', '', 0),
(64, 1, '2017-12-25 18:11:57', '0000-00-00 00:00:00', 'adsfas df', 'еКапуста test12', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:11:57', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=64', 0, 'review', '', 0),
(65, 1, '2017-12-25 18:16:18', '0000-00-00 00:00:00', 'asdfasdf a', 'еКапуста test13', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:16:18', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=65', 0, 'review', '', 0),
(66, 1, '2017-12-25 18:16:38', '0000-00-00 00:00:00', 'asdfasdf a', 'еКапуста test13', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:16:38', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=66', 0, 'review', '', 0),
(67, 1, '2017-12-25 18:18:30', '0000-00-00 00:00:00', 'asdfasdf a', 'еКапуста test13', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:18:30', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=67', 0, 'review', '', 0),
(68, 1, '2017-12-25 18:18:51', '0000-00-00 00:00:00', 'asdfd ', 'еКапуста test14', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:18:51', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=68', 0, 'review', '', 0),
(69, 1, '2017-12-25 18:19:12', '0000-00-00 00:00:00', 'asdfd ', 'еКапуста test14', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:19:12', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=69', 0, 'review', '', 0),
(70, 1, '2017-12-25 18:21:35', '0000-00-00 00:00:00', 'asdf asd', 'еКапуста test15', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:21:35', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=70', 0, 'review', '', 0),
(71, 1, '2017-12-25 18:21:49', '0000-00-00 00:00:00', 'asdf asd', 'еКапуста test15', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:21:49', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=71', 0, 'review', '', 0),
(72, 1, '2017-12-25 18:23:42', '0000-00-00 00:00:00', 'asdf asdf ', 'еКапуста test16', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:23:42', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=72', 0, 'review', '', 0),
(73, 1, '2017-12-25 18:23:56', '0000-00-00 00:00:00', 'asdf asdf ', 'еКапуста test16', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:23:56', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=73', 0, 'review', '', 0),
(74, 1, '2017-12-25 18:25:38', '0000-00-00 00:00:00', 'asdf asdf ', 'еКапуста test16', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:25:38', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=74', 0, 'review', '', 0),
(75, 1, '2017-12-25 18:26:12', '0000-00-00 00:00:00', 'asdfasdf ', 'еКапуста test17', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:26:12', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=75', 0, 'review', '', 0),
(76, 1, '2017-12-25 18:28:05', '0000-00-00 00:00:00', 'asdfasdf ', 'еКапуста test17', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 18:28:05', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=76', 0, 'review', '', 0),
(77, 1, '2017-12-25 19:49:33', '2017-12-25 16:49:33', 'as dfasdf asdf', 'еКапуста asdfasdf asd', '', 'publish', 'closed', 'closed', '', 'ekapusta-asdfasdf-asd', '', '', '2017-12-25 19:49:33', '2017-12-25 16:49:33', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=77', 0, 'review', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2017-12-25 19:05:08', '2017-12-25 16:05:08', 'dsaf ad fa s', 'еКапуста test18', '', 'publish', 'closed', 'closed', '', 'ekapusta-test18-2', '', '', '2017-12-25 19:05:08', '2017-12-25 16:05:08', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=78', 0, 'review', '', 0),
(79, 1, '2017-12-25 19:04:47', '2017-12-25 16:04:47', 'dsaf ad fa s', 'еКапуста test18', '', 'publish', 'closed', 'closed', '', 'ekapusta-test18', '', '', '2017-12-25 19:04:47', '2017-12-25 16:04:47', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=79', 0, 'review', '', 0),
(80, 1, '2017-12-25 19:04:30', '2017-12-25 16:04:30', 'fdsg dsdsfg dfsgdf', 'еКапуста test19', '', 'publish', 'closed', 'closed', '', 'ekapusta-test19-2', '', '', '2017-12-25 19:04:30', '2017-12-25 16:04:30', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=80', 0, 'review', '', 0),
(81, 1, '2017-12-25 19:03:57', '2017-12-25 16:03:57', 'fdsg dsdsfg dfsgdf', 'еКапуста test19', '', 'publish', 'closed', 'closed', '', 'ekapusta-test19', '', '', '2017-12-25 19:03:57', '2017-12-25 16:03:57', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=81', 0, 'review', '', 0),
(82, 1, '2017-12-25 19:07:22', '0000-00-00 00:00:00', 'fdsg dsdsfg dfsgdf', 'еКапуста test19', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:07:22', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=82', 0, 'review', '', 0),
(83, 1, '2017-12-25 19:09:21', '0000-00-00 00:00:00', 'fdsg dsdsfg dfsgdf', 'еКапуста test19', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:09:21', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=83', 0, 'review', '', 0),
(84, 1, '2017-12-25 19:17:05', '2017-12-25 16:17:05', 'asdfas', 'еКапуста admin', '', 'publish', 'closed', 'closed', '', 'ekapusta-admin', '', '', '2017-12-25 19:17:05', '2017-12-25 16:17:05', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=84', 0, 'review', '', 0),
(85, 1, '2017-12-25 19:32:21', '2017-12-25 16:32:21', 'asdf asdf ttttttttt', 'еКапуста admin', '', 'publish', 'closed', 'closed', '', 'ekapusta-admin-2', '', '', '2017-12-25 19:32:21', '2017-12-25 16:32:21', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=85', 0, 'review', '', 0),
(86, 1, '2017-12-25 19:20:58', '0000-00-00 00:00:00', 'asdfas asdf', 'еКапуста admin', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:20:58', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=86', 0, 'review', '', 0),
(87, 1, '2017-12-25 19:24:42', '0000-00-00 00:00:00', 'asdfas asdf', 'еКапуста admin', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:24:42', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=87', 0, 'review', '', 0),
(88, 1, '2017-12-25 19:25:04', '0000-00-00 00:00:00', 'asdfas ', 'еКапуста admin', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:25:04', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=88', 0, 'review', '', 0),
(89, 1, '2017-12-25 19:29:05', '0000-00-00 00:00:00', 'asdfas ', 'еКапуста admin', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:29:05', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=89', 0, 'review', '', 0),
(90, 1, '2017-12-25 19:29:26', '0000-00-00 00:00:00', 'asdfas ', 'еКапуста admin', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:29:26', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=90', 0, 'review', '', 0),
(91, 1, '2017-12-25 19:31:12', '0000-00-00 00:00:00', 'asdfas ', 'еКапуста admin', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:31:12', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=91', 0, 'review', '', 0),
(92, 1, '2017-12-25 19:48:56', '2017-12-25 16:48:56', 'asdfasdfdsafffffffffff', 'еКапуста admin', '', 'publish', 'closed', 'closed', '', 'ekapusta-admin-3', '', '', '2017-12-25 19:48:56', '2017-12-25 16:48:56', '', 0, 'http://ebrf.ru/?post_type=review&#038;p=92', 0, 'review', '', 0),
(93, 1, '2017-12-25 19:49:03', '0000-00-00 00:00:00', 'asdfasdfdsafffffffffff', 'еКапуста admin', '', 'pending', 'closed', 'closed', '', '', '', '', '2017-12-25 19:49:03', '0000-00-00 00:00:00', '', 0, 'http://ebrf.ru/?post_type=review&p=93', 0, 'review', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_ratings`
--

CREATE TABLE `wp_ratings` (
  `rating_id` int(11) NOT NULL,
  `rating_postid` int(11) NOT NULL,
  `rating_posttitle` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_rating` int(2) NOT NULL,
  `rating_timestamp` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_ip` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_host` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_username` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_ratings`
--

INSERT INTO `wp_ratings` (`rating_id`, `rating_postid`, `rating_posttitle`, `rating_rating`, `rating_timestamp`, `rating_ip`, `rating_host`, `rating_username`, `rating_userid`) VALUES
(1, 15, 'Займы онлайн и другие способы решения проблем с деньгами за рубежом', 5, '1513781318', '127.0.0.1', 'ebrf', 'admin', 1),
(2, 18, 'Займы онлайн и другие способы решения проблем с деньгами за рубежом 2', 4, '1513782500', '127.0.0.1', 'ebrf', 'admin', 1),
(3, 1, 'Привет, мир!', 5, '1513784806', '127.0.0.1', 'ebrf', 'admin', 1),
(4, 21, 'fdsafd', 2, '1513784852', '127.0.0.1', 'ebrf', 'admin', 1),
(5, 92, 'еКапуста admin', 5, '1514234452', '127.0.0.1', 'localhost', 'admin', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Полезные статьи', 'poleznye-stati', 0),
(3, 'Новости партнеров', 'novosti-partnerov', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 0, 0),
(1, 2, 0),
(15, 3, 0),
(18, 3, 0),
(21, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_toolset_post_guid_id`
--

CREATE TABLE `wp_toolset_post_guid_id` (
  `guid` varchar(190) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(12, 1, 'wp_capabilities', 'a:13:{s:13:\"administrator\";b:1;s:26:\"wpcf_custom_post_type_view\";b:1;s:26:\"wpcf_custom_post_type_edit\";b:1;s:33:\"wpcf_custom_post_type_edit_others\";b:1;s:25:\"wpcf_custom_taxonomy_view\";b:1;s:25:\"wpcf_custom_taxonomy_edit\";b:1;s:32:\"wpcf_custom_taxonomy_edit_others\";b:1;s:22:\"wpcf_custom_field_view\";b:1;s:22:\"wpcf_custom_field_edit\";b:1;s:29:\"wpcf_custom_field_edit_others\";b:1;s:25:\"wpcf_user_meta_field_view\";b:1;s:25:\"wpcf_user_meta_field_edit\";b:1;s:32:\"wpcf_user_meta_field_edit_others\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4d2ce1d3afde932fd53640c1fa75ed641cc34aa3a2a084adbf3bfdf82788a2b9\";a:4:{s:10:\"expiration\";i:1514309495;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\";s:5:\"login\";i:1514136695;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '45'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1514141795'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:6:{i:0;s:5:\"acf_8\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(23, 1, 'toolset_admin_notices_manager', 'a:1:{s:17:\"dismissed-notices\";a:2:{s:26:\"how-to-design-with-toolset\";b:1;s:31:\"types_free_version_support_ends\";b:1;}}'),
(24, 1, 'closedpostboxes_toolset_page_wpcf-edit-type', 'a:1:{i:0;s:12:\"types_labels\";}'),
(25, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"types-information-table\";}'),
(26, 1, 'metaboxhidden_page', 'a:6:{i:0;s:5:\"acf_8\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(27, 1, 'metaboxhidden_toolset_page_wpcf-edit-type', 'a:1:{i:0;s:12:\"field_groups\";}'),
(28, 1, 'closedpostboxes_toolset_page_wpcf-edit-tax', 'a:2:{i:0;s:13:\"types_options\";i:1;s:12:\"types_labels\";}'),
(29, 1, 'closedpostboxes_company', 'a:1:{i:0;s:23:\"types-information-table\";}'),
(30, 1, 'metaboxhidden_company', 'a:3:{i:0;s:5:\"acf_8\";i:1;s:6:\"acf_37\";i:2;s:7:\"slugdiv\";}'),
(31, 1, 'meta-box-order_company', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:39:\"submitdiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:63:\"postexcerpt,types-information-table,acf_8,acf_37,acf_44,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'screen_layout_company', '2'),
(33, 1, 'closedpostboxes_review', 'a:1:{i:0;s:23:\"types-information-table\";}'),
(34, 1, 'metaboxhidden_review', 'a:4:{i:0;s:5:\"acf_8\";i:1;s:6:\"acf_37\";i:2;s:6:\"acf_44\";i:3;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BmiNB2hLFQCY5yFF.aM/0PZO/nLDFk0', 'admin', 'test@test.ru', '', '2017-12-15 07:32:35', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_ratings`
--
ALTER TABLE `wp_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `rating_userid` (`rating_userid`),
  ADD KEY `rating_postid_ip` (`rating_postid`,`rating_ip`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_toolset_post_guid_id`
--
ALTER TABLE `wp_toolset_post_guid_id`
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `guid` (`guid`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=745;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `wp_ratings`
--
ALTER TABLE `wp_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
