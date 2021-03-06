/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : newlife

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-13 22:07:25
*/

SET FOREIGN_KEY_CHECKS=0;

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
