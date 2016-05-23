-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 mei 2016 om 18:18
-- Serverversie: 5.7.11
-- PHP-versie: 5.5.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5155d10211_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `access_tokens`
--

DROP TABLE IF EXISTS `access_tokens`;
CREATE TABLE `access_tokens` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_activity` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `access_tokens`
--

TRUNCATE TABLE `access_tokens`;
--
-- Gegevens worden geëxporteerd voor tabel `access_tokens`
--

INSERT INTO `access_tokens` (`id`, `user_id`, `last_activity`, `lifetime`) VALUES
('ZhCiLozEuk524pipdGMjt9eYd4rCwItmXXy96FSt', 1, 1464027040, 1209600);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
CREATE TABLE `api_keys` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `api_keys`
--

TRUNCATE TABLE `api_keys`;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
CREATE TABLE `auth_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `auth_tokens`
--

TRUNCATE TABLE `auth_tokens`;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `discussions`
--

DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `participants_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_index` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL,
  `start_user_id` int(10) UNSIGNED DEFAULT NULL,
  `start_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `last_user_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_number` int(10) UNSIGNED DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `discussions`
--

TRUNCATE TABLE `discussions`;
--
-- Gegevens worden geëxporteerd voor tabel `discussions`
--

INSERT INTO `discussions` (`id`, `title`, `comments_count`, `participants_count`, `number_index`, `start_time`, `start_user_id`, `start_post_id`, `last_time`, `last_user_id`, `last_post_id`, `last_post_number`, `hide_time`, `hide_user_id`, `slug`, `is_approved`, `is_locked`, `is_sticky`) VALUES
(1, 'Welkom!', 1, 1, 1, '2016-05-23 17:44:49', 1, 1, '2016-05-23 17:44:49', 1, 1, 1, NULL, NULL, 'welkom', 1, 0, 0),
(2, 'Renovlies', 0, 1, 1, '2016-05-23 17:55:01', 1, 2, '2016-05-23 17:55:01', 1, 2, 1, NULL, NULL, 'renovlies', 1, 0, 0),
(3, 'Renovlies', 1, 1, 1, '2016-05-23 18:10:13', 1, 3, '2016-05-23 18:10:13', 1, 3, 1, NULL, NULL, 'renovlies', 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `discussions_tags`
--

DROP TABLE IF EXISTS `discussions_tags`;
CREATE TABLE `discussions_tags` (
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `discussions_tags`
--

TRUNCATE TABLE `discussions_tags`;
--
-- Gegevens worden geëxporteerd voor tabel `discussions_tags`
--

INSERT INTO `discussions_tags` (`discussion_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `email_tokens`
--

DROP TABLE IF EXISTS `email_tokens`;
CREATE TABLE `email_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `email_tokens`
--

TRUNCATE TABLE `email_tokens`;
--
-- Gegevens worden geëxporteerd voor tabel `email_tokens`
--

INSERT INTO `email_tokens` (`id`, `email`, `user_id`, `created_at`) VALUES
('M6luuVE2yj33156Zc0BHrUko0ImwOf60QT8DhjgI', 'nfsnoek@gmail.com', 2, '2016-05-23 15:49:08');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `flags`
--

DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `flags`
--

TRUNCATE TABLE `flags`;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `groups`
--

TRUNCATE TABLE `groups`;
--
-- Gegevens worden geëxporteerd voor tabel `groups`
--

INSERT INTO `groups` (`id`, `name_singular`, `name_plural`, `color`, `icon`) VALUES
(1, 'Admin', 'Admins', '#B72A2A', 'wrench'),
(2, 'Guest', 'Guests', NULL, NULL),
(3, 'Member', 'Members', NULL, NULL),
(4, 'Mod', 'Mods', '#80349E', 'bolt');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mentions_posts`
--

DROP TABLE IF EXISTS `mentions_posts`;
CREATE TABLE `mentions_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `mentions_posts`
--

TRUNCATE TABLE `mentions_posts`;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `mentions_users`
--

DROP TABLE IF EXISTS `mentions_users`;
CREATE TABLE `mentions_users` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `mentions_users`
--

TRUNCATE TABLE `mentions_users`;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `extension`) VALUES
('2015_02_24_000000_create_access_tokens_table', NULL),
('2015_02_24_000000_create_api_keys_table', NULL),
('2015_02_24_000000_create_config_table', NULL),
('2015_02_24_000000_create_discussions_table', NULL),
('2015_02_24_000000_create_email_tokens_table', NULL),
('2015_02_24_000000_create_groups_table', NULL),
('2015_02_24_000000_create_notifications_table', NULL),
('2015_02_24_000000_create_password_tokens_table', NULL),
('2015_02_24_000000_create_permissions_table', NULL),
('2015_02_24_000000_create_posts_table', NULL),
('2015_02_24_000000_create_users_discussions_table', NULL),
('2015_02_24_000000_create_users_groups_table', NULL),
('2015_02_24_000000_create_users_table', NULL),
('2015_09_15_000000_create_auth_tokens_table', NULL),
('2015_09_20_224327_add_hide_to_discussions', NULL),
('2015_09_22_030432_rename_notification_read_time', NULL),
('2015_10_07_130531_rename_config_to_settings', NULL),
('2015_10_24_194000_add_ip_address_to_posts', NULL),
('2015_12_05_042721_change_access_tokens_columns', NULL),
('2015_12_17_194247_change_settings_value_column_to_text', NULL),
('2016_02_04_095452_add_slug_to_discussions', NULL),
('2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval'),
('2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval'),
('2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags'),
('2015_09_02_000000_create_flags_table', 'flarum-flags'),
('2015_05_11_000000_create_posts_likes_table', 'flarum-likes'),
('2015_09_04_000000_add_default_like_permissions', 'flarum-likes'),
('2015_02_24_000000_add_locked_to_discussions', 'flarum-lock'),
('2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions'),
('2015_05_11_000000_create_mentions_users_table', 'flarum-mentions'),
('2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky'),
('2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions'),
('2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend'),
('2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend'),
('2015_02_24_000000_create_discussions_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_users_tags_table', 'flarum-tags'),
('2015_02_24_000000_set_default_settings', 'flarum-tags'),
('2015_10_19_061223_make_slug_unique', 'flarum-tags');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `data` blob,
  `time` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `notifications`
--

TRUNCATE TABLE `notifications`;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_tokens`
--

DROP TABLE IF EXISTS `password_tokens`;
CREATE TABLE `password_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `password_tokens`
--

TRUNCATE TABLE `password_tokens`;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `permissions`
--

TRUNCATE TABLE `permissions`;
--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`group_id`, `permission`) VALUES
(3, 'discussion.likePosts'),
(3, 'discussion.reply'),
(3, 'startDiscussion'),
(3, 'viewDiscussions'),
(4, 'discussion.delete'),
(4, 'discussion.deletePosts'),
(4, 'discussion.editPosts'),
(4, 'discussion.rename');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED DEFAULT NULL,
  `time` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` datetime DEFAULT NULL,
  `edit_user_id` int(10) UNSIGNED DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `posts`
--

TRUNCATE TABLE `posts`;
--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `discussion_id`, `number`, `time`, `user_id`, `type`, `content`, `edit_time`, `edit_user_id`, `hide_time`, `hide_user_id`, `ip_address`, `is_approved`) VALUES
(1, 1, 1, '2016-05-23 17:44:49', 1, 'comment', '<t><p>Hoi,</p>\n\n<p>Leuk dat je hier een kijkje neemt. Dit forum is bedoeld voor bewoners van de Loevesteinlaan in Gorinchem. <br/>\nOmdat we allemaal min of meer hetzelfde huis krijgen, kan het handig zijn om ervaringen uit te wisselen over welke vakmensen we inhuren voor welke klussen, en wat dat kost. En misschien zijn er ook nog wel andere tips om te delen.</p> \n\n<p>Voordat je berichten kunt plaatsen moet je even een account aanmaken.</p> \n\n<p>Ik hoop dat we er met plezier gebruik van kunnen maken.</p> \n\n<p>groetjes, <br/>\nPeter (beheerder)</p></t>', NULL, NULL, NULL, NULL, NULL, 1),
(2, 2, 1, '2016-05-23 17:55:01', 1, 'comment', '<t><p>Wij overwegen op de begane grond Renovlies te nemen. We hebben contact met twee vakmensen die schilderen en behangen. Wie heeft er tips voor een goede vakman die niet te duur is?<br/>\nWe hebben nu een aanbod voor 14 euro / m2 (voor materiaal, schuren, voorstrijken, behangen en 1x sauzen).</p></t>', NULL, NULL, '2016-05-23 18:09:48', 1, NULL, 1),
(3, 3, 1, '2016-05-23 18:10:13', 1, 'comment', '<t><p>Wij overwegen op de begane grond Renovlies te nemen. We hebben contact met twee vakmensen die schilderen en behangen. Wie heeft er tips voor een goede vakman die niet te duur is?<br/>\nWe hebben nu een aanbod voor 14 euro / m2 (voor materiaal, schuren, voorstrijken, behangen en 1x sauzen).</p></t>', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts_likes`
--

DROP TABLE IF EXISTS `posts_likes`;
CREATE TABLE `posts_likes` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `posts_likes`
--

TRUNCATE TABLE `posts_likes`;
--
-- Gegevens worden geëxporteerd voor tabel `posts_likes`
--

INSERT INTO `posts_likes` (`post_id`, `user_id`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `settings`
--

TRUNCATE TABLE `settings`;
--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`key`, `value`) VALUES
('allow_post_editing', 'reply'),
('allow_renaming', '10'),
('allow_sign_up', '1'),
('custom_less', ''),
('default_locale', 'nl'),
('default_route', '/all'),
('extensions_enabled', '["flarum-approval","flarum-bbcode","flarum-emoji","flarum-english","flarum-flags","flarum-likes","flarum-lock","flarum-markdown","flarum-mentions","flarum-sticky","flarum-subscriptions","flarum-suspend","flarum-tags","rodymol123-dutch"]'),
('flarum-tags.max_primary_tags', '1'),
('flarum-tags.max_secondary_tags', '3'),
('flarum-tags.min_primary_tags', '1'),
('flarum-tags.min_secondary_tags', '0'),
('forum_description', 'Berichtenbord, uitsluitend voor bewoners van de Loevesteinlaan in Gorinchem.'),
('forum_title', 'Loevesteinlaan'),
('mail_driver', 'mail'),
('mail_from', 'noreply@loevesteinlaan.dev'),
('theme_colored_header', '0'),
('theme_dark_mode', '0'),
('theme_primary_color', '#4D698E'),
('theme_secondary_color', '#4D698E'),
('version', '0.1.0-beta.5'),
('welcome_message', 'Voor bewoners van de Loevesteinlaan in Gorinchem'),
('welcome_title', 'Welkom in de Loevesteinlaan');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` datetime DEFAULT NULL,
  `last_discussion_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `tags`
--

TRUNCATE TABLE `tags`;
--
-- Gegevens worden geëxporteerd voor tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `description`, `color`, `background_path`, `background_mode`, `position`, `parent_id`, `default_sort`, `is_restricted`, `is_hidden`, `discussions_count`, `last_time`, `last_discussion_id`) VALUES
(1, 'Algemeen', 'algemeen', '', '#aaaaaa', NULL, NULL, 0, NULL, NULL, 0, 0, 2, '2016-05-23 17:55:01', 2),
(2, 'Klussen', 'klussen', 'Over de verschillende klussen waar je vakmensen voor kunt inhuren: schilderen, behangen, vloeren, enzovoorts', '', NULL, NULL, 1, NULL, NULL, 0, 0, 2, '2016-05-23 18:10:13', 3),
(3, 'Kosten', 'kosten', 'Wat betaal je per m2, of per werkdag, of per klus?', '', NULL, NULL, 2, NULL, NULL, 0, 0, 1, '2016-05-23 17:55:01', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `join_time` datetime DEFAULT NULL,
  `last_seen_time` datetime DEFAULT NULL,
  `read_time` datetime DEFAULT NULL,
  `notifications_read_time` datetime DEFAULT NULL,
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `flags_read_time` datetime DEFAULT NULL,
  `suspend_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `users`
--

TRUNCATE TABLE `users`;
--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `is_activated`, `password`, `bio`, `avatar_path`, `preferences`, `join_time`, `last_seen_time`, `read_time`, `notifications_read_time`, `discussions_count`, `comments_count`, `flags_read_time`, `suspend_until`) VALUES
(1, 'Peter', 'peter.snoek@gmail.com', 1, '$2y$10$HZuyl7BSpNx6mGrGL2shxu7c/1LjChdaUnP/Ctw1bDrY7/incwoAa', 'Loevesteinlaan 11. Echtgenoot van Nicole en vader van Kirsten, Mirte en Luca. Docent @ Da Vinci College.', 'k1hpkuqsygxvqxeo.jpg', 0x7b226e6f746966795f64697363757373696f6e52656e616d65645f616c657274223a747275652c226e6f746966795f706f73744c696b65645f616c657274223a747275652c226e6f746966795f64697363757373696f6e4c6f636b65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f656d61696c223a747275652c226e6f746966795f757365724d656e74696f6e65645f616c657274223a747275652c226e6f746966795f757365724d656e74696f6e65645f656d61696c223a747275652c226e6f746966795f6e6577506f73745f616c657274223a747275652c226e6f746966795f6e6577506f73745f656d61696c223a747275652c22666f6c6c6f7741667465725265706c79223a747275652c22646973636c6f73654f6e6c696e65223a747275652c22696e64657850726f66696c65223a747275652c226c6f63616c65223a6e756c6c7d, '2016-05-23 17:30:22', '2016-05-23 18:10:40', NULL, NULL, 3, 2, NULL, NULL),
(2, 'Nicole', 'nfsnoek@gmail.com', 1, '$2y$10$8vT7KoQf3GnZsw2O0m7hyOGhF0gw3vGLJ5SNhEqyKox3z9zgviMJ6', NULL, NULL, NULL, '2016-05-23 17:49:08', '2016-05-23 18:09:14', NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users_discussions`
--

DROP TABLE IF EXISTS `users_discussions`;
CREATE TABLE `users_discussions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `read_number` int(10) UNSIGNED DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `users_discussions`
--

TRUNCATE TABLE `users_discussions`;
--
-- Gegevens worden geëxporteerd voor tabel `users_discussions`
--

INSERT INTO `users_discussions` (`user_id`, `discussion_id`, `read_time`, `read_number`, `subscription`) VALUES
(1, 1, '2016-05-23 17:44:49', 1, NULL),
(1, 2, '2016-05-23 17:55:01', 1, 'follow'),
(1, 3, '2016-05-23 18:10:13', 1, 'follow');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `users_groups`
--

TRUNCATE TABLE `users_groups`;
--
-- Gegevens worden geëxporteerd voor tabel `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users_tags`
--

DROP TABLE IF EXISTS `users_tags`;
CREATE TABLE `users_tags` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tabel leegmaken voor invoegen `users_tags`
--

TRUNCATE TABLE `users_tags`;
--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `access_tokens`
--
ALTER TABLE `access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `discussions_tags`
--
ALTER TABLE `discussions_tags`
  ADD PRIMARY KEY (`discussion_id`,`tag_id`);

--
-- Indexen voor tabel `email_tokens`
--
ALTER TABLE `email_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `mentions_posts`
--
ALTER TABLE `mentions_posts`
  ADD PRIMARY KEY (`post_id`,`mentions_id`);

--
-- Indexen voor tabel `mentions_users`
--
ALTER TABLE `mentions_users`
  ADD PRIMARY KEY (`post_id`,`mentions_id`);

--
-- Indexen voor tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_tokens`
--
ALTER TABLE `password_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`group_id`,`permission`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`);
ALTER TABLE `posts` ADD FULLTEXT KEY `content` (`content`);

--
-- Indexen voor tabel `posts_likes`
--
ALTER TABLE `posts_likes`
  ADD PRIMARY KEY (`post_id`,`user_id`);

--
-- Indexen voor tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexen voor tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexen voor tabel `users_discussions`
--
ALTER TABLE `users_discussions`
  ADD PRIMARY KEY (`user_id`,`discussion_id`);

--
-- Indexen voor tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexen voor tabel `users_tags`
--
ALTER TABLE `users_tags`
  ADD PRIMARY KEY (`user_id`,`tag_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
