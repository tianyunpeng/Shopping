/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : newlife

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-13 22:06:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressId` int(200) NOT NULL AUTO_INCREMENT,
  `province` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `town` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `street` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int(200) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '河北省', '邯郸市', '复兴区', '1523****6865赵先生收', '1');
INSERT INTO `address` VALUES ('2', '北京市', '北京市', '东城区', '东直门32号1323****5231钱先生收', '2');
INSERT INTO `address` VALUES ('3', '河北省', '邯郸市', '复兴区', '人民路12号1553****7862孙先生收', '3');
INSERT INTO `address` VALUES ('5', '北京市', '北京市', '通州区', '1513****477李先生收', '10');
INSERT INTO `address` VALUES ('6', '辽宁省', '抚顺市', '东洲区', '诚朴园一期三号楼张先生收1503****6841', '11');
INSERT INTO `address` VALUES ('7', '北京市', '北京市', '顺义区', '1530****8731丁先生收', '12');
INSERT INTO `address` VALUES ('8', '北京市', '北京市', '延庆镇', '1503****485额先生收', '15');
INSERT INTO `address` VALUES ('9', '北京市', '北京市', '顺义区', '15103268712任先生收', '16');
INSERT INTO `address` VALUES ('10', '山东省', '德州市', '陵县', '人民路78号田先生收157********', '17');
INSERT INTO `address` VALUES ('11', '北京市', '北京市', '东城区', '1503000477云先生收', '18');
INSERT INTO `address` VALUES ('12', '河北省', '邯郸市', '邯郸县', '前百家', '19');
