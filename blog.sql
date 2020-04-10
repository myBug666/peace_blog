-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: db_1907
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_bloguser'),(22,'Can change user',6,'change_bloguser'),(23,'Can delete user',6,'delete_bloguser'),(24,'Can view user',6,'view_bloguser'),(25,'Can add 文章',7,'add_article'),(26,'Can change 文章',7,'change_article'),(27,'Can delete 文章',7,'delete_article'),(28,'Can view 文章',7,'view_article'),(29,'Can add 轮播图',8,'add_banner'),(30,'Can change 轮播图',8,'change_banner'),(31,'Can delete 轮播图',8,'delete_banner'),(32,'Can view 轮播图',8,'view_banner'),(33,'Can add 分类',9,'add_category'),(34,'Can change 分类',9,'change_category'),(35,'Can delete 分类',9,'delete_category'),(36,'Can view 分类',9,'view_category'),(37,'Can add 评论',10,'add_comment'),(38,'Can change 评论',10,'change_comment'),(39,'Can delete 评论',10,'delete_comment'),(40,'Can view 评论',10,'view_comment'),(41,'Can add 友情链接',11,'add_friendlink'),(42,'Can change 友情链接',11,'change_friendlink'),(43,'Can delete 友情链接',11,'delete_friendlink'),(44,'Can view 友情链接',11,'view_friendlink'),(45,'Can add 标签',12,'add_tag'),(46,'Can change 标签',12,'change_tag'),(47,'Can delete 标签',12,'delete_tag'),(48,'Can view 标签',12,'view_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `vnum` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_category_id_7e38f15e_fk_blog_category_id` (`category_id`),
  KEY `blog_article_user_id_5beb0cc1_fk_blog_bloguser_id` (`user_id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_article_user_id_5beb0cc1_fk_blog_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `blog_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,0,'2020-04-02 08:15:20.360788','2020-04-02 08:19:34.050554','习近平进村啦','习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦',50,'article/2020/04/02/00.jpg',1,'<p style=\"text-align: center;\">习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦习大大来啦<img src=\"/media/article/content/3_20200402161508.jpg\" title=\"\" alt=\"3.jpg\"/></p>',1,1),(2,0,'2020-04-02 08:16:38.116908','2020-04-02 08:19:27.863094','小日本','小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦',200,'article/2020/04/02/7e3f8a78ce3124b98045d5cf3a31133.jpg',0,'<p>小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦小日本来啦</p><p style=\"text-align: center;\"><img src=\"/media/article/content/a8167f09adf8b0fbe09f756fcfe978e2_20200402161612.png\" title=\"\" alt=\"a8167f09adf8b0fbe09f756fcfe978e2.png\"/></p>',2,1),(3,0,'2020-04-02 08:17:26.061733','2020-04-02 08:19:22.716854','游戏1','游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1',0,'article/2020/04/02/7e3f8a78ce3124b98045d5cf3a31133_GlGCGWY.jpg',0,'<p>游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1<img src=\"/media/article/content/00_20200402161700.jpg\" title=\"\" alt=\"00.jpg\"/></p><p>游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1游戏1</p>',3,1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_tag`
--

DROP TABLE IF EXISTS `blog_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tag_article_id_tag_id_818e752b_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tag_article_id_8db2395e_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tag`
--

LOCK TABLES `blog_article_tag` WRITE;
/*!40000 ALTER TABLE `blog_article_tag` DISABLE KEYS */;
INSERT INTO `blog_article_tag` VALUES (4,1,4),(2,2,2),(3,3,1);
/*!40000 ALTER TABLE `blog_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_banner`
--

DROP TABLE IF EXISTS `blog_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `title` varchar(10) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_banner`
--

LOCK TABLES `blog_banner` WRITE;
/*!40000 ALTER TABLE `blog_banner` DISABLE KEYS */;
INSERT INTO `blog_banner` VALUES (1,0,'2020-04-02 08:18:57.486349','2020-04-02 08:18:57.486349','习近平进村啦','banner/2020/04/02/2.jpg','http://www.baidu.com',0),(2,0,'2020-04-02 08:19:09.763485','2020-04-02 08:19:09.763485','小日本','banner/2020/04/02/1.jpg','http://www.AV.com',0);
/*!40000 ALTER TABLE `blog_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_bloguser`
--

DROP TABLE IF EXISTS `blog_bloguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_bloguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_bloguser`
--

LOCK TABLES `blog_bloguser` WRITE;
/*!40000 ALTER TABLE `blog_bloguser` DISABLE KEYS */;
INSERT INTO `blog_bloguser` VALUES (1,'pbkdf2_sha256$120000$KNOoyPnr8Gn6$Xsp9dASjbVnUJ58QXu53bT+3av7n2Hwk9RmsNAG6jts=','2020-04-02 08:08:09.782478',1,'jianchao','','','jianchao@qq.com',1,1,'2020-04-02 08:08:00.018583','');
/*!40000 ALTER TABLE `blog_bloguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_bloguser_groups`
--

DROP TABLE IF EXISTS `blog_bloguser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_bloguser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_bloguser_groups_bloguser_id_group_id_4388f522_uniq` (`bloguser_id`,`group_id`),
  KEY `blog_bloguser_groups_group_id_e04739c4_fk_auth_group_id` (`group_id`),
  CONSTRAINT `blog_bloguser_groups_bloguser_id_26d40e56_fk_blog_bloguser_id` FOREIGN KEY (`bloguser_id`) REFERENCES `blog_bloguser` (`id`),
  CONSTRAINT `blog_bloguser_groups_group_id_e04739c4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_bloguser_groups`
--

LOCK TABLES `blog_bloguser_groups` WRITE;
/*!40000 ALTER TABLE `blog_bloguser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_bloguser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_bloguser_user_permissions`
--

DROP TABLE IF EXISTS `blog_bloguser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_bloguser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_bloguser_user_permi_bloguser_id_permission_i_20c5c0f5_uniq` (`bloguser_id`,`permission_id`),
  KEY `blog_bloguser_user_p_permission_id_2a62b8fe_fk_auth_perm` (`permission_id`),
  CONSTRAINT `blog_bloguser_user_p_bloguser_id_3a67e1c8_fk_blog_blog` FOREIGN KEY (`bloguser_id`) REFERENCES `blog_bloguser` (`id`),
  CONSTRAINT `blog_bloguser_user_p_permission_id_2a62b8fe_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_bloguser_user_permissions`
--

LOCK TABLES `blog_bloguser_user_permissions` WRITE;
/*!40000 ALTER TABLE `blog_bloguser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_bloguser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,0,'2020-04-02 08:08:37.943192','2020-04-02 08:08:37.943192','密西西',0),(2,0,'2020-04-02 08:08:44.138630','2020-04-02 08:08:44.138630','胡古拉啦',0),(3,0,'2020-04-02 08:08:48.991654','2020-04-02 08:08:48.991654','我哈哈',0);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `article_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_article_id_3d58bca6_fk_blog_article_id` (`article_id`),
  KEY `blog_comment_users_id_b92b6eff_fk_blog_bloguser_id` (`users_id`),
  CONSTRAINT `blog_comment_article_id_3d58bca6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_comment_users_id_b92b6eff_fk_blog_bloguser_id` FOREIGN KEY (`users_id`) REFERENCES `blog_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,0,'2020-04-02 08:18:34.662337','2020-04-02 08:18:34.663373','真好',1,1),(2,0,'2020-04-02 08:18:41.850111','2020-04-02 08:18:41.850111','哈哈哈',2,1);
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_friendlink`
--

DROP TABLE IF EXISTS `blog_friendlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_friendlink`
--

LOCK TABLES `blog_friendlink` WRITE;
/*!40000 ALTER TABLE `blog_friendlink` DISABLE KEYS */;
INSERT INTO `blog_friendlink` VALUES (1,0,'2020-04-02 08:09:00.948688','2020-04-02 08:09:00.948688','和平精英','http://www.baidu.com',0),(2,0,'2020-04-02 08:09:14.952248','2020-04-02 08:09:14.952248','和平精英115','http://www.AV.com',0);
/*!40000 ALTER TABLE `blog_friendlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,0,'2020-04-02 08:10:04.335225','2020-04-02 08:17:52.503039','娃哈哈1111',0),(2,0,'2020-04-02 08:10:47.791950','2020-04-02 08:10:47.791950','娃哈哈',0),(4,0,'2020-04-02 08:18:09.597336','2020-04-02 08:18:09.597336','爽歪歪',0);
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_blog_bloguser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_blog_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `blog_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-02 08:08:37.945186','1','密西西',1,'[{\"added\": {}}]',9,1),(2,'2020-04-02 08:08:44.141620','2','胡古拉啦',1,'[{\"added\": {}}]',9,1),(3,'2020-04-02 08:08:48.994648','3','我哈哈',1,'[{\"added\": {}}]',9,1),(4,'2020-04-02 08:09:00.951679','1','和平精英',1,'[{\"added\": {}}]',11,1),(5,'2020-04-02 08:09:14.956239','2','和平精英115',1,'[{\"added\": {}}]',11,1),(6,'2020-04-02 08:10:04.337220','1','娃哈哈',1,'[{\"added\": {}}]',12,1),(7,'2020-04-02 08:10:47.795954','2','娃哈哈',1,'[{\"added\": {}}]',12,1),(8,'2020-04-02 08:13:25.470942','3','爽歪歪',1,'[{\"added\": {}}]',12,1),(9,'2020-04-02 08:15:20.371809','1','习近平进村啦',1,'[{\"added\": {}}]',7,1),(10,'2020-04-02 08:15:24.042981','1','习近平进村啦',2,'[]',7,1),(11,'2020-04-02 08:16:38.131868','2','小日本',1,'[{\"added\": {}}]',7,1),(12,'2020-04-02 08:17:26.074729','3','游戏1',1,'[{\"added\": {}}]',7,1),(13,'2020-04-02 08:17:38.288042','3','爽歪歪',3,'',12,1),(14,'2020-04-02 08:17:52.506031','1','娃哈哈1111',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(15,'2020-04-02 08:18:09.601332','4','爽歪歪',1,'[{\"added\": {}}]',12,1),(16,'2020-04-02 08:18:34.666316','1','真好',1,'[{\"added\": {}}]',10,1),(17,'2020-04-02 08:18:41.858090','2','哈哈哈',1,'[{\"added\": {}}]',10,1),(18,'2020-04-02 08:18:57.489359','1','习近平进村啦',1,'[{\"added\": {}}]',8,1),(19,'2020-04-02 08:19:09.766516','2','小日本',1,'[{\"added\": {}}]',8,1),(20,'2020-04-02 08:19:22.717852','3','游戏1',2,'[]',7,1),(21,'2020-04-02 08:19:27.865091','2','小日本',2,'[]',7,1),(22,'2020-04-02 08:19:34.054579','1','习近平进村啦',2,'[{\"changed\": {\"fields\": [\"tag\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(7,'blog','article'),(8,'blog','banner'),(6,'blog','bloguser'),(9,'blog','category'),(10,'blog','comment'),(11,'blog','friendlink'),(12,'blog','tag'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-02 08:01:30.418690'),(2,'contenttypes','0002_remove_content_type_name','2020-04-02 08:01:30.545351'),(3,'auth','0001_initial','2020-04-02 08:01:30.971212'),(4,'auth','0002_alter_permission_name_max_length','2020-04-02 08:01:31.050004'),(5,'auth','0003_alter_user_email_max_length','2020-04-02 08:01:31.057981'),(6,'auth','0004_alter_user_username_opts','2020-04-02 08:01:31.066956'),(7,'auth','0005_alter_user_last_login_null','2020-04-02 08:01:31.074935'),(8,'auth','0006_require_contenttypes_0002','2020-04-02 08:01:31.080920'),(9,'auth','0007_alter_validators_add_error_messages','2020-04-02 08:01:31.088897'),(10,'auth','0008_alter_user_username_max_length','2020-04-02 08:01:31.097873'),(11,'auth','0009_alter_user_last_name_max_length','2020-04-02 08:01:31.118818'),(12,'blog','0001_initial','2020-04-02 08:01:32.671666'),(13,'admin','0001_initial','2020-04-02 08:01:32.950960'),(14,'admin','0002_logentry_remove_auto_add','2020-04-02 08:01:32.964882'),(15,'admin','0003_logentry_add_action_flag_choices','2020-04-02 08:01:32.980840'),(16,'sessions','0001_initial','2020-04-02 08:01:33.043672');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5t8u7c7iz2dwyzfohvxa6n3mylvsalda','MTcwZDAzMmQ1MDU2MTcxNDg2YTA2M2YzODc0NjBmNmQ4YjBjNzliNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzODY2ZWYwYWQ2ODMzZDljZGVmZjc4MGIxMDZlZGU2MTIyODhkNzU3In0=','2020-04-16 08:08:09.788518');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 17:43:24
