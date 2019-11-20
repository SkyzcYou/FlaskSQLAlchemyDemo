/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : flask_sqlalchemy_demo

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2019-11-20 13:45:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(255) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `age` int(11) NOT NULL,
  `num` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '狗松', '20', '34.4');
INSERT INTO `member` VALUES ('2', '小明', '12', '123.5');
INSERT INTO `member` VALUES ('3', '小花', '18', '23.4');
INSERT INTO `member` VALUES ('4', '狗松一号', '20', '23.4');
INSERT INTO `member` VALUES ('5', '狗松二号', '23', '45.33');
INSERT INTO `member` VALUES ('6', '狗松三号', '24', '23.11');
