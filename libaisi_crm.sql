/*
 Navicat MySQL Data Transfer

 Source Server         : libaisi
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : 47.97.182.189:3306
 Source Schema         : libaisi_crm

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 04/03/2020 14:46:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cAuthor
-- ----------------------------
DROP TABLE IF EXISTS `cAuthor`;
CREATE TABLE `cAuthor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `user` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cAuthor
-- ----------------------------
BEGIN;
INSERT INTO `cAuthor` VALUES (1, 'finance', '财务权限', '19');
INSERT INTO `cAuthor` VALUES (2, 'medium', '媒介权限', '34');
INSERT INTO `cAuthor` VALUES (3, 'sell', '销售权限', '30,35');
INSERT INTO `cAuthor` VALUES (4, 'charge', '主管权限', '21');
INSERT INTO `cAuthor` VALUES (5, 'master', '创始人权限', '24,25,26,27,28,31,33');
INSERT INTO `cAuthor` VALUES (6, 'chargeMedium', '媒介主管权限', '');
COMMIT;

-- ----------------------------
-- Table structure for cCustomer
-- ----------------------------
DROP TABLE IF EXISTS `cCustomer`;
CREATE TABLE `cCustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(45) NOT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `connect` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `webchat` varchar(45) DEFAULT NULL,
  `qq` varchar(45) DEFAULT NULL,
  `isCollaborate` int(11) DEFAULT NULL,
  `people` varchar(45) DEFAULT NULL,
  `isDelete` int(11) DEFAULT '0',
  `remark` varchar(1000) DEFAULT NULL,
  `customer` varchar(45) DEFAULT NULL,
  `isDeptAdmin` int(11) DEFAULT '0',
  `userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for cDept
-- ----------------------------
DROP TABLE IF EXISTS `cDept`;
CREATE TABLE `cDept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `deptId` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `remark` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `master` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cPlan
-- ----------------------------
DROP TABLE IF EXISTS `cPlan`;
CREATE TABLE `cPlan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicNumber` varchar(105) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `inTime` varchar(100) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `cost` varchar(45) DEFAULT NULL,
  `isInvoiceClient` int(11) DEFAULT NULL,
  `taxClient` varchar(45) DEFAULT NULL,
  `isInvoiceRouter` int(11) DEFAULT NULL,
  `taxRouter` varchar(45) DEFAULT NULL,
  `remark` varchar(145) DEFAULT NULL,
  `publicNumberId` varchar(45) DEFAULT NULL,
  `planPeople` varchar(45) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isPay` int(11) DEFAULT '0',
  `isBack` int(11) DEFAULT '0',
  `isDelete` int(11) DEFAULT '0',
  `customer` varchar(45) DEFAULT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `financeReamrk` varchar(1000) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `impost` decimal(10,3) DEFAULT NULL,
  `channelImpost` decimal(10,3) DEFAULT NULL,
  `rebate` decimal(20,3) DEFAULT '0.000' COMMENT '返点',
  `backTime` varchar(100) DEFAULT '0' COMMENT '回款 时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1594 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for cPublicNumber
-- ----------------------------
DROP TABLE IF EXISTS `cPublicNumber`;
CREATE TABLE `cPublicNumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `dataId` varchar(45) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `topTitle` varchar(45) DEFAULT NULL,
  `topCost` varchar(45) DEFAULT NULL,
  `secondTitle` varchar(45) DEFAULT NULL,
  `secondCost` varchar(45) DEFAULT NULL,
  `lastTitle` varchar(45) DEFAULT NULL,
  `lastCost` varchar(45) DEFAULT NULL,
  `womenRatio` varchar(45) DEFAULT NULL,
  `planCount` int(11) DEFAULT '0',
  `updateRouter` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `brush` varchar(45) DEFAULT NULL,
  `inDetail` varchar(5000) DEFAULT NULL,
  `starImage` varchar(255) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6717 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for cUser
-- ----------------------------
DROP TABLE IF EXISTS `cUser`;
CREATE TABLE `cUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `dept` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) NOT NULL,
  `openId` varchar(45) NOT NULL,
  `isDeptAdmin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

BEGIN;
INSERT INTO `cUser` VALUES (18, '管理员', '13857476603', 'master', '技术总监', '', 'E10ADC3949BA59ABBE56E057F20F883E', '76BFF45ACAC84E978955B499FC303E25', 1);
INSERT INTO `cUser` VALUES (19, '测试财务权限', '18870420550', 'sale', '财务', '', 'E10ADC3949BA59ABBE56E057F20F883E', '949CEDE989C3445A39D7ADECB13C1CB6', 0);
INSERT INTO `cUser` VALUES (20, '测试销售权限', '18870420551', 'sale', '销售员', '', 'E10ADC3949BA59ABBE56E057F20F883E', '9BF9AB468B41370F84A4862BE0F6E56E', 0);
INSERT INTO `cUser` VALUES (21, '销售主管测试', '13857476602', 'sale', '销售主管', '', 'E10ADC3949BA59ABBE56E057F20F883E', '2F5B661B34545A37596DD9FB01D2F317', 0);
INSERT INTO `cUser` VALUES (22, '媒介测试', '13857476601', 'media', '媒介', '媒介测试', 'E10ADC3949BA59ABBE56E057F20F883E', '91874FE87871990E9113629826CC2AFA', 0);
INSERT INTO `cUser` VALUES (23, '媒介主管权限测试', '13867476603', 'media', '主管', '', 'E10ADC3949BA59ABBE56E057F20F883E', 'A95EBE8FC413AE887A6EE354DFF9CD18', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
