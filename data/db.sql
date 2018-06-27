 -- creat dataBase
 DROP DATABASE IF EXISTS `library`;
 CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
 USE `library`;

DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(11) unsigned,
  `price`  int(11),
  `exist`  int(11),
  `page`  int(10) unsigned,
  `storage`  int(10) unsigned,
  `create_at`  date,
  `operator` varchar (30) COMMENT '',
  `barcode` varchar (30) COMMENT '',
  `bookname` varchar (70) COMMENT '',
  `author` varchar (30) COMMENT '',
  `translator` varchar (30) COMMENT '',
  `ISBN` varchar (20) COMMENT '',
  `is_delete` tinyint(1)  DEFAULT 0 COMMENT '1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书信息';

DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `readerid`   int(11) unsigned,
  `bookid`     int(11) unsigned,
  `borrow_time` date,
  `back_time` date,
  `operator` varchar (30) COMMENT '',
  `if_back` tinyint(1)  DEFAULT 0 COMMENT '1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='借书信息';

DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20),
  `gender` char(1) NOT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `if_back` tinyint(1)  DEFAULT 0 COMMENT '1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='读者信息';
