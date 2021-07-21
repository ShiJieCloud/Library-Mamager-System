
CREATE DATABASE `library`;

USE `library`;

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `name` varchar(100) NOT NULL COMMENT '书名',
  `counts` int(11) NOT NULL COMMENT '数量',
  `detail` varchar(200) NOT NULL COMMENT '描述',
  `price` double DEFAULT NULL COMMENT '价格',
  `imagePath` varchar(200) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
