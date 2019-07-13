/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : newlife

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-13 22:07:34
*/

SET FOREIGN_KEY_CHECKS=0;

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
