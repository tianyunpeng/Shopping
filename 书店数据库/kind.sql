/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : newlife

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-13 22:07:30
*/

SET FOREIGN_KEY_CHECKS=0;

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
