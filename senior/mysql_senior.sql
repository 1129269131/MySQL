/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : mysql_senior

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2021-02-27 20:04:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_dept`
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(30) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '华山', '华山');
INSERT INTO `t_dept` VALUES ('2', '丐帮', '洛阳');
INSERT INTO `t_dept` VALUES ('3', '峨眉', '峨眉山');
INSERT INTO `t_dept` VALUES ('4', '武当', '武当山');
INSERT INTO `t_dept` VALUES ('5', '明教', '光明顶');
INSERT INTO `t_dept` VALUES ('6', '少林', '少林寺');

-- ----------------------------
-- Table structure for `t_emp`
-- ----------------------------
DROP TABLE IF EXISTS `t_emp`;
CREATE TABLE `t_emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL,
  `empno` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dept_id` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_emp
-- ----------------------------
INSERT INTO `t_emp` VALUES ('1', '风清扬', '90', '1', '100001');
INSERT INTO `t_emp` VALUES ('2', '岳不群', '50', '1', '100002');
INSERT INTO `t_emp` VALUES ('3', '令狐冲', '24', '1', '100003');
INSERT INTO `t_emp` VALUES ('4', '洪七公', '70', '2', '100004');
INSERT INTO `t_emp` VALUES ('5', '乔峰', '35', '2', '100005');
INSERT INTO `t_emp` VALUES ('6', '灭绝师太', '70', '3', '100006');
INSERT INTO `t_emp` VALUES ('7', '周芷若', '20', '3', '100007');
INSERT INTO `t_emp` VALUES ('8', '张三丰', '100', '4', '100008');
INSERT INTO `t_emp` VALUES ('9', '张无忌', '25', '5', '100009');
INSERT INTO `t_emp` VALUES ('10', '韦小宝', '18', null, '100010');
