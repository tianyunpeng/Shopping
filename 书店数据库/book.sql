/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : newlife

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-13 22:07:14
*/

SET FOREIGN_KEY_CHECKS=0;

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
