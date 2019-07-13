/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : newlife

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-13 22:07:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'aaa', 'aaa');
INSERT INTO `admin` VALUES ('2', 'bbb', 'bbb');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookId` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `author` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` float(200,0) DEFAULT NULL,
  `introduce` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imgUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `kindId` int(200) DEFAULT NULL,
  `hot` int(200) DEFAULT NULL,
  `latest` int(200) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('9', 'OS', 'Chen', '31', 'knowledge of compute', 'img/book_04.jpg', '3', '0', '1');
INSERT INTO `book` VALUES ('11', 'JAVAEE', 'Wang', '27', 'knowledge of compute', 'img/book_05.jpg', '3', '1', '1');
INSERT INTO `book` VALUES ('14', 'Boule de suif', 'Maupassant', '38', 'knowledge of literature', 'img/book_02.jpg', '1', '0', '1');
INSERT INTO `book` VALUES ('15', 'Hamlet', 'Shakespeare', '59', 'knowledge of literature', 'img/book_08.jpg', '1', '1', '0');
INSERT INTO `book` VALUES ('16', '三国演义', '罗贯中', '89', 'knowledge of literature', 'img/book_09.jpg', '1', '1', '0');
INSERT INTO `book` VALUES ('17', '红楼梦', '曹雪芹', '99', 'knowledge of literature', 'img/book_10.jpg', '1', '1', '1');
INSERT INTO `book` VALUES ('18', '水浒传', '施耐庵', '79', 'knowledge of literature', 'img/book_11.jpg', '1', '1', '1');
INSERT INTO `book` VALUES ('19', '明朝那些事', '当年明月', '76', 'knowledge of literature', 'img/book_12.jpg', '1', '1', '1');
INSERT INTO `book` VALUES ('20', '蛙', '莫言', '69', 'knowledge of literature', 'img/book_03.jpg', '1', '0', '1');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartId` int(200) NOT NULL AUTO_INCREMENT,
  `bookId` int(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `price` float(200,0) DEFAULT NULL,
  `number` int(200) DEFAULT NULL,
  `addPrice` float(200,0) DEFAULT NULL,
  `userId` int(200) DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('8', '11', 'JAVAEE', 'Wang', '27', '1', '27', '1');
INSERT INTO `cart` VALUES ('13', '11', 'JAVAEE', 'Wang', '27', '100', '2700', '2');
INSERT INTO `cart` VALUES ('15', '1', 'Higher Algebra', 'Zhang', '19', '100', '1900', '3');
INSERT INTO `cart` VALUES ('18', '9', 'OS', 'Chen', '31', '1', '31', '10');
INSERT INTO `cart` VALUES ('19', '3', 'C', 'DingMeng', '20', '1', '20', '2');
INSERT INTO `cart` VALUES ('22', '11', 'JAVAEE', 'Wang', '27', '1', '27', '13');
INSERT INTO `cart` VALUES ('23', '20', '蛙', '莫言', '69', '1', '69', '14');
INSERT INTO `cart` VALUES ('24', '11', 'JAVAEE', 'Wang', '27', '1', '27', '15');
INSERT INTO `cart` VALUES ('26', '9', 'OS', 'Chen', '31', '2', '62', '11');
INSERT INTO `cart` VALUES ('27', '20', '蛙', '莫言', '69', '2', '138', '11');
INSERT INTO `cart` VALUES ('29', '20', '蛙', '莫言', '69', '3', '207', '12');
INSERT INTO `cart` VALUES ('33', '17', '红楼梦', '曹雪芹', '99', '1', '99', '12');
INSERT INTO `cart` VALUES ('34', '15', 'Hamlet', 'Shakespeare', '59', '1', '59', '15');
INSERT INTO `cart` VALUES ('35', '17', '红楼梦', '曹雪芹', '99', '12', '1188', '16');
INSERT INTO `cart` VALUES ('36', '9', 'OS', 'Chen', '31', '13', '434', '3');
INSERT INTO `cart` VALUES ('37', '20', '蛙', '莫言', '69', '10', '690', '15');
INSERT INTO `cart` VALUES ('40', '14', 'Boule de suif', 'Maupassant', '38', '111', '4218', '16');
INSERT INTO `cart` VALUES ('41', '9', 'OS', 'Chen', '31', '1', '31', '17');
INSERT INTO `cart` VALUES ('42', '11', 'JAVAEE', 'Wang', '27', '11', '297', '17');
INSERT INTO `cart` VALUES ('43', '18', '水浒传', '施耐庵', '79', '11', '869', '17');
INSERT INTO `cart` VALUES ('44', '16', '三国演义', '罗贯中', '89', '23', '2047', '18');
INSERT INTO `cart` VALUES ('45', '15', 'Hamlet', 'Shakespeare', '59', '11', '649', '18');
INSERT INTO `cart` VALUES ('46', '9', 'OS', 'Chen', '31', '11', '341', '18');
INSERT INTO `cart` VALUES ('47', '9', 'OS', 'Chen', '31', '1', '31', '19');
INSERT INTO `cart` VALUES ('48', '15', 'Hamlet', 'Shakespeare', '59', '3', '177', '19');

-- ----------------------------
-- Table structure for `kind`
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `kindId` int(11) NOT NULL AUTO_INCREMENT,
  `kindName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`kindId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', 'literature');
INSERT INTO `kind` VALUES ('2', 'science');
INSERT INTO `kind` VALUES ('3', 'conputer');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bookId` int(200) DEFAULT NULL,
  `author` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` float(200,0) DEFAULT NULL,
  `number` int(200) DEFAULT NULL,
  `addPrice` float(200,0) DEFAULT NULL,
  `userId` int(200) DEFAULT NULL,
  `order_time` varchar(200) DEFAULT NULL,
  `order_state` varchar(200) DEFAULT NULL,
  `addressId` int(200) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('60', 'Higher Algebra', '1', null, '19', '100', '1900', '3', '2017-12-19 16:53:16', 'confirm', '3');
INSERT INTO `orders` VALUES ('62', 'OS', '9', null, '31', '111', '3441', '10', '2017-12-20 10:07:48', 'confirm', '5');
INSERT INTO `orders` VALUES ('63', 'OS', '9', null, '31', '1', '31', '10', '2017-12-20 10:08:22', 'confirm', '5');
INSERT INTO `orders` VALUES ('64', 'JAVAEE', '11', null, '27', '100', '2700', '2', '2017-12-20 10:26:54', 'confirm', '2');
INSERT INTO `orders` VALUES ('76', '蛙', '20', null, '69', '1', '69', '14', '2017-12-21 14:54:31', 'not upload', '0');
INSERT INTO `orders` VALUES ('77', 'OS', '9', null, '31', '2', '62', '11', '2017-12-21 15:07:33', 'not upload', '6');
INSERT INTO `orders` VALUES ('78', '蛙', '20', null, '69', '2', '138', '11', '2017-12-21 15:07:46', 'confirm', '6');
INSERT INTO `orders` VALUES ('79', 'JAVAEE', '11', null, '27', '1', '27', '12', '2017-12-21 15:22:48', 'not upload', '7');
INSERT INTO `orders` VALUES ('81', 'JAVAEE', '11', null, '27', '23', '621', '1', '2017-12-20 15:54:07', 'not upload', '1');
INSERT INTO `orders` VALUES ('82', 'JAVAEE', '11', null, '27', '1', '27', '15', '2017-12-21 19:59:14', 'not upload', '8');
INSERT INTO `orders` VALUES ('83', '红楼梦', '17', null, '99', '12', '1188', '16', '2017-12-21 20:01:52', 'confirm', '9');
INSERT INTO `orders` VALUES ('84', 'Higher Algebra', '1', null, '19', '123', '2337', '3', '2017-12-20 10:45:55', 'not upload', '3');
INSERT INTO `orders` VALUES ('86', '红楼梦', '17', null, '99', '12', '1188', '16', '2017-12-22 08:11:59', 'not upload', '0');
INSERT INTO `orders` VALUES ('87', 'OS', '9', null, '31', '1', '31', '17', '2017-12-22 08:15:23', 'confirm', '10');
INSERT INTO `orders` VALUES ('88', '水浒传', '18', null, '79', '11', '869', '17', '2017-12-22 08:15:57', 'confirm', '10');
INSERT INTO `orders` VALUES ('90', '三国演义', '16', null, '89', '1', '89', '18', '2017-12-22 08:22:43', 'not upload', '11');
INSERT INTO `orders` VALUES ('91', 'OS', '9', null, '31', '1', '31', '3', '2017-12-21 20:07:52', 'not upload', '3');
INSERT INTO `orders` VALUES ('92', 'OS', '9', null, '31', '1', '31', '19', '2019-07-13 21:38:15', 'not upload', '12');
INSERT INTO `orders` VALUES ('93', 'Hamlet', '15', null, '59', '3', '177', '19', '2019-07-13 21:38:43', 'not upload', '12');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `imgUrl` varchar(200) DEFAULT NULL,
  `addressId` int(200) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhao', '111', '111@qq.com', 'img/user1.jpg', '1');
INSERT INTO `user` VALUES ('2', 'qian', '222', '222@qq.com', 'img/user2.jpg', '2');
INSERT INTO `user` VALUES ('3', 'sun', '333', '333@qq.com', 'img/user3.jpg', '3');
INSERT INTO `user` VALUES ('10', 'li', '444', '444@qq.com', 'img/user4.jpg', '4');
INSERT INTO `user` VALUES ('11', 'zhang', '111111', '1078518482@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user5.jpg', '6');
INSERT INTO `user` VALUES ('12', 'ding', '111111', '23@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user3.jpg', '7');
INSERT INTO `user` VALUES ('13', '123321', '111111', '23@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user2.jpg', '0');
INSERT INTO `user` VALUES ('14', 'qqq', '111111', '1112@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user6.jpg', '0');
INSERT INTO `user` VALUES ('15', 'aaa', '111111', 'aaa@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user1.jpg', '0');
INSERT INTO `user` VALUES ('16', 'rrr', '111111', 'rrr@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user6.jpg', '0');
INSERT INTO `user` VALUES ('17', 'ttt', '111111', 'ttt@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user3.jpg', '10');
INSERT INTO `user` VALUES ('18', 'yyy', '111111', 'yyy@qq.com', 'E:\\价值千万的代码\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\NewLife\\upload/user4.jpg', '11');
INSERT INTO `user` VALUES ('19', 'tianyunpeng', '123456', '1078', null, '12');
