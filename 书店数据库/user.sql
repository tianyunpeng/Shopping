/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : newlife

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-13 22:07:38
*/

SET FOREIGN_KEY_CHECKS=0;

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
