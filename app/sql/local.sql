-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-01-29 16:56:43','2023-01-29 16:56:43','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictionaluniversity.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictionaluniversity.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','fictional-university','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%category%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:163:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"professors/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"professors/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"professors/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"professors/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"professors/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"professors/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"professors/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:31:\"professors/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:39:\"professors/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:46:\"professors/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:35:\"professors/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:27:\"professors/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"professors/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"professors/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"professors/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"professors/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"professors/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=34&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','36','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','34','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1690563403','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:6:{i:1678201004;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1678208204;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678208578;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678208579;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678726604;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','V8gmS#1,RBH36*;3/ftL;C^Eg=KDYftmj(4.={e,# mq4Td}QP-ts>)&eJ:tt:$J','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','%X`v!AIX)(i6f0Ug]QK-Af)0VX|G_TKc;N?gy?tvaENsYxT]@Me2uH+IJJ;ccQ;u','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675014445;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (135,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678187293;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (140,'auth_key','`#x)(a#.UC*rGq(Rz<fHW0/*x987:|-SgT[PvP=G7OIN/;6=V6Ry)JZQ:{(Tijqu','no');
INSERT INTO `wp_options` VALUES (141,'auth_salt','&Fl*;M+iaAQ NWQe=M6+4OPW(yA_?_;EDl;{I^7pNc>&0pd_gMVR,iQcnD1e7N5K','no');
INSERT INTO `wp_options` VALUES (142,'logged_in_key','`#heV[4 ^pgp`4|(K3QkK?1UN @K2S4la)S#{guMey0U ?sw`!2sQ8nzr]4@K2D(','no');
INSERT INTO `wp_options` VALUES (143,'logged_in_salt','ym6GVqni}Zy96@q]MeX145hLV`4 7mK;TaRsk,D:$>)ZCmKnCK8)S(*n>u1@2^vu','no');
INSERT INTO `wp_options` VALUES (151,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (164,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (167,'current_theme','Transcript Theme','yes');
INSERT INTO `wp_options` VALUES (168,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (169,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (177,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (195,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (316,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (404,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (437,'recovery_mode_email_last_sent','1675264853','yes');
INSERT INTO `wp_options` VALUES (462,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (541,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1678198131;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (615,'acf_version','6.0.7','yes');
INSERT INTO `wp_options` VALUES (907,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678187293;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";}}','no');
INSERT INTO `wp_options` VALUES (908,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (963,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1678447025','no');
INSERT INTO `wp_options` VALUES (964,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1134,'_site_transient_timeout_theme_roots','1678189092','no');
INSERT INTO `wp_options` VALUES (1135,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1181,'_transient_timeout_global_styles_fictional-university-theme','1678198176','no');
INSERT INTO `wp_options` VALUES (1182,'_transient_global_styles_fictional-university-theme','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,1,'_edit_lock','1675114269:1');
INSERT INTO `wp_postmeta` VALUES (6,6,'_edit_lock','1677852594:1');
INSERT INTO `wp_postmeta` VALUES (9,8,'_edit_lock','1677444363:1');
INSERT INTO `wp_postmeta` VALUES (12,2,'_edit_lock','1675115744:1');
INSERT INTO `wp_postmeta` VALUES (13,11,'_edit_lock','1677861920:1');
INSERT INTO `wp_postmeta` VALUES (15,3,'_edit_lock','1675191425:1');
INSERT INTO `wp_postmeta` VALUES (16,15,'_edit_lock','1675199284:1');
INSERT INTO `wp_postmeta` VALUES (17,18,'_edit_lock','1675200126:1');
INSERT INTO `wp_postmeta` VALUES (18,20,'_edit_lock','1675200128:1');
INSERT INTO `wp_postmeta` VALUES (19,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (20,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (21,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (22,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (23,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (24,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (25,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (26,22,'_menu_item_url','http://fictionaluniversity.local/');
INSERT INTO `wp_postmeta` VALUES (27,22,'_menu_item_orphaned','1675250550');
INSERT INTO `wp_postmeta` VALUES (37,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (38,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (39,24,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (40,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (41,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (42,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (43,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (44,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (45,24,'_menu_item_orphaned','1675250550');
INSERT INTO `wp_postmeta` VALUES (46,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (47,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (48,25,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (49,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (50,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (51,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (52,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (53,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (55,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (56,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,26,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (58,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (59,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (63,26,'_menu_item_orphaned','1675250550');
INSERT INTO `wp_postmeta` VALUES (64,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (65,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,27,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (67,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (68,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (70,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (72,27,'_menu_item_orphaned','1675250550');
INSERT INTO `wp_postmeta` VALUES (73,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,28,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (76,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,28,'_menu_item_orphaned','1675250550');
INSERT INTO `wp_postmeta` VALUES (82,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (83,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (84,29,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (85,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (86,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (87,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (89,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (91,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (92,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (93,30,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (94,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (95,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (96,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (97,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (98,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (100,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (101,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (102,31,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (103,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (104,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (105,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (106,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (107,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (109,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (110,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (111,32,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (112,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (113,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (114,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (115,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (116,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (118,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (119,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (120,33,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (121,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (122,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (123,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (124,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (125,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (127,34,'_edit_lock','1675253544:1');
INSERT INTO `wp_postmeta` VALUES (128,36,'_edit_lock','1677863583:1');
INSERT INTO `wp_postmeta` VALUES (131,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (132,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (133,39,'_menu_item_object_id','36');
INSERT INTO `wp_postmeta` VALUES (134,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (135,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (136,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (137,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (138,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (140,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (141,40,'_edit_lock','1676307612:1');
INSERT INTO `wp_postmeta` VALUES (142,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (143,41,'_edit_lock','1676304292:1');
INSERT INTO `wp_postmeta` VALUES (144,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (145,42,'_edit_lock','1677938014:1');
INSERT INTO `wp_postmeta` VALUES (148,48,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (149,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (150,48,'_menu_item_object_id','-23');
INSERT INTO `wp_postmeta` VALUES (151,48,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (152,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (153,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (154,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (155,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (157,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (158,49,'_edit_lock','1677853521:1');
INSERT INTO `wp_postmeta` VALUES (159,42,'event_date','20221215');
INSERT INTO `wp_postmeta` VALUES (160,42,'_event_date','field_63db94ec2e0fc');
INSERT INTO `wp_postmeta` VALUES (161,41,'event_date','20230519');
INSERT INTO `wp_postmeta` VALUES (162,41,'_event_date','field_63db94ec2e0fc');
INSERT INTO `wp_postmeta` VALUES (163,40,'event_date','20230225');
INSERT INTO `wp_postmeta` VALUES (164,40,'_event_date','field_63db94ec2e0fc');
INSERT INTO `wp_postmeta` VALUES (165,52,'_edit_lock','1677852604:1');
INSERT INTO `wp_postmeta` VALUES (166,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (167,52,'event_date','20231220');
INSERT INTO `wp_postmeta` VALUES (168,52,'_event_date','field_63db94ec2e0fc');
INSERT INTO `wp_postmeta` VALUES (169,53,'_edit_lock','1676289410:1');
INSERT INTO `wp_postmeta` VALUES (170,56,'_edit_lock','1677852584:1');
INSERT INTO `wp_postmeta` VALUES (171,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (172,56,'event_date','20200417');
INSERT INTO `wp_postmeta` VALUES (173,56,'_event_date','field_63db94ec2e0fc');
INSERT INTO `wp_postmeta` VALUES (174,57,'_edit_lock','1676295798:1');
INSERT INTO `wp_postmeta` VALUES (175,58,'_edit_lock','1676295810:1');
INSERT INTO `wp_postmeta` VALUES (176,59,'_edit_lock','1676296761:1');
INSERT INTO `wp_postmeta` VALUES (177,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (178,61,'_edit_lock','1677853551:1');
INSERT INTO `wp_postmeta` VALUES (179,41,'related_programs','a:2:{i:0;s:2:\"58\";i:1;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (180,41,'_related_programs','field_63ea427f86b25');
INSERT INTO `wp_postmeta` VALUES (181,63,'_edit_lock','1677853593:1');
INSERT INTO `wp_postmeta` VALUES (182,64,'_edit_lock','1677857629:1');
INSERT INTO `wp_postmeta` VALUES (183,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (184,64,'related_programs','a:2:{i:0;s:2:\"59\";i:1;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (185,64,'_related_programs','field_63ea427f86b25');
INSERT INTO `wp_postmeta` VALUES (186,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (187,63,'related_programs','a:2:{i:0;s:2:\"58\";i:1;s:2:\"59\";}');
INSERT INTO `wp_postmeta` VALUES (188,63,'_related_programs','field_63ea427f86b25');
INSERT INTO `wp_postmeta` VALUES (189,42,'related_programs','a:2:{i:0;s:2:\"59\";i:1;s:2:\"58\";}');
INSERT INTO `wp_postmeta` VALUES (190,42,'_related_programs','field_63ea427f86b25');
INSERT INTO `wp_postmeta` VALUES (191,40,'related_programs','a:1:{i:0;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (192,40,'_related_programs','field_63ea427f86b25');
INSERT INTO `wp_postmeta` VALUES (213,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (214,74,'_edit_lock','1677853539:1');
INSERT INTO `wp_postmeta` VALUES (215,77,'_wp_attached_file','2023/03/about-banner.jpg');
INSERT INTO `wp_postmeta` VALUES (216,77,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:24:\"2023/03/about-banner.jpg\";s:8:\"filesize\";i:491103;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"about-banner-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21937;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"about-banner-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:233187;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"about-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8919;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"about-banner-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:134543;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:24:\"about-banner-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37019;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:24:\"about-banner-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:107980;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:25:\"about-banner-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98893;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (217,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,11,'page_banner_background_image','77');
INSERT INTO `wp_postmeta` VALUES (219,11,'_page_banner_background_image','field_6401fd5afa29f');
INSERT INTO `wp_postmeta` VALUES (220,11,'page_banner_subtitle','Learn more about our university');
INSERT INTO `wp_postmeta` VALUES (221,11,'_page_banner_subtitle','field_6401fd9bfa2a0');
INSERT INTO `wp_postmeta` VALUES (222,78,'page_banner_background_image','77');
INSERT INTO `wp_postmeta` VALUES (223,78,'_page_banner_background_image','field_6401fd5afa29f');
INSERT INTO `wp_postmeta` VALUES (224,78,'page_banner_subtitle','Learn more about our university');
INSERT INTO `wp_postmeta` VALUES (225,78,'_page_banner_subtitle','field_6401fd9bfa2a0');
INSERT INTO `wp_postmeta` VALUES (226,80,'_wp_attached_file','2023/02/dr-g.webp');
INSERT INTO `wp_postmeta` VALUES (227,80,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:320;s:6:\"height\";i:320;s:4:\"file\";s:17:\"2023/02/dr-g.webp\";s:8:\"filesize\";i:6632;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"dr-g-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7454;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"dr-g-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3532;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:17:\"dr-g-320x260.webp\";s:5:\"width\";i:320;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7628;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (228,63,'_thumbnail_id','80');
INSERT INTO `wp_postmeta` VALUES (229,63,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (230,63,'_page_banner_background_image','field_6401fd5afa29f');
INSERT INTO `wp_postmeta` VALUES (231,63,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (232,63,'_page_banner_subtitle','field_6401fd9bfa2a0');
INSERT INTO `wp_postmeta` VALUES (233,81,'_wp_attached_file','2023/03/tim-spector.jpg');
INSERT INTO `wp_postmeta` VALUES (234,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2023/03/tim-spector.jpg\";s:8:\"filesize\";i:21737;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"tim-spector-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11217;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"tim-spector-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4064;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:23:\"tim-spector-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15184;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:23:\"tim-spector-400x350.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19537;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (235,64,'_thumbnail_id','81');
INSERT INTO `wp_postmeta` VALUES (236,64,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (237,64,'_page_banner_background_image','field_6401fd5afa29f');
INSERT INTO `wp_postmeta` VALUES (238,64,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (239,64,'_page_banner_subtitle','field_6401fd9bfa2a0');
INSERT INTO `wp_postmeta` VALUES (240,82,'_wp_attached_file','2023/03/building.jpg');
INSERT INTO `wp_postmeta` VALUES (241,82,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1001;s:4:\"file\";s:20:\"2023/03/building.jpg\";s:8:\"filesize\";i:157721;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9183;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"building-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78268;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4120;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46432;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14135;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34599;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78273;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (242,36,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (243,36,'page_banner_background_image','82');
INSERT INTO `wp_postmeta` VALUES (244,36,'_page_banner_background_image','field_6401fd5afa29f');
INSERT INTO `wp_postmeta` VALUES (245,36,'page_banner_subtitle','Stay updated on our latest news');
INSERT INTO `wp_postmeta` VALUES (246,36,'_page_banner_subtitle','field_6401fd9bfa2a0');
INSERT INTO `wp_postmeta` VALUES (247,83,'page_banner_background_image','82');
INSERT INTO `wp_postmeta` VALUES (248,83,'_page_banner_background_image','field_6401fd5afa29f');
INSERT INTO `wp_postmeta` VALUES (249,83,'page_banner_subtitle','Stay updated on our latest news');
INSERT INTO `wp_postmeta` VALUES (250,83,'_page_banner_subtitle','field_6401fd9bfa2a0');
INSERT INTO `wp_postmeta` VALUES (251,84,'_wp_attached_file','2023/02/notebook.jpg');
INSERT INTO `wp_postmeta` VALUES (252,84,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1126;s:4:\"file\";s:20:\"2023/02/notebook.jpg\";s:8:\"filesize\";i:96160;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9900;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58384;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4555;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38028;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13629;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25567;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35166;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (253,42,'page_banner_background_image','84');
INSERT INTO `wp_postmeta` VALUES (254,42,'_page_banner_background_image','field_6401fd5afa29f');
INSERT INTO `wp_postmeta` VALUES (255,42,'page_banner_subtitle','The greatest poetry event of the year');
INSERT INTO `wp_postmeta` VALUES (256,42,'_page_banner_subtitle','field_6401fd9bfa2a0');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-01-29 16:56:43','2023-01-29 16:56:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-01-30 21:33:26','2023-01-30 21:33:26','',0,'http://fictionaluniversity.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-01-29 16:56:43','2023-01-29 16:56:43','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictionaluniversity.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-01-29 16:56:43','2023-01-29 16:56:43','',0,'http://fictionaluniversity.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-01-29 16:56:43','2023-01-29 16:56:43','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictionaluniversity.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2023-01-31 18:59:20','2023-01-31 18:59:20','',0,'http://fictionaluniversity.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-01-30 21:33:26','2023-01-30 21:33:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-01-30 21:33:26','2023-01-30 21:33:26','',1,'http://fictionaluniversity.local/?p=5',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-01-30 21:33:45','2023-01-30 21:33:45','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','Hello World','','publish','open','open','','hello-world-2','','','2023-01-30 21:33:45','2023-01-30 21:33:45','',0,'http://fictionaluniversity.local/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-01-30 21:33:45','2023-01-30 21:33:45','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','Hello World','','inherit','closed','closed','','6-revision-v1','','','2023-01-30 21:33:45','2023-01-30 21:33:45','',6,'http://fictionaluniversity.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-01-30 21:33:57','2023-01-30 21:33:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year.','publish','open','open','','hello-world-3','','','2023-02-01 18:47:21','2023-02-01 18:47:21','',0,'http://fictionaluniversity.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-01-30 21:33:57','2023-01-30 21:33:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','Hello WOrld','','inherit','closed','closed','','8-revision-v1','','','2023-01-30 21:33:57','2023-01-30 21:33:57','',8,'http://fictionaluniversity.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-01-30 21:47:45','2023-01-30 21:47:45','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictionaluniversity.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-autosave-v1','','','2023-01-30 21:47:45','2023-01-30 21:47:45','',2,'http://fictionaluniversity.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-01-31 18:58:57','2023-01-31 18:58:57','<!-- wp:paragraph -->\n<p>This is the about page content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem et tortor consequat id porta. Neque aliquam vestibulum morbi blandit cursus. Tristique magna sit amet purus gravida quis blandit. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Penatibus et magnis dis parturient montes nascetur ridiculus mus mauris. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gravida arcu ac tortor dignissim convallis aenean et. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Hac habitasse platea dictumst quisque sagittis purus. Nibh cras pulvinar mattis nunc sed blandit libero volutpat sed. Volutpat ac tincidunt vitae semper quis lectus. Pellentesque massa placerat duis ultricies lacus sed turpis.</p>\n<!-- /wp:paragraph -->','About us','','publish','closed','closed','','about-us','','','2023-03-03 14:10:35','2023-03-03 14:10:35','',0,'http://fictionaluniversity.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-01-31 18:58:57','2023-01-31 18:58:57','<!-- wp:paragraph -->\n<p>This is the about page content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem et tortor consequat id porta. Neque aliquam vestibulum morbi blandit cursus. Tristique magna sit amet purus gravida quis blandit. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Penatibus et magnis dis parturient montes nascetur ridiculus mus mauris. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gravida arcu ac tortor dignissim convallis aenean et. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Hac habitasse platea dictumst quisque sagittis purus. Nibh cras pulvinar mattis nunc sed blandit libero volutpat sed. Volutpat ac tincidunt vitae semper quis lectus. Pellentesque massa placerat duis ultricies lacus sed turpis.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','11-revision-v1','','','2023-01-31 18:58:57','2023-01-31 18:58:57','',11,'http://fictionaluniversity.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-01-31 18:59:20','2023-01-31 18:59:20','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictionaluniversity.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-01-31 18:59:20','2023-01-31 18:59:20','',3,'http://fictionaluniversity.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-01-31 21:01:08','2023-01-31 21:01:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium. Interdum velit laoreet id donec. A</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> scelerisque purus semper eget duis at tellus at urna. Sit amet dictum sit amet justo donec enim. Interdum posuere lorem ipsum dolor sit amet. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Consectetur adipiscing elit ut aliquam purus sit amet. Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. A lacus vestibulum sed arcu non odio euismod.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2023-01-31 21:08:26','2023-01-31 21:08:26','',11,'http://fictionaluniversity.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-01-31 21:01:08','2023-01-31 21:01:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium. Interdum velit laoreet id donec. A</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> scelerisque purus semper eget duis at tellus at urna. Sit amet dictum sit amet justo donec enim. Interdum posuere lorem ipsum dolor sit amet. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Consectetur adipiscing elit ut aliquam purus sit amet. Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. A lacus vestibulum sed arcu non odio euismod.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','15-revision-v1','','','2023-01-31 21:01:08','2023-01-31 21:01:08','',15,'http://fictionaluniversity.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-01-31 21:08:24','2023-01-31 21:08:24','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium. Interdum velit laoreet id donec. A</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> scelerisque purus semper eget duis at tellus at urna. Sit amet dictum sit amet justo donec enim. Interdum posuere lorem ipsum dolor sit amet. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Consectetur adipiscing elit ut aliquam purus sit amet. Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. A lacus vestibulum sed arcu non odio euismod.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','15-autosave-v1','','','2023-01-31 21:08:24','2023-01-31 21:08:24','',15,'http://fictionaluniversity.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-01-31 21:08:56','2023-01-31 21:08:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium. Interdum velit laoreet id donec. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A scelerisque purus semper eget duis at tellus at urna. Sit amet dictum sit amet justo donec enim. Interdum posuere lorem ipsum dolor sit amet. Consectetur adipiscing elit ut aliquam purus sit amet. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. A lacus vestibulum sed arcu non odio euismod.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2023-01-31 21:08:56','2023-01-31 21:08:56','',11,'http://fictionaluniversity.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-01-31 21:08:56','2023-01-31 21:08:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium. Interdum velit laoreet id donec. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A scelerisque purus semper eget duis at tellus at urna. Sit amet dictum sit amet justo donec enim. Interdum posuere lorem ipsum dolor sit amet. Consectetur adipiscing elit ut aliquam purus sit amet. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. A lacus vestibulum sed arcu non odio euismod.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','18-revision-v1','','','2023-01-31 21:08:56','2023-01-31 21:08:56','',18,'http://fictionaluniversity.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-01-31 21:24:31','2023-01-31 21:24:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium. Interdum velit laoreet id donec. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A scelerisque purus semper eget duis at tellus at urna. Sit amet dictum sit amet justo donec enim. Interdum posuere lorem ipsum dolor sit amet. Consectetur adipiscing elit ut aliquam purus sit amet. Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. A lacus vestibulum sed arcu non odio euismod.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2023-01-31 21:24:31','2023-01-31 21:24:31','',3,'http://fictionaluniversity.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-01-31 21:24:31','2023-01-31 21:24:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium. Interdum velit laoreet id donec. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A scelerisque purus semper eget duis at tellus at urna. Sit amet dictum sit amet justo donec enim. Interdum posuere lorem ipsum dolor sit amet. Consectetur adipiscing elit ut aliquam purus sit amet. Morbi tincidunt augue interdum velit euismod in pellentesque massa placerat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. A lacus vestibulum sed arcu non odio euismod.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','20-revision-v1','','','2023-01-31 21:24:31','2023-01-31 21:24:31','',20,'http://fictionaluniversity.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-02-01 11:22:30','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2023-02-01 11:22:30','0000-00-00 00:00:00','',0,'http://fictionaluniversity.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-02-01 11:22:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-02-01 11:22:30','0000-00-00 00:00:00','',3,'http://fictionaluniversity.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-02-01 19:20:58','2023-02-01 11:23:45',' ','','','publish','closed','closed','','25','','','2023-02-01 19:20:58','2023-02-01 19:20:58','',0,'http://fictionaluniversity.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-02-01 11:22:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-02-01 11:22:30','0000-00-00 00:00:00','',11,'http://fictionaluniversity.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-02-01 11:22:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-02-01 11:22:30','0000-00-00 00:00:00','',11,'http://fictionaluniversity.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-02-01 11:22:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-02-01 11:22:30','0000-00-00 00:00:00','',0,'http://fictionaluniversity.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-02-01 11:55:52','2023-02-01 11:55:52',' ','','','publish','closed','closed','','29','','','2023-02-01 11:55:52','2023-02-01 11:55:52','',0,'http://fictionaluniversity.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-02-01 11:55:52','2023-02-01 11:55:52',' ','','','publish','closed','closed','','30','','','2023-02-01 11:55:52','2023-02-01 11:55:52','',11,'http://fictionaluniversity.local/?p=30',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-02-01 11:55:52','2023-02-01 11:55:52',' ','','','publish','closed','closed','','31','','','2023-02-01 11:55:53','2023-02-01 11:55:53','',11,'http://fictionaluniversity.local/?p=31',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-02-01 11:56:01','2023-02-01 11:56:01',' ','','','publish','closed','closed','','32','','','2023-02-01 11:56:01','2023-02-01 11:56:01','',0,'http://fictionaluniversity.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-02-01 11:56:01','2023-02-01 11:56:01',' ','','','publish','closed','closed','','33','','','2023-02-01 11:56:01','2023-02-01 11:56:01','',3,'http://fictionaluniversity.local/?p=33',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-02-01 12:14:47','2023-02-01 12:14:47','','Home','','publish','closed','closed','','home','','','2023-02-01 12:14:47','2023-02-01 12:14:47','',0,'http://fictionaluniversity.local/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-02-01 12:14:47','2023-02-01 12:14:47','','Home','','inherit','closed','closed','','34-revision-v1','','','2023-02-01 12:14:47','2023-02-01 12:14:47','',34,'http://fictionaluniversity.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-02-01 12:14:56','2023-02-01 12:14:56','','Blog','','publish','closed','closed','','blog','','','2023-03-03 16:51:39','2023-03-03 16:51:39','',0,'http://fictionaluniversity.local/?page_id=36',0,'page','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-02-01 12:14:56','2023-02-01 12:14:56','','Blog','','inherit','closed','closed','','36-revision-v1','','','2023-02-01 12:14:56','2023-02-01 12:14:56','',36,'http://fictionaluniversity.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-02-01 12:55:09','2023-02-01 12:55:09','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','We Won An Award','','inherit','closed','closed','','8-revision-v1','','','2023-02-01 12:55:09','2023-02-01 12:55:09','',8,'http://fictionaluniversity.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-02-01 19:20:58','2023-02-01 14:48:30',' ','','','publish','closed','closed','','39','','','2023-02-01 19:20:58','2023-02-01 19:20:58','',0,'http://fictionaluniversity.local/?p=39',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-02-01 15:14:39','2023-02-01 15:14:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.','Math Meetup','','publish','closed','closed','','math-meetup','','','2023-02-13 17:00:12','2023-02-13 17:00:12','',0,'http://fictionaluniversity.local/?post_type=event&#038;p=40',0,'event','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-02-01 15:14:52','2023-02-01 15:14:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.','The science of cats','','publish','closed','closed','','the-science-of-cats','','','2023-02-13 14:09:24','2023-02-13 14:09:24','',0,'http://fictionaluniversity.local/?post_type=event&#038;p=41',0,'event','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-02-01 15:15:23','2023-02-01 15:15:23','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.<a href=\"http://fictionaluniversity.local/wp-admin/edit.php?post_type=event\"></a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.</p>\n<!-- /wp:paragraph -->','Poetry Day','Poetry day is going to be great!','publish','closed','closed','','poetry-day','','','2023-03-03 17:39:38','2023-03-03 17:39:38','',0,'http://fictionaluniversity.local/?post_type=event&#038;p=42',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-02-01 18:47:21','2023-02-01 18:47:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dictum nulla. Cras efficitur efficitur metus, in molestie magna laoreet a. Aenean facilisis dolor nunc, eu iaculis sapien maximus sed. Morbi suscipit eu dui quis lacinia. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque sodales velit nec ipsum rhoncus, ac pellentesque nulla aliquam. Nam molestie, dui convallis ultrices vestibulum, sem enim fringilla lectus, eleifend sodales purus mi non ipsum. Maecenas bibendum eros eu augue convallis porttitor. Pellentesque fringilla a ligula eu accumsan. Duis laoreet pellentesque erat vel suscipit. Donec vitae iaculis sem.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year.','inherit','closed','closed','','8-revision-v1','','','2023-02-01 18:47:21','2023-02-01 18:47:21','',8,'http://fictionaluniversity.local/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-02-01 19:20:58','2023-02-01 19:20:39','','Events','','publish','closed','closed','','events','','','2023-02-01 19:20:58','2023-02-01 19:20:58','',0,'http://fictionaluniversity.local/?p=48',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2023-02-02 10:51:29','2023-02-02 10:51:29','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_63db94eb6755a','','','2023-03-03 14:27:44','2023-03-03 14:27:44','',0,'http://fictionaluniversity.local/?post_type=acf-field-group&#038;p=49',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-02-02 10:51:29','2023-02-02 10:51:29','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_63db94ec2e0fc','','','2023-02-02 10:51:29','2023-02-02 10:51:29','',49,'http://fictionaluniversity.local/?post_type=acf-field&p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-02-13 11:56:51','2023-02-13 11:56:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc consequat interdum varius sit. Ut pharetra sit amet aliquam id diam maecenas ultricies mi. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dui nunc mattis enim ut tellus elementum sagittis. Curabitur vitae nunc sed velit. Scelerisque viverra mauris in aliquam sem fringilla ut. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sit amet nulla facilisi morbi tempus iaculis urna id. Et odio pellentesque diam volutpat commodo sed. Ut aliquam purus sit amet luctus venenatis lectus magna. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus. Mauris pellentesque pulvinar pellentesque habitant. At tempor commodo ullamcorper a lacus vestibulum sed arcu non.</p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2023-02-13 11:56:52','2023-02-13 11:56:52','',0,'http://fictionaluniversity.local/?post_type=event&#038;p=52',0,'event','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-02-13 11:58:56','2023-02-13 11:58:56','','Past Events','','publish','closed','closed','','past-events','','','2023-02-13 11:58:56','2023-02-13 11:58:56','',0,'http://fictionaluniversity.local/?page_id=53',0,'page','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-02-13 11:58:56','2023-02-13 11:58:56','','Past Events','','inherit','closed','closed','','53-revision-v1','','','2023-02-13 11:58:56','2023-02-13 11:58:56','',53,'http://fictionaluniversity.local/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-02-13 11:59:13','2023-02-13 11:59:13','','Past Events','','inherit','closed','closed','','53-autosave-v1','','','2023-02-13 11:59:13','2023-02-13 11:59:13','',53,'http://fictionaluniversity.local/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-02-13 12:45:23','2023-02-13 12:45:23','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat pharetra ultricies. Etiam felis arcu, pretium non purus vel, aliquet mollis mauris. Vestibulum a nunc ac sem eleifend euismod vitae nec est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget rutrum massa. Nulla ullamcorper ligula nec quam condimentum, non auctor ex dictum. Etiam in mattis urna.</p>\n<!-- /wp:paragraph -->','New Year 2020','','publish','closed','closed','','new-year-2020','','','2023-02-13 12:45:23','2023-02-13 12:45:23','',0,'http://fictionaluniversity.local/?post_type=event&#038;p=56',0,'event','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-02-13 13:45:40','2023-02-13 13:45:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat pharetra ultricies. Etiam felis arcu, pretium non purus vel, aliquet mollis mauris. Vestibulum a nunc ac sem eleifend euismod vitae nec est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget rutrum massa. Nulla ullamcorper ligula nec quam condimentum, non auctor ex dictum. Etiam in mattis urna.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2023-02-13 13:45:40','2023-02-13 13:45:40','',0,'http://fictionaluniversity.local/?post_type=program&#038;p=57',0,'program','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-02-13 13:45:53','2023-02-13 13:45:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat pharetra ultricies. Etiam felis arcu, pretium non purus vel, aliquet mollis mauris. Vestibulum a nunc ac sem eleifend euismod vitae nec est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget rutrum massa. Nulla ullamcorper ligula nec quam condimentum, non auctor ex dictum. Etiam in mattis urna.</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2023-02-13 13:45:53','2023-02-13 13:45:53','',0,'http://fictionaluniversity.local/?post_type=program&#038;p=58',0,'program','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-02-13 13:46:06','2023-02-13 13:46:06','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat pharetra ultricies. Etiam felis arcu, pretium non purus vel, aliquet mollis mauris. Vestibulum a nunc ac sem eleifend euismod vitae nec est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget rutrum massa. Nulla ullamcorper ligula nec quam condimentum, non auctor ex dictum. Etiam in mattis urna.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2023-02-13 13:46:06','2023-02-13 13:46:06','',0,'http://fictionaluniversity.local/?post_type=program&#038;p=59',0,'program','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-02-13 13:48:22','2023-02-13 13:48:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat pharetra ultricies. Etiam felis arcu, pretium non purus vel, aliquet mollis mauris. Vestibulum a nunc ac sem eleifend euismod vitae nec est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget rutrum massa. Nulla ullamcorper ligula nec quam condimentum, non auctor ex dictum. Etiam in mattis urna.</p>\n<!-- /wp:paragraph -->','English','','inherit','closed','closed','','59-autosave-v1','','','2023-02-13 13:48:22','2023-02-13 13:48:22','',59,'http://fictionaluniversity.local/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-02-13 14:03:18','2023-02-13 14:03:18','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related program','related-program','publish','closed','closed','','group_63ea427e907e5','','','2023-03-03 14:28:13','2023-03-03 14:28:13','',0,'http://fictionaluniversity.local/?post_type=acf-field-group&#038;p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-02-13 14:03:18','2023-02-13 14:03:18','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";}','Related Program(s)','related_programs','publish','closed','closed','','field_63ea427f86b25','','','2023-02-13 14:03:18','2023-02-13 14:03:18','',61,'http://fictionaluniversity.local/?post_type=acf-field&p=62',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-02-13 16:23:06','2023-02-13 16:23:06','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat pharetra ultricies. Etiam felis arcu, pretium non purus vel, aliquet mollis mauris. Vestibulum a nunc ac sem eleifend euismod vitae nec est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget rutrum massa. Nulla ullamcorper ligula nec quam condimentum, non auctor ex dictum. Etiam in mattis urna.</p>\n<!-- /wp:paragraph -->','Dr Guandalini','','publish','closed','closed','','dr-guandalini','','','2023-03-03 14:25:47','2023-03-03 14:25:47','',0,'http://fictionaluniversity.local/?post_type=professor&#038;p=63',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-02-13 16:23:43','2023-02-13 16:23:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat pharetra ultricies. Etiam felis arcu, pretium non purus vel, aliquet mollis mauris. Vestibulum a nunc ac sem eleifend euismod vitae nec est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget rutrum massa. Nulla ullamcorper ligula nec quam condimentum, non auctor ex dictum. Etiam in mattis urna.</p>\n<!-- /wp:paragraph -->','Dr Spector','','publish','closed','closed','','dr-spector','','','2023-03-03 14:27:04','2023-03-03 14:27:04','',0,'http://fictionaluniversity.local/?post_type=professor&#038;p=64',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-03-03 13:10:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-03-03 13:10:24','0000-00-00 00:00:00','',0,'http://fictionaluniversity.local/?p=73',0,'post','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-03-03 14:03:20','2023-03-03 14:03:20','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_6401fd5992cf4','','','2023-03-03 14:28:00','2023-03-03 14:28:00','',0,'http://fictionaluniversity.local/?post_type=acf-field-group&#038;p=74',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-03-03 14:03:20','2023-03-03 14:03:20','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_6401fd5afa29f','','','2023-03-03 14:03:20','2023-03-03 14:03:20','',74,'http://fictionaluniversity.local/?post_type=acf-field&p=75',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-03-03 14:03:20','2023-03-03 14:03:20','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_6401fd9bfa2a0','','','2023-03-03 14:03:20','2023-03-03 14:03:20','',74,'http://fictionaluniversity.local/?post_type=acf-field&p=76',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-03-03 14:10:27','2023-03-03 14:10:27','','about-banner','','inherit','open','closed','','about-banner','','','2023-03-03 14:10:27','2023-03-03 14:10:27','',11,'http://fictionaluniversity.local/wp-content/uploads/2023/03/about-banner.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-03-03 14:10:35','2023-03-03 14:10:35','<!-- wp:paragraph -->\n<p>This is the about page content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem et tortor consequat id porta. Neque aliquam vestibulum morbi blandit cursus. Tristique magna sit amet purus gravida quis blandit. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Penatibus et magnis dis parturient montes nascetur ridiculus mus mauris. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gravida arcu ac tortor dignissim convallis aenean et. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Hac habitasse platea dictumst quisque sagittis purus. Nibh cras pulvinar mattis nunc sed blandit libero volutpat sed. Volutpat ac tincidunt vitae semper quis lectus. Pellentesque massa placerat duis ultricies lacus sed turpis.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','11-revision-v1','','','2023-03-03 14:10:35','2023-03-03 14:10:35','',11,'http://fictionaluniversity.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-03-03 14:10:41','2023-03-03 14:10:41','<!-- wp:paragraph -->\n<p>This is the about page content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem et tortor consequat id porta. Neque aliquam vestibulum morbi blandit cursus. Tristique magna sit amet purus gravida quis blandit. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Penatibus et magnis dis parturient montes nascetur ridiculus mus mauris. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gravida arcu ac tortor dignissim convallis aenean et. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Hac habitasse platea dictumst quisque sagittis purus. Nibh cras pulvinar mattis nunc sed blandit libero volutpat sed. Volutpat ac tincidunt vitae semper quis lectus. Pellentesque massa placerat duis ultricies lacus sed turpis.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','11-autosave-v1','','','2023-03-03 14:10:41','2023-03-03 14:10:41','',11,'http://fictionaluniversity.local/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-03-03 14:25:36','2023-03-03 14:25:36','','dr-g','','inherit','open','closed','','dr-g','','','2023-03-03 14:25:36','2023-03-03 14:25:36','',63,'http://fictionaluniversity.local/wp-content/uploads/2023/02/dr-g.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-03-03 14:27:01','2023-03-03 14:27:01','','tim-spector','','inherit','open','closed','','tim-spector','','','2023-03-03 14:27:01','2023-03-03 14:27:01','',64,'http://fictionaluniversity.local/wp-content/uploads/2023/03/tim-spector.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-03-03 16:51:35','2023-03-03 16:51:35','','building','','inherit','open','closed','','building','','','2023-03-03 16:51:35','2023-03-03 16:51:35','',36,'http://fictionaluniversity.local/wp-content/uploads/2023/03/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (83,1,'2023-03-03 16:51:39','2023-03-03 16:51:39','','Blog','','inherit','closed','closed','','36-revision-v1','','','2023-03-03 16:51:39','2023-03-03 16:51:39','',36,'http://fictionaluniversity.local/?p=83',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-03-03 17:39:17','2023-03-03 17:39:17','','notebook','','inherit','open','closed','','notebook','','','2023-03-03 17:39:17','2023-03-03 17:39:17','',42,'http://fictionaluniversity.local/wp-content/uploads/2023/02/notebook.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,5,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,4,0);
INSERT INTO `wp_term_relationships` VALUES (33,4,0);
INSERT INTO `wp_term_relationships` VALUES (39,2,0);
INSERT INTO `wp_term_relationships` VALUES (48,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor. ',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor. ',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Footer Menu 1','footer-menu-1',0);
INSERT INTO `wp_terms` VALUES (4,'Footer Menu 2','footer-menu-2',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Adam Durrant');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, ligula nec pulvinar sodales, tellus lorem iaculis urna, ac blandit lorem neque a dolor.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"dc92a1be3dd0ac04f8f79641da036e152aca51e707a0e7c68ff8cd972ba5ac4e\";a:4:{s:10:\"expiration\";i:1678531161;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677321561;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','73');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-03-03T16:51:02.839Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (22,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1676995787');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'meta-box-order_page','a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:23:\"acf-group_6401fd5992cf4\";s:15:\"acf_after_title\";s:0:\"\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'university','$P$BveKYiedTdme7DYtjfygh8H5F.NTV51','university','dev-email@flywheel.local','http://fictionaluniversity.local','2023-01-29 16:56:43','',0,'Adam Durrant');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 14:10:59
