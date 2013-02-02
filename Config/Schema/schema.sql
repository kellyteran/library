

DROP TABLE IF EXISTS `library`.`books`;
DROP TABLE IF EXISTS `library`.`category`;
DROP TABLE IF EXISTS `library`.`loans`;
DROP TABLE IF EXISTS `library`.`user`;


CREATE TABLE `library`.`books` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`ISBN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
	`category_id` int(11) NOT NULL,
	`created` datetime NOT NULL,
	`modified` datetime DEFAULT NULL,
	`autor` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,	PRIMARY KEY  (`id`)) 	DEFAULT CHARSET=utf8,
	COLLATE=utf8_general_ci,
	ENGINE=InnoDB;

CREATE TABLE `library`.`category` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`created` datetime NOT NULL,
	`modified` datetime DEFAULT NULL,	PRIMARY KEY  (`id`)) 	DEFAULT CHARSET=utf8,
	COLLATE=utf8_general_ci,
	ENGINE=InnoDB;

CREATE TABLE `library`.`loans` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) NOT NULL,
	`book_id` int(11) NOT NULL,
	`created` datetime NOT NULL,
	`modified` datetime DEFAULT NULL,	PRIMARY KEY  (`id`)) 	DEFAULT CHARSET=utf8,
	COLLATE=utf8_general_ci,
	ENGINE=InnoDB;

CREATE TABLE `library`.`user` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`create` datetime NOT NULL,
	`modified` datetime DEFAULT NULL,	PRIMARY KEY  (`id`)) 	DEFAULT CHARSET=utf8,
	COLLATE=utf8_general_ci,
	ENGINE=InnoDB;

