# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: laravel
# Generation Time: 2017-11-12 13:24:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cms_apicustom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_apicustom`;

CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_apikey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_apikey`;

CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_dashboard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_dashboard`;

CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_email_queues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_email_queues`;

CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_email_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_email_templates`;

CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`)
VALUES
	(1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2017-10-25 11:44:41',NULL);

/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_logs`;

CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`)
VALUES
	(1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2017-10-25 11:50:54',NULL),
	(2,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/users/edit-save/1','Update data Super Admin at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2017-10/7ab1c3117951681f2d81dbb9608588ee.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@admin.com</td></tr><tr><td>password</td><td>$2y$10$P5YU1Mi5tHQFqX885ufU3evh7u7iQBQKvLLvabf0Gt3mgdR9wqNBm</td><td>$2y$10$SPuA.CRcundlTzLlcQUx4umwVnqOrQgXqmeoEFiKgtC7cNPfEO5di</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2017-10-25 11:51:50',NULL),
	(3,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/product_type/add-save','Add New Data  at Ապրանքի Տեսակ','',1,'2017-10-25 12:00:53',NULL),
	(4,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/product_measure/add-save','Add New Data  at Չափման Միավորներ','',1,'2017-10-25 12:03:21',NULL),
	(5,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/products/add-save','Add New Data apranq 1 at Ապրանքներ','',1,'2017-10-25 12:20:23',NULL),
	(6,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/module_generator/delete/15','Delete data Հաճախորդներ at Module Generator','',1,'2017-10-25 12:24:27',NULL),
	(7,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/customers16/add-save','Add New Data ասդասդսադ at Հաճախորդներ','',1,'2017-10-25 12:32:29',NULL),
	(8,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/add-save','Add New Data 1 at Պահեստ','',1,'2017-10-25 12:40:11',NULL),
	(9,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2017-10-25 13:24:02',NULL),
	(10,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 1 at Գործարքներ','',1,'2017-10-25 13:53:58',NULL),
	(11,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 2 at Գործարքներ','',1,'2017-10-25 14:04:23',NULL),
	(12,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/statistic_builder/add-save','Add New Data test at Statistic Builder','',1,'2017-10-25 14:11:22',NULL),
	(13,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/statistic_builder/delete/1','Delete data test at Statistic Builder','',1,'2017-10-25 14:12:42',NULL),
	(14,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 1 at Վճարումներ','',1,'2017-10-25 14:27:05',NULL),
	(15,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 3 at Գործարքներ','',1,'2017-10-25 14:57:47',NULL),
	(16,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/product_measure/add-save','Add New Data  at Չափման Միավորներ','',1,'2017-10-25 15:28:25',NULL),
	(17,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/users/add-save','Add New Data Argisht at Users Management','',1,'2017-10-25 15:31:16',NULL),
	(18,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/logout','admin@admin.com logout','',1,'2017-10-25 15:31:24',NULL),
	(19,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','argisht@argisht.com login with IP Address 127.0.0.1','',2,'2017-10-25 15:31:31',NULL),
	(20,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/logout','argisht@argisht.com logout','',2,'2017-10-25 15:31:57',NULL),
	(21,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2017-10-25 15:32:02',NULL),
	(22,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 2 at Վճարումներ','',1,'2017-10-26 11:23:00',NULL),
	(23,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/delete/1','Delete data 1 at Գործարքներ','',1,'2017-10-26 12:19:36',NULL),
	(24,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/action-selected','Delete data 3,2 at Գործարքներ','',1,'2017-10-26 12:19:42',NULL),
	(25,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/action-selected','Delete data 2,1 at Վճարումներ','',1,'2017-10-26 12:19:48',NULL),
	(26,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 1 at Գործարքներ','',1,'2017-10-26 12:24:07',NULL),
	(27,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 4 at Գործարքներ','',1,'2017-10-26 12:35:20',NULL),
	(28,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/delete/3','Delete data 3 at Գործարքներ','',1,'2017-10-26 12:35:48',NULL),
	(29,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 5 at Գործարքներ','',1,'2017-10-26 12:36:04',NULL),
	(30,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 6 at Գործարքներ','',1,'2017-10-26 12:38:29',NULL),
	(31,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/action-selected','Delete data 6,5,4,2,1 at Գործարքներ','',1,'2017-10-26 12:39:06',NULL),
	(32,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 1 at Գործարքներ','',1,'2017-10-26 12:39:24',NULL),
	(33,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 1 at Վճարումներ','',1,'2017-10-26 12:44:54',NULL),
	(34,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 3 at Վճարումներ','',1,'2017-10-26 12:50:51',NULL),
	(35,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 4 at Վճարումներ','',1,'2017-10-26 12:50:58',NULL),
	(36,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 2 at Գործարքներ','',1,'2017-10-26 12:52:16',NULL),
	(37,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/action-selected','Delete data 4,3,2,1 at Վճարումներ','',1,'2017-10-26 12:52:31',NULL),
	(38,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 13 at Վճարումներ','',1,'2017-10-26 13:01:38',NULL),
	(39,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/action-selected','Delete data 13,12,11,10,9,8,7,6,5,4,3,2,1 at Վճարումներ','',1,'2017-10-26 13:02:49',NULL),
	(40,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 1 at Վճարումներ','',1,'2017-10-26 13:05:14',NULL),
	(41,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/action-selected','Delete data 1 at Վճարումներ','',1,'2017-10-26 13:12:39',NULL),
	(42,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/edit-save/2','Update data  at Գործարքներ','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>count</td><td>3</td><td>5</td></tr><tr><td>total_price</td><td>300</td><td></td></tr><tr><td>paid_fully</td><td>Այո</td><td>Ոչ</td></tr><tr><td>due</td><td>0</td><td></td></tr></tbody></table>',1,'2017-10-26 13:13:01',NULL),
	(43,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/edit-save/2','Update data  at Գործարքներ','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>count</td><td>5</td><td>6</td></tr><tr><td>total_price</td><td>300</td><td>600</td></tr><tr><td>due</td><td>0</td><td></td></tr></tbody></table>',1,'2017-10-26 13:21:49',NULL),
	(44,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/delete/2','Delete data 2 at Վճարումներ','',1,'2017-10-26 13:22:17',NULL),
	(45,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/delete/2','Delete data 2 at Վճարումներ','',1,'2017-10-26 13:23:04',NULL),
	(46,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/action-selected','Delete data 2,1 at Վճարումներ','',1,'2017-10-26 13:26:28',NULL),
	(47,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 1 at Վճարումներ','',1,'2017-10-26 13:26:45',NULL),
	(48,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 2 at Վճարումներ','',1,'2017-10-26 13:27:23',NULL),
	(49,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 3 at Վճարումներ','',1,'2017-10-26 13:28:38',NULL),
	(50,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2017-10-27 09:36:33',NULL),
	(51,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 3 at Գործարքներ','',1,'2017-10-27 10:06:08',NULL),
	(52,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 4 at Գործարքներ','',1,'2017-10-27 10:08:56',NULL),
	(53,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 5 at Գործարքներ','',1,'2017-10-27 10:09:30',NULL),
	(54,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/action-selected','Delete data 5,4,3,2,1 at Գործարքներ','',1,'2017-10-27 10:10:12',NULL),
	(55,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 1 at Գործարքներ','',1,'2017-10-27 10:11:55',NULL),
	(56,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 2 at Գործարքներ','',1,'2017-10-27 10:16:04',NULL),
	(57,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/products/add-save','Add New Data sdfagdfgdfagad at Ապրանքներ','',1,'2017-10-27 10:52:43',NULL),
	(58,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/products/add-save','Add New Data product 555 at Ապրանքներ','',1,'2017-10-27 10:52:57',NULL),
	(59,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/products/action-selected','Delete data 2 at Ապրանքներ','',1,'2017-10-27 10:53:07',NULL),
	(60,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/add-save','Add New Data 2 at Պահեստ','',1,'2017-10-27 11:00:59',NULL),
	(61,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 3 at Գործարքներ','',1,'2017-10-27 11:12:34',NULL),
	(62,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/edit-save/2','Update data  at Պահեստ','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>count</td><td>33</td><td>1000</td></tr><tr><td>comments</td><td></td><td></td></tr></tbody></table>',1,'2017-10-27 11:13:13',NULL),
	(63,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/edit-save/1','Update data  at Պահեստ','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>count</td><td>-33</td><td>500</td></tr><tr><td>comments</td><td></td><td></td></tr></tbody></table>',1,'2017-10-27 11:13:23',NULL),
	(64,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/action-selected','Delete data 3,2,1 at Գործարքներ','',1,'2017-10-27 11:13:32',NULL),
	(65,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 1 at Գործարքներ','',1,'2017-10-27 11:13:55',NULL),
	(66,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/edit-save/1','Update data  at Պահեստ','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>count</td><td>-200</td><td>500</td></tr><tr><td>comments</td><td></td><td></td></tr></tbody></table>',1,'2017-10-27 11:15:40',NULL),
	(67,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 2 at Գործարքներ','',1,'2017-10-27 11:16:41',NULL),
	(68,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/action-selected','Delete data 1 at Գործարքներ','',1,'2017-10-27 11:16:53',NULL),
	(69,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/action-selected','Delete data 3,2,1 at Վճարումներ','',1,'2017-10-27 11:17:42',NULL),
	(70,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 1 at Վճարումներ','',1,'2017-10-27 11:18:04',NULL),
	(71,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/statistic_builder/add-save','Add New Data chart at Statistic Builder','',1,'2017-10-27 11:28:44',NULL),
	(72,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/statistic_builder/delete/1','Delete data chart at Statistic Builder','',1,'2017-10-27 11:29:19',NULL),
	(73,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2017-11-12 10:36:47',NULL),
	(74,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/partners/add-save','Add New Data Պողոս Պետրոսյան at Գորոծընկերներ','',1,'2017-11-12 10:46:26',NULL),
	(75,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/add-save','Add New Data 3 at Պահեստ','',1,'2017-11-12 10:51:40',NULL),
	(76,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/add-save','Add New Data 3 at Պահեստ','',1,'2017-11-12 11:01:05',NULL),
	(77,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/add-save','Add New Data 3 at Պահեստ','',1,'2017-11-12 11:01:18',NULL),
	(78,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/3','Update data Ապրանքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>',1,'2017-11-12 11:03:28',NULL),
	(79,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/3','Update data Ապրանքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2017-11-12 11:04:12',NULL),
	(80,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/7','Update data Գործարքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2017-11-12 11:04:28',NULL),
	(81,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/8','Update data Վճարումներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2017-11-12 11:04:36',NULL),
	(82,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/add-save','Add New Data 3 at Պահեստ','',1,'2017-11-12 11:20:11',NULL),
	(83,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 3 at Գործարքներ','',1,'2017-11-12 11:21:00',NULL),
	(84,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock/add-save','Add New Data 4 at Պահեստ','',1,'2017-11-12 11:42:35',NULL),
	(85,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/invoices/add-save','Add New Data 4 at Գործարքներ','',1,'2017-11-12 11:44:18',NULL),
	(86,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/8','Update data Վճարումներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2017-11-12 11:45:52',NULL),
	(87,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 2 at Վճարումներ','',1,'2017-11-12 12:19:48',NULL),
	(88,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 3 at Վճարումներ','',1,'2017-11-12 12:23:29',NULL),
	(89,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 2 at Վճարումներ','',1,'2017-11-12 12:25:05',NULL),
	(90,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/payments/add-save','Add New Data 3 at Վճարումներ','',1,'2017-11-12 12:39:25',NULL),
	(91,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/3','Update data Ապրանքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-truck</td></tr></tbody></table>',1,'2017-11-12 12:44:52',NULL),
	(92,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/5','Update data Հաճախորդներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-users</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2017-11-12 12:45:31',NULL),
	(93,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/6','Update data Պահեստ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-shopping-cart</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2017-11-12 12:46:34',NULL),
	(94,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/7','Update data Գործարքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-file-o</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2017-11-12 12:47:51',NULL),
	(95,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/8','Update data Վճարումներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-money</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2017-11-12 12:48:09',NULL),
	(96,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/9','Update data Գորոծընկերներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-user-secret</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>',1,'2017-11-12 12:48:28',NULL),
	(97,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/1','Update data Ապրանքի Տեսակ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-th-list</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>',1,'2017-11-12 12:48:56',NULL),
	(98,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/2','Update data Չափման Միավորներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-bar-chart</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>',1,'2017-11-12 12:50:17',NULL),
	(99,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/10','Update data Պահեստի Արխիվ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>',1,'2017-11-12 12:50:33',NULL),
	(100,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/3','Update data Ապրանքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-truck</td><td>fa fa-archive</td></tr></tbody></table>',1,'2017-11-12 12:51:07',NULL),
	(101,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/6','Update data Պահեստ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-shopping-cart</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2017-11-12 12:51:17',NULL),
	(102,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/5','Update data Հաճախորդներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-users</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2017-11-12 12:51:28',NULL),
	(103,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/7','Update data Գործարքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-file-o</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2017-11-12 12:51:43',NULL),
	(104,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/8','Update data Վճարումներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-money</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2017-11-12 12:51:54',NULL),
	(105,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/9','Update data Գորոծընկերներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user-secret</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>',1,'2017-11-12 12:52:02',NULL),
	(106,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/1','Update data Ապրանքի Տեսակ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-th-list</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>',1,'2017-11-12 12:52:12',NULL),
	(107,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/2','Update data Չափման Միավորներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-bar-chart</td><td>fa fa-archive</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>',1,'2017-11-12 12:52:22',NULL),
	(108,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/10','Update data Պահեստի Արխիվ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>',1,'2017-11-12 12:52:32',NULL),
	(109,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/users/edit-save/2','Update data Argisht at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$o3C.ttny9pJ4WmyLZme49u0mA3rSHj8LSw4iTwEgTlwfrB3ZG7uB2</td><td>$2y$10$XdnbajGlMZim2UACLOwBte27dtSdVxwMyX8p/Hv9mS8vX7hWaanGC</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',1,'2017-11-12 12:53:02',NULL),
	(110,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/logout','admin@admin.com logout','',1,'2017-11-12 12:53:07',NULL),
	(111,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','argisht@argisht.com login with IP Address 127.0.0.1','',2,'2017-11-12 12:53:13',NULL),
	(112,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/partners','Try view the data :name at Գորոծընկերներ','',2,'2017-11-12 12:54:16',NULL),
	(113,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/partners','Try view the data :name at Գորոծընկերներ','',2,'2017-11-12 12:54:24',NULL),
	(114,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock_history','Try view the data :name at Պահեստի Արխիվ','',2,'2017-11-12 12:54:32',NULL),
	(115,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/partners','Try view the data :name at Գորոծընկերներ','',2,'2017-11-12 12:54:34',NULL),
	(116,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock_history','Try view the data :name at Պահեստի Արխիվ','',2,'2017-11-12 12:54:36',NULL),
	(117,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/partners','Try view the data :name at Գորոծընկերներ','',2,'2017-11-12 12:54:46',NULL),
	(118,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/partners','Try view the data :name at Գորոծընկերներ','',2,'2017-11-12 12:55:54',NULL),
	(119,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/stock_history','Try view the data :name at Պահեստի Արխիվ','',2,'2017-11-12 12:55:56',NULL),
	(120,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/partners','Try view the data :name at Գորոծընկերներ','',2,'2017-11-12 12:56:07',NULL),
	(121,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/logout','argisht@argisht.com logout','',2,'2017-11-12 12:56:20',NULL),
	(122,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2017-11-12 12:56:24',NULL),
	(123,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/3','Update data Ապրանքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-truck</td></tr></tbody></table>',1,'2017-11-12 12:56:54',NULL),
	(124,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/6','Update data Պահեստ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-shopping-cart</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2017-11-12 12:57:14',NULL),
	(125,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/5','Update data Հաճախորդներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-users</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2017-11-12 12:57:31',NULL),
	(126,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/7','Update data Գործարքներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-file-o</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2017-11-12 12:58:03',NULL),
	(127,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/8','Update data Վճարումներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-money</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2017-11-12 12:58:17',NULL),
	(128,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/9','Update data Գորոծընկերներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-user-secret</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>',1,'2017-11-12 12:58:29',NULL),
	(129,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/1','Update data Ապրանքի Տեսակ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-th-list</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>',1,'2017-11-12 12:59:36',NULL),
	(130,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/2','Update data Չափման Միավորներ at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-archive</td><td>fa fa-bar-chart</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>',1,'2017-11-12 13:00:03',NULL),
	(131,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','http://localhost:8000/admin/statistic_builder/add-save','Add New Data test at Statistic Builder','',1,'2017-11-12 13:01:26',NULL);

/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_menus`;

CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`)
VALUES
	(1,'Ապրանքի Տեսակ','Route','AdminProductTypeControllerGetIndex','normal','fa fa-th-list',0,1,0,1,7,'2017-10-25 11:55:45','2017-11-12 12:59:36'),
	(2,'Չափման Միավորներ','Route','AdminProductMeasureControllerGetIndex','normal','fa fa-bar-chart',0,1,0,1,8,'2017-10-25 12:02:23','2017-11-12 13:00:03'),
	(3,'Ապրանքներ','Route','AdminProductsControllerGetIndex','normal','fa fa-truck',0,1,0,1,1,'2017-10-25 12:04:04','2017-11-12 12:56:54'),
	(5,'Հաճախորդներ','Route','AdminCustomers16ControllerGetIndex','normal','fa fa-users',0,1,0,1,3,'2017-10-25 12:24:51','2017-11-12 12:57:31'),
	(6,'Պահեստ','Route','AdminStockControllerGetIndex','normal','fa fa-shopping-cart',0,1,0,1,2,'2017-10-25 12:33:13','2017-11-12 12:57:14'),
	(7,'Գործարքներ','Route','AdminInvoicesControllerGetIndex','normal','fa fa-file-o',0,1,0,1,4,'2017-10-25 13:25:07','2017-11-12 12:58:03'),
	(8,'Վճարումներ','Route','AdminPaymentsControllerGetIndex','normal','fa fa-money',0,1,0,1,5,'2017-10-25 14:13:51','2017-11-12 12:58:17'),
	(9,'Գորոծընկերներ','Route','AdminPartnersControllerGetIndex','normal','fa fa-user-secret',0,1,0,1,6,'2017-11-12 10:43:16','2017-11-12 12:58:29'),
	(10,'Պահեստի Արխիվ','Route','AdminStockHistoryControllerGetIndex','normal','fa fa-archive',0,1,0,1,9,'2017-11-12 11:06:06','2017-11-12 12:52:32');

/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_menus_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_menus_privileges`;

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`)
VALUES
	(4,4,1),
	(40,10,1),
	(41,10,2),
	(42,3,1),
	(43,3,2),
	(44,6,1),
	(45,6,2),
	(46,5,1),
	(47,5,2),
	(48,7,1),
	(49,7,2),
	(50,8,1),
	(51,8,2),
	(52,9,1),
	(53,9,2),
	(54,1,1),
	(55,1,2),
	(56,2,1),
	(57,2,2);

/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_moduls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_moduls`;

CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2017-10-25 11:44:41',NULL,NULL),
	(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2017-10-25 11:44:41',NULL,NULL),
	(12,'Ապրանքի Տեսակ','fa fa-glass','product_type','product_type','AdminProductTypeController',0,0,'2017-10-25 11:55:45',NULL,NULL),
	(13,'Չափման Միավորներ','fa fa-glass','product_measure','product_measure','AdminProductMeasureController',0,0,'2017-10-25 12:02:23',NULL,NULL),
	(14,'Ապրանքներ','fa fa-truck','products','products','AdminProductsController',0,0,'2017-10-25 12:04:04',NULL,NULL),
	(15,'Հաճախորդներ','fa fa-glass','customers','customers','AdminCustomersController',0,0,'2017-10-25 12:22:12',NULL,'2017-10-25 12:24:27'),
	(16,'Հաճախորդներ','fa fa-glass','customers16','customers','AdminCustomers16Controller',0,0,'2017-10-25 12:24:51',NULL,NULL),
	(17,'Պահեստ','fa fa-glass','stock','stock','AdminStockController',0,0,'2017-10-25 12:33:13',NULL,NULL),
	(18,'Գործարքներ','fa fa-glass','invoices','invoices','AdminInvoicesController',0,0,'2017-10-25 13:25:07',NULL,NULL),
	(19,'Վճարումներ','fa fa-glass','payments','payments','AdminPaymentsController',0,0,'2017-10-25 14:13:51',NULL,NULL),
	(20,'Գորոծընկերներ','fa fa-glass','partners','partners','AdminPartnersController',0,0,'2017-11-12 10:43:16',NULL,NULL),
	(21,'Պահեստի Արխիվ','fa fa-glass','stock_history','stock_history','AdminStockHistoryController',0,0,'2017-11-12 11:06:06',NULL,NULL);

/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_notifications`;

CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_privileges`;

CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`)
VALUES
	(1,'Super Administrator',1,'skin-red','2017-10-25 11:44:41',NULL),
	(2,'User',0,'skin-yellow',NULL,NULL);

/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_privileges_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_privileges_roles`;

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`)
VALUES
	(1,1,0,0,0,0,1,1,'2017-10-25 11:44:41',NULL),
	(2,1,1,1,1,1,1,2,'2017-10-25 11:44:41',NULL),
	(3,0,1,1,1,1,1,3,'2017-10-25 11:44:41',NULL),
	(4,1,1,1,1,1,1,4,'2017-10-25 11:44:41',NULL),
	(5,1,1,1,1,1,1,5,'2017-10-25 11:44:41',NULL),
	(6,1,1,1,1,1,1,6,'2017-10-25 11:44:41',NULL),
	(7,1,1,1,1,1,1,7,'2017-10-25 11:44:41',NULL),
	(8,1,1,1,1,1,1,8,'2017-10-25 11:44:41',NULL),
	(9,1,1,1,1,1,1,9,'2017-10-25 11:44:41',NULL),
	(10,1,1,1,1,1,1,10,'2017-10-25 11:44:41',NULL),
	(11,1,0,1,0,1,1,11,'2017-10-25 11:44:41',NULL),
	(12,1,1,1,1,1,1,12,NULL,NULL),
	(13,1,1,1,1,1,1,13,NULL,NULL),
	(14,1,1,1,1,1,1,14,NULL,NULL),
	(15,1,1,1,1,1,1,15,NULL,NULL),
	(16,1,1,1,1,1,1,16,NULL,NULL),
	(17,1,1,1,1,1,1,17,NULL,NULL),
	(18,1,1,1,1,1,1,18,NULL,NULL),
	(19,1,1,1,1,1,1,19,NULL,NULL),
	(20,1,1,1,1,1,2,4,NULL,NULL),
	(21,1,1,1,1,1,2,12,NULL,NULL),
	(22,1,1,1,1,1,2,14,NULL,NULL),
	(23,1,1,1,1,1,2,18,NULL,NULL),
	(24,1,1,1,1,1,2,16,NULL,NULL),
	(25,1,1,1,1,1,2,13,NULL,NULL),
	(26,1,1,1,1,1,2,17,NULL,NULL),
	(27,1,1,1,1,1,2,19,NULL,NULL),
	(28,1,1,1,1,1,2,15,NULL,NULL),
	(29,1,1,1,1,1,1,20,NULL,NULL),
	(30,1,1,1,1,1,1,21,NULL,NULL),
	(31,1,1,1,1,1,2,20,NULL,NULL),
	(32,1,1,1,1,1,2,21,NULL,NULL);

/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_settings`;

CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`)
VALUES
	(1,'login_background_color',NULL,'text',NULL,'Input hexacode','2017-10-25 11:44:41',NULL,'Login Register Style','Login Background Color'),
	(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2017-10-25 11:44:41',NULL,'Login Register Style','Login Font Color'),
	(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2017-10-25 11:44:41',NULL,'Login Register Style','Login Background Image'),
	(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2017-10-25 11:44:41',NULL,'Email Setting','Email Sender'),
	(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2017-10-25 11:44:41',NULL,'Email Setting','Mail Driver'),
	(6,'smtp_host','','text',NULL,NULL,'2017-10-25 11:44:41',NULL,'Email Setting','SMTP Host'),
	(7,'smtp_port','25','text',NULL,'default 25','2017-10-25 11:44:41',NULL,'Email Setting','SMTP Port'),
	(8,'smtp_username','','text',NULL,NULL,'2017-10-25 11:44:41',NULL,'Email Setting','SMTP Username'),
	(9,'smtp_password','','text',NULL,NULL,'2017-10-25 11:44:41',NULL,'Email Setting','SMTP Password'),
	(10,'appname','Պահեստի Ծրագիր','text',NULL,NULL,'2017-10-25 11:44:41',NULL,'Application Setting','Application Name'),
	(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2017-10-25 11:44:41',NULL,'Application Setting','Default Paper Print Size'),
	(12,'logo',NULL,'upload_image',NULL,NULL,'2017-10-25 11:44:41',NULL,'Application Setting','Logo'),
	(13,'favicon',NULL,'upload_image',NULL,NULL,'2017-10-25 11:44:41',NULL,'Application Setting','Favicon'),
	(14,'api_debug_mode','true','select','true,false',NULL,'2017-10-25 11:44:41',NULL,'Application Setting','API Debug Mode'),
	(15,'google_api_key',NULL,'text',NULL,NULL,'2017-10-25 11:44:41',NULL,'Application Setting','Google API Key'),
	(16,'google_fcm_key',NULL,'text',NULL,NULL,'2017-10-25 11:44:41',NULL,'Application Setting','Google FCM Key');

/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_statistic_components
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_statistic_components`;

CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`)
VALUES
	(1,1,'9e973a5b88cc08c189be4cdcb98259be','chartarea',NULL,0,'Untitled',NULL,'2017-10-25 14:11:52',NULL),
	(3,1,'52121f587d2128fa652755f5bc405fcb','chartline','area5',1,'Untitled',NULL,'2017-10-27 11:28:55',NULL);

/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_statistics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_statistics`;

CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'test','test','2017-11-12 13:01:26',NULL);

/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Super Admin','uploads/1/2017-10/7ab1c3117951681f2d81dbb9608588ee.jpg','admin@admin.com','$2y$10$SPuA.CRcundlTzLlcQUx4umwVnqOrQgXqmeoEFiKgtC7cNPfEO5di',1,'2017-10-25 11:44:41','2017-10-25 11:51:50','Active'),
	(2,'Argisht','uploads/1/2017-10/sustainable_construction_e1434694541899.jpg','argisht@argisht.com','$2y$10$XdnbajGlMZim2UACLOwBte27dtSdVxwMyX8p/Hv9mS8vX7hWaanGC',2,'2017-10-25 15:31:16','2017-11-12 12:53:02',NULL);

/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Անհատ','Խանութ') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`id`, `name`, `type`, `address`, `email`, `phone`, `comments`, `created_at`, `updated_at`)
VALUES
	(1,'ասդասդսադ','Անհատ','ասդասդսադսադ','asds@mail.com','234234234','asdsadasd','2017-10-25 12:32:29',NULL);

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table invoices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_fully` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `due` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;

INSERT INTO `invoices` (`id`, `customer_id`, `product_id`, `count`, `total_price`, `paid_fully`, `comments`, `created_at`, `updated_at`, `due`)
VALUES
	(2,1,1,'100','10000','Այո',NULL,'2017-10-27 11:16:41',NULL,'0'),
	(3,1,1,'10','1000','Ոչ','test4','2017-11-12 11:21:00',NULL,'200'),
	(4,1,1,'5','500','Ոչ','ffffff','2017-11-12 11:44:18',NULL,'500');

/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2016_08_07_145904_add_table_cms_apicustom',1),
	(2,'2016_08_07_150834_add_table_cms_dashboard',1),
	(3,'2016_08_07_151210_add_table_cms_logs',1),
	(4,'2016_08_07_151211_add_details_cms_logs',1),
	(5,'2016_08_07_152014_add_table_cms_privileges',1),
	(6,'2016_08_07_152214_add_table_cms_privileges_roles',1),
	(7,'2016_08_07_152320_add_table_cms_settings',1),
	(8,'2016_08_07_152421_add_table_cms_users',1),
	(9,'2016_08_07_154624_add_table_cms_menus_privileges',1),
	(10,'2016_08_07_154624_add_table_cms_moduls',1),
	(11,'2016_08_17_225409_add_status_cms_users',1),
	(12,'2016_08_20_125418_add_table_cms_notifications',1),
	(13,'2016_09_04_033706_add_table_cms_email_queues',1),
	(14,'2016_09_16_035347_add_group_setting',1),
	(15,'2016_09_16_045425_add_label_setting',1),
	(16,'2016_09_17_104728_create_nullable_cms_apicustom',1),
	(17,'2016_10_01_141740_add_method_type_apicustom',1),
	(18,'2016_10_01_141846_add_parameters_apicustom',1),
	(19,'2016_10_01_141934_add_responses_apicustom',1),
	(20,'2016_10_01_144826_add_table_apikey',1),
	(21,'2016_11_14_141657_create_cms_menus',1),
	(22,'2016_11_15_132350_create_cms_email_templates',1),
	(23,'2016_11_15_190410_create_cms_statistics',1),
	(24,'2016_11_17_102740_create_cms_statistic_components',1),
	(25,'2017_06_06_164501_add_deleted_at_cms_moduls',1),
	(26,'2017_10_25_094352_products',2),
	(27,'2017_10_25_094633_customers',2),
	(28,'2017_10_25_094653_partners',2),
	(29,'2017_10_25_094654_stock',2),
	(30,'2017_10_25_094759_invoices',2),
	(31,'2017_10_25_094807_payments',2),
	(32,'2017_10_25_094825_stock_history',2),
	(33,'2017_10_25_115254_product_type',3),
	(34,'2017_10_25_115302_product_measure',3),
	(35,'2017_10_25_121003_product_measure_column_change',4),
	(36,'2017_10_25_123825_remove_Partnerid_from_stock',5);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partners`;

CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;

INSERT INTO `partners` (`id`, `name`, `address`, `email`, `phone`, `comments`, `created_at`, `updated_at`)
VALUES
	(1,'Պողոս Պետրոսյան','ասդասդ ասդ սադ','asdsad@mail.ru','097838383','nshumner','2017-11-12 10:46:26',NULL);

/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;

INSERT INTO `payments` (`id`, `customer_id`, `invoice_id`, `amount`, `comments`, `created_at`, `updated_at`)
VALUES
	(1,1,2,'10000',NULL,'2017-10-27 11:18:04',NULL),
	(2,1,3,NULL,NULL,'2017-11-12 12:25:05',NULL),
	(3,1,3,'800',NULL,'2017-11-12 12:39:25',NULL);

/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_measure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_measure`;

CREATE TABLE `product_measure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product_measure` WRITE;
/*!40000 ALTER TABLE `product_measure` DISABLE KEYS */;

INSERT INTO `product_measure` (`id`, `name`)
VALUES
	(1,'կիլոգրամ'),
	(2,'p');

/*!40000 ALTER TABLE `product_measure` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_type`;

CREATE TABLE `product_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;

INSERT INTO `product_type` (`id`, `name`)
VALUES
	(1,'test');

/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type_id` int(11) NOT NULL,
  `product_measure_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `product_type_id`, `product_measure_id`, `price`, `parameter`, `comments`, `created_at`, `updated_at`)
VALUES
	(1,'apranq 1',1,1,'100','chka33','chkan','2017-10-25 12:20:23',NULL),
	(3,'product 555',1,1,'99999','asdasdsadasd','asdsadasd','2017-10-27 10:52:57',NULL);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;

INSERT INTO `stock` (`id`, `product_id`, `count`, `comments`, `created_at`, `updated_at`, `partner_id`)
VALUES
	(3,1,'29','wefwef','2017-11-12 11:20:11',NULL,1),
	(4,3,'1022','adadadad','2017-11-12 11:42:35',NULL,1);

/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stock_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stock_history`;

CREATE TABLE `stock_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_out` enum('Մուտք','Ելք') COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `stock_history` WRITE;
/*!40000 ALTER TABLE `stock_history` DISABLE KEYS */;

INSERT INTO `stock_history` (`id`, `product_id`, `customer_id`, `invoice_id`, `partner_id`, `count`, `in_out`, `comments`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL,1,'44','Մուտք','wefwef',NULL,NULL),
	(2,3,NULL,NULL,1,'22','Մուտք','adadadad','2017-11-12 15:42:35','2017-11-12 15:42:35'),
	(3,1,1,4,NULL,'5','Ելք','ffffff','2017-11-12 15:44:18','2017-11-12 15:44:18');

/*!40000 ALTER TABLE `stock_history` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
